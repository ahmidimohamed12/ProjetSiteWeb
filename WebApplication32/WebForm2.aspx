<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication32.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox runat="server" ID="txtnumero" />
    <br />
    <asp:TextBox runat="server" ID="TextBox1" />
    <br />
    <asp:TextBox runat="server" ID="TextBox2" />
    <br />
 
 <asp:Button runat="server" ID="btnmodifier" />  
   
   <br />
 <asp:SqlDataSource runat="server"  ID="ds2" ConnectionString="Data source=.;initial catalog=volavion;integrated security=true" SelectCommand="select * from pilote inner join vol on  vol.pilote = pilote.pil# where pil# = @p" >
            <SelectParameters>
                <asp:Parameter Name="p" DbType="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
   <asp:GridView runat="server" DataSourceID="ds2" ID="dgv"/>

    </div>
    </form>
</body>
</html>
