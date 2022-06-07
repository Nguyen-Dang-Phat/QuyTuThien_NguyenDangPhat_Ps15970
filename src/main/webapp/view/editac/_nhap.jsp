<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<form:form action="/editac/index" modelAttribute="item" enctype="multipart/form-data">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-3">
							<div class="p-3">
								<img src="/webapp/images/${item.photo}"
									alt="" style="width: 300px" height="400px" >
									<div class="form-group">
									<input type="file" name="photo" class="form-control-file"
										id="image" onchange="chooseFile(this)" />
								</div>
							</div>
						</div>
						<div class="col-9">
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
				<div class="card-footer text-muted">
					<button class="btn btn-primary" formaction="/editac/create">Create</button>
					<button class="btn btn-warning" formaction="/editac/update">Update</button>
					<button class="btn btn-danger" formaction="/editac/delete/${item.username}">Delete</button>
					<button class="btn btn-info" formaction="/editac/index">Reset</button>
				</div>
			</div>
			</form>
		</form:form>