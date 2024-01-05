using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == "ok")
            CheckBox1.Visible = true;
        else
            CheckBox1.Visible = false;
        if ((Session["log"] != "ok") && (Session["admin"] != "ok"))
            Response.Redirect("default.aspx");
        if (!IsPostBack)
        {
            BindTheDatalist();
            BindTheDatalist1();
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        string s = "update message set[seen] =0 where to ='" + Session["username"].ToString() + "'and [seen] =1";
        OledbConnect.ChangeTable(s, "final2019.accdb");
        Session["seen"] = "0";
        DataList1.Visible = true;
        DataList2.Visible = false;
        Panel1.Visible = false;
        BindTheDatalist();


    }

    public void BindTheDatalist()
    {
        string s;
        s = "select * from [message] where[to]='" + Session["UserName"].ToString() + "'";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "final2019.accdb");
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    public void BindTheDatalist1()
    {
        string s;
        s = "select * from [message] where[from]='" + Session["UserName"].ToString() + "'";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "final2019.accdb");
        DataList2.DataSource = ds;
        DataList2.DataBind();
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        DataList2.Visible = false;
        DataList1.Visible = false;
        Panel1.Visible = true;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "";
        if (CheckBox1.Checked)
        {
            string sqlStr = "select * from [Users]";
            DataSet ds = OledbConnect.SelectTable(sqlStr, "Final2019.accdb");
            DataTable dt = ds.Tables[0];
            foreach (DataRow r in dt.Rows)
            {
                s = "insert into [message] ([to],[from],[body],[seen]) values ('" + r["username"] + "','" + Session["username"].ToString() + "','" + TextBox1.Text + "',1)";
                OledbConnect.ChangeTable(s, "final2019.accdb");
            }
        }
        else
        {
            s = "insert into [message] ([to],[from],[body],[seen]) values ('" + DropDownList1.SelectedValue + "','" + Session["username"].ToString() + "','" + TextBox1.Text + "',1)";
            OledbConnect.ChangeTable(s, "final2019.accdb");
        }
        BindTheDatalist();
        BindTheDatalist1();
        Panel1.Visible = false;
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        DataList1.Visible = false;
        DataList2.Visible = true;
        Panel1.Visible = false;

    }



    protected void DataList1_DeleteCommand1(object source, DataListCommandEventArgs e)
    {
        string st = "delete from message where id =" + DataList1.DataKeys[e.Item.ItemIndex].ToString();
        OledbConnect.ChangeTable(st, "final2019.accdb");
        BindTheDatalist();
        BindTheDatalist1();
    }


    protected void DataList2_DeleteCommand1(object source, DataListCommandEventArgs e)
    {
        string st = "delete from message where id =" + DataList2.DataKeys[e.Item.ItemIndex].ToString();
        OledbConnect.ChangeTable(st, "final2019.accdb");
        BindTheDatalist();
        BindTheDatalist1();

    }
}