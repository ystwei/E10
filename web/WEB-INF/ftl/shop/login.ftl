<#assign ppath= request.contextPath/>  
<#include "commons/top.ftl" encoding="utf-8" parse="true"/>
	 <form name="form1" id="form1" commandName="user" method="post" 
  		action="${ppath}/user/login">

	<table align="center" border="0">
		<tr>
			<td colspan="2">
				
				<br />
				&nbsp;
			</td>
		</tr>
		<tr>
			
			<td>
				用户名：<input type="text" name="username" id="username"/>
			</td>
		</tr>
		<tr>
			
			<td>
				密&nbsp;&nbsp;码：<input type="text" name="password" id="password"/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="image" border="0" src="${ppath}/static/images/button_submit.gif" />
				<a href="rmain"><img border="0"
						src="${ppath}/static/images/button_register_now.gif" />
				</a>
			</td>
			
		</tr>
		<tr>
			<td>
				<font color="red">${error}</font>
			</td>
		
		</tr>
	</table>
	</form>
<center>
	
	
</center>
<#include "commons/bottom.ftl" encoding="utf-8" parse="true"/>
