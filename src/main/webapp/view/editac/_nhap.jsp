<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<form:form action="/editac/index" modelAttribute="item" enctype="multipart/form-data">
			<form>
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-3">
							<div class="p-3">
								<img src="/webapp/images/${item.photo}"
									alt="" style="width: 260px" height="360px" >
									<div class="form-group">
									<input type="file" name="photo" class="form-control-file"
										id="image" onchange="chooseFile(this)" />
								</div>
							</div>
						</div>
						<div class="col-8">
							<div class="form-group">
								<label for="youtubeid">Username</label>
								<form:input class="form-control" path="username" placeholder="Category Id?" />
								<small id="youtubeIHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Password</label>
								<form:input class="form-control" path="password" placeholder="Category Name?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Full name</label>
								<form:input class="form-control" path="fullname" placeholder="Category Name?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Email</label>
								<form:input class="form-control" path="email" placeholder="Category Name?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Hinh</label>
								<form:input class="form-control" path="photo" placeholder="Category Name?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>
						</div>
					</div>

				</div>
				<div class="card-footer text-muted text-center" style="background: #696969;">
					<button id="a" style='--clr:#1e9bff' class="btn btn-primary" formaction="/editac/create"><span id="span">Create</span><i id="i"></i></button>
					<button id="a"  style='--clr:#FFD700'  class="btn btn-warning" formaction="/editac/update"><span id="span">Update</span><i id="i"></i></button>
					<button id="a"  style='--clr:#FF0000'  class="btn btn-danger" formaction="/editac/delete/${item.username}"><span id="span">Delete</span><i id="i"></i></button>
					<button id="a"  style='--clr:#1e9bff'  class="btn btn-info" formaction="/editac/index"><span id="span">Reset</span><i id="i"></i></button>
				</div>
			</div>
			</form>
		</form:form>