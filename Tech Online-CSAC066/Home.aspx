<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TechOnlineCSAC066.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article style="font-family: 'Times New Roman', Times, serif; background-image: url('background.png'); color: #FFFFFF; height: 449px;">
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Size="35pt" Text="TECH ONLINE"></asp:Label>
    <br />
    <br />
    INVENTORY DETAILS<br />
    <br />
    <br />
    <asp:Button ID="homepageCategory" runat="server" Text="ADD CATEGORY" BackColor="#000099" BorderColor="#99FF66" BorderStyle="Solid" ForeColor="White" PostBackUrl="~/Add_category.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="homepageProduct" runat="server" Text="ADD PRODUCT" BackColor="#000099" BorderColor="Aqua" Font-Bold="True" ForeColor="Yellow" PostBackUrl="~/Add_Product.aspx" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Category Name" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Category Name" HeaderText="Category Name" ReadOnly="True" SortExpression="Category Name" />
            <asp:BoundField DataField="Number of Products" HeaderText="Number of Products" SortExpression="Number of Products" />
        </Columns>
    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product_Details]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Category Name" DataSourceID="SqlDataSource2" Height="16px" Width="421px">
        <Columns>
            <asp:BoundField DataField="Category Name" HeaderText="Category Name" ReadOnly="True" SortExpression="Category Name" />
            <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
            <asp:BoundField DataField="Available Quantity" HeaderText="Available Quantity" SortExpression="Available Quantity" />
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
    <br />
    <br />
    <br />
    <br />
    <br />
    </article>
</asp:Content>
