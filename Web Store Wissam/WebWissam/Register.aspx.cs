using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string G,P;
        if (RadioButton1.Checked)
        {
            G = "M";
            P = "male.jpg";
        }
        else
        {
            G = "F";
            P = "female.png";
        }
        if (FileUpload1.FileName != "")
        {
            string image = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string destDir = Server.MapPath("./pics");
            string destPath = Path.Combine(destDir, image);
            FileUpload1.PostedFile.SaveAs(destPath);
            string SqlStr1 = "insert into [Users]([Name],[id_number],[email],[UserName],[Password],[gender],[image],[admin]) ";
            SqlStr1 += "values('" + TextBox1.Text + "','" + TextBox2.Text + "'";
            SqlStr1 += ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + G + "','" + image + "'.'0')";
            OledbConnect.ChangeTable(SqlStr1, "Final2019.accdb");
        }
        else
        {
            string SqlStr = "insert into [Users]([Name],[id_number],[email],[UserName],[Password],[gender],[image],[admin])";
            SqlStr += " values('" + TextBox1.Text + "','" + TextBox2.Text + "'";
            SqlStr += ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + G + "','" + P + "'.'0')";
            OledbConnect.ChangeTable(SqlStr, "Final2019.accdb");
        }
        Response.Redirect("Default.aspx");
    }
}