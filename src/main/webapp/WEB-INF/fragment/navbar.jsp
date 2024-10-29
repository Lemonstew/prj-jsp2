<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set value="${not empty sessionScope.loggedInMember}" var="loggedIn"/>

<div class="mb-4">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="/home/main">
                <h3>
                    <i class="fa-solid fa-dice"></i>
                    보드게임
                    아지트
                </h3>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/front/list">
                            <i class="fa-solid fa-list-ul"></i>
                            공지사항
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                            <i class="fa-solid fa-pen-fancy"></i>
                            게시판
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="/board/list">자유게시판</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="/board/qna">질문</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="/board/info">정보</a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li>
                                <a class="dropdown-item" href="/board/new">글 작성</a>
                            </li>
                            <li>
                                <a href="/board/mylist" class="dropdown-item">내가 쓴 글</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                            <i class="fa-solid fa-gamepad"></i>
                            보드게임
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="/game/list">게임 목록</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="/game/rank">랭킹</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="/game/vote">투표</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                            <i class="fa-solid fa-people-group"></i>
                            모임
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="/game/list">정규 모임</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="/game/imme">번개 모임</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/board/ask">
                            <i class="fa-regular fa-comments"></i>
                            문의사항
                        </a>
                    </li>
                </ul>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <c:if test="${not loggedIn}">
                        <li class="nav-item">
                            <a class="navbar-brand" href="/member/login">
                                로그인
                            </a>
                        </li>
                        &nbsp;
                        <li class="nav-item">
                            <a class="navbar-brand" href="/member/signup">
                                회원가입
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${loggedIn}">
                        <li class="nav-item">
                            <a href="/member/mypage" class="navbar-brand">
                                마이페이지
                            </a>
                        </li>
                        &nbsp;
                        <li class="nav-item">
                            <a href="/member/logout" class="navbar-brand">
                                로그아웃
                            </a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</div>
