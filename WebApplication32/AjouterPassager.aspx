<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterPassager.aspx.cs" Inherits="WebApplication32.AjouterPassager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox  runat="server" ID="txtpo" />
    <br />
    <asp:TextBox runat="server" ID="txtnom" />
    <br />
    <asp:TextBox runat="server" ID="txtprenom" />
    <br />
    <asp:TextBox  runat="server"  ID="txtville" />
    <br />
    <asp:Button runat="server" ID="btnadd" Text="Ajouter" onclick="btnadd_Click" />
    </div>
    </form>
</body>
</html>
