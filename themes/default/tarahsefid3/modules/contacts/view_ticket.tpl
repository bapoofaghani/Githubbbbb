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
					<div class="page-title">مشاهده تیکت شماره {$ticket_id} <span class="pull-right"><a style="margin-top: -2px !important;" class="btn btn-sm btn-success" href="{site_url}contacts/tickets/new-ticket">ارسال تیکت جدید</a> <a style="margin-top: -2px !important;" class="btn btn-sm btn-danger" href="{site_url}contacts/tickets/ticket-list">لیست تیکت ها</a></span></div>
					<div class="p7 inline center" style="width: 100% !important;">
                    <header class="clearfix">
                        <div class="row">
                            <div class="col-lg-12" style="background-color: #333333 !important; text-align: right !important; color: #ffffff !important; padding: 10px 25px 20px 10px !important;">
								<ul>
									<li><b>شناسه تیکت :</b> TS-{$Ticket->id}</li>
									<li><b>عنوان تیکت :</b> {$Ticket->subject}</li>
									<li><b>زمان ثبت تیکت :</b> {jdate format='l d F Y ساعت H:i:s' date=$ticket->created_at}</li>
									<li><b>وضعیت تیکت :</b> {if $Ticket->status eq 2}<span class="label label-success" style="width: 200px !important; display: inline-block !important; color: white !important;">بسته شده</span>{Elseif $Ticket->status eq 0}<span class="label label-warning" style="width: 200px !important; display: inline-block !important; color: white !important;">منتظر پاسخ</span>{else}<span class="label label-default" style="width: 200px !important; display: inline-block !important; color: white !important;">پاسخ داده شده</span>{/if}</li>
								</ul>
							</div>
                        </div>
                    </header>
					        <section class="formbox row_100 clearfix">
                        <div class="col-xs-12 ticketdetails row">
                                {foreach $Ticket->replies as $val}
                                    <div class="row mt10">
										 {if $val.user_id == $logged_in_user_id}
                                        <div class="col-md-2 col-xs-4">
                                           
                                                <img width="100" style="border-radius: 45%;padding-bottom:5px;margin-left: 15px;float:right;" src="/assets/default/tarahsefid2/images/tarahsefid.png">
                                                <ul class="ticket_reply">
													<li>{$nameusr}</li>
													<li>{jdate format='j F Y - H:i' date=$val->created_at}</li>
												</ul>
                                            
                                        </div>
										{/if}
                                        <div class="col-md-10 col-xs-8">
                                            <div class="{if $val.user_id == $logged_in_user_id }bubble{else}bubblereply{/if}">
                                                {$val->content}
                                            </div>

                                        </div>
                                     {if $val.user_id != $logged_in_user_id}
                                        <div class="col-md-2 col-xs-4">
                                                <img width="100" style="border-radius: 35%;padding-bottom:4px;float:left;" src="{assets_url}/images/opr.png">
												<ul class="ticket_reply">
													<li>پشتیبان سایت</li>
													<li>{jdate format='j F Y - H:i' date=$val->created_at}</li>
												</ul>
                                        </div>
										  {/if}
							</div>

					{/foreach}
					<div class="col-lg-12">
						<form action="{$action}" method="post">
							<div class="signupform">
								<div class="row" style="padding: 0 !important; text-align: right !important;"><div class="col-lg-8"><div class="row" style="padding: 0 !important;"><div class="col-md-3 col-sm-12 col-xs-12"></div><div class="col-md-9 col-sm-12 col-xs-12"><h4>ارسال پاسخ جدید</h4></div></div></div></div>
								<div class="row" style="padding: 0 !important;">
									<div class="col-md-8 col-sm-12 col-xs-12">
										<div class="row" style="padding: 0 !important;">
											<div class="col-md-3 col-sm-12 col-xs-12" style="margin-top: 15px !important;">متن پاسخ</div>
											<div class="col-md-9 col-sm-12 col-xs-12"><textarea style="min-height: 175px !important;resize: vertical !important;" class="input textarea" cols="20" name="content" placeholder="متن تیکت" rows="2"></textarea></div>
										</div>
									</div>
								</div>
								<div class="row" style="padding: 0 !important;">
									<div class="col-md-8 col-sm-12 col-xs-12">
										<div class="row" style="padding: 0 !important;">
											<div class="col-md-3 col-sm-12 col-xs-12"></div>
											<div class="col-md-9 col-sm-12 col-xs-12"><input class="btn btn-lg btn-danger floatright" value="ارسال" type="submit"></div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="row" style="color: white !important;"><div class="alert alert-info" style="display: block;">کاربران گرامی توجه داشته باشند، برای هر مورد یک تیکت ایجاد نمایید و تا حل شدن کامل مشکل، تیکت مربوطه را ادامه دهید و جهت تسریع در رفع مشکلات کاربری لطفا از ایجاد تیکت های جدید و متنوع اجتناب فرمایید</div></div>
                </div>
            </div>
        </div>
    </div>
</div>