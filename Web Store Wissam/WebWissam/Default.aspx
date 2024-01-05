<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 895px;
            height: 633px;
            position: absolute;
            top: 671px;
            left: 332px;
            z-index: 1;
        }
        .auto-style9 {
            width: 72px;
            height: 67px;
        }
        .auto-style10 {
            width: 352px;
        }
    .auto-style11 {
        width: 158px;
    }
        .auto-style12 {
            width: 158px;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td style="vertical-align: top" class="auto-style10"><asp:DataList ID="DataList1" runat="server" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" DataKeyField="id" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#999999" Height="477px" RepeatColumns="2" Width="607px">
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               
               <ItemTemplate>
                   <table>
                       <tr>
                           <td><asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"CatName")%>' ForeColor="#CCCCCC"></asp:Label></td>
                           <td><asp:ImageButton ImageUrl='<%#DataBinder.Eval(Container.DataItem,"CatPic","pics/{0}") %>' CommandName="select" Width="120px" height="120px" ID="ImageButton1" runat="server"></asp:ImageButton></td>
                       </tr>
                   </table>
               </ItemTemplate>
                   <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White"/>
                   </asp:DataList>
                </td>
            <td>
                <asp:DataList ID="DataList2" runat="server" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" GridLines="Both" RepeatColumns="2" OnItemCommand="DataList2_ItemCommand" BackColor="#CCCCCC" BorderColor="#999999" CellSpacing="2" ForeColor="Black" DataKeyField="id" >
                    
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                    <table>
                   
                           <tr>
                                   
                        <td rowspan="8"><asp:Image ID="Image2" Width="250px" Height="200px" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"Pic","pics/{0}") %>' runat="server"></asp:Image></td>
                  
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Product Name:-"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Type")%>'></asp:Label>

                        </td>
                          <tr>
                       <td>
                            <asp:Label ID="Label4" runat="server" Text="Product Price:-"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Price")%>'></asp:Label>

                      </td></tr>
                        <tr>
                           <td>
                            <asp:Label ID="Label6" runat="server" Text="Product Ram:-"></asp:Label>
                            <asp:Label ID="Label7" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Ram")%>'></asp:Label>

                           </td></tr>
                        <tr>
                           <td>
                            <asp:Label ID="Label8" runat="server" Text="Screen Size:-"></asp:Label>
                            <asp:Label ID="Label9" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"screen")%>'></asp:Label>
                           </td></tr>
                        <tr>
                           <td>
                            <asp:Label ID="Label10" runat="server" Text="Storage Memory:-"></asp:Label>
                            <asp:Label ID="Label11" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"storage")%>'></asp:Label>
                           </td></tr>
                        <tr>
                            <td>
                            <asp:Label ID="Label12" runat="server" Text="Product Color:-"></asp:Label>
                            <asp:Label ID="Label13" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"color")%>'></asp:Label>
                           </td></tr>
                               <tr>
                                   <td>
                                       <asp:LinkButton ID="LinkButton1" CommandName="select" runat="server">More....</asp:LinkButton>
                                   </td>
                               </tr>
                         </tr>
                    </table>
                </ItemTemplate>

                </asp:DataList>
                
            </td>
              </tr>
    </table>
            <asp:Panel ID="Panel1" runat="server" BackColor="#999999" CssClass="auto-style8" Visible="False">
                <table>
                    <tr><td class="auto-style12"> <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style9" ImageUrl="~/pics/redx.png" OnClick="ImageButton2_Click" /></td>
                        <td class="auto-style13">
                            <asp:LinkButton ID="LinkButton2" runat="server" Text="add to mycart" OnClick="LinkButton2_Click"></asp:LinkButton>  </td>
                    </tr>
                    <tr><td class="auto-style11">
                        <asp:Label ID="Label14" runat="server" Text="Product Name:-"></asp:Label>
                        <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                        </td>
                        <td rowspan="8"><asp:Image ID="Image1" width="350px" Height="400px" runat="server" /></td>
                 </tr>
                    <tr>
                       <td class="auto-style11">
                            <asp:Label ID="Label3" runat="server" Text="Product color:-"></asp:Label>
                           <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                        </td>
                      </tr>
                          <tr>
                       <td class="auto-style11">
                            <asp:Label ID="Label4" runat="server" Text="Product Price:-"></asp:Label>
                           
                            <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
                      </td></tr>
                        <tr>
                           <td class="auto-style11">
                            <asp:Label ID="Label6" runat="server" Text="Product Ram:-"></asp:Label>
                       <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
                           </td></tr>
                        <tr>
                           <td class="auto-style11">
                            <asp:Label ID="Label8" runat="server" Text="Screen Size:-"></asp:Label>
                        <asp:Label ID="Label19" runat="server" Text=""></asp:Label>                           </td></tr>
                    <tr>
                         <td class="auto-style11">
                            <asp:Label ID="Label20" runat="server" Text=" storage:-"></asp:Label>
                        <asp:Label ID="Label21" runat="server" Text=""></asp:Label>                           </td></tr>
                    <tr>
                         <td class="auto-style11">
                            <asp:Label ID="Label22" runat="server" Text=" battery:-"></asp:Label>
                        <asp:Label ID="Label23" runat="server" Text=""></asp:Label>                           </td></tr>
                    <tr>
                         <td class="auto-style11">
                            <asp:Label ID="Label24" runat="server" Text="description:-"></asp:Label>
                        <asp:Label ID="Label25" runat="server" Text=""></asp:Label>                           </td></tr>
                        

                </table>
               

             </asp:Panel>
</asp:Content>

