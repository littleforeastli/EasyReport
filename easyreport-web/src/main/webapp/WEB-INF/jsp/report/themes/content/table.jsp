<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<div id="table-report-div" style="margin: 5px;">
    <form id="table-report-form">
        <table class="designer-table" style="width: 100%;padding: 6px;">
            <tr>
                <td id="table-report-title" colspan="2" style="font-size: 24px;">${name}</td>
            </tr>
            <tr>
                <td style="text-align: left;">${formHtmlText}
                    <input id="table-report-isMergeRow" type="checkbox" name="isMergeRow" checked="checked"/>合并左边相同维度行
                    <a id="btn-generate" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">生成</a>
                </td>
                <td style="text-align: right;">
                    <img id="btn-export-excel" title="导出到Excel" style="cursor: pointer;padding-right: 5px;"
                         src="${ctxPath}/assets/custom/easyui/themes/icons/excel_24.png"/>
                    <input id="table-report-id" type="hidden" name="id" value="${id}"/>
                    <input id="table-report-name" type="hidden" name="name" value="${name}"/>
                    <input id="table-report-uid" type="hidden" name="uid" value="${uid}"/>
                    <input id="table-report-isRowSpan" type="hidden" name="isRowSpan" value="true"/></td>
            </tr>
            <c:if test="${not empty statColumHtmlText}">
                <tr id="table-report-columns">
                    <td colspan="2" style="text-align: left;">${statColumHtmlText}</td>
                </tr>
            </c:if>
        </table>
    </form>
</div>
<div style="margin: 5px;" id="table-report-htmltext-div">${htmlTable}</div>