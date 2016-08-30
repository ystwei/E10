
<#include "commons/top.ftl" encoding="utf-8" parse="true"/>	

<#assign ppath= request.contextPath/>  

<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top" width="20%" align="left">
			<table align="left" bgcolor="#008800" border="0" cellspacing="2"
				cellpadding="2">
				<tr>
					<td bgcolor="#FFFF88">
						<a href="main.xhtml"><b><font color="BLACK" size="2">&lt;&lt; 主菜单</font>
				</b></a>
					</td>
				</tr>
			</table>
		</td>
		<td valign="top" align="center">
			<h2 align="center">
				
			</h2>
		
				<form id="form1" name="form1" action="${ppath}/cart/update" method="post" 
					commandName="cart">
				<table align="center" bgcolor="#008800" border="0" cellspacing="2"
					cellpadding="5" >
					<tr bgcolor="#cccccc">
						<td>
							宠物编号
						</td>
						<td>
							产品序号
						</td>
						<td>
							宠物描述
						</td>
						<td>
							<b>是否有宠物</b>
						</td>
						<td width="80">
							宠物单价
						</td>
						<td>
							宠物数量
						</td>
						<td>
							合计
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
				<#assign total = 0>
			
				<#if Request["clist"]?exists>
		    		<#list Request["clist"] as cart>					
					
					<tr bgcolor="#FFFF88">
						<td>
							<b> 
							
							
							<a href="">${cart.itemid}</a>
							<input type="hidden" name="ilist" value="${cart.itemid}"/>
							</b>
						</td>
						
		    				<#list cart.ilist as item>
								<td>
									${item.productid}								
								</td>
		   				
								<td>
									${item.attr1}
									
								</td>
								
								<td align="center">								
									有
								</td>
								<td>
									<#assign price="${item.listprice}"?number> 									
									${item.listprice}						
								</td>
							</#list>
						<td align="right">
							<#assign qty="${cart.quantity}"?number> 
							<input type="number" name="qlist" value="${cart.quantity}" />
							<br/>
						</td>
						<td align="right">						
							<#assign sum = price*qty>									
							${sum}
							<#assign total = total+sum>
						</td>
						<td>
							<a href="${ppath}/cart/del/${cart.itemid}/orderid/${cart.orderid}"><img border="0"
									src="${ppath}/static/images/button_remove.gif" />
							</a>
						</td>
					</tr>
					
					</#list>
		    
		    
		    </#if>	
			
					<tr bgcolor="#FFFF88">
						<td colspan="7" align="right">
							<b>
								总计：${total}
							</b>							
							
						</td>
						<td>
							<input type="image" border="0"
								src="${ppath}/static/images/button_update_cart.gif" />
							
							
						</td>
					</tr>
				</table>
				<center>


				</center>
			
				</form>

			<br />
			<center>
				<a href="cartcheckout.xhtml"><img border="0"
						src="${ppath}/static/images/button_checkout.gif" />
				</a>
			</center>


		</td>


		<td valign="top" width="20%" align="right">
			<input type="submit" value="提交"/>	
		</td>

	</tr>
</table>


<br>
<#include "commons/bottom.ftl" encoding="utf-8" parse="true"/>	
