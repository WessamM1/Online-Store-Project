using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public object Label2 { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == "ok")
            Response.Redirect("Admin.aspx");
        if (!IsPostBack)
        {
            BindTheDataList();
            Session["pid"] = 0;
         }
        if(Session["log"] != "ok")
        {
            LinkButton2.Enabled = false;
            LinkButton2.Text = "please login to add item to the cart";
        }
        else
        {
            LinkButton2.Enabled = true;
            LinkButton2.Text = "add to mycart";
        }

    }
    public void BindTheDataList()
    {
        string s;
        s = "select* from category";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
    public void BindTheDataList2()
    {
        string s;
        s = "select* from Products where CatID='" + Session["CatName"].ToString() + "'";
        DataSet ds;
        ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList2.DataSource = ds;
        DataList2.DataBind();

    }
    public void selectcart()
    {
        string s = "select * from cart where pid= " + Session["pid"] + "and userid=" + Session["uid"] + "and active = 1";
        OledbConnect.SelectTable(s, "final2019.accdb");
        DataSet ds = OledbConnect.SelectTable(s, "final2019.accdb");
        DataTable dt = ds.Tables[0];
        if (dt.Rows.Count > 0)
        {
            LinkButton2.Text = "you have this product in the cart";
            LinkButton2.Enabled = false;
        }
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["CatName"] = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
        BindTheDataList2();

    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Panel1.Visible = true;
        string s;
        s = "select* from Products where id="+ DataList2.DataKeys[e.Item.ItemIndex].ToString();
        DataSet ds;
        ds = OledbConnect.SelectTable(s,"Final2019.accdb");
        DataTable dt = ds.Tables[0];
        Label15.Text=ds.Tables[0].Rows[0]["Type"].ToString();
        Image1.ImageUrl = "~/pics/"+ ds.Tables[0].Rows[0]["Pic"].ToString();
        Label18.Text = ds.Tables[0].Rows[0]["Ram"].ToString();
        Label21.Text = ds.Tables[0].Rows[0]["storage"].ToString();
        Label23.Text = ds.Tables[0].Rows[0]["Battery"].ToString();
        Label17.Text = ds.Tables[0].Rows[0]["Price"].ToString();
        Label25.Text = ds.Tables[0].Rows[0]["Description"].ToString();
        Label16.Text = ds.Tables[0].Rows[0]["Color"].ToString();
        Label19.Text = ds.Tables[0].Rows[0]["Screen"].ToString();
        Session["pid"] = ds.Tables[0].Rows[0]["id"].ToString();

        if (Session["log"] == "ok")
            selectcart();

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        string sqlstr = "insert into cart  ([pname] ,[image],[qua],[price],[userid],[active],[pid]) values('" + Label15.Text + "','" + Image1.ImageUrl.ToString() + "','" + 1 + "','" + Label17.Text + "'," + Session["uid"].ToString() + "," + 1 + ","  + Session["pid"].ToString() + ")";
        OledbConnect.ChangeTable(sqlstr, "Final2019.accdb");
        
        Panel1.Visible = false;

    }
}