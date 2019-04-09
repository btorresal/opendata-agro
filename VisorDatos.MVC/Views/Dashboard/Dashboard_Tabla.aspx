<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <script src="<%= Url.Content("~/Scripts/jquery-1.10.2.min.js") %>" type="text/javascript"></script>
    <link href="<%= Url.Content("~/Content/bootstrap.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Url.Content("~/Content/Site.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Url.Content("~/Content/dashboard.css") %>" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
</head>
<div class="dashboardItem">
    <div class="dashboardItemHeader"><%=((VisorDatos.BE.BE_FuenteDatos)Model).Nombre %></div>
    <div class="dashboardDevScroll">
        <% if (((VisorDatos.BE.BE_FuenteDatos)Model).Datos != null && ((VisorDatos.BE.BE_FuenteDatos)Model).Datos.Rows.Count > 0)
            { %>
        <table class="tbl" style="">
            <thead>
                <tr>
                    <% foreach (System.Data.DataColumn col in ((VisorDatos.BE.BE_FuenteDatos)Model).Datos.Columns)
                        { %>
                    <th><%=col.Caption %></th>
                    <%} %>
                </tr>
            </thead>
            <tbody>
                <% foreach (System.Data.DataRow row in ((VisorDatos.BE.BE_FuenteDatos)Model).Datos.Rows)
                    { %>
                <tr>
                    <% foreach (var cell in row.ItemArray)
                        {%>
                    <td><%=cell.ToString() %></td>
                    <%} %>
                </tr>
                <%} %>
            </tbody>
        </table>
        <%}
            else
            {%>
        <p>La fuente de datos no retorna registros</p>
        <%} %>
    </div>
</div>
