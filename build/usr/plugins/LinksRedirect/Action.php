<?php
class LinksRedirect_Action extends Typecho_Widget implements Widget_Interface_Do
{
	public function action()
	{
        $options = Typecho_Widget::widget('Widget_Options');
        if(isset($_GET["url"])) {
            $TmpUrl = $_GET["url"];
            if (strlen($TmpUrl) ==  0)
            {
                header('location: ' . $options->siteUrl);
                exit;
            }
        } else {
            header('location: ' . $options->siteUrl);
            exit;
        }
        $TmpUrl = base64_decode($TmpUrl);
        if($TmpUrl == false) {
            header('location: ' . $options->siteUrl);
            exit;
        }
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>站外链接跳转 - 欢迎再次光临本站！</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <style type="text/css">body{font-family:"helvetica neue",arial,sans-serif;font-size:14px;color:#444}div{display:block}#go_notifier{text-align:center}#go_notifier .title{margin-top:130px;font-size:24px}#go_notifier .main-img{margin:30px 0}#go_notifier .sub{font-size:16px;color:#999;margin-bottom:40px}#go_notifier .sub #time{color:#dd3a3e;padding-right:5px}.wrapper{width:992px;position:relative;margin:0 auto;border:0}.btn{-moz-user-select:none;background:linear-gradient(#fafafa,#f2f2f2) repeat scroll 0 0 rgba(0,0,0,0);border:1px solid #d9d9d9;box-shadow:0 1px 0 white inset,0 1px 0 rgba(255,255,255,0.3);color:#444;cursor:pointer;display:inline-block;text-align:center;text-decoration:none;text-shadow:0 1px 0 rgba(255,255,255,0.5);white-space:nowrap}.btnPlus{font-size:18px;padding:0 15px;border-radius:3px;height:36px;line-height:36px}img{box-shadow:inset 0 -1px 0 #3333sf;-webkit-box-shadow:inset 0 -1px 0 #3333sf;-webkit-transition:.4s;-webkit-transition:-webkit-transform .4s ease-out;transition:transform .4s ease-out;-moz-transition:-moz-transform .4s ease-out}img:hover{box-shadow:0 0 10px #fff;rgba(255,255,255,.6),inset 0 0 20px rgba(255,255,255,1);-webkit-box-shadow:0 0 10px #fff;rgba(255,255,255,.6),inset 0 0 20px rgba(255,255,255,1);transform:rotateZ(360deg);-webkit-transform:rotateZ(360deg);-moz-transform:rotateZ(360deg)}</style>
</head>
<body>
<div id="go_notifier">
    <div class="wrapper">
        <div class="title">您即将离开本站，跳转至其它页面</div>
        <img src="<?php echo Typecho_Common::url('LinksRedirect/golink.png', Helper::options()->pluginUrl); ?>" class="main-img" height="178">
        <div class="sub">
            <span id="time">5</span><span id="cstr">秒后自动跳转</span>
        </div>
        <a href="<?php echo $TmpUrl; ?>" class="btn btnPlus"><span class="text"> 立刻前往</span></a>
    </div>
</div>
<script type="text/javascript">
<!--
    function toURL(url)
    {
        var delay = document.getElementById("time").innerHTML;
        if(delay > 0) {
            delay--;
            document.getElementById("time").innerHTML = delay;
        } else {
            document.getElementById("time").style.display="none";
            document.getElementById("cstr").innerHTML = "正在跳转中...<p>所花时间取决于该站的连接速度和当前网速，请耐心等待！或直接点击下面的按钮。</p>";
            location.href = url;
            return;
        }
        setTimeout("toURL('" + url + "')", 1000);
	}

    toURL("<?php echo $TmpUrl; ?>");
//-->
</script>
</body>
</html>

<?php
	}
}