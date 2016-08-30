<#assign ppath= request.contextPath/>  
<#include "commons/top.ftl" encoding="utf-8" parse="true"/>

<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="main.xhtml"><b><font color="BLACK" size="2">&lt;&lt; 宠物分类</font>
				</b></a>
		</td>
	</tr>
</table>

<p>
	<center>
		<h2>
			
		</h2>
	</center>
	<table align="center" bgcolor="#008800" border="0" cellspacing="2"
		cellpadding="3">
		<tr bgcolor="#CCCCCC">
			<td>
				产品编号
			</td>
			<td>
				产品名称
			</td>
		</tr>
			
			 <#if Request["plist"]?exists>
		    	<#list Request["plist"] as product>
					
					
					<tr bgcolor="#FFFF88">
						<td>
							<b><a href="${ppath}/pet/query/${product.productid}/con/pro">
								${product.productid}
							   </a>
							</b>
						</td>
						<td>
							${product.name}
						</td>
					</tr>
					
		    		
		    	
		    	</#list>
		    
		    
		    </#if>
				
			
			
			
		
			
		
		<tr>
			<td bgcolor="#FFFFFF" colspan="2">
				
				
			</td>
		</tr>
	</table>

<#include "commons/bottom.ftl" encoding="utf-8" parse="true"/>