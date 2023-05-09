<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Edit Manager</h1>
       <form:form method="POST" action="/Inventory/editsave">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="userId" /></td>
         </tr> 
          <tr>  
          <td>User Name : </td> 
          <td><form:input path="username"  /></td>
         </tr>  
         <tr> 
         <tr>  
          <td>Password : </td> 
          <td><form:input path="password"  /></td>
         </tr>  
         <tr>  
          <td>Email :</td>  
          <td><form:input path="email" /></td>
         </tr> 
         <tr>  
          <td>Role :</td>  
          <td><form:input path="role" /></td>
         </tr> 
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
        </table>  
       </form:form>  