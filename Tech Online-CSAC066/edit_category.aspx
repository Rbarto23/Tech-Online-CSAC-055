<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="edit_category.aspx.cs" Inherits="TechOnlineCSAC066.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <article style="background-image: url('background.png'); font-size: large; color: #FFFFFF; font-family: 'Times New Roman';">
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="20px" Text="Edit Category"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
    Category Name&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
</p>
<p>
    Category ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
<p style="margin-left: 200px">
    <asp:Button ID="update_category" runat="server" Text="Update" BackColor="#0033CC" BorderColor="Yellow" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Yellow" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="delete_category0" runat="server" Text="Delete" BackColor="#0033CC" BorderColor="Yellow" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Yellow" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Category_Id" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:BoundField DataField="Category_Id" HeaderText="Category_Id" ReadOnly="True" SortExpression="Category_Id" />
                 <asp:BoundField DataField="Category Name" HeaderText="Category Name" SortExpression="Category Name" />
             </Columns>
             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
             <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#FFF1D4" />
             <SortedAscendingHeaderStyle BackColor="#B95C30" />
             <SortedDescendingCellStyle BackColor="#F1E5CE" />
             <SortedDescendingHeaderStyle BackColor="#93451F" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddCategory]"></asp:SqlDataSource>
    <br />
        </article>
</asp:Content>
