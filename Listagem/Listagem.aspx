<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listagem.aspx.cs" Inherits="Telemarketing.Listagem.Listagem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="../Main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" >

    function CallPrint(strid)
    {
     var prtContent = document.getElementById(strid);
     var WinPrint = window.open('print.htm','PrintWindow','letf=0,top=0,width=800%,height=600,toolbar=1,scrollbars=1,status=1');
     WinPrint.document.write(prtContent.innerHTML);
     WinPrint.document.close();
     WinPrint.focus();
     WinPrint.print();
     WinPrint.close();
    }

    </script>
</head>
<body>
    <center>
    <form runat="server">
        <h1>Listagem</h1>
        <table>
            <tr>
                <td>
                    <h2>Zona:</h2>
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="_zonas"></asp:DropDownList>
                </td>
                <td>
                    <h2>Localidades:</h2>
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="_destinos"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Panel runat="server" ID="_panel1">
                        <asp:GridView runat="server" ID="_bdSelection" AutoGenerateColumns="false">
                            <Columns>
                                <asp:CheckBoxField DataField="select" />
                                <asp:BoundField HeaderText="BD" DataField="BD" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="_panel2">
                        <div id="divPrint">
                        <asp:GridView runat="server" ID="_info" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField HeaderText="BD" DataField="BD"/>
                                <asp:BoundField HeaderText="Total Registos" DataField="nRegistos"/>
                                <asp:TemplateField HeaderText="Registos a Imprimir">
                                    <ItemTemplate>
                                        <asp:TextBox runat="server" ID="_choice"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField Text="Imprimir" />
                            </Columns>
                        </asp:GridView>
                        </div>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        
        <asp:Button ID="_printButton" runat="server" Text="Print" Width="159px" />
    </form>
    </center>
</body>
</html>
