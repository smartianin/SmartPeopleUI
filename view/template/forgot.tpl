<div class="wrapped">
	<div class="restore-content">
		<div class="popup">
			<form name="restore_form" action="./index.php?page=change" method="post" id="restore_form">
				<input type="hidden" name="user-cache" value="" />
				<div class="restore-wrapper">
					<h4>Восстановление доступа к странице</h4>
				</div>
				<div class="restore-wrapper">
					<h6>Пожалуйста, укажите свой Email для восстановления доступа.</h6>
				</div>
				<div class="restore-wrapper">
					<div class="restore-input-wrapper">
						<div class="fixed-label">
							<label for="restore">Email:</label>
						</div>
						<input type="text" name="login" id="restore" class="rEmail" placeholder="Введите адресс электронной почты"/>
						<div class="gif"><img src="./view/images/ajax-loader.gif"/></div>
					</div>
				</div>
				<div class="input-submit-wrapper">
					<input type="submit" value="Далее" id="next"/>
				</div>
			</form>
		</div>
	</div>
</div>