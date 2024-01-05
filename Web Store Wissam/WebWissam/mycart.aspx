<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mycart.aspx.cs" Inherits="mycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 559px;
            height: 317px;
            position: absolute;
            top: 725px;
            left: 812px;
            z-index: 1;
        }
        .auto-style9 {
            width: 594px;
            height: 1078px;
            position: absolute;
            top: 639px;
            left: 207px;
            z-index: 1;
        }
    .auto-style10 {
        width: 281px;
        height: 15px;
        position: absolute;
        top: 639px;
        left: 207px;
        z-index: 1;
        font-size: large;
    }
    .auto-style11 {
        width: 559px;
        height: 317px;
        position: absolute;
        top: 772px;
        left: 813px;
        z-index: 1;
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label6" runat="server" Text="Label" BackColor="Silver" BorderColor="Black" BorderWidth="3px" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Font-Strikeout="False"></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="CheckOut" OnClick="Button2_Click" />
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11" Visible="False">
         <table class="auto-style1" style="background-color: #808080">
            <tr>
                <td style="background-color: #C0C0C0">Type</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="background-color: #C0C0C0">Card Number</td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="background-color: #C0C0C0">Holder Name</td>
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="background-color: #C0C0C0">HolderID</td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="background-color: #C0C0C0">Valid</td>
                <td>
                   month: <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="01">1</asp:ListItem>
                        <asp:ListItem Value="02">2</asp:ListItem>
                        <asp:ListItem Value="03">3</asp:ListItem>
                        <asp:ListItem Value="04">4</asp:ListItem>
                        <asp:ListItem Value="05">5</asp:ListItem>
                        <asp:ListItem Value="06">6</asp:ListItem>
                        <asp:ListItem Value="07">7</asp:ListItem>
                        <asp:ListItem Value="08">8</asp:ListItem>
                        <asp:ListItem Value="09">9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
              <br />    year:  <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="18">2018</asp:ListItem>
                        <asp:ListItem Value="19">2019</asp:ListItem>
                        <asp:ListItem Value="20">2020</asp:ListItem>
                        <asp:ListItem Value="21">2021</asp:ListItem>
                        <asp:ListItem Value="22">2022</asp:ListItem>
                        <asp:ListItem Value="23">2023</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td style="background-color: #C0C0C0">CVV</td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
              <tr>
                <td style="background-color: #C0C0C0">Total Price</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
            </tr>
              <tr>
                <td colspan="2" style="background-color: #C0C0C0">
                    <asp:Button ID="Button1" runat="server" Text="Pay" Height="33px" OnClick="Button1_Click" Width="464px" /> 
                  <br /> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </td>
                 
            </tr>
        </table>
    </asp:Panel>
    
    <asp:DataList ID="DataList1" runat="server" OnDeleteCommand="DataList1_DeleteCommand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="926px" Width="594px" DataKeyField="id" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" CssClass="auto-style10" OnCancelCommand="DataList1_CancelCommand">
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
                            <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"pname")%>'></asp:Label>

                        </td>
                          <tr>
                       <td>
                            <asp:Label ID="Label4" runat="server" Text="Product Price:-"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Price")%>'></asp:Label>
                      </td></tr>
                               <tr>
                                   <td>
                                       <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit" Font-Size="XX-Large" Font-Underline="False">-</asp:LinkButton>
                                       <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"qua") %>' Font-Size="XX-Large" Font-Underline="False"></asp:Label>
                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="XX-Large" CommandName="update" Font-Underline="False">+</asp:LinkButton>
                                       <asp:LinkButton ID="LinkButton3" runat="server" CommandName="delete"  Font-Underline="False">Remove From MyCart</asp:LinkButton>
                                   </td>
                               </tr>
                            </tr>                                   
                                                              
                    </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
</asp:Content>

