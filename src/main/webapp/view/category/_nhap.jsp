<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

		<form:form action="/category/index" modelAttribute="item"><form>
		<style>
#a{
    position: relative;
    background-color: #444;
    color: #fff;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 0.8em;
    letter-spacing: 0.1em;
    padding: 10px 30px;
    transition: 0.5s;
}
#a:hover{
    letter-spacing: 0.20em;
    background-color: var(--clr);
    color: var(--clr);
    box-shadow: 0 0 35px var(--clr);
}
#a::before{
    content: '';
    position: absolute;
    inset: 2px;
    background-color: #27282c;
}
#a #span{
    position: relative;
    z-index: 1;
}
#a #i{
    position: absolute;
    inset: 0;
    display: block;
}
#a #i::before{
    content: '';
    position: absolute;
    top: -1.5px;
    left: 80%;
    width: 10px;
    height: 5px;
    border: 2px solid var(--clr);
    background: #28282c;
    transform: translateX(-50%);
    transition: 0.5s;
}
#a:hover #i::before{
    width: 20px;
    left: 20%;

}
#a #i::after{
    content: '';
    position: absolute;
    bottom: -1.5px;
    left: 20%;
    width: 10px;
    height: 5px;
    border: 2px solid var(--clr);
    transform: translateX(-50%);
    background: #28282c;
    transition: 0.5s;
}
#a:hover #i::after{
    width: 20px;
    left: 80%;
    
}
</style>
			<div class="card">
				<div class="card-body">

					<div class="row">
						<div class="col-3">
							<div class="p-3">
								<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnWTGzMQ0VuD5sEtoVaL2JPirHgT5M9YNBtQ&usqp=CAU"
									alt="">

							</div>
						</div>
						<div class="col-9">
							<div class="form-group">
								<label for="youtubeid">Category ID</label>
								<form:input class="form-control" path="id" placeholder="Category Id?" />
								<small id="youtubeIHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Category name</label>
								<form:input class="form-control" path="name" placeholder="Category Name?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>

						</div>
					</div>

				</div>
				<div class="card-footer text-muted text-center" style="background: #696969;">
					<button id="a" style='--clr:#1e9bff' formaction="/category/create"><span id="span">Create</span><i id="i"></i></button>
					<button id="a"  style='--clr:#FFD700' formaction="/category/update"><span id="span">Update</span><i id="i"></i></button>
					<button id="a"  style='--clr:#FF0000' formaction="/category/delete/${item.id}"><span id="span">Delete</span><i id="i"></i></button>
					<button id="a"  style='--clr:#1e9bff' formaction="/category/index"><span id="span">Reset</span><i id="i"></i></button>
				</div>
			</div>
			</form>
		</form:form>