using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class History : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] != "ok")
            Response.Redirect("default.aspx");
        if (!IsPostBack)
            x();
           
    }
    public void x()
    {
        string s;
        s = "select* from [History] where [userid]=" + Session["uid"] + "";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    public void x2()
    {
        string s;
        s = "select* from [cart] where [hid]=" + Session["hid1"].ToString() + "";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList2.DataSource = ds;
        DataList2.DataBind();
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["hid1"] = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
        x2();
    }
}