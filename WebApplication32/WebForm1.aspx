<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication32.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox runat="server" ID="txtp" />
    <asp:TextBox ID="TextBox1" runat="server" />
    <asp:TextBox ID="TextBox2" runat="server" />
    <asp:TextBox ID="TextBox3" runat="server" />
    <br />
    <asp:Button runat="server" ID="btnadd" Text="Ajouter" onclick="btnadd_Click"  
     />
    <br />
    <asp:SqlDataSource runat="server"  InsertCommand="insert into passager values (@p,@n,@pp,@vl)" ID="dt" SelectCommand="select * from passager" ConnectionString="data source=.;initial catalog=volavion;integrated security=true" >
    <InsertParameters>
        <asp:ControlParameter  Name="P" DbType="Int32" />
        <asp:ControlParameter Name="n" DbType="String"  />
        <asp:ControlParameter Name="pp" DbType="String" />
        <asp:ControlParameter Name="vl" DbType="String" />
      </InsertParameters>
    </asp:SqlDataSource>

   
   <asp:GridView runat="server" ID="dtt"  DataSourceID="dt" />
   <br />
   <br />
    <asp:SqlDataSource runat="server" ID="ds"    UpdateCommand="update pilote set nom=@n,CodePostal=@p,Ville=@v,DateNaissance=@dn,DateDebutActivite=@db,DateFinActivite=@df,SalaireBrut=@sl where pil#=@numero"  DeleteCommand="delete from pilote where pil# = @p"  ConnectionString="data source=.;initial catalog=volavion;integrated security=true" SelectCommand="select * from pilote"   >
      
       <UpdateParameters>
        <asp:Parameter Name="n" DbType="String" />
         <asp:Parameter Name="p" DbType="String" />
          <asp:Parameter Name="v" DbType="String" />
           <asp:Parameter Name="dn" DbType="DateTime" />
            <asp:Parameter Name="db" DbType="DateTime" />
            <asp:Parameter Name="df" DbType="DateTime" />
            <asp:Parameter Name="sl" DbType="Double" />
             <asp:Parameter Name="numero" DbType="Int32" />
       </UpdateParameters>
       <DeleteParameters>
        <asp:Parameter Name="p" DbType="Int32" />
       </DeleteParameters>
    </asp:SqlDataSource>
    
    <asp:GridView runat="server"  DataSourceID="ds" ID="dgv" 
            onrowdeleting="dgv_RowDeleting" onrowupdating="dgv_RowUpdating" 
            onselectedindexchanged="dgv_SelectedIndexChanged" 
            onrowcommand="dgv_RowCommand" onrowcreated="dgv_RowCreated" 
            onselectedindexchanging="dgv_SelectedIndexChanging" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True"  />
        </Columns>
        </asp:GridView>
       
        
    </div>
    </form>
</body>
</html>
