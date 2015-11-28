<div class="wrapped">
	<div class="content-logo clearfix">
		
	</div>
	<div class="registration-form">
		<form name="reg_form" action="javascript:void(null);" method="post" id="registration">
			<div class="r-input-wrapper">
				<div class="r-header">
					<h3 class="pointer">Регистрация</h3>
				</div>
			</div>
			<div class="r-input-wrapper clearfix">
				<div class="input name-surname name border">
					<input type="text" placeholder="Ваше Имя" name="name" class="target"/>
					<div class="error_sign"><img src="view/images/error_sign.png"/></div>
				</div>
				<div class="input name-surname surname border">
					<input type="text" placeholder="Ваша Фамилия" name="surname" class="target"/>
					<div class="error_sign"><img src="view/images/error_sign.png"/></div>
				</div>
			</div>
			<div class="r-input-wrapper">
				<div class="input email border">
					<input type="text" placeholder="Ваш адресс электронной почты" name="login" class="target"/>
					<div class="error_sign"><img src="view/images/error_sign.png"/></div>
				</div>
			</div>
			<div class="r-input-wrapper">
				<div class="input password1 border">
					<input type="password" placeholder="Ваш пароль" name="password1" class="target"/>
					<div class="error_sign"><img src="view/images/error_sign.png"/></div>
				</div>
			</div>
			<div class="r-input-wrapper">
				<div class="input password2 border">
					<input type="password" placeholder="Повторите ваш пароль"  name="password2" class="target"/>
					<div class="error_sign"><img src="view/images/error_sign.png"/></div>
				</div>
			</div>
			<div class="r-input-wrapper clearfix sex_border">
				<div class="input ">
					<div class="sex">
						<input type="radio" name="sex" value="male" id="male" class="target"/>
						<label for="male">Мужской</label>
					</div>
					<div class="sex">
						<input type="radio" name="sex" value="female" id="female" class="target"/>
						<label for="female">Женский</label>
					</div>
					<div class="error_sign"><img src="view/images/error_sign.png"/></div>
				</div>
			</div>
			<div class="r-input-wrapper">
				<input type="submit" value="Регистрация" id="reg_button" />
				<span class="gif"><img src="./view/images/ajax-loader.gif"/></span>
			</div>
		</form>
	</div>
</div>