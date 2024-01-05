<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="deals.aspx.cs" Inherits="deals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pics/newdeals.png" OnClick="ImageButton1_Click" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pics/deals.png" OnClick="ImageButton2_Click" />
            </td>
            
        </tr>
    </table>
     <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" DataKeyField="id" OnItemCommand="DataList1_ItemCommand" OnEditCommand="DataList1_EditCommand" BorderStyle="None" GridLines="Horizontal">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
         <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
        <table style="width: 100%;">
            <tr>
                <td>Date and Time:-<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Date_time")%>'></asp:Label></td>
            </tr>
            <tr>
                <td>Total Price:-<asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"total")%>'></asp:Label></td>
            </tr>
            <tr>
                <td><asp:LinkButton ID="LinkButton1" CommandName="select" runat="server">More info</asp:LinkButton></td>
            </tr>
        </table>
       </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
    </asp:DataList>
    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" RepeatColumns="2" DataKeyField="id" BorderStyle="None" GridLines="Horizontal">
         
                    <SelectedItemStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                    <table>
                   
                           <tr>
                                   
                        <td rowspan="3"><asp:Image ID="Image2" Width="250px" Height="200px" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"image") %>' runat="server"></asp:Image></td>
                  
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Product Name:-"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Pname")%>'></asp:Label>

                        </td>
                          <tr>
                       <td>
                            <asp:Label ID="Label4" runat="server" Text="Product Price:-"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Price")%>'></asp:Label>

                      </td></tr>
                       
                            <td>
                            <asp:Label ID="Label12" runat="server" Text="Quantity:-"></asp:Label>
                            <asp:Label ID="Label13" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"qua")%>'></asp:Label>
                           </td></tr>
                              
                         </tr>
                    </table>
                </ItemTemplate>
    </asp:DataList>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="auto-style10" Visible="False">
                    <table class="auto-style12">
                          <tr>
                            <td colspan="2"><asp:Label ID="Label10" runat="server" Text="User Info"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>UserName:</td>
                            <td><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>                   
                        </tr>
                        <tr>
                            <td>Name:</td>
                            <td><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                          <tr>
                            <td>Email:</td>
                            <td><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                          <tr>
                            <td>ID Number:</td>
                            <td><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:DataList ID="DataList3" runat="server" RepeatColumns="2" CellPadding="4" DataKeyField="id" ForeColor="#333333" Visible="False">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td>Date and Time: <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Date_Time")%>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Total Price: <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"total")%>'></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:LinkButton ID="LinkButton1" CommandName="select" runat="server" ForeColor="#0000CC">More Info</asp:LinkButton></td>   
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
     
            </td>
        </tr>
    </table>
    
    
   


</asp:Content>

