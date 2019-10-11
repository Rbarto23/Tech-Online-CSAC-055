<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TechOnlineCSAC066.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div style="font-family: 'times New Roman', Times, serif; background-image: url('lo.jpg'); height: 496px; width: 1099px; margin-left: 0px;">
            
            <p style="margin-left: 200px">
                &lt;&lt;&lt;Please Login Into Your Account&gt;&gt;&gt;</p>
            <p style="margin-left: 80px">
                &nbsp;</p>
            <p style="margin-left: 80px; font-family: 'Sitka Heading'; font-size: 16px; color: #FFFFFF;">
            
     User name<asp:TextBox ID="userName" runat="server" CssClass="auto-style1" ToolTip="fill user name" Width="128px"></asp:TextBox>        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName" ErrorMessage="Please fill your user name *" ForeColor="White"></asp:RequiredFieldValidator>
            <br />
                Password&nbsp;&nbsp;<asp:TextBox ID="password1" runat="server" CssClass="auto-style1" ToolTip="fill password" Width="128px"></asp:TextBox>
    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password1" ErrorMessage="Please fill your password*" ForeColor="White"></asp:RequiredFieldValidator>
    
            </p>
    
    <p style="margin-left: 80px">
        <asp:Button ID="Login" runat="server" BackColor="#3333FF" BorderColor="Red" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" ForeColor="White" Text="LogIn" OnClick="Login_Click" />
            </p>
    <p style="margin-left: 80px; color: #FFFFFF;">
        Don&#39;t have an account ?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="SignUp" runat="server" BackColor="#993333" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" ForeColor="White" Text="SignUp" OnClick="SignUp_Click" />
            </p>
    <p>
        &nbsp;</p>
            <style type="text/css">
                .auto-style1 
                {
            margin-right: 30px;
            margin-left: 50px;
                }   
    </style>
     </div>  
</asp:Content>
