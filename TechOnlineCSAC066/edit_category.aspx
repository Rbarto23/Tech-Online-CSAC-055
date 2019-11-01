<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="edit_category.aspx.cs" Inherits="TechOnlineCSAC066.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <article style="background-image: url('background.png'); font-size: large; color: #FFFFFF; font-family: 'Times New Roman';">
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="20px" Text="Edit Category"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
    Category Name&nbsp;&nbsp;&nbsp; <asp:TextBox ID="editCategory_Name" runat="server" ></asp:TextBox>
&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="editCategory_Name" ErrorMessage="*Please fill Category Name field*" ForeColor="Yellow"></asp:RequiredFieldValidator>
</p>
<p>
    Category ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="editCategory_Id" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="editCategory_Id" ErrorMessage="*Please fill category Id fiels*" ForeColor="Yellow"></asp:RequiredFieldValidator>
        </p>
<p style="margin-left: 200px">
    <asp:Button ID="update_category" runat="server" Text="Update" BackColor="#0033CC" BorderColor="Yellow" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Yellow" OnClick="update_category_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="delete_category0" runat="server" Text="Delete" BackColor="#0033CC" BorderColor="Yellow" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Yellow" OnClick="delete_category0_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
         99999999999999<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddCategory]"></asp:SqlDataSource>
    <br />
        </article>
</asp:Content>
