<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>보드게임 아지트 | 회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>

<c:import url="/WEB-INF/fragment/navbar.jsp">

</c:import>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-9 col-lg-6">
            <h2 class="my-3">회원가입</h2>
            <hr>
            <form id="signup1" method="post">
                <div class="mb-3">
                    <label class="form-label" for="inputId2">아이디</label>
                    <input name="id" id="inputId2" type="text" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="inputPass2" class="form-label">비밀번호</label>
                    <input name="password" type="password" class="form-control" id="inputPass2">
                </div>
                <div class="mb-3">
                    <label for="inputNickName1" class="form-label">닉네임</label>
                    <input name="nickName" type="text" class="form-control" id="inputNickName1">
                </div>
                <div class="mb-3">
                    <label for="inputDescription1" class="form-label">자기소개</label>
                    <textarea name="description" id="inputDescription1" cols="30" rows="10"
                              class="form-control"></textarea>
                </div>
            </form>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button form="signup1" class="btn btn-primary">가입하기</button>
                <button class="btn btn-outline-danger">
                    <a class="navbar-brand" href="/member/login">
                        취소
                    </a>
                </button>
            </div>
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
