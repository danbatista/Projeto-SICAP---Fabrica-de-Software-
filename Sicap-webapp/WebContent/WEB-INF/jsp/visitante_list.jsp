<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SICAP - In�cio</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/sicap_assets/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/sicap_assets/assets/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="/sicap_assets/assets/css/font-awesome.css" rel="stylesheet">
<link href="/sicap_assets/assets/css/style.css" rel="stylesheet">
<link href="/sicap_assets/assets/css/pages/dashboard.css"
	rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
		<div class="widget widget-nopad">
			<div class="lista">

				<div class="widget-header">
					<i class="icon-list-alt"></i>
					<h3>Visitantes Ativos</h3>
				</div>
				<div class="widget widget-table action-table">
					<!-- /widget-header -->
					<div class="widget-content">
						<table id="vistable" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>DetID</th>
									<th>Situacao</th>
									<th>Nome</th>
									<th>Apelido</th>
										<th>Observacao</th>
<!-- 											<th>Foto</th> -->
<!-- 											<th>Logradouro</th> -->
<!-- 											<th>Numero</th> -->
<!-- 											<th>Complemento</th> -->
<!-- 											<th>Bairro</th> -->
<!-- 											<th>CEP</th> -->
<!-- 											<th>Cidade</th> -->
<!-- 											<th>Estado</th> -->
<!-- 											<th>Parentesco ID</th>  -->
									<th>RG</th>
									<th>CPF</th>
									<th>Telefone</th>
									<th>Selecionar/Inativar</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${listaVisitante}" varStatus="id">
									<tr>
										<td>${item.detID}</td>
										<td>${item.visSituacao}</td>
										<td>${item.visNome}</td>
										<td>${item.visApelido}</td>
											<td>${item.visObservacao}</td>
<%-- 											<td>${item.visFoto}</td> --%>
<%-- 											<td>${item.visLogradouro}</td> --%>
<%-- 											<td>${item.visNumero}</td> --%>
<%-- 											<td>${item.visComplemento}</td> --%>
<%-- 											<td>${item.visBairro}</td> --%>
<%-- 											<td>${item.visCEP}</td> --%>
<%-- 											<td>${item.visCidade}</td> --%>
<%-- 											<td>${item.visEstado}</td> --%>
<%-- 											<td>${item.prtID}</td>   --%>
										<td>${item.visRG}</td>
										<td>${item.visCPF}</td>
										<td>${item.visTelefone}</td>
										<td class="td-actions"><a onclick="#update"
											class="btn btn-small btn-success"
											href="visitanteUpdate?VisID=${item.visID}"> <i
												class="btn-icon-only icon-ok"> </i></a> <a
											class="btn btn-danger btn-small"
											onclick="javascript:inativa();"
											href="inativa?id=${item.visID}"> <i
												class="btn-icon-only icon-remove"> </i></a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<!-- /widget-content -->
				</div>
			</div>
		</div>
	</div>
	<!-- /main -->

	<!-- /widget -->

	<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
	<script src="/sicap_assets/assets/js/jquery-1.7.2.min.js"></script>
	<script src="/sicap_assets/assets/js/excanvas.min.js"></script>
	<script src="/sicap_assets/assets/js/chart.min.js"
		type="text/javascript"></script>
	<script src="/sicap_assets/assets/js/bootstrap.js"></script>
	<script language="javascript" type="text/javascript"
		src="/sicap_assets/assets/js/full-calendar/fullcalendar.min.js"></script>
<script src="/sicap_assets/assets/js/jquery.dataTables.min.js"></script>


	<script>
function inativa(){
decisao = confirm("Voc� deseja realmente inativar esse visitante?");
if (decisao){
	alert("Visitante inativado com sucesso!");
   return true;
} else {
    return false;
}
}

$(document).ready(function() {
	 $('#vistable').DataTable();
	
});
</script>
	
</body>
</html>
