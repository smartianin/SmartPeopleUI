<div class="wrapped">
	<div class="change-pswd-content">
		<div class="popup">
			<form name="change-password-form" action="./users/index.php" method="post" id="change-password-form">
				<div class="change-wripper">
					<h4>Изменение пароля</h4>
				</div>
				<div class="change-wripper">
					<h6>Пожалуйста, укажите ваш новый пароль</h6>
				</div>
				<div class="change-wripper">
					<div class="change-input-wrapper">
						<div class="fixed-label">
							<label for="new-pswd">Новый пароль:</label>
						</div>
						<input type="password" name="new-pswd" id="new-pswd" class="new-Password trigger" placeholder="Введите новый пароль"/>
						<span class="help-new-pswd"></span>
					</div>
				</div>
				<div class="change-wripper">
					<div class="change-input-wrapper">
						<div class="fixed-label">
							<label for="repeat-pswd">Повторите пароль:</label>
						</div>
						<input type="password" name="rpt-pswd" id="repeat-pswd" class="rpt-Password trigger" placeholder="Повторите пароль"/>
						<span class="help-rpt-pswd"></span>
					</div>
				</div>
				<div class="input-submit-wrapper">
					<input type="submit" value="Изменить пароль" id="change"/>
					<div class="gif"><img src="./view/images/ajax-loader.gif"/></div>
				</div>
			</form>
		</div>
	</div>
</div>