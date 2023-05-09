<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Add New Product</h1>
       <form:form method="post" action="/Inventory/saveproduct">  
      	<table >  
      	<tr>  
          <td>Product Id : </td> 
          <td><form:input path="product_id"  /></td>
         </tr>
         <tr>  
          <td>Product Name : </td> 
          <td><form:input path="Product_name"  /></td>
         </tr>  
         <tr>  
          <td>Description :</td>  
          <td><form:input path="description" /></td>
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
          <td><form:input path="Cid" /></td>
         </tr> 
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
