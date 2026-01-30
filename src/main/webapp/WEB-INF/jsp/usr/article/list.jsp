<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="${board.code} LIST" />

<%@ include file="../common/head.jspf"%>

<hr />

<section class="mt-24 text-xl px-4">
    <div class="mx-auto">

        <div class="mb-2">${articlesCount}개</div>

        <table class="table" border="1" cellspacing="0" cellpadding="5"
               style="width: 100%; border-collapse: collapse;">

            <thead>
                <tr>
                    <th style="text-align: center;">ID</th>
                    <th style="text-align: center;">Registration date</th>
                    <th style="text-align: center;">Title</th>
                    <th style="text-align: center;">Writer</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="article" items="${articles}">
                    <tr class="hover:bg-base-300">
                        <td style="text-align: center;">${article.id}</td>
                        <td style="text-align: center;">
                            ${article.regDate.substring(0,10)}
                        </td>
                        <td style="text-align: center;">
                            <a href="detail?id=${article.id}">
                                ${article.title}
                            </a>
                        </td>
                        <td style="text-align: center;">
                            ${article.extra__writer}
                        </td>
                    </tr>
                </c:forEach>

                <c:if test="${empty articles}">
                    <tr>
                        <td colspan="4" style="text-align: center;">
                            게시글이 없습니다
                        </td>
                    </tr>
                </c:if>
            </tbody>
        </table>

        <div class="mt-4 flex justify-center gap-2">
            <c:if test="${page > 1}">
                <a href="/usr/article/list?boardId=${board.id}&page=${page - 1}"
                   class="px-3 py-1 border rounded bg-white">
                    ◀
                </a>
            </c:if>

            <c:forEach var="i" begin="1" end="${totalPage}">
                <a href="/usr/article/list?boardId=${board.id}&page=${i}"
                   class="px-3 py-1 border rounded
                          ${i == page ? 'bg-gray-800 text-white' : 'bg-white'}">
                    ${i}
                </a>
            </c:forEach>

            <c:if test="${page < totalPage}">
                <a href="/usr/article/list?boardId=${board.id}&page=${page + 1}"
                   class="px-3 py-1 border rounded bg-white">
                    ▶
                </a>
            </c:if>
        </div>

    </div>
</section>

<%@ include file="../common/foot.jspf"%>
