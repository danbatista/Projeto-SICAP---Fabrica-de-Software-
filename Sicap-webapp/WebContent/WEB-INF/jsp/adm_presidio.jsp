<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>SICAP - Administra��o</title>
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
<link href="/sicap_assets/assets/css/dashboard.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span> </a><a
					class="brand" href="index.html">Administra��o Prisional </a>
				<!--/.nav-collapse -->
			</div>
			<!-- /container -->
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->
	<div class="subnavbar">
		<div class="subnavbar-inner">
			<div class="container">
				<ul class="mainnav">
					<li class="active"><a href="ADMPrisional"><i
							class="icon-group "></i><span>Manuten��o das Informa��es</span> </a></li>
				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /subnavbar-inner -->
	</div>
	<!-- /subnavbar -->
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span6">
						<!--  insert START -->
						<div id="inserir">
							<div class="widget widget-nopad">
								<div class="widget-header">
									<i class="icon-list-alt"></i>
									<h3>Cadastrar novo Pavilh�o</h3>
								</div>
								<!-- /widget-header -->
								<div class="widget-content">
									<div class="widget big-stats-container">
										<div class="widget-content">
											<h6 class="bigstats">Insira aqui as informa��es do
												Pavilh�o</h6>
											<div id="big_stats" class="cf">
												<form:form commandName="CelaPavilhao_Command"
													id="pavilhao_form" action="sendFormInsertPav" method="post">
													<form:input path="Pavilhao" type="text"
														placeholder="Descri��o" value = "" />
													<button class="button btn btn-success btn-large">Cadastrar</button>
													<button type= "reset" class="button btn btn-success btn-large">Limpar</button>
											
												</form:form>
												<h4 id="sucesso_pavilhao">Cadastrado com sucesso!</h4>
											</div>
										</div>
										<!-- /widget-content -->

									</div>
								</div>
							</div>


							<div class="widget widget-nopad">
								<div class="widget-header">
									<i class="icon-list-alt"></i>
									<h3>Cadastrar nova Cela</h3>
								</div>
								<!-- /widget-header -->
								<div class="widget-content">
									<div class="widget big-stats-container">
										<div class="widget-content">
											<h6 class="bigstats">Insira aqui as informa��es da Cela</h6>
											<div id="big_stats" class="cf">
												<form:form commandName="CelaPavilhao_Command" id="cela_form"
													action="sendFormInsertCel" method="post">
													<form:input type="number" path="PavID"
														placeholder="ID do Pavilh�o" value = "" />
													<form:input type="number" path="Cela"
														placeholder="N�mero da Cela"  value = ""/>
													<button class="button btn btn-success btn-large">Cadastrar</button>
													<button type= "reset" class="button btn btn-success btn-large">Limpar</button>
												</form:form>
												<h4 id="sucesso_cela">Cadastrado com sucesso!</h4>
											</div>
										</div>
										<!-- /widget-content -->

									</div>
								</div>
							</div>
						</div>
						<!--  CADASTRO END -->
					</div>
					<!-- /span6 -->
					<div class="span6">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-bookmark"></i>
								<h3>Important Shortcuts</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<div class="shortcuts">
									<a href="javascript:;" class="shortcut"><i
										class="shortcut-icon icon-list-alt"></i><span
										class="shortcut-label">Apps</span> </a><a href="javascript:;"
										class="shortcut"><i class="shortcut-icon icon-bookmark"></i><span
										class="shortcut-label">Bookmarks</span> </a><a href="javascript:;"
										class="shortcut"><i class="shortcut-icon icon-signal"></i>
										<span class="shortcut-label">Reports</span> </a><a
										href="javascript:;" class="shortcut"> <i
										class="shortcut-icon icon-comment"></i><span
										class="shortcut-label">Comments</span>
									</a><a href="javascript:;" class="shortcut"><i
										class="shortcut-icon icon-user"></i><span
										class="shortcut-label">Users</span> </a><a href="javascript:;"
										class="shortcut"><i class="shortcut-icon icon-file"></i><span
										class="shortcut-label">Notes</span> </a><a href="javascript:;"
										class="shortcut"><i class="shortcut-icon icon-picture"></i>
										<span class="shortcut-label">Photos</span> </a><a
										href="javascript:;" class="shortcut"> <i
										class="shortcut-icon icon-tag"></i><span
										class="shortcut-label">Tags</span>
									</a>
								</div>
								<!-- /shortcuts -->
							</div>
							<!-- /widget-content -->
						</div>
						<!-- /widget -->

						<div class="widget widget-table action-table">
							<div class="widget-header">
								<i class="icon-th-list"></i>
								<h3>Re��o de Pavilh�es e Celas Ativos no Momento</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th id="btn_atualiza">Cela</th>
											<th id="btn_atualiza">Pavilh�o</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${lista}" varStatus="id">
											<tr>
												<td><a href="atualizaCEL?CelID=${item.celID}
											                      &PavID=${item.pavID}
											                      &Cela=${item.cela}">
														${item.cela}</a></td>
												<td><a href="atualizaPav?PavID=${item.pavID}
											                           &Pavilhao=${item.pavilhao}">${item.pavilhao}</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /widget-content -->
						</div>
						<!-- /widget -->

					</div>
					<!-- /span6 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /main-inner -->
	</div>
	<!-- /main -->

	<div class="footer">
		<div class="footer-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						&copy; 2016 <a href="http://www.egrappler.com/">Intech inc.</a>.
					</div>
					<!-- /span12 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /footer-inner -->
	</div>
	<!-- /footer -->
	<!-- Le javascript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/sicap_assets/assets/js/jquery-1.7.2.min.js"></script>
	<script src="/sicap_assets/assets/js/excanvas.min.js"></script>
	<script src="/sicap_assets/assets/js/chart.min.js"
		type="text/javascript"></script>
	<script src="/sicap_assets/assets/js/bootstrap.js"></script>
	<script src="/sicap_assets/assets/js/base.js"></script>
	<script>
		
		$(document).ready(function() {
			$("#atualiza").hide();
			$("#sucesso_cela").hide();
			$("#sucesso_pavilhao").hide();
			$("#update").click(function() {
				console.log("Clicou");
				$("#inserir").hide();
				$("#atualiza").show();
			});

			$("#cela_form").submit(function() {
				$("#sucesso_cela").show();
			});

			$("#pavilhao_form").submit(function() {
				$("#sucesso_pavilhao").show();
			});
		            $('#pavilhao_form')[0].reset();
		            $('#cela_form')[0].reset();
	

		});
	</script>
	<!-- /Calendar -->
</body>
</html>