<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Edit Product</h1>
       <form:form method="POST" action="/Inventory/editsaveproduct">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="product_id" /></td>
         </tr>
         <tr>  
          <td>Product Name : </td> 
          <td><form:input path="Product_name"  /></td>
         </tr>  
         <tr> 
         <tr>  
          <td>Description : </td> 
          <td><form:input path="description"  /></td>
         </tr>  
         <tr>  
          <td>Price :</td>  
          <td><form:input path="price" /></td>
         </tr> 
         <tr>  
          <td>Quantity :</td>  
          <td><form:input path="Pquantity" /></td>
         </tr> 
          <tr>  
          <td>Category Id :</td>  
          <td><form:input path="cid" /></td>
         </tr> 
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
