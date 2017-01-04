<?php
if (!defined('__TYPECHO_ROOT_DIR__')) exit;
/**
 * Sgreen版 站外链接重定向
 *
 * @package LinksRedirect
 * @author 一夜涕
 * @version 1.0
 * @link http://yiyeti.cc/
 */
class LinksRedirect_Plugin implements Typecho_Plugin_Interface
{
    /**
     * 激活插件方法,如果激活失败,直接抛出异常
     * 
     * @access public
     * @return void
     * @throws Typecho_Plugin_Exception
     */
    public static function activate()
    {
        Typecho_Plugin::factory('Widget_Abstract_Contents')->contentEx = array('LinksRedirect_Plugin', 'LinksRedirect');
        Typecho_Plugin::factory('Widget_Abstract_Contents')->excerptEx = array('LinksRedirect_Plugin', 'LinksRedirect');
        Helper::addRoute('RouteLinksRedirect', '/go.html', 'LinksRedirect_Action', 'action');
        return _t('温馨提示：LinksRedirect 启用成功！');
    }

    /**
     * 禁用插件方法,如果禁用失败,直接抛出异常
     * 
     * @static
     * @access public
     * @return void
     * @throws Typecho_Plugin_Exception
     */
    public static function deactivate(){
        Helper::removeRoute('RouteLinksRedirect');
    }

    /**
     * 获取插件配置面板
     * 
     * @access public
     * @param Typecho_Widget_Helper_Form $form 配置面板
     * @return void
     */
    public static function config(Typecho_Widget_Helper_Form $form){}

    /**
     * 个人用户的配置面板
     * 
     * @access public
     * @param Typecho_Widget_Helper_Form $form
     * @return void
     */
    public static function personalConfig(Typecho_Widget_Helper_Form $form){}

    /**
     * 插件实现方法
     * 
     * @access public
     * @return void
     */
     
    public static function LinksRedirect($text, $widget, $lastResult)
    {
        $text = empty($lastResult) ? $text : $lastResult;
        if ($widget instanceof Widget_Archive)
        {
            $options = Typecho_Widget::widget('Widget_Options');
            $sUrl = str_ireplace('/', '\/', rtrim($options->siteUrl, '/'));
            $preg = '#(<a .*?href=")(?!' . $sUrl . ')([^"]+)"(.*?<\/a>)#ise';
            $text = preg_replace($preg, "stripslashes('$1') . '$options->siteUrl' . 'go.html?url=' . base64_encode('$2') . '\" target=\"_blank\"' . stripslashes('$3')", $text);
        }
        return $text;
    }
}