<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualização de Cliente</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
          <h2>Atualizar Dados</h2>
          <form action="Atualizar" method="POST">	
          		<input value="${cliente.codigoCliente}" name="codigoCliente" type="number" class="invisible">
              <div class="form-row">
                  <div class="form-group col-md-6">
                      <label>Nome completo</label>
                      <input value="${cliente.nome}" name="nome" maxlength="40" type="text" class="form-control" placeholder="Nome Completo"/>
                  </div>
                  <div class="form-group col-md-3 mt-4">
                      <label>Cpf</label>
                      <input value="${cliente.cpf}" name="cpf" maxlength="11" type="text" class="form-control" placeholder="000.000.000-00"/>
                  </div>
                  <div class="form-group col-md-3 mt-4">
                      <label>E_mail</label>
                      <input value="${cliente.email}" name="email" maxlength="40" type="text" class="form-control" placeholder="e-mail"/>
                  </div>
                  <div class="form-group col-md-3 mt-4">
                      <label>Rua</label>
                      <input value="${cliente.rua}" name="rua" maxlength="30" type="text" class="form-control" placeholder="Nome da Rua"/>
                  </div>
                  <div class="form-group col-md-3 mt-4">
                      <label>Numero</label>
                      <input value="${cliente.numero}" name="numero" maxlength="10" type="text" class="form-control" placeholder="Número da residência"/>
                  </div>
                  <div class="form-group col-md-3 mt-4">
                      <label>Complemento</label>
                      <input value="${cliente.complemento}" name="complemento" maxlength="40" type="text" class="form-control" placeholder="Digite o complemento, se houver"/>
                  </div>
                  <div class="form-group col-md-3 mt-4">
                      <label>Cep</label>
                      <input value="${cliente.cep}" name="cep" maxlength="9" type="text" class="form-control" placeholder="Digite seu Cep"/>
                  </div>
                  <div class="form-group col-md-3 mt-4">
                      <label>Situação do cliente</label>
                      <select class="custom-select" name="situacao">
                          <option selected> Selecione uma opção </option>
                          <option value="Ativo">Ativo</option>
                          <option value="Inativo">Inativo</option>
                          <option value="Bloqueado">Bloqueado</option>
                      </select>
                  </div>
              </div>
              <div class="mt-4">              
              <button type="submit" class="btn btn-success ">Atualizar</button>
              </div>
          </form> 
          <div class="mt-5"> 
          <h5><a href="index.html" class="btn btn-success text-white">Voltar para o Cadastro de Clientes</a></h5>   
          </div>    
      </div> 
               
                                     
        <div>            
            <!-- JavaScript Bundle with Popper -->            
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>       
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