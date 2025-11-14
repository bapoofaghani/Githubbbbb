<div class="container" style="width: 100% !important;">
	{if !empty($smarty.const.get_message)}
		{assign var = message_details value = (object)$smarty.const.get_message}
		{if !empty($message_details->message)}
			{if $message_details->type == 'fail'}
				{assign var=alert_type value='alert-danger'}
			{elseif $message_details->type == 'warning'}
				{assign var=alert_type value='alert-warning'}
			{elseif $message_details->type == 'success'}
				{assign var=alert_type value='alert-success'}
			{/if}
			<div class="row"><div style="text-align: right !important; width: 100% !important; margin-top: 10px !important; margin-bottom: -30px !important;"><div class="alert {$alert_type}" style="display: block !important;">{$message_details->message}</div></div></div>
		{/if}
	{/if}
	<div class="page-content light" style="width: auto !important; margin-right: -15px !important; margin-left: -15px !important;">
		<div class="ph15"></div>
		<div class="inline container">
			{include file="partials/dashboard_menu.tpl"}
			<div class="left static-content">
				<div class="page-area container inline form-container">
                        <h1 class="reg_head">تغییر کلمه عبور</h1>
                    </header>
                    <section class="signupbox mt-20 change-pass">
                        <form action="{site_url}users/changePass" method="post">
                            <div class="signupform halfwidth">
                                <div>
                                    <input class="col-xs-12 input id" data-val="true" data-val-required="وارد کردن کلمه عبور فعلی الزامی است." id="OldPassword" name="OldPassword" placeholder="کلمه عبور فعلی" type="password">
                                    <span class="col-xs-12  field-validation-valid error_message" data-valmsg-for="OldPassword" data-valmsg-replace="true"></span>
                                </div>
                                <div>
                                    <input class="col-xs-12  input password" data-val="true" data-val-length="کلمه عبور جدید باید حداقل 6 حرف طول داشته باشد." data-val-length-max="100" data-val-length-min="6" data-val-required="وارد کردن کلمه عبور جدید الزامی است." id="NewPassword" name="NewPassword" placeholder="کلمه عبور جدید" type="password">
                                    <span class="col-xs-12  field-validation-valid error_message" data-valmsg-for="NewPassword" data-valmsg-replace="true"></span>
                                </div>
                                <div class="remeberme">
                                    <input class="col-xs-12 input password" data-val="true" data-val-equalto="کلمه عبور جدید و تکرار کلمه عبور جدید با هم یکسان نیستند." data-val-equalto-other="*.NewPassword" id="ConfirmPassword" name="ConfirmPassword" placeholder="تکرار کلمه عبور جدید" type="password">
                                    <span class="col-xs-12 field-validation-valid error_message" data-valmsg-for="ConfirmPassword" data-valmsg-replace="true"></span>
                                </div>
                               <div class="withdraw-btn">
                                    <input name="submitbtn" class="btn btn-lg btn-green " type="submit" value="تغییر کلمه عبور">
                                </div>
                            </div>
                        </form>                       
                    </section>
                </div>
            </div>
        </div>
    </div>

</div>