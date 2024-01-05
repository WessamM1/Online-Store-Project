using System;
using System.Data;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == "ok" || Session["admin"] == "ok")
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            if(Session["admin"]=="ok")
            {
                LinkButton4.Text = "Deals";
                LinkButton4.PostBackUrl = "deals.aspx";
            }
            Label4.Text = "welcome " + Session["name"];
            Label5.Text = "You have " + Session["msg"] + "new messages";
            Image3.ImageUrl = "~/pics/" + Session["image"];
            if (!(int.Parse(Session["msg"].ToString()) == 0))
                Image2.Visible = true;
            else
                Image2.Visible = false;

        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string SqlStr = "select * from [Users] where [UserName]='" + TextBox1.Text + "' and [Password]='" + TextBox2.Text + "' and admin='0'";
        string SqlStr1 = "select * from [Users] where [UserName]='" + TextBox1.Text + "' and [Password]='" + TextBox2.Text + "' and admin='1'";
        DataSet ds = new DataSet();
        ds = OledbConnect.SelectTable(SqlStr, "Final2019.accdb");
        DataTable dt = ds.Tables[0];
        if (dt.Rows.Count > 0)
        {
            Session["name"] = ds.Tables[0].Rows[0]["Name"];
            Session["image"] = ds.Tables[0].Rows[0]["image"];
            Session["UserID"] = ds.Tables[0].Rows[0]["id_number"];
            Session["UserName"] = ds.Tables[0].Rows[0]["username"];
            Session["email"] = ds.Tables[0].Rows[0]["email"];
            Session["uid"] = ds.Tables[0].Rows[0]["id"];
            Session["msg"] = x().ToString();
            Session["log"] = "ok";
            Response.Redirect("Default.aspx");
            Label3.Visible = false;
        }
        else
        {
            ds = OledbConnect.SelectTable(SqlStr1, "Final2019.accdb");
            dt = ds.Tables[0];
            if (dt.Rows.Count > 0)
            {
                Session["name"] = ds.Tables[0].Rows[0]["Name"];
                Session["image"] = ds.Tables[0].Rows[0]["image"];
                Session["UserID"] = ds.Tables[0].Rows[0]["id_number"];
                Session["UserName"] = ds.Tables[0].Rows[0]["username"];
                Session["email"] = ds.Tables[0].Rows[0]["email"];
                Session["msg"] = x().ToString();
                Session["admin"] = "ok";
                Response.Redirect("Admin.aspx");
                Label3.Visible = false;
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Invalid user name or password, plase try again";
            }
        }
            }
        
    

    protected void Button2_Click(object sender, EventArgs e)
    {
       Session["log"] = "notok";
        Session["Admin"] = "notok";
        Panel1.Visible = true;
        Panel2.Visible = false;
        Response.Redirect("Default.aspx");
    }
    public int x()
    {
        string s = "select * from [Message] where [to]='" + Session["UserName"].ToString() + "' and [seen]=1";
        OledbConnect.SelectTable(s, "Final2019.accdb");
        DataSet ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataTable dt = ds.Tables[0];
        return (dt.Rows.Count);
    }
}

