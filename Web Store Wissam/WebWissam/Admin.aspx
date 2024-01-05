<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 445px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    .auto-style1000 {
        height: 50px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 100%;">
         <tr>
             <td style="background-color: #C0C0C0" class="auto-style8"><asp:Panel ID="Panel1" runat="server"> 
                 <table style="width: 100%;">
                     <tr>
                         <td colspan="2">
                         <asp:Label ID="Label14" runat="server" Text="Add New Category:"></asp:Label></td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label15" runat="server" Text="Image"></asp:Label></td>
                         <td>
                             <asp:FileUpload ID="FileUpload2" runat="server" /></td>
                      
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label16" runat="server" Text="CatName"></asp:Label></td>
                         <td>
                             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                     </tr>
                          <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click1" /></td>
                   </tr>
                 </table>
                 </asp:Panel>
             </td>
             <td> <asp:Panel ID="Panel2" runat="server" Visible="False" CssClass="auto-style9" ForeColor="#66CCFF"></asp:Panel>
                <table style="border-style: double; width: 100%; background-color: #808080;">
                   <tr><td colspan="2" style="background-color: #999999;" class="auto-style1000">
                       <asp:Label ID="Label28" runat="server" Text="Add New Product:"></asp:Label>
                       </td></tr>
                     <tr>
                        <td style="background-color: #C0C0C0; #66ccff: ;"><asp:Label ID="Label29" runat="server" Text="image"></asp:Label></td>
                        <td>  <asp:FileUpload ID="FileUpload5" runat="server" /></td>
                      
                    </tr>
                     <tr>
                        <td style="background-color: #C0C0C0"><asp:Label ID="Label30" runat="server" Text="Name"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                      
                    </tr>
                    <tr>
                        <td style="background-color: #C0C0C0"><asp:Label ID="Label31" runat="server" Text="Price"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                      
                    </tr>
                      <tr>
                        <td style="background-color: #C0C0C0"><asp:Label ID="Label32" runat="server" Text="Ram"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                      
                    </tr>
                      <tr>
                        <td style="background-color: #C0C0C0" class="auto-style1000"><asp:Label ID="Label33" runat="server" Text="Storage"></asp:Label></td>
                        <td class="auto-style1000"><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td style="background-color: #C0C0C0"><asp:Label ID="Label34" runat="server" Text="Screen"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="background-color: #C0C0C0"><asp:Label ID="Label35" runat="server" Text="Battery"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td style="background-color: #C0C0C0"><asp:Label ID="Label36" runat="server" Text="Color"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td style="background-color: #C0C0C0"><asp:Label ID="Label37" runat="server" Text="Description"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr><td colspan="2" style="background-color: #C0C0C0">
                        <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button2_Click" /></td></tr>
                </table></td>
         </tr>
        <tr>
            <td style="vertical-align: top" class="auto-style8"><asp:DataList ID="DataList1" runat="server" CellPadding="3" DataKeyField="id" OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_CancelCommand" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand1" OnUpdateCommand="DataList1_UpdateCommand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal">
               
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
               
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
               
               <ItemTemplate>
                   <table>
                       <tr>
                           <td><asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"CatName")%>'></asp:Label>
                               <asp:LinkButton ID="LinkButton2" runat="server" CommandName="edit">Edit</asp:LinkButton>
                           </td>
                           <td><asp:ImageButton ImageUrl='<%#DataBinder.Eval(Container.DataItem,"CatPic","pics/{0}") %>' CommandName="select" Width="120px" height="120px" ID="ImageButton1" runat="server"></asp:ImageButton></td>
                       </tr>
                   </table>
               </ItemTemplate>
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <EditItemTemplate>
                      <table>
                       <tr>
                           <td><asp:ImageButton ImageUrl='<%#DataBinder.Eval(Container.DataItem,"CatPic","pics/{0}") %>' CommandName="select" Width="120px" height="120px" ID="ImageButton1" runat="server"></asp:ImageButton>
                               <br />
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                           </td>
                       </tr>
                          <tr>
                              <td>
                                  Category Name:
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"CatName")%>'></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:LinkButton ID="LinkButton3" runat="server" CommandName="update">Update</asp:LinkButton>
                                  <asp:LinkButton ID="LinkButton4" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                  <asp:LinkButton ID="LinkButton5" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                              </td>
                          </tr>
                   </table>
                   
                </EditItemTemplate>
                   <SelectedItemStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True"/>
                   </asp:DataList>
                </td>
            <td>
               
                <asp:DataList ID="DataList2" runat="server" CellPadding="3" RepeatColumns="2" DataKeyField="id" OnCancelCommand="DataList2_CancelCommand1" OnDeleteCommand="DataList2_DeleteCommand" OnEditCommand="DataList2_EditCommand" OnUpdateCommand="DataList2_UpdateCommand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" RepeatDirection="Horizontal" >
                    
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
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
                                       <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                   </td>
                               </tr>
                         </tr>
                    </table>
                </ItemTemplate>
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <EditItemTemplate>
                         <table>
                   
                           <tr>
                                   
                        <td rowspan="8"><asp:Image ID="Image2" Width="250px" Height="200px" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"Pic","pics/{0}") %>' runat="server"></asp:Image>
                            <asp:FileUpload ID="FileUpload3" runat="server" />
                        </td>
                  
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Product Name:-"></asp:Label>
                            <asp:TextBox ID="TextBoxType" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Type")%>'></asp:TextBox>
                        </td>
                          <tr>
                       <td>
                            <asp:Label ID="Label4" runat="server" Text="Product Price:-"></asp:Label>
                           <asp:TextBox ID="TextBoxPrice" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Price")%>'></asp:TextBox>
                      </td></tr>
                        <tr>
                           <td>
                            <asp:Label ID="Label6" runat="server" Text="Product Ram:-"></asp:Label>
                               <asp:TextBox ID="TextBoxRam" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Ram")%>'></asp:TextBox>
                           </td></tr>
                        <tr>
                           <td>
                            <asp:Label ID="Label8" runat="server" Text="Screen Size:-"></asp:Label>
                            <asp:TextBox ID="TextBoxScreen" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"screen")%>'></asp:TextBox>
                           </td></tr>
                        <tr>
                           <td>
                            <asp:Label ID="Label10" runat="server" Text="Storage Memory:-"></asp:Label>
                            <asp:TextBox ID="TextBoxStorage" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"storage")%>'></asp:TextBox>
                                </td></tr>
                        <tr>
                            <td>
                            <asp:Label ID="Label12" runat="server" Text="Product Color:-"></asp:Label>
                            <asp:TextBox ID="TextBoxColor" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"color")%>'></asp:TextBox>
                                 </td></tr>
                                <tr>
                           <td>
                            <asp:Label ID="Label17" runat="server" Text="Description:-"></asp:Label>
                            <asp:TextBox ID="TextBoxdes" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Description")%>'></asp:TextBox>
                                </td></tr>
                               <tr>
                                   <td>
                                       <asp:LinkButton ID="LinkButton1" runat="server" CommandName="update">update</asp:LinkButton>
                                       <asp:LinkButton ID="LinkButton6" runat="server" CommandName="delete">delete</asp:LinkButton>
                                       <asp:LinkButton ID="LinkButton7" runat="server" CommandName="cancel">cancel</asp:LinkButton>
                                   </td>
                               </tr>
                         </tr>
                    </table>
                    </EditItemTemplate>
                </asp:DataList>
                
            </td>
              </tr>
    </table>
</asp:Content>

