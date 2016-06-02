<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" %>
	
<div class="span12">
	<div class="widget">
		<div class="widget-header">
			<i class="icon-user"></i>
  			<h3>Visitantes</h3>
	  	</div>	
	  	
	  	<div class="widget-content">
	  		<div class="tabbable">
	  			<ul class="nav nav-tabs">
	  				<li class="active">
	  					<a href="#new" data-toggle="tab">Novo</a>
					</li>
					<li class="">
	  					<a href="#update" data-toggle="tab">Atualizar</a>
					</li>
	  			</ul>
	  			<br/>
	  			<div class="tab-content">
	  				<div class="tab-pane active" id="new">
						<form:form id="visitanteForm" action="sendFormInsertVisitante" class="form form-horizontal" commandName="Visitante_Command">
							<fieldset>
							<div class="control-group">
								<label class="control-label" for="det-id">Detento ID</label>
								<div class="controls">
									<form:input id="det-id" path="DetID" size="30"  class="span6" placeholder="" type="text"/>
									<form:errors path="DetID" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="situation">Situação</label>
								<div class="controls">
									<form:input id="situation" path="VisSituacao" size="30"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisSituacao" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="name">Nome</label>
								<div class="controls">
									<form:input id="name" path="VisNome" size="30"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisNome" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="nickname">Apelido</label>
								<div class="controls">
									<form:input id="nickname" path="VisApelido" size="30"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisApelido" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="obs">Observação</label>
								<div class="controls">
									<form:input id="obs" path="VisObservacao" size="30"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisObservacao" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="foto">Foto</label>
								<div class="controls">
									<form:input id="foto" path="VisFoto"  class="span6" type="text"/>
									<form:errors path="VisFoto" cssClass="error" />
								</div>
							</div>
							
							
							<div class="control-group">
								<label class="control-label" for="street">Logradouro</label>
								<div class="controls">
									<form:input id="street" path="VisLogradouro"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisLogradouro" cssClass="error" />
								</div>
							</div>


							<div class="control-group">
								<label class="control-label" for="number">Número</label>
								<div class="controls">
									<form:input id="number" path="VisNumero"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisNumero" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="complement">Complemento</label>
								<div class="controls">
									<form:input id="complement" path="VisComplemento"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisComplemento" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="neightborhood">Bairro</label>
								<div class="controls">
									<form:input id="neightborhood" path="VisBairro"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisBairro" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="zipCode">CEP</label>
								<div class="controls">
									<form:input id="zipCode" path="VisCEP"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisCEP" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="city">Cidade</label>
								<div class="controls">
									<form:input id="city" path="VisCidade"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisCidade" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="state">Estado</label>
								<div class="controls">
									<form:input id="state" path="VisEstado"  class="span6" placeholder="" type="text"/>
									<form:errors path="VisEstado" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="prtId">Prontuário ID</label>
								<div class="controls">
									<form:input id="prtId" path="PrtID"  class="span6" placeholder="" type="text"/>
									<form:errors path="PrtID" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="rg">RG</label>
								<div class="controls">
									<form:input id="rg" path="VisRG"  class="span6" size="30" placeholder="123456 SSP-XX" type="text"/>
									<form:errors path="VisRG" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="cpf">CPF</label>
								<div class="controls">
									<form:input id="cpf" path="VisCPF"  class="span6" size="30" placeholder="123.456.789-00" type="text"/>
									<form:errors path="VisCPF" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="cnh">CNH</label>
								<div class="controls">
									<form:input id="cnh" path="VisCNH"  class="span6" size="30" placeholder="" type="text"/>
									<form:errors path="VisCNH" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="militaryNumber">Reservista</label>
								<div class="controls">
									<form:input id="militaryNumber" path="VisReservista"  class="span6" size="30" placeholder="" type="text"/>
									<form:errors path="VisReservista" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="ctps">CTPS</label>
								<div class="controls">
									<form:input id="ctps" path="VisCTPS"  class="span6" size="30" placeholder="" type="text"/>
									<form:errors path="VisCTPS" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="bornDate">Data de Nascimento</label>
								<div class="controls">
									<form:input id="bornDate" path="VisNascimento"  class="span6" size="30" placeholder="01/01/2016" pattern="dd/MM/aaaa" type="date"/>
									<form:errors path="VisNascimento" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="type">Tipo</label>
								<div class="controls">
									<form:input id="type" path="VisTipo"  class="span6" size="30" type="text"/>
									<form:errors path="VisTipo" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="dig1">Dig01</label>
								<div class="controls">
									<form:input id="dig1" path="VisDig01"  class="span6" size="30" type="text"/>
									<form:errors path="VisDig01" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="dig2">Dig02</label>
								<div class="controls">
									<form:input id="dig2" path="VisDig02"  class="span6" size="30" type="text"/>
									<form:errors path="VisDig02" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="statusCar">Status Carteira</label>
								<div class="controls">
									<form:input id="statusCar" path="VisStatusCarteira"  class="span6" size="30" type="text"/>
									<form:errors path="VisStatusCarteira" cssClass="error" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="phone">Telefone</label>
								<div class="controls">
									<form:input id="phone" path="VisTelefone"  class="span6" size="30" type="tel"/>
									<form:errors path="VisTelefone" cssClass="error" />
								</div>
							</div>
							
							<div class="form-actions">
								<button class="btn btn-primary" type="submit">Cadastrar</button>
								<button class="btn clean-fields" type="submit" onclick="javascript:void(0);return false;">Limpar</button>
							</div>
							</fieldset>
						</form:form>
					</div>
	  				<div class="tab-pane" id="update">
	  			</div>
			
			</div>
		</div>
	</div>
</div>