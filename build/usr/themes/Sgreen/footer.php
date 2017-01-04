<?php if (!defined('__TYPECHO_ROOT_DIR__')) exit; ?>
<footer>
<p>&copy; <?php echo date('Y'); ?> <a href="<?php $this->options->siteUrl(); ?>"><?php $this->options->title() ?></a> Theme By <a href="http://yiyeti.cc/zheteng/132.html" target="_blank">Sgreen</a></p>
<p>
<?php Links_Plugin::output(); ?>
</p>		
<?php $this->footer(); ?>
<script>
$(document).on('pjax:complete', function() {
    pajx_loadDuodsuo();//pjax加载完成之后调用重载多说函数
});
function pajx_loadDuodsuo(){
	var dus=$(".ds-thread");
	if($(dus).length==1){
		var el = document.createElement('div');
		el.setAttribute('data-thread-key',$(dus).attr("data-thread-key"));//必选参数
		el.setAttribute('data-url',$(dus).attr("data-url"));
		DUOSHUO.EmbedThread(el);
		$(dus).html(el);
	}
}
</script>
<script>
$(document).pjax('a[target!=_blank]', '#content', {fragment:'#content', timeout:8000});
</script>
<div class="toTop">TOP</div>
<script src="<?php $this->options->themeUrl('js/jquery.min.js'); ?>"></script>
<script src="<?php $this->options->themeUrl('js/jquery.js'); ?>"></script>
<script src="<?php $this->options->themeUrl('js/scrolltop.js'); ?>"></script>
<script src="<?php $this->options->themeUrl('js/pjax.js'); ?>"></script>
<script src="<?php $this->options->themeUrl('js/gbook_front.js'); ?>"></script>
<script src="<?php $this->options->themeUrl('js/prism.js'); ?>"></script>
</footer>	
</html>


