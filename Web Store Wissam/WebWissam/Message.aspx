<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <center>
        <tr>
            <td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pics/message.png" OnClick="ImageButton1_Click" /></td>
            <td><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pics/sent.png" OnClick="ImageButton3_Click" /></td>
            <td><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pics/inbox.png" OnClick="ImageButton2_Click"/></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="261px" Width="425px" OnDeleteCommand="DataList1_DeleteCommand1" DataKeyField="id" Visible="False">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        <table style="width: 100%;">
                            <tr>
                               <td><td>From:-<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"From")%>'></asp:Label></td></td>
                               <td><td>Message:-<asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Body")%>'></asp:Label></td></td>
                            </tr>
                            <tr>
                                <td>
                             <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                </td>
                            </tr>
                            
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:DataList></td>
                <td>
          <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="430px" OnDeleteCommand="DataList2_DeleteCommand1" DataKeyField="id" Visible="False">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        <table style="width: 100%;">
                            <tr>
                               <td><td>to:-<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"To")%>'></asp:Label></td></td>
                               <td><td>Message:-<asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Body")%>'></asp:Label></td></td>
                            </tr>
                             <tr>
                                <td>
                             <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                </td>
                            </tr>
                            
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:DataList></td>
          
        
  <td>
    <asp:Panel ID="Panel1" runat="server" Visible="False" BorderStyle="Solid">
                 <table class="auto-style20">
                     <tr><td colspan="2"><asp:Label ID="Label3" runat="server" Text="Compose message" Font-Size="Large"></asp:Label></td></tr>
                     <tr><td>Send To</td>
                         <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource2" DataTextField="username" DataValueField="username">
                             </asp:DropDownList>
                             <asp:CheckBox ID="CheckBox1" runat="server" Text="Select All Users" />
                             <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/Final2019.accdb" SelectCommand="SELECT [username] FROM [users]"></asp:AccessDataSource>
                             <asp:AccessDataSource ID="AccessDataSource1" runat="server"></asp:AccessDataSource>
                         </td></tr>                    
                      <tr><td>Message Body:</td><td><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox></td></tr>
               <tr>
                   <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click"></asp:Button></td>
               </tr>
                       </table>
                </asp:Panel></td></tr>
  </center>
    </table>
</asp:Content>
