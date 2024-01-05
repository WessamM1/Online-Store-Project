using System;
using System.IO;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] != "ok")
            Response.Redirect("default.aspx");
        Label1.Text = Session["name"].ToString() + "'s Profile";

        Image1.ImageUrl = "~/pics/" + Session["image"].ToString();
        TextBox2.Text = Session["userid"].ToString();
        TextBox1.Text = Session["email"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string SqlStr;
        if ((TextBox3.Text == TextBox4.Text) && (TextBox4.Text != ""))
        {
            if (FileUpload1.FileName != "")
            {

                string image = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string destDir = Server.MapPath("./pics");
                string destPath = Path.Combine(destDir, image);
                FileUpload1.PostedFile.SaveAs(destPath);
                SqlStr = "Update [Users] set [id_number]='" + TextBox2.Text + "',[email]='" + TextBox1.Text + "',[Password]='" + TextBox4.Text + "',[image]='" + image + "'where username='" + Session["UserName"].ToString()+"'";
            }
            else

                SqlStr = "Update [Users] set [id_number]='" + TextBox2.Text + "',[email]='" + TextBox1.Text + "',[Password]='" + TextBox3.Text + "'where username='" + Session["UserName"].ToString()+"'";
                OledbConnect.ChangeTable(SqlStr, "Final2019.accdb");
            Session["log"] = "notok";
            Response.Redirect("default.aspx");
            }
            else
            {
                Label6.Text = "Please enter Password";
            }
        }
    }




