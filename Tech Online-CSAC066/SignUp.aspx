<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TechOnlineCSAC066.WebForm1" %>
 <%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            
            margin-right: 30px;
            margin-left: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
        <div style="background-image: url('laptop1.jpg'); color: #FFFFFF; height: 496px; width: 923px; clip: rect(auto, auto, 15px, auto); right: auto; margin-left: 5px;">
             <br />
             <br />
             <br />
             First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="firstName" runat="server" style="margin-top: 0px" Width="217px" CssClass="auto-style1"></asp:TextBox>
&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstName" ErrorMessage="Please Fill your First Name *" ForeColor="Red">Please Fill your First Name *</asp:RequiredFieldValidator>
             <br />
             Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="lastName" runat="server" style="margin-top: 10px" Width="217px" CssClass="auto-style1"></asp:TextBox>
&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastName" ErrorMessage="Please Fill your Last Name *" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="userName" runat="server" style="margin-top: 10px" Width="217px" CssClass="auto-style1"></asp:TextBox>
&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userName" ErrorMessage="Please Fill your User Name *" ForeColor="Red"></asp:RequiredFieldValidator>
             &nbsp;<br />
             Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="password" runat="server" style="margin-top: 10px" Width="217px" CssClass="auto-style1" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Please Fill your Password*" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             Confirm Password<asp:TextBox ID="confirmPassword" runat="server" style="margin-top: 10px" Width="217px" CssClass="auto-style1" TextMode="Password"></asp:TextBox>
&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmPassword" ErrorMessage="Please Fill confirm Password field *" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmPassword" ErrorMessage="Please enter a same password!!" ForeColor="Red"></asp:CompareValidator>
             <br />
             Email Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="emailId" runat="server" style="margin-top: 10px" Width="217px" CssClass="auto-style1"></asp:TextBox>
&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="emailId" ErrorMessage="Please Fill your email Id *" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailId" ErrorMessage="Please fill  correct email ID *" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             <br />
             Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="age" runat="server" style="margin-top:10px" Width="217px" CssClass="auto-style1"></asp:TextBox>
&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="age" ErrorMessage="Please Fill your age *" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [signUP]"></asp:SqlDataSource>
             <br />
            <table>
                <tr>
                    <td>
                            <asp:TextBox ID="TxtCaptcha" runat="server">Type the characters you see</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                            <BotDetect:WebFormsCaptcha ID="CaptchaBox" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                            
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelMsg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>


            </table>
           
        </div>

</asp:Content>
