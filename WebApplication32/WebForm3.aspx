<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication32.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        loggin<asp:TextBox  runat="server"  ID="txtlog"/>
        <br />
        password <asp:TextBox runat="server" ID="txtpas" />
        <br />
        <asp:Button runat="server" Text="Connect" ID="btnconnect" 
            onclick="btnconnect_Click" />
    </div>
    </form>
</body>
</html>
