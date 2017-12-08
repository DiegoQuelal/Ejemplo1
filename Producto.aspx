<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="CRUD_PRODUCTOS.Producto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
    <form id="form1" runat="server">
        <div style="border: thin inset #000000; background-color: #808080; position: relative; visibility: visible;">
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
                <br />
                <br />
            <asp:Label ID="Label1" runat="server" Text="UNIVERSIDAD TÉCNICA DEL NORTE" Font-Bold="True" ForeColor="#990000" Font-Size="X-Large"></asp:Label>
                <br />
            <asp:Label ID="Label2" runat="server" Text="Fica - Cisic" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC"></asp:Label>
                </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            Integrantes:<br />
            Diego Armando Quelal Enríquez<br />
            Luis
            Fabián Gonzáles Yamberla<br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Buscar por Código:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" Width="78px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Recargar" />
                </div>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="ObjectDataSource1" DefaultMode="Insert" ForeColor="#333333" Height="50px" Width="329px" HorizontalAlign="Center" GridLines="None" BorderColor="Black" BorderStyle="Solid">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="IdProducto" HeaderText="Código Producto" InsertVisible="False" ReadOnly="True" SortExpression="IdProducto" />
                    <asp:BoundField DataField="NombreProducto" HeaderText="Nombre del Producto" SortExpression="NombreProducto" />
                    <asp:BoundField DataField="CantidadExistente" HeaderText="Cantidad Existente" SortExpression="CantidadExistente" />
                    <asp:BoundField DataField="PrecioVenta" HeaderText="Precio de Venta" SortExpression="PrecioVenta" />
                    <asp:BoundField DataField="PrecioCompra" HeaderText="Precio de Compra" SortExpression="PrecioCompra" />
                    <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" SortExpression="Proveedor" />
                    <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CRUD_PRODUCTOS.dsProductosTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_IdProducto" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NombreProducto" Type="String" />
                    <asp:Parameter Name="CantidadExistente" Type="Int16" />
                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                    <asp:Parameter Name="Proveedor" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreProducto" Type="String" />
                    <asp:Parameter Name="CantidadExistente" Type="Int16" />
                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                    <asp:Parameter Name="Proveedor" Type="String" />
                    <asp:Parameter Name="Original_IdProducto" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CRUD_PRODUCTOS.dsProductosTableAdapters.Productos1TableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_IdProducto" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NombreProducto" Type="String" />
                    <asp:Parameter Name="CantidadExistente" Type="Int16" />
                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                    <asp:Parameter Name="Proveedor" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="IdProducto" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreProducto" Type="String" />
                    <asp:Parameter Name="CantidadExistente" Type="Int16" />
                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                    <asp:Parameter Name="Proveedor" Type="String" />
                    <asp:Parameter Name="Original_IdProducto" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="IdProducto" DataSourceID="ObjectDataSource1" HorizontalAlign="Center" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="IdProducto" HeaderText="Código Producto" InsertVisible="False" ReadOnly="True" SortExpression="IdProducto" />
                    <asp:BoundField DataField="NombreProducto" HeaderText="Nombre del Producto" SortExpression="NombreProducto" />
                    <asp:BoundField DataField="CantidadExistente" HeaderText="Cantidad Existente" SortExpression="CantidadExistente" />
                    <asp:BoundField DataField="PrecioVenta" HeaderText="Precio de Venta" SortExpression="PrecioVenta" />
                    <asp:BoundField DataField="PrecioCompra" HeaderText="Precio de Compra" SortExpression="PrecioCompra" />
                    <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" SortExpression="Proveedor" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CRUD_PRODUCTOS.dsProductosTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_IdProducto" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NombreProducto" Type="String" />
                    <asp:Parameter Name="CantidadExistente" Type="Int16" />
                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                    <asp:Parameter Name="Proveedor" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreProducto" Type="String" />
                    <asp:Parameter Name="CantidadExistente" Type="Int16" />
                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                    <asp:Parameter Name="Proveedor" Type="String" />
                    <asp:Parameter Name="Original_IdProducto" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
        </div>
    </form>
        </div>
</body>
</html>
