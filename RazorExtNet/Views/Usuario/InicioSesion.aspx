<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Inicio de Sesión</title>
    <%= Styles.Render("~/Content/Site.css") %>
</head>
<body>
    <ext:ResourceManager runat="server"></ext:ResourceManager>

    <ext:Window runat="server" Title="Inicio de Sesión" Width="300" Height="140" BodyPadding="5" Layout="Fit">
        <Items>
            <ext:FormPanel ID="credenciales" runat="server" ButtonAlign="Center" BodyStyle="background:transparent;" Border="false">
                <Items>
                    <ext:TextField runat="server" ID="usuario" FieldLabel="Usuario" EmptyText="Nombre de usuario"></ext:TextField>
                    <ext:TextField runat="server" ID="contraseña" FieldLabel="Contraseña" InputType="Password"></ext:TextField>
                </Items>
                <Buttons>
                    <ext:Button runat="server" ID="iniciarSesion" Text="Iniciar">
                        <Listeners>
                            <Click Handler="Ext.Msg.show({title: 'Inicio de Sesión', msg: 'Implementar inicio de sesión', buttons: Ext.Msg.OK });"></Click>
                        </Listeners>
                    </ext:Button>
                </Buttons>
            </ext:FormPanel>
        </Items>
    </ext:Window>

    <%: Html.ActionLink("Razor", "InicioSesionRazor") %>
</body>
</html>
