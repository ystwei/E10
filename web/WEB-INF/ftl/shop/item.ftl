 
<#include "commons/top.ftl" encoding="utf-8" parse="true"/>
<#assign ppath= request.contextPath/>  
<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="viewproduct.xhtml">
				
			</a>
		</td>
	</tr>
</table>

<p>
<table align="center" bgcolor="#008800" cellspacing="2" cellpadding="3"
		border="0" width="60%">
		<#if Request["plist"]?exists>
		    	<#list Request["plist"] as item>
						<tr bgcolor="#FFFF88">
							<td bgcolor="#FFFFFF">
							
								<#escape x as x?html>
								  
									<#noescape><#--解析-->
										<image src="${ppath}/static/images/${item.product.pic}"/> ${item.descn}	<#--����-->
									</#noescape>
								</#escape> 
							</td>
						</tr>
						<tr bgcolor="#FFFF88">
							<td width="100%" bgcolor="#cccccc">
								${item.itemid}
							</td>
						</tr>
						<tr bgcolor="#FFFF88">
							<td>
								<b><font size="4"> 
									${item.attr1}
									${item.product.name}
								</font>
								</b>
							</td>
						</tr>
						<tr bgcolor="#FFFF88">
							<td>
								<font size="3"><i>${item.name}</i>
								</font>
							</td>
						</tr>
						<tr bgcolor="#FFFF88">
							<td>
								有
				
							</td>
						</tr>
						<tr bgcolor="#FFFF88">
							<td>
								${item.listprice}
							</td>
						</tr>
				
						<tr bgcolor="#FFFF88">
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