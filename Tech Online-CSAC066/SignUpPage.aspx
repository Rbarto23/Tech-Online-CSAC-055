<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Tech_Online_CSAC066.SignUpPage" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <h1>TECH ONLINE</h1>
             <asp:Label Visible=false ID="lblResult" runat="server" />
          <recaptcha:RecaptchaControl
              ID="recaptcha"
              runat="server"
              Theme="red"
              PublicKey="6LceFrsUAAAAAG4PhupwdwwS3PgzRJOoYn77l0fQ"
              PrivateKey="6LceFrsUAAAAABSIm1OmUFKhReC87FbZawLgmma-"
              />

          <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

        </div>
    </form>
</body>
</html>
