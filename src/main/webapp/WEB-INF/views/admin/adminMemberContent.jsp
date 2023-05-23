<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="content-wrapper" style="min-height: 1302.12px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>회원 관리</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">회원 관리</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
<!-- 						<div class="card-header"> -->
<!-- 							<h3 class="card-title">DataTable with default features</h3> -->
<!-- 						</div> -->
						<!-- /.card-header -->
						<div class="card-body">
							<div id="example1_wrapper"
								class="dataTables_wrapper dt-bootstrap4">
								<div class="row justify-content-between">
									<div class="col-sm-12 col-md-9">
										<div class="dt-buttons btn-group flex-wrap">
											<button class="btn btn-primary" type="button">
												<span>전체</span>
											</button>
											<button class="btn btn-primary active" type="button">
												<span>활성</span>
											</button>
											<button class="btn btn-primary" type="button">
												<span>정지</span>
											</button>
											<button class="btn btn-primary" type="button">
												<span>탈퇴</span>
											</button>
										</div>
									</div>
									<div class="col-sm-12 col-md-2">
										<div id="example1_filter" class="card-tools float-right">
											<div class="input-group input-group-sm" style="width: 180px;">
												<input type="text" name="table_search" class="form-control float-right" placeholder="Search">
												<div class="input-group-append">
													<button type="submit" class="btn btn-default">
														<i class="fas fa-search"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-striped">
											<thead>
												<tr>
													<th rowspan="1" colspan="1">계정</th>
													<th rowspan="1" colspan="1" >닉네임</th>
													<th rowspan="1" colspan="1" >이름</th>
													<th rowspan="1" colspan="1" >최근 로그인</th>
													<th rowspan="1" colspan="1" >가입일</th>
													<th rowspan="1" colspan="1" >상태</th>
													<th rowspan="1" colspan="1" >관리</th>
												</tr>
											</thead>
											<tbody>
												<tr class="odd">
													<td>Gecko</td>
													<td>Firefox 1.0</td>
													<td>Win 98+ / OSX.2+</td>
													<td>1.7</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="even">
													<td>Gecko</td>
													<td>Firefox 1.5</td>
													<td>Win 98+ / OSX.2+</td>
													<td>1.8</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="odd">
													<td>Gecko</td>
													<td>Firefox 2.0</td>
													<td>Win 98+ / OSX.2+</td>
													<td>1.8</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="even">
													<td>Gecko</td>
													<td>Firefox 3.0</td>
													<td>Win 2k+ / OSX.3+</td>
													<td>1.9</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="odd">
													<td>Gecko</td>
													<td>Camino 1.0</td>
													<td>OSX.2+</td>
													<td>1.8</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="even">
													<td>Gecko</td>
													<td>Camino 1.5</td>
													<td>OSX.3+</td>
													<td>1.8</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="odd">
													<td>Gecko</td>
													<td>Netscape 7.2</td>
													<td>Win 95+ / Mac OS 8.6-9.2</td>
													<td>1.7</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="even">
													<td>Gecko</td>
													<td>Netscape Browser 8</td>
													<td>Win 98SE+</td>
													<td>1.7</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="odd">
													<td>Gecko</td>
													<td>Netscape Navigator 9</td>
													<td>Win 98+ / OSX.2+</td>
													<td>1.8</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
												<tr class="even">
													<td>Gecko</td>
													<td>Mozilla 1.0</td>
													<td>Win 95+ / OSX.1+</td>
													<td>1</td>
													<td>A</td>
													<td>활성</td>
													<td>
														<div class="btn-group">
															<button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    															활성
  															</button>
  															  <div class="dropdown-menu">
  															  	<a class="dropdown-item" href="#">활성</a>
  															  	<a class="dropdown-item" href="#">정지</a>
  															  	<a class="dropdown-item" href="#">탈퇴</a>
  															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-5">
										<div class="dataTables_info" id="example1_info">Showing 1 to 10 of 57 entries</div>
									</div>
									<div class="col-sm-12 col-md-7">
										<div class="dataTables_paginate paging_simple_numbers"
											id="example1_paginate">
											<ul class="pagination">
												<li class="paginate_button page-item previous disabled" id="example1_previous">
													<a href="#" class="page-link">Previous</a>
												</li>
												<li class="paginate_button page-item active">
													<a href="#" class="page-link">1</a>
												</li>
												<li class="paginate_button page-item ">
													<a href="#" class="page-link">2</a>
												</li>
												<li class="paginate_button page-item ">
													<a href="#" class="page-link">3</a>
												</li>
												<li class="paginate_button page-item ">
													<a href="#" class="page-link">4</a>
												</li>
												<li class="paginate_button page-item ">
													<a href="#" class="page-link">5</a>
												</li>
												<li class="paginate_button page-item ">
													<a href="#" class="page-link">6</a>
												</li>
												<li class="paginate_button page-item next" id="example1_next">
													<a href="#" class="page-link">Next</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>