using System;
using System.Data;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mycart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] != "ok")
            Response.Redirect("default.aspx");
        BindTheDataList();
    }
    public void BindTheDataList()
    {
        string s = "select * from cart where userid= " + Session["uid"].ToString()+" and active=1";
        OledbConnect.SelectTable(s, "Final2019.accdb");
        DataSet ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList1.DataSource = ds;
        DataList1.DataBind();
        double price = 0;
        foreach (DataRow row in ds.Tables[0].Rows)
            price += double.Parse((row["price"]).ToString()) * double.Parse((row["qua"]).ToString());
        Label6.Text = price.ToString();
    }


    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string st = "delete from cart where id=" + DataList1.DataKeys[e.Item.ItemIndex].ToString();
        OledbConnect.ChangeTable(st, "Final2019.accdb");
        DataList1.EditItemIndex = -1;
        BindTheDataList();
    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        string st = "update cart set qua=qua+1 where id=" + DataList1.DataKeys[e.Item.ItemIndex].ToString();
        OledbConnect.ChangeTable(st, "Final2019.accdb");
        DataList1.EditItemIndex = -1;
        BindTheDataList();
    }

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        Label y = (Label)e.Item.FindControl("Label1");
        if (int.Parse(y.Text) > 1)
        {
            string st = "update cart set qua=qua-1 where id=" + DataList1.DataKeys[e.Item.ItemIndex].ToString();
            OledbConnect.ChangeTable(st, "Final2019.accdb");
            DataList1.EditItemIndex = -1;
            BindTheDataList();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string s;
        s = "select * from [Cart] where userid=" + Session["Uid"].ToString() + " and active=1";
        OledbConnect.SelectTable(s, "Final2019.accdb");
        DataSet ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList1.DataSource = ds;
        DataList1.DataBind();
        int price = 0;
        foreach (DataRow row in ds.Tables[0].Rows)
            price += int.Parse(row["price"].ToString()) * int.Parse(row["qua"].ToString());
        Label7.Text = Label6.Text;
        DataList1.Visible = false;
        Panel3.Visible = true;
    }

    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sqlStr;
        string s;
        s = "select * from [Cart] where userid=" + Session["Uid"].ToString() + " and active=1";
        OledbConnect.SelectTable(s, "Final2019.accdb");
        DataSet ds = OledbConnect.SelectTable(s, "Final2019.accdb");
        DataList1.DataSource = ds;
        DataList1.DataBind();
        int price = 0;
        foreach (DataRow row in ds.Tables[0].Rows)
            price += int.Parse(row["price"].ToString()) * int.Parse(row["qua"].ToString());
        bool b;
        string d = DropDownList1.SelectedItem.Value.ToString() + DropDownList2.SelectedItem.Value.ToString();
        localhost.Credit x = new localhost.Credit();
        b = x.ValidCard(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, d, TextBox5.Text);
        if (b)
        {
            x.AddCredit(double.Parse(price.ToString()), TextBox2.Text);
            Label1.Text = "adding has been done correctly";
            DateTime c = DateTime.Now;
            string sql = "insert into [History] ([date_time],[total],[userid],[new]) values ('" + c.ToString() + "'," + price + "," + Session["uid"] + ",1)";
            OledbConnect.ChangeTable(sql, "Final2019.accdb");
            string st = "select [id] from [history] where date_time='" + c.ToString() + "'";
            DataSet dt = OledbConnect.SelectTable(st, "Final2019.accdb");
            string sqlSt = "Update [cart] set [hid]="+dt.Tables[0].Rows[0]["id"]+" where [userid]=" + Session["uid"] + " and active=1";
            OledbConnect.ChangeTable(sqlSt, "Final2019.accdb");
            sqlStr = "Update [cart] set [active]=" + 0 + " where [userid]=" + Session["uid"] + " and active=1";
            OledbConnect.ChangeTable(sqlStr, "Final2019.accdb");
            
        }
        else
            Label1.Text = "false information";
    }

}