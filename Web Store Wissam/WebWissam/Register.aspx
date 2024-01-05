<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
    .auto-style4 {
        height: 30px;
    }
        .auto-style10 {
            height: 34px;
        }
        .auto-style11 {
            width: 700px;
            height: 34px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        1<table style="vertical-align: middle; background-color: #CCCCCC; color: #000000;">
        <tr>
            <td colspan="5" style="border-style: inset; text-align: center;"><asp:Label ID="Label7" runat="server" Text="Registration" Font-Size="XX-Large" ForeColor="Blue"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="border-style: inset; text-align: center;"><asp:Label ID="Label1" runat="server" Text="Name:" ForeColor="Black"></asp:Label></td>
            <td style="border-color: #000000; font-size: large;"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="text-align: justify"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red" ControlToValidate="TextBox1" ValidationGroup="a"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="border-style: inset; text-align: center;"><asp:Label ID="Label2" runat="server" Text="ID Number:" ForeColor="Black"></asp:Label></td>
            <td style="border-color: #000000; font-size: large;"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td style="text-align: justify"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your ID Number" ForeColor="Red" ControlToValidate="TextBox2" ValidationGroup="a"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid ID Number" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="\d{9}" ValidationGroup="a"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="border-style: inset; text-align: center;"><asp:Label ID="Label3" runat="server" Text="Email" ForeColor="Black"></asp:Label></td>
            <td style="border-color: #000000; font-size: large;"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="text-align: justify"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Email" ForeColor="Red" ControlToValidate="TextBox3" ValidationGroup="a"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="The email address isn't valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="border-style: inset; text-align: center;"><asp:Label ID="Label4" runat="server" Text="UserName:" ForeColor="Black"></asp:Label></td>
            <td style="border-color: #000000; ; font-size: large;"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            <td style="text-align: justify"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your UserName" ForeColor="Red" ControlToValidate="TextBox4" ValidationGroup="a"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="border-style: inset; text-align: center;" class="auto-style10"><asp:Label ID="Label5" runat="server" Text="Password" ForeColor="Black"></asp:Label></td>
            <td style="border-color: #000000; ; font-size: large;" class="auto-style10"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td class="auto-style11" style="text-align: justify"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Your Password" ForeColor="Red" ControlToValidate="TextBox5" ValidationGroup="a"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: inset; text-align: center;"><asp:Label ID="Label6" runat="server" Text="Gender:" ForeColor="Black"></asp:Label></td>
            <td style="; border-style: inset;">
                  <asp:RadioButton ID="RadioButton1" Checked="true" runat="server" Text="male"></asp:RadioButton>
                  <asp:RadioButton ID="RadioButton2" runat="server" Text="female"></asp:RadioButton>
            </td> 
            </tr>
        <tr>
            <td style="border-style: inset; text-align: center;"><asp:Label ID="Label8" runat="server" Text="Picture" ForeColor="Black"></asp:Label></td>  
            <td colspan="2" style="border-style: inset"> <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload></td>
        </tr>
        <tr>
            <td colspan="5" style="border-style: inset; text-align: center;" ><asp:Button ID="Button1" runat="server" Text="Register" ValidationGroup="a" OnClick="Button1_Click" /> </td>
        </tr>
    </table>
    </center>
</asp:Content>

