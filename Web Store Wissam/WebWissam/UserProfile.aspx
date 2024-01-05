<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 35%;
            height: 344px;
        }
    .auto-style10 {
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center class="auto-style10">
    <table class="auto-style9" style="border-style: double; color: #0000FF; background-color: #000000">
        <tr>
            <td class="auto-style8" colspan="2" style="background-color: #C0C0C0"><asp:Label ID="Label1" runat="server" Text="User Profile" Font-Size="XX-Large"></asp:Label></td>
          </tr>
        <tr>
            <td style="background-color: #C0C0C0"><asp:Image ID="Image1" runat="server" Height="150px" Width="213px"></asp:Image>
                <br /><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload></td>
            </tr>
        <tr>
            <td style="background-color: #C0C0C0"><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>          
        </tr>
         <tr>
            <td style="background-color: #C0C0C0"><asp:Label ID="Label3" runat="server" Text="User ID"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>          
        </tr>
        <tr>
            <td style="background-color: #C0C0C0"><asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td> 
        </tr>
           <tr>
            <td style="background-color: #C0C0C0"><asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label></td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td> 
        </tr>
        <tr>
         <td colspan="2" style="background-color: #C0C0C0"><asp:Button ID="Button1" runat="server" Text="UpdateProfile" OnClick="Button1_Click"></asp:Button>
           <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table></center>
</asp:Content>

