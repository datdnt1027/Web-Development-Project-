<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<div class="content-wrapper">
	<section class="content">
		<!-- Modal content-->

		<form method="post" role="form"
			action="${pageContext.request.contextPath}/admin/user_management?action=update"
			enctype="multipart/form-data">
			<div class="modal-header">
				<h4 class="modal-title">Sửa thông tin User</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<div class="row mb-4">
					<div class="col">
						<div class="form-group">
							<div class="form-outline">
								<label>Họ và tên</label><input type="text" class="form-control"
									required="required" name="full_name" id="full_name"
									disabled="disabled">
							</div>
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label>CCCD</label><input type="text" class="form-control"
								required="required" name="id_card" id="id_card"
								disabled="disabled">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label>Sdt</label><input type="text" class="form-control"
						required="required" name="phone" id="phone" disabled="disabled">
				</div>
				<div class="form-group">
					<label>Tài khoản</label><input type="text" class="form-control"
						required="required" name="slug" id="slug">
				</div>
				<div class="form-group">
					<label>Password</label><input type="text" class="form-control"
						required="required" name="password" id="password">
				</div>
				<div>
					<label>Chọn role user</label> <select name="id_role" id="id_role"
						class="form-control" required="required">
						<c:forEach items="${roleList}" var="role">
							<option value="${role.id}">${role.roleName}</option>
						</c:forEach>
					</select>

				</div>
			</div>
			<div class="modal-footer">
				<input type="button" class="btn btn-default" data-dismiss="modal"
					value="Cancel"> <input type="submit" class="btn btn-info"
					value="Save"> <input type="hidden" name="id" id="id">
			</div>
		</form>
	</section>
</div>