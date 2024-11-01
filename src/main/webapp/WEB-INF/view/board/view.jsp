<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>보드게임 아지트 | 글 보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>

<c:import url="/WEB-INF/fragment/navbar.jsp"/>
<c:set value="${sessionScope.loggedInMember.nickName == board.writer}" var="same"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-9 col-lg-6">
            <h2>${board.id}번 게시글 보기</h2>
            <hr>
            <div>
                <label for="" class="form-label">제목</label>
                <input class="form-control" type="text" value="${board.title}" readonly>
            </div>
            <div>
                <label for="" class="form-label">본문</label>
                <textarea class="form-control" id="" cols="30" rows="10" readonly>${board.content}</textarea>
            </div>
            <div>
                <label for="" class="form-label">작성자</label>
                <input class="form-control" type="text" name="writer" value="${board.writer}" readonly>
            </div>
            <div>
                <label for="" class="form-label">작성일시</label>
                <input class="form-control" type="text" value="${board.inserted}" readonly>
            </div>
            <br>
            <c:if test="${same}">
                <div>
                    <a href="/board/delete?number=${board.id}" class="btn btn-danger">
                        <i class="fa-regular fa-circle-xmark"></i>
                        삭제
                    </a>
                    <a href="/board/edit?number=${board.id}" class="btn btn-primary">
                        <i class="fa-regular fa-pen-to-square"></i>
                        수정
                    </a>
                </div>
            </c:if>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>
</html>
