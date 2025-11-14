<?php
/* Smarty version 3.1.31, created on 2021-05-30 19:39:12
  from "/home/gharbbe/domains/gharbbet.xyz/public_html/themes/admin/default/partials/sidebar.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_60b3aa986cdb83_90982268',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '086a3f40dbbcc635b15df947f68f3d4101db1c52' => 
    array (
      0 => '/home/gharbbe/domains/gharbbet.xyz/public_html/themes/admin/default/partials/sidebar.tpl',
      1 => 1621775819,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60b3aa986cdb83_90982268 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_assets_url')) require_once '/home/gharbbe/domains/gharbbet.xyz/public_html/application/smarty/plugins/function.assets_url.php';
if (!is_callable('smarty_function_module')) require_once '/home/gharbbe/domains/gharbbet.xyz/public_html/application/smarty/plugins/function.module.php';
?>
<aside id="sidebar_main">
    <a href="#" class="uk-close sidebar_main_close_button"></a>
    <div class="sidebar_main_header">
        <div class="sidebar_logo">
            <a href="<?php echo site_url(ADMIN_PATH);?>
"><img src="<?php echo smarty_function_assets_url(array(),$_smarty_tpl);?>
/img/logo_main.png" alt="" height="35" width="130"/></a>
        </div>
    </div>
    <div class="menu_section">
        <?php echo smarty_function_module(array('name'=>"menu",'method'=>"getFormatted",'group'=>"admin_side",'li_active_class'=>"act_item",'icon'=>"1",'icon_tag'=>"span",'icon_position'=>"before",'icon_default_class'=>"menu_icon uk-icon-envelope-o"),$_smarty_tpl);?>

    </div>
</aside> <?php }
}
