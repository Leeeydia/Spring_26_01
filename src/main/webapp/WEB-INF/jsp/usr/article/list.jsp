<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="ARTICLE LIST" />

<%@ include file="../common/head.jspf"%>

<hr />

<section class="mt-8 px-4">
	<div class="mx-auto" style="display: flex; gap: 24px;">

		<!-- 🔹 왼쪽 게시판 메뉴 -->
		<div style="width: 200px; border: 1px solid #ccc; padding: 12px;">
			<h2 style="font-weight: bold; margin-bottom: 12px;">게시판</h2>
			<ul>
				<li>
					<a href="/usr/board/list">전체글</a>
				</li>
				<li>
					<a href="/usr/board/list?boardType=notice">공지사항</a>
				</li>
				<li>
					<a href="/usr/board/list?boardType=free">자유게시판</a>
				</li>
				<li>
					<a href="/usr/board/list?boardType=qna">Q&A</a>
				</li>
			</ul>
		</div>

		<!-- 🔹 오른쪽 게시글 목록 -->
		<div style="flex-grow: 1;">
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
								<a href="/usr/board/detail?id=${article.id}">
									${article.title}
								</a>
							</td>
							<td style="text-align: center;">
								${article.extra__writer}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
</section>

<%@ include file="../common/foot.jspf"%>
