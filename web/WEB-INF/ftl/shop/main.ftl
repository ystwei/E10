<#assign ppath= request.contextPath/>  
<#include "commons/top.ftl" encoding="utf-8" parse="true"/>
	

		<table border="0" cellspacing="2" cellpadding="0" width="100%">
			<tr>
				<td valign="top" width="100%">

					<table align="left" border="0" cellspacing="0" width="80%">
						<tbody>
							<tr>
								<td valign="top">

									<!-- SIDEBAR -->
									
									<table bgcolor="#5A8C29" border="0" cellspacing="2"
										cellpadding="0" width="100%">
										<tr>
											<td>
												<table bgcolor="#FFFF88" border="0" cellspacing="0"
													cellpadding="5" width="200">
													<tbody>
														<tr>
															<td>
															
															<#if Session["realname"]?exists>
																<#list Session["realname"] as user>
																<b><i><font size="2" color="BLACK">
																	欢迎${user}
																
																</font></i></b>
																&nbsp;
																</#list>
															</#if>
																
															</td>
														</tr>
														<tr>
															<td>
															<a href="${ppath}/pet/query/FISH/con/cate"><img
																		border="0" src="${ppath}/static/images/fish_icon.gif" />
															</a>
																
																<br>
																<font size="2"><i>咸水鱼类 淡水鱼类</i>
																</font>
															</td>
														</tr>
														<tr>
															<td>
																<a
																	href="${ppath}/pet/query/DOGS/con/cate"><img
																		border="0" src="${ppath}/static/images/dogs_icon.gif" />
																</a>
																<br>
																<font size="2"><i>多品种</i>
																</font>
															</td>
														</tr>
														<tr>
															<td>
																<a
																	href="${ppath}/pet/query/CATS/con/cate"><img
																		border="0" src="${ppath}/static/images/cats_icon.gif" />
																</a>
																<br>
																<font size="2"><i>多品种 国外品种</i>
																</font>
															</td>
														</tr>
														<tr>
															<td>
																<a
																	href="${ppath}/pet/query/BIRDS/con/cate"><img
																		border="0" src="${ppath}/static/images/reptiles_icon.gif" />
																</a>
																<br>
																<font size="2"><i>蜥蜴 乌龟 蛇</i>
																</font>
															</td>
														</tr>
														<tr>
															<td>
																<a
																	href=""><img
																		border="0" src="${ppath}/static/images/birds_icon.gif" />
																</a>
																<br>
																<font size="2"><i>奇异的品种</i>
																</font>
															</td>
														</tr>

													</tbody>
												</table>
											</td>
										</tr>
									</table>

								</td>
								<td align="center" bgcolor="white" height="300" width="100%">

									<!-- MAIN IMAGE -->

									<map name="estoremap">
										<area alt="Birds" coords="72,2,280,250"
											href="" shape="RECT" />
										<area alt="Fish" coords="2,180,72,250"
											href="" shape="RECT" />
										<area alt="Dogs" coords="60,250,130,320"
											href="" shape="RECT" />
										<area alt="Reptiles" coords="140,270,210,340"
											href="" shape="RECT" />
										<area alt="Cats" coords="225,240,295,310"
											href="" shape="RECT" />
										<area alt="Birds" coords="280,180,350,250"
											href="" shape="RECT" />
									</map>
									<img border="0" height="355" src="${ppath}/static/images/splash.gif"
										align="center" usemap="#estoremap" width="350" />
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>

		</table>

		<br>
<#include "commons/banner.ftl" encoding="utf-8" parse="true"/>
<#include "commons/bottom.ftl" encoding="utf-8" parse="true"/>


