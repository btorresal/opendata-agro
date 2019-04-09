<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <script src="<%= Url.Content("~/Scripts/jquery-1.10.2.min.js") %>" type="text/javascript"></script>
    <link href="<%= Url.Content("~/Content/bootstrap.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Url.Content("~/Content/Site.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Url.Content("~/Content/dashboard.css") %>" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
    //google.charts.load('current', { 'packages': ['bar'] });
    google.load("visualization", "1", { packages: ["corechart"] });
    google.setOnLoadCallback(drawChart);

    function drawChart() {

        $.post('<%= Url.Action("GetBarChartData", Model) %>', {},
            function (data) {
                var tdata = new google.visualization.DataTable();
                //var tdata = google.visualization.arrayToDataTable(data, false);

                //tdata.addColumn('string', 'Departamento');
                //tdata.addColumn('number', 'TotalSolicitudes');
               <%-- for (var i = 0; i < <%= ((VisorDatos.BE.BE_FuenteDatos)Model).Datos.Columns.Count %>; i++) {--%>
                for (var i = 0; i < 2; i++) {
                    if (i == 0) {
                        tdata.addColumn('string', 'Columna_Principal');
                    }
                    else {
                        tdata.addColumn('number', 'Columna' + i);
                    }
                }

                //tdata.addColumn('string', 'Departamento_I');
                //tdata.addColumn('number', 'XXXXXXXXX');

                for (var i = 0; i < 5; i++) {
                    tdata.addRow([data[i].Departamento, data[i].Total_Solicitudes]);
                }

                var options = {
                    title: "Top 5 Detalle"
                };
                var chart = new google.visualization.BarChart(document.getElementById('divGrafico1'));
                //var chart = new google.charts.Bar(document.getElementById('divGrafico1'));
                chart.draw(tdata, options);
            });
    }
</script>
</head>
<div class="dashboardItem">
    <div class="dashboardItemHeader"><%=((VisorDatos.BE.BE_FuenteDatos)Model).Nombre %></div>
    <div class="dashboardItemBody">
        <div id="divGrafico1" style="">
            <div class="ajaxLoading"></div>
         </div>
    </div>
</div>