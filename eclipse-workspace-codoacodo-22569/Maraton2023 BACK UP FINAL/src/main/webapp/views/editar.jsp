<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<jsp:include page="../styles.jsp"/>
		<link href="bootstrap.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
</head>
<body>
		<jsp:include page="../navbar.jsp"/>

<form class="row g-3 needs-validation bg-dark rounded pb-2" 
						action="corredores"
						method="post"
						>
						<c:set var="corredor" value="${corredor}"></c:set>
						<input type="hidden" name="opcion" value="editar">
						
						<input type="hidden" name="id" value="${corredor.id}">
						
						
						
						
					  <div class="col-md-4">
					    <label for="validationCustom01" class="form-label">
					    	Nombre:
					    </label>
					    <input type="text"
					    onkeydown="return /[a-z]/i.test(event.key)"	  
					    	name="nombre" 
					    	class="form-control" 
					    	id="validationCustom01" 
					    	value="${corredor.nombre}" 
					    	required
					    	>
					  </div>
					  <div class="col-md-4">
					    <label for="validationCustom02" class="form-label">Apellido:</label>
					    <input type="text"
					    onkeydown="return /[a-z]/i.test(event.key)"	  
					    	name="apellido" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="${corredor.apellido}" 
					    	required>
					  </div>
					  <div class="col-md-4">
					    <label for="validationCustom02" class="form-label">Numero de DNI:</label>
					    <input type="number"
					    	name="dni" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="${corredor.dni}" 
					    	required>
					  </div>
					  	<div class="col-md-4">
					    <label for="validationCustom02" class="form-label">Elegir Carrera</label>
					    <select name="carrera"required>
        <option value="5k">5k</option>
        <option value="20k">20k</option>
					   </select>
					  </div> 

					  <div class="col-12 text-center">
					    <button class="btn btn-success" type="submit" value="inscribirme">ACTUALIZAR</button>
					  </div>
					  
					  
					</form>
		      <footer class="mastfoot mt-auto">
        <div>
          <p>Organiza la Asociación de Carreras y Maratones de Buenos Aires - maratones@buenosaires.gov</p>
        </div>
      </footer>

</body>
</html>