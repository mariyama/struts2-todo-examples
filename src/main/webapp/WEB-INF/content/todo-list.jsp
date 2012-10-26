<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<ul class="nav nav-list todo-list">
	        <s:iterator value="items">
		        <li>
			        <s:if test="done">
				        <span class="todo-done"><s:property value="topic"/></span>
			        </s:if>
			        <s:else>
				        <span><s:property value="topic"/></span>
			        </s:else>
						<span class="actions pull-right">
			                <s:if test="!done">
					            <s:url var="doneurl" action="todo-done" namespace="/" escapeAmp="false">
						            <s:param name="id" value="%{id}"/>
						            <s:param name="nodoc" value="true" />
					            </s:url>
					            <sj:a href="%{doneurl}" targets="todoListContent"><i class="icon-ok"></i></sj:a>
			                </s:if>

							<s:url var="deleteurl" action="todo-delete" namespace="/" escapeAmp="false">
								<s:param name="id" value="%{id}"/>
								<s:param name="nodoc" value="true" />
							</s:url>
							<sj:a href="%{deleteurl}" targets="todoListContent"><i class="icon-trash"></i></sj:a>
						</span>
		        </li>
	        </s:iterator>
        </ul>