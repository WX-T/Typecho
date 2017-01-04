<?php if (!defined('__TYPECHO_ROOT_DIR__')) exit; ?>
<!DOCTYPE HTML>
<html>
<!--通过自有函数输出HTML头部信息-->
<header>
<meta charset="<?php $this->options->charset(); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title><?php $this->archiveTitle(array(
            'category'  =>  _t('分类 %s 下的文章'),
            'search'    =>  _t('包含关键字 %s 的文章'),
            'tag'       =>  _t('标签 %s 下的文章'),
            'author'    =>  _t('%s 发布的文章')
        ), '', ' - '); ?><?php $this->options->title(); ?></title>   
<?php $this->header('generator=&template=&pingback=&xmlrpc=&wlw=&atom=&rss1=&rss2='); ?>
<!--使用url函数转换相关路径-->
<link rel="stylesheet" href="<?php $this->options->themeUrl('css/iconfont.css'); ?>">
<link rel="stylesheet" href="<?php $this->options->themeUrl('css/grid.css'); ?>">
<link rel="stylesheet" href="<?php $this->options->themeUrl('css/style.css'); ?>">
<link rel="stylesheet" href="<?php $this->options->themeUrl('css/prism.css'); ?>">
<!--[if IE 8]>
<div class="browsehappy" role="dialog"><?php _e('当前网页 <strong>不支持</strong> 你正在使用的浏览器. 为了正常的访问, 请 <a href="http://browsehappy.com/">升级你的浏览器</a>'); ?>.</div>
<![endif]-->
<div class="main">
	<div class="intro">
		<img src="<?php $this->options->logoUrl(); ?>" class="intro-logo"/>
		<span class="intro-sitename"><a href="<?php $this->options->siteUrl(); ?>"><?php $this->options->title() ?></a></span>
		<span class="intro-siteinfo"><?php $this->options->description() ?></span>
		<span class="social">
		<a href="<?php $this->options->qqlink(); ?>" target="_blank"><i class="Hui-iconfont">&#xe67b;</i></a>
		<a href="<?php $this->options->mlink(); ?>" target="_blank"><i class="Hui-iconfont">&#xe63b;</i></a>
		<a href="<?php $this->options->wlink(); ?>" target="_blank"><i class="Hui-iconfont">&#xe6da;</i></a>
		<a href="<?php $this->options->glink(); ?>" target="_blank"><i class="Hui-iconfont">&#xe6d1;</i></a>
		</span>
	</div>
	<nav>
	<div class="collapse">
	<i class="iconfont icon-menu"></i>
	</div>
	<ul class="bar">
		    <li><a href="<?php $this->options->siteUrl(); ?>">首页</a></li>
		    <?php $this->widget('Widget_Contents_Page_List')->to($pages); ?>
            <?php while($pages->next()): ?>
            <li><a<?php if($this->is('page', $pages->slug)): ?><?php endif; ?> href="<?php $pages->permalink(); ?>"><?php $pages->title(); ?></a></li>
            <?php endwhile; ?>
		</ul>
	</nav>
</div>
</header>