<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de clientes</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>

</head>
<body>	
	<header class="bg-secondary text-white">
          <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light border-bottom box-shadow mb-3">
              <div class="container-fluid">
                  <a class="navbar-brand text-white" class="Home" type="Index">LaVieEstBelle</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                          aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="navbar-collapse collapse d-sm-inline-flex justify-content-center">
                      <ul class="navbar-nav flex-grow-1">
                          <li class="nav-item">
                              <a class="nav-link text-light" href="home.html">Home</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-light" href="destino.html">Destino</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-light" href="promocao.html">Promoções</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-light" href="contato.html">Contato</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-light" href="index.html">Administrador</a>
                          </li>
                      </ul>
                  </div>
              </div>
          </nav>  
       </header>
                         
      <div class="container">
	<div class="row">
		<div class="cold-md-7">
			<hr>
			<h3>Clientes Cadastrados</h3>
			<hr>
			<table class="table mt-4">
				<thead>
					<tr>
						 <th>CodigoCliente</th>
                            <th>Nome</th>
                            <th>Cpf</th>
                            <th>E_mail</th>
                            <th>Rua</th>
                            <th>Numero</th>
                            <th>Complemento</th>
                            <th>Cep</th>
                            <th>Situação</th>
					</tr>
				</thead>
				<form action="CreateAndFind" method="GET" class="d-flex">
                <input name="busca" class="form-control me-2" type="search" placeholder="Digite o Nome ou o Cpf cadastrados" aria-label="Search">                           
            	
            	<div class="mt-3"> 
          		<button type="submit" class="btn btn-success">Buscar</button>   
          		</div>            	
            	
                </form>                                
                <hr />
				<tbody>
				<c:forEach items="${clientes}" var="cliente">
							<tr>
								<td>${cliente.codigoCliente}</td>
		                         			<td>${cliente.nome}</td>
		                         			<td>${cliente.cpf}</td>
		                         			<td>${cliente.email}</td>
		                         			<td>${cliente.rua}</td>
		                         			<td>${cliente.numero}</td>
		                         			<td>${cliente.complemento}</td>
		                         			<td>${cliente.cep}</td>
		                         			<td>${cliente.situacao}</td>
								<td>
								<div class="container">
								<div class="row row-cols-2">
								<div class="mt-1">
									<a class="btn btn-success text-white" href="DeletarCliente?codigoCliente=${cliente.codigoCliente}">Deletar</a> 
								</div>
									<div class="mt-1">
									<a class="btn btn-success text-white" href="Atualizar?codigoCliente=${cliente.codigoCliente}">Atualizar</a>
									</div>
								</div>
								
								</div>
								
									
								</td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
			<div class="mt-5"> 
          <h5><a href="index.html" class="btn btn-success text-white">Voltar para o Cadastro de Clientes</a></h5>   
          </div> 			
		</div>
	</div>
</div>
<footer class="bg-secondary text-white">
        <div class="container">
            <div class="row mt-5">
                <div class="col-sm-3 text-light mt-3">
                    <h2>La Vie Est Belle</h2>
                </div>
                <div class="col-sm-2 mt-3">
                    <h5>Inicio</h5>
                    <ul>
                        <li><a class="nav-link text-light" href="home.html">Home</a></li>
                        <li><a class="nav-link text-light" href="destino.html">Destino</a></li>
                        <li><a class="nav-link text-light" href="promocao.html">Promoções</a></li>
                    </ul>
                </div>
                <div class="col-sm-2 mt-3">
                    <h5>Sobre-nós</h5>
                    <ul>                        
                        <li><a class="nav-link text-light" href="contato.html">Contato</a></li>                        
                    </ul>
                </div>
                <div class="col-sm-2 mt-3">
                    <h5>Administrador</h5>
                    <ul>
                        <li><a class="nav-link text-light" href="index.html">Administrador</a></li>                       
                    </ul>             
                </div>
            </div>
        </div>       
    </footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>                 			
 
       
</body>
</html>