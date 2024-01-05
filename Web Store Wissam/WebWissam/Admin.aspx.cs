using System;
using System.IO;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != "ok")
            Response.Redirect("default.aspx");


        if (!IsPostBack)
        {
            BindTheDataList();
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

  

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        BindTheDataList();
        
    }

    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        BindTheDataList();
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string st="delete from category where id="+ DataList1.DataKeys[e.Item.ItemIndex].ToString();
        OledbConnect.ChangeTable(st, "Final2019.accdb");
        DataList1.EditItemIndex = -1;
        BindTheDataList();
    }




    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    { 
        Session["CatName"] = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
        Panel2.Visible = true;
        BindTheDataList2();
    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        string SqlStr;
        FileUpload FileUpload1 = (FileUpload)DataList1.Items[DataList1.EditItemIndex].FindControl("FileUpload1");
        TextBox txb1 = (TextBox)e.Item.FindControl("TextBox1");
        string cat = txb1.Text;
        if (FileUpload1.FileName != "")
        {
            string image = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string destDir = Server.MapPath("./pics");
            string destPath = Path.Combine(destDir, image);
            FileUpload1.PostedFile.SaveAs(destPath);
            SqlStr = "Update [category] set CatName='" + cat + "',[CatPic]='" + image + "'where id=" + DataList1.DataKeys[e.Item.ItemIndex].ToString();
        }
        else
        {
            SqlStr = "Update [category] set CatName='" + cat + "' where id=" + DataList1.DataKeys[e.Item.ItemIndex].ToString();
        }
        OledbConnect.ChangeTable(SqlStr, "Final2019.accdb");
        DataList1.EditItemIndex = -1;
        BindTheDataList();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string Image = Path.GetFileName(FileUpload2.PostedFile.FileName);
        string destDir = Server.MapPath("./pics");
        string destPath = Path.Combine(destDir, Image);
        FileUpload2.PostedFile.SaveAs(destPath);
        string SqlStr = "insert into [category]([cat_name],[cat_pic])";
        SqlStr += "values('" + TextBox2.Text + "','" + Image + "')";
        OledbConnect.ChangeTable(SqlStr, "Final2019.accdb");
        BindTheDataList();

    }

    protected void DataList2_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList2.EditItemIndex = e.Item.ItemIndex;
        BindTheDataList2();
    }


    protected void DataList2_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string st = "delete from products where id=" + DataList2.DataKeys[e.Item.ItemIndex].ToString();
        OledbConnect.ChangeTable(st, "Final2019.accdb");
        DataList2.EditItemIndex = -1;
        BindTheDataList2();
    }

    protected void DataList2_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        string SqlStr;
        FileUpload FileUpload1 = (FileUpload)DataList2.Items[DataList2.EditItemIndex].FindControl("FileUpload3");
        TextBox Typetxb = (TextBox)e.Item.FindControl("TextBoxType");
        TextBox pricetxb = (TextBox)e.Item.FindControl("TextBoxPrice");
        TextBox ramtxb = (TextBox)e.Item.FindControl("TextBoxRam");
        TextBox storagetxb = (TextBox)e.Item.FindControl("TextBoxStorage");
        TextBox screentxb = (TextBox)e.Item.FindControl("TextBoxScreen");
        TextBox colortxb = (TextBox)e.Item.FindControl("TextBoxColor");
        TextBox destxb = (TextBox)e.Item.FindControl("TextBoxdes");
        if (FileUpload1.FileName != "")
        {
            string image = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string destDir = Server.MapPath("./pics");
            string destPath = Path.Combine(destDir, image);
            FileUpload1.PostedFile.SaveAs(destPath);
            SqlStr = "Update [Products] set [Type]='" + Typetxb.Text + "' ,[pic]='" + image + "' ,[Storage]='" + storagetxb.Text +"' ,[Description]='" + destxb.Text +  "',[price]='" + pricetxb.Text + "',[Ram]='" + ramtxb.Text + "',[Screen]='" + screentxb.Text + "',[Color]='" + colortxb.Text + "'where id=" + DataList2.DataKeys[e.Item.ItemIndex].ToString();
        }
        else
        {
            SqlStr = "Update [Products] set [Type]='" + Typetxb.Text + "' ,[Storage]='" + storagetxb.Text + "' ,[Description]='" + destxb.Text + "',[price]='" + pricetxb.Text + "',[Ram]='" + ramtxb.Text + "',[Screen]='" + screentxb.Text + "',[Color]='" + colortxb.Text + "'where id=" + DataList2.DataKeys[e.Item.ItemIndex].ToString();
        }
        OledbConnect.ChangeTable(SqlStr, "Final2019.accdb");
        DataList2.EditItemIndex = -1;
        BindTheDataList2();
    }

    protected void DataList2_CancelCommand1(object source, DataListCommandEventArgs e)
    {
        DataList2.EditItemIndex = -1;
        BindTheDataList2();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
                
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string Image = Path.GetFileName(FileUpload2.PostedFile.FileName);
        string destDir = Server.MapPath("./pics");
        string destPath = Path.Combine(destDir, Image);
        FileUpload2.PostedFile.SaveAs(destPath);
        string SqlStr = "insert into [Products]([Type],[Ram],[Storage],[Screen],[Battery],[Color],[Price],[Pic],[Description],[CatID])";
        SqlStr += "values('" + TextBox2.Text + "','" + Image + "')";
        OledbConnect.ChangeTable(SqlStr, "Final2019.accdb");
        BindTheDataList2();
    }
}





