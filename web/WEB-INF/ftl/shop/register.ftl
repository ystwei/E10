<#assign spring=JspTaglibs["http://www.springframework.org/tags"]/>
<#assign form=JspTaglibs["http://www.springframework.org/tags/form"] />
<#include "commons/top.ftl" encoding="utf-8" parse="true"/>
<#assign ppath= request.contextPath/>  

<br/>
<@form.form commandName="user" method="post" 
    	action="${ppath}/user/register" id="form1" name="form1" >

	<TABLE cellpadding=10 cellspacing=0 align=center border=1 width="410"
		bgcolor=#dddddd>
		<TR>
			<TD>
				<FONT color=darkgreen>
					<H3>
						用户信息
					</H3>
				</FONT>
				<TABLE border=0  bgcolor=#FFFF88  width="100%">
					<TR bgcolor=#FFFF88>						
						<TD>
						 用户名&nbsp;&nbsp;<input type="text" name="username" id="username" value="${username}"/>
						 
						 <font color="red"> <@form.errors
							path="username" /></font>
						</TD>
					</TR>
					<TR bgcolor=#FFFF88>
						
						<TD>
							 
							新密码&nbsp;&nbsp;<input type="text" name="password" id="password" value="${password}"/>
							<font color="red"> <@form.errors
								path="password" /></font>
						</TD>
					</TR>
					<TR bgcolor=#FFFF88>
						
						<TD>
							 
							重输密码<input type="text" name="repassword" id="repassword" value="${repassword}"/>
							<font color="red"> <@form.errors
								path="repassword" /></font>
						</TD>
					</TR>
				</TABLE>





				<FONT color=darkgreen><H3>
						账户信息	
					</H3>
				</FONT>

				<TABLE bgcolor="#FFFF88" border=0 
					bgcolor=#FFFF88 width="100%">
					<TR bgcolor=#FFFF88>
						
						<TD>
							真实姓名<input type="text" name="xm" id="xm" 
								value="${xm}"/>
								<font color="red"> <@form.errors
								path="xm" /></font>
						</TD>
					</TR>
					
					<TR bgcolor=#FFFF88>
						
						<TD>
							邮箱&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" id="email" value="${email}"/>
							<font color="red"> <@form.errors
								path="email" /></font>
						</TD>
					</TR>
					
					<TR bgcolor=#FFFF88>
						
						<TD>
							 
							地址&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address" id="address" value="${address}"/>
							<font color="red"> <@form.errors
								path="address" /></font>
						</TD>
					</TR>
					
					
				</TABLE>


				<FONT color=darkgreen><H3>
						 喜爱的设置
					</H3>
				</FONT>

				<TABLE bgcolor="#FFFF88" border=0 cellpadding=3 cellspacing=1 width="100%">
					<TR bgcolor=#FFFF88>
						
						<TD>
							语言设置<select id="profile.lang" name="profile.lang" >
								<option value="english">
									英语
								</option>
								<option value="chinese">
									中文
								</option>
							</select>
						</TD>
					</TR>
					<TR bgcolor=#FFFF88>
						
						<TD>
							喜爱宠物
							<select id="profile.catid" name="profile.catid" >
								  <#if Request["clist"]?exists>
							    	<#list Request["clist"] as cate>
										<option value="${cate.catid}">
											${cate.catid}
										</option>
										
							    		
							    	
							    	</#list>
							    
							    
							    </#if>
							</select>
						</TD>
					</TR>
					<tr>
						<td><font color="red">${error}</font></td>
					</tr>
				</TABLE>
	</TABLE>

	<BR>
	<CENTER>
		<input border=0 type="image" src="${ppath}/static/images/button_submit.gif" />
	</CENTER>
</@form.form>

<#include "commons/bottom.ftl" encoding="utf-8" parse="true"/>