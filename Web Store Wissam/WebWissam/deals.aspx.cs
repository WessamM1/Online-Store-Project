using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class deals : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != "ok")
            Response.Redirect("default.aspx");
        if (!IsPostBack)
            x();

    }
    public void x()
    {
        string s;
        s = "select* from [History] where [new]=1";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    public void x1()
    {
        string s;
        s = "select * from [History] where [new]=0";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList3.DataSource = ds;
        DataList3.DataBind();
    }
    public void x2()
    {
        DataSet ds, ds1;
        string s,s1,s2;
        s = "select* from [cart] where [hid]=" + Session["hid1"].ToString() + "";
        ds =OledbConnect.SelectTable(s, "Final2019.accdb");
        s2 = ds.Tables[0].Rows[0]["userid"].ToString();
        s1 = "select * from [Users] where id=" + s2;
        ds1 = OledbConnect.SelectTable(s1, "Final2019.accdb");
        Label6.Text = ds1.Tables[0].Rows[0]["UserName"].ToString();
        Label7.Text = ds1.Tables[0].Rows[0]["Name"].ToString();
        Label8.Text = ds1.Tables[0].Rows[0]["email"].ToString();
        Label9.Text = ds1.Tables[0].Rows[0]["id_number"].ToString();
        DataList2.DataSource = ds;
        DataList2.DataBind();
}

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    { 
        
        Session["hid1"] = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
        x2();
    }

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        string sqlStr = "update [history] set [new]=0 where id=" + DataList1.DataKeys[e.Item.ItemIndex].ToString();
        OledbConnect.ChangeTable(sqlStr, "Final2019.accdb");
        x();
    }


    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        DataList1.Visible = false;
        DataList2.Visible = false;
        DataList3.Visible = true;
        x1();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        DataList2.Visible = false;
        DataList1.Visible = true;
        DataList3.Visible = false;
        x();
    }
   
}