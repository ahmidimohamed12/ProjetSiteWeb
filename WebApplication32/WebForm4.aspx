<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication32.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource runat="server" SelectCommand="select * from passager" ID="ds" ConnectionString="data source=.;initial catalog=volavion;integrated security=true"  >

    </asp:SqlDataSource>
    <asp:DropDownList runat="server" ID="drp" DataSourceID="ds" DataTextField="nom" 
            DataValueField="pas#" onselectedindexchanged="drp_SelectedIndexChanged" />
    <asp:SqlDataSource runat="server"  ID="ds2" ConnectionString="data source=.;initial catalog=volavion;integrated security=true" SelectCommand="select * from passager where pas# = @p" >
        <SelectParameters>
            <asp:Parameter Name="p" DbType="Int32"    />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView runat="server" DataSourceID="ds2"  ID="dgvv" />
    <br />
    <asp:Label runat="server"  ID="lbl" />
    </div>
    </form>
</body>
</html>
