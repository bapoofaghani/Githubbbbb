<?php
/* Smarty version 3.1.31, created on 2021-05-30 19:39:12
  from "/home/gharbbe/domains/gharbbet.xyz/public_html/themes/admin/default/layout/default.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_60b3aa986a7245_12844567',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9c69b3d7d836da2e3eb2e29f33b1580235e435b9' => 
    array (
      0 => '/home/gharbbe/domains/gharbbet.xyz/public_html/themes/admin/default/layout/default.tpl',
      1 => 1621775819,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:partials/header.tpl' => 1,
    'file:partials/footer.tpl' => 1,
  ),
),false)) {
function content_60b3aa986a7245_12844567 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php $_smarty_tpl->_subTemplateRender("file:partials/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div id="page_content">

    <?php if (($_smarty_tpl->tpl_vars['system_message']->value != '')) {?>
        <div class="page_content_inner" style="margin: 0px auto; width: 96%;">
            <div class="md-card uk-margin-medium-bottom">
                <div class="heading_a title-top uk-margin-small-bottom 
                     <?php if ($_smarty_tpl->tpl_vars['system_message']->value['type'] == 'success') {?>
                         <?php echo 'msgsuccess';?>

                     <?php } elseif ($_smarty_tpl->tpl_vars['system_message']->value['type'] == 'warning') {?>
                         <?php echo 'msgwarning';?>

                     <?php } elseif ($_smarty_tpl->tpl_vars['system_message']->value['type'] == 'fail') {?> 
                         <?php echo 'msgerror';?>

                     <?php }?>
                     ">

                    <div class="msg-grid-title no-border">
                        <h4><i class="fa fa-
                               <?php if ($_smarty_tpl->tpl_vars['system_message']->value['type'] == 'success') {?>
                                   <?php echo 'check-square-o';?>

                               <?php } elseif ($_smarty_tpl->tpl_vars['system_message']->value['type'] == 'warning') {?>
                                   <?php echo 'warning';?>

                               <?php } elseif ($_smarty_tpl->tpl_vars['system_message']->value['type'] == 'fail') {?> 
                                   <?php echo 'remove';?>

                               <?php }?>
                               fa-2x" style="vertical-align: middle;"></i>
                            <span class="semi-bold" style="padding-top: 9px ! important; font-size: 13px; border-bottom: 4px dashed rgb(221, 221, 221); margin-bottom: 9px ! important;"><?php echo $_smarty_tpl->tpl_vars['system_message']->value['title'];?>
</span>
                        </h4>

                    </div>
                    <div class="grid-body no-border"> 
                        <p> <?php echo $_smarty_tpl->tpl_vars['system_message']->value['message'];?>
</p>
                    </div>
                </div>
            </div>

        </div>
    <?php }?>
    <?php echo $_smarty_tpl->tpl_vars['content']->value;?>

</div>
<?php $_smarty_tpl->_subTemplateRender("file:partials/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
