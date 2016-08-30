<#assign ppath= request.contextPath/>  
<#include "commons/top.ftl" encoding="utf-8" parse="true"/>


<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="viewcategory.xhtml">
			
			</a>
		</td>
	</tr>
</table>

<p>

	<center>
		<h2>
		</h2>
	</center>

	<table align="center" bgcolor="#008800" border="0" cellspacing="2" cellpadding="3">
		<tr bgcolor="#CCCCCC">
			<td>
				宠物编号
			</td>
			<td>
				产品编号
			</td>
			<td>
				宠物描述
			</td>
			<td>
				宠物价格
			</td>
			<td>
				&nbsp;
			</td>
		</tr>
		<#if Request["plist"]?exists>
		    	<#list Request["plist"] as item>
					
					
					<tr bgcolor="#FFFF88">
						<td>
							<b> <a href="${ppath}/pet/query/${item.itemid}/con/item">${item.itemid}</a>
							</b>
						</td>
						<td>
							${item.product.productid}
						</td>
						<td>
							${item.attr1}
							&nbsp;
							${item.name}
						</td>
						<td>
							$${item.listprice}
						</td>
						<td>
							<a href="${ppath}/cart/add/${item.itemid}/qty/1"><img border="0"
									src="${ppath}/static/images/button_add_to_cart.gif" />
							</a>
						</td>
					</tr>	
		    	
		    	</#list>		    
		    
		    </#if>	

		
	</table>
	
<#include "commons/bottom.ftl" encoding="utf-8" parse="true"/>