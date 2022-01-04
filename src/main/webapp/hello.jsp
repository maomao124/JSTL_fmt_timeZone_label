<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fmt_timeZone_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/4
  Time(创建时间)： 13:33
  Description(描述)：
   JSTL <fmt:timeZone> 标签用于指定时区，以供其它标签使用。
JSP <fmt:timeZone> 标签的语法如下：
<fmt:timeZone value="timeValue">
    代码块
</fmt:timeZone>
其中，value 为要设置的时区。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>时区表</title>
</head>
<body>
<c:set var="str" value="<%=new java.util.Date()%>"/>
<table border="2" width="100%">
    <tr>
        <td width="100%" colspan="2" bgcolor="#FF7F50">
            <p align="center">
                <b>
                    <font color="#000000" size="6">
                        格式:
                        <fmt:formatDate value="${str}" type="both" timeStyle="long" dateStyle="long"/>
                    </font>
                </b>
            </p>
        </td>
    </tr>
    <tr>
        <td width="50%" bgcolor="#C0C0C0">时区</td>
        <td width="50%" bgcolor="#FFEBCD">时间</td>
    </tr>
    <c:forEach var="zone" items="<%=java.util.TimeZone.getAvailableIDs()%>">
        <tr>
            <td width="50%" bgcolor="#C0C0C0"><c:out value="${zone}"/></td>
            <td width="50%" bgcolor="#FFEBCD">
                <fmt:timeZone value="${zone}">
                    <fmt:formatDate value="${str}" timeZone="${zn}" type="both"/>
                </fmt:timeZone>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
