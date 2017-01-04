<?php
if (!defined('__TYPECHO_ROOT_DIR__')) exit;

function themeConfig($form) {
    $logoUrl = new Typecho_Widget_Helper_Form_Element_Text('logoUrl', NULL, NULL, _t('博主头像地址'), _t('在这里填入一个图片URL地址, 以在网站标题前加上一个自己的头像'));
    $form->addInput($logoUrl);     

    $qqlink = new Typecho_Widget_Helper_Form_Element_Text('qqlink', NULL, NULL, _t('你的QQ联系地址'), _t('在这里填入QQ联系地址，不知道请到QQ推广里获取代码，其格式为（http://wpa.qq.com/msgrd?v=3&uin=你的QQ号&site=qq&menu=yes）'));
	$form->addInput($qqlink);
	
    $mlink = new Typecho_Widget_Helper_Form_Element_Text('mlink', NULL, NULL, _t('你的联系邮箱'), _t('在这里填入你的邮箱联系地址,其格式为（mailto:admin@yiyeti.cc）'));
    $form->addInput($mlink);
	
    $wlink = new Typecho_Widget_Helper_Form_Element_Text('wlink', NULL, NULL, _t('你的联系微博'), _t('在这里填入你的微博联系地址'));
    $form->addInput($wlink);
	
	$qlink = new Typecho_Widget_Helper_Form_Element_Text('qlink', NULL, NULL, _t('你的github库'), _t('在这里填入你的github库地址'));
    $form->addInput($qlink);
	
}
/*

function themeFields($layout) {
    $logoUrl = new Typecho_Widget_Helper_Form_Element_Text('logoUrl', NULL, NULL, _t('博主头像地址'), _t('在这里填入一个图片URL地址, 以在网站标题前加上一个自己的头像'));
    $layout->addItem($logoUrl);
	
    $qqlink = new Typecho_Widget_Helper_Form_Element_Text('qqlink', NULL, NULL, _t('你的QQ联系地址'), _t('在这里填入QQ联系地址，不知道请到QQ推广里获取代码'));
	$layout->addInput($qqlink);
	
	 $mlink = new Typecho_Widget_Helper_Form_Element_Text('mlink', NULL, NULL, _t('你的联系邮箱'), _t('在这里填入你的邮箱联系地址'));
    $layout->addInput($mlink);
	
	$wlink = new Typecho_Widget_Helper_Form_Element_Text('wlink', NULL, NULL, _t('你的联系微博'), _t('在这里填入你的微博联系地址'));
    $layout->addInput($wlink);
	
	$glink = new Typecho_Widget_Helper_Form_Element_Text('glink', NULL, NULL, _t('你的github库'), _t('在这里填入你的github库地址'));
    $layout->addInput($glink);
	
}
*/