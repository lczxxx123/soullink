<!DOCTYPE html>
<html lang='zh-CN'>
<head>
<title>acme.sh: An ACME Shell script, a certbot client: acme.sh</title>
<meta content='on' http-equiv='x-dns-prefetch-control'>
<link href='//e.gitee.com' rel='dns-prefetch'>
<link href='//files.gitee.com' rel='dns-prefetch'>
<link href='//toscode.gitee.com' rel='dns-prefetch'>
<link href='https://cn-assets.gitee.com' rel='dns-prefetch'>
<link href='https://portrait.gitee.com' rel='dns-prefetch'>
<link rel="shortcut icon" type="image/vnd.microsoft.icon" href="https://cn-assets.gitee.com/assets/favicon-9007bd527d8a7851c8330e783151df58.ico" />
<link rel="canonical" href="https://gitee.com/neilpang/acme.sh" />
<meta content='gitee.com/neilpang/acme.sh git https://gitee.com/neilpang/acme.sh.git' name='go-import'>
<meta charset='utf-8'>
<meta content='always' name='referrer'>
<meta content='Gitee' property='og:site_name'>
<meta content='Object' property='og:type'>
<meta content='https://gitee.com/neilpang/acme.sh' property='og:url'>
<meta content='no_portrait.png#Neilpang-neilpang' itemprop='image' property='og:image'>
<meta content='Neilpang/acme.sh' itemprop='name' property='og:title'>
<meta content='An ACME Shell script, a certbot client: acme.sh' property='og:description'>
<meta content='acme.sh,Shell' name='Keywords'>
<meta content='An ACME Shell script, a certbot client: acme.sh' itemprop='description' name='Description'>
<meta content='pc,mobile' name='applicable-device'>

<meta content="IE=edge" http-equiv="X-UA-Compatible" />
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="8CBAIVe4l5+gTiBpmlxz88Z5VCryArox2j2Dxw9zuU+02UYCGe5hzE2wsegGHyvZXEJR/qQc+b0iwnlRAJqt8Q==" />

<link rel="stylesheet" media="all" href="https://cn-assets.gitee.com/assets/application-599c7e64708bfb3a91ac1663b601d696.css" />
<script>
//<![CDATA[
window.gon = {};gon.locale="zh-CN";gon.sentry_dsn=null;gon.baidu_register_hm_push=null;gon.sensor={"server_url":"https://haveaniceday.gitee.com:3443/sa?project=production","sdk_url":"https://cn-assets.gitee.com/assets/static/sensors-sdk-2f850fa5b654ad55ac0993fda2f37ba5.js","page_type":"仓库页面"};gon.info={"controller_path":"projects","action_name":"show","current_user":false};gon.tour_env={"current_user":null,"action_name":"show","original_url":"https://gitee.com/neilpang/acme.sh","controller_path":"projects"};gon.http_clone="https://gitee.com/neilpang/acme.sh.git";gon.user_project="neilpang/acme.sh";gon.manage_branch="管理分支";gon.manage_tag="管理标签";gon.enterprise_id=0;gon.create_reaction_path="/neilpang/acme.sh/reactions";gon.ipipe_base_url="https://go-api.gitee.com";gon.artifact_base_url="https://go-repo.gitee.com";gon.gitee_go_remote_url="https://go.gitee.com/assets";gon.gitee_go_active=false;gon.current_project_is_mirror=false;gon.show_repo_comment=false;gon.diagram_viewer_path="https://diagram-viewer.giteeusercontent.com";gon.cp="点击复制";gon.aready_cp="已复制";gon.is_fork=false;gon.ref="master";
//]]>
</script>
<script src="https://cn-assets.gitee.com/assets/static/sensor-6269b9ad61bbcdaff20078e5dcff62d5.js"></script>
<script src="https://cn-assets.gitee.com/assets/static/sentry-5.1.0-a823fb0be1b61c5d7ca4a89f0536cb0a.js"></script>
<script src="https://cn-assets.gitee.com/assets/application-bd2a74541a7204a682192967e5592250.js"></script>
<script src="https://cn-assets.gitee.com/assets/lib/jquery.timeago.zh-CN-4a4818e98c1978d2419ab19fabcba740.js"></script>

<link rel="stylesheet" media="all" href="https://cn-assets.gitee.com/assets/projects/application-46b94c31ba11ae8c37eacce2bdb5603e.css" />
<script src="https://cn-assets.gitee.com/assets/projects/app-2b3d989fcf407be52d8dfd35c2298749.js"></script>

<script src="//res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script>
  var title = document.title.replace(/( - Gitee| - 码云)$/, '')
      imgUrl = '';
  
  document.addEventListener('DOMContentLoaded', function(event) {
    var imgUrlEl = document.querySelector('.readme-box .markdown-body > img, .readme-box .markdown-body :not(a) > img');
    imgUrl = imgUrlEl && imgUrlEl.getAttribute('src');
  
    if (!imgUrl) {
      imgUrlEl = document.querySelector('meta[itemprop=image]');
      imgUrl = imgUrlEl && imgUrlEl.getAttribute('content');
      imgUrl = imgUrl || "https://gitee.com/static/images/logo_themecolor.png";
    }
  
    wx.config({
      debug: false,
      appId: "wxff219d611a159737",
      timestamp: "1680510846",
      nonceStr: "f28091a9e9a100678582d37310bad308",
      signature: "2db7a8e14cc5212a2c6115fccc16f726b4c00e78",
      jsApiList: [
        'onMenuShareTimeline',
        'onMenuShareAppMessage'
      ]
    });
  
    wx.ready(function () {
      wx.onMenuShareTimeline({
        title: title, // 分享标题
        link: "https://gitee.com/neilpang/acme.sh", // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
        imgUrl: imgUrl // 分享图标
      });
      wx.onMenuShareAppMessage({
        title: title, // 分享标题
        link: "https://gitee.com/neilpang/acme.sh", // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
        desc: document.querySelector('meta[name=Description]').getAttribute('content'),
        imgUrl: imgUrl // 分享图标
      });
    });
    wx.error(function(res){
      console.error('err', res)
    });
  })
</script>

<script type='text/x-mathjax-config'>
MathJax.Hub.Config({
  tex2jax: {
    inlineMath: [['$','$'], ['\\(','\\)']],
    displayMath: [["$$","$$"],["\\[","\\]"]],
    processEscapes: true,
    skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code'],
    ignoreClass: "container|files",
    processClass: "markdown-body"
  }
});
</script>
<script src="https://cn-assets.gitee.com/uploads/resources/MathJax-2.7.2/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

<script>
  (function () {
    var messages = {
      'zh-CN': {
        addResult: '增加 <b>{term}</b>',
        count: '已选择 {count}',
        maxSelections: '最多 {maxCount} 个选择',
        noResults: '未找到结果',
        serverError: '连接服务器时发生错误'
      },
      'zh-TW': {
        addResult: '增加 <b>{term}</b>',
        count: '已選擇 {count}',
        maxSelections: '最多 {maxCount} 個選擇',
        noResults: '未找到結果',
        serverError: '連接服務器時發生錯誤'
      }
    }
  
    if (messages[gon.locale]) {
      $.fn.dropdown.settings.message = messages[gon.locale]
    }
  }());
</script>

<script>
  var userAgent = navigator.userAgent;
  var isLessIE11 = userAgent.indexOf('compatible') > -1 && userAgent.indexOf('MSIE') > -1;
  if(isLessIE11){
    var can_access = ""
    if (can_access != "true"){
      window.location.href = "/incompatible.html";
    }
  }
  document.addEventListener("error", function (ev) {
    var elem = ev.target;
    if (elem.tagName.toLowerCase() === 'img') {
      elem.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAAAAACIM/FCAAACh0lEQVR4Ae3ch5W0OgyG4dt/mQJ2xgQPzJoM1m3AbALrxzrf28FzsoP0HykJEEAAAUQTBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEkKK0789+GK/I2ezfQB522PnS1qc8pGgXvr4tE4aY0XOUWlGImThWgyCk6DleixzE7qwBkg/MGiDPlVVAyp1VQGrPKiACDhFI6VkF5LmzCki+sg7IwDoglnVAil0IMkeG9CyUiwsxLFUVFzJJOQaKCjFCDN9RXMjIX7W6ztZXZDKKCyn8sWJvH+nca7WHDN9lROlAliPH9iRKCPI4cswFJQWxB46toLQgQ9jhn5QYZA9DOkoMUoQde5YapAxDWkoNYsOQR3KQd9CxUnIQF4S49CB9ENKlBxmDEKsFUgMCCCCAAHIrSF61f6153Ajy8nyiPr8L5MXnmm4CyT2fzN4DUvHZ+ntA2tOQBRBAAAEEEEAAAQQQ7ZBaC6TwSiDUaYHQ2yuB0MN+ft+43whyrs4rgVCjBUKTFshLC6TUAjGA3AxSaYFYLZBOC2RUAsk8h5qTg9QcbEoOsoQhQ2qQhsO5xCD5dgB5JQaZ+KBKGtKecvR81Ic0ZDjByKdDx0rSEDZ/djQbH+bkIdvfJFm98BfV8hD2zprfVdlu9PxVeyYAkciREohRAplJCaRSAplJCcQogTjSAdlyHRBvSAekJR0QRzogA+mADJkOiCPSAPEtqYBshlRAXC43hxix2QiOuEZkVERykGyNo9idIZKE0HO7XrG6OiMShlDWjstVzdPgXtUH9v0CEidAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQP4HgjZxTpdEii0AAAAASUVORK5CYII=";
    }
  }, true);
</script>
</head>

<body class='git-project lang-zh-CN'>
<header class='common-header fixed noborder' id='git-header-nav'>
<div class='ui container'>
<div class='ui menu header-menu header-container'>
<div class='git-nav-expand-bar'>
<i class='iconfont icon-mode-table'></i>
</div>
<div class='gitee-nav__sidebar'>
<div class='gitee-nav__sidebar-container'>
<div class='gitee-nav__sidebar-top'>
<div class='gitee-nav__avatar-box'></div>
<div class='gitee-nav__buttons-box'>
<a class="ui button small fluid orange" href="/login">登录</a>
<a class="ui button small fluid basic is-register" href="/signup">注册</a>
</div>
</div>
<div class='gitee-nav__sidebar-middle'>
<div class='gitee-nav__sidebar-list'>
<ul>
<li class='gitee-nav__sidebar-item'>
<a href="/explore"><i class='iconfont icon-ic-discover'></i>
<span class='gitee-nav__sidebar-name'>开源软件</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/enterprises"><i class='iconfont icon-ic-enterprise'></i>
<span class='gitee-nav__sidebar-name'>企业版</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/education"><i class='iconfont icon-ic-education'></i>
<span class='gitee-nav__sidebar-name'>高校版</span>
</a></li>
<li class='gitee-nav__sidebar-item split-line'></li>
<li class='gitee-nav__sidebar-item'>
<a href="/search"><i class='iconfont icon-ic-search'></i>
<span class='gitee-nav__sidebar-name'>搜索</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/help"><i class='iconfont icon-help-circle'></i>
<span class='gitee-nav__sidebar-name'>帮助中心</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/terms"><i class='iconfont icon-file'></i>
<span class='gitee-nav__sidebar-name'>使用条款</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/about_us"><i class='iconfont icon-issuepx'></i>
<span class='gitee-nav__sidebar-name'>关于我们</span>
</a></li>
</ul>
</div>
</div>
<div class='gitee-nav__sidebar-bottom'>
<div class='gitee-nav__sidebar-close-button'>
<i class='fa fa-angle-double-left'></i>
</div>
</div>
</div>
</div>

<div class='item gitosc-logo'>
<a href="https://gitee.com"><img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline image' height='28' src='/static/images/logo.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='95'>
<img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline black image' height='28' src='/static/images/logo-black.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='95'>
</a></div>
<a title="开源软件" class="item " href="/explore">开源软件
</a><a title="企业版" class="item " sa_evt="click_GiteeCommunity_tab_En" href="/enterprises">企业版
<sup class='ui red label'>
特惠
</sup>
</a><a title="高校版" class="item " href="/education">高校版
</a><a title="私有云" class="item" target="_blank" href="https://gitee.cn?utm_source=giteecom">私有云
</a><a title="博客" class="item" id="gitee-blog" target="_blank" href="https://blog.gitee.com/?utm_sources=site_nav">博客
</a><div class='center responsive-logo'>
<a href="https://gitee.com"><img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline image' height='24' src='/static/images/logo.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='85'>
<img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline black image' height='24' src='/static/images/logo-black.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='85'>
</a></div>
<div class='right menu userbar right-header' id='git-nav-user-bar'>
<form class="ui item" id="navbar-search-form" data-text-require="搜索关键字不能少于1个" data-text-filter="搜索格式不正确" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
<input type="hidden" name="type" id="navbar-search-type" />
<input type="hidden" name="fork_filter" id="fork_filter" value="on" />
<div class='ui search header-search'>
<input type="text" name="q" id="navbar-search-input" value="" class="prompt" placeholder="搜开源" />
</div>
</form>

<script>
  var can_search_in_repo = 1,
      repo = "VDFSTk0wMTZUWHBaVkdNeVRUSlpQV0UzTmpObWE3NjNm",
      reponame = "neilpang/acme.sh";
  
  $(function() {
    var $search = $('#navbar-search-form .ui.search');
    $search.search({
      apiSettings: {
        url: '/search/relative_project?q={query}',
        onResponse: function (res) {
          if (res && res.status === 200 && res.data) {
            var query = htmlSafe($search.search('get value'));
  
            res.data.map(function (item) {
              item.path_ns = '/' + item.path_ns;
              item.icon = 'iconfont icon-project-public';
            });
            res.data.unshift({
              name_ns: "在全站搜索 <b class='hl'>" + query +"</b> 相关项目",
              path_ns: '/search?fork_filter=on&q=' + query,
              icon: 'iconfont icon-search'
            });
            return res;
          } else {
            return { data: [] };
          }
        }
      },
      fields: {
        results: 'data',
        description: 'name_ns',
        url: 'path_ns',
        icon: 'icon'
      },
      minCharacters: 1,
      maxResults: 10,
      searchDelay: 250,
      showNoResults: false,
      transition: 'fade'
    });
  });
</script>

<div class='ui item' id='feature-update-notice'>
<div class='notice-update-icon'>
<a class="notice-update-popup click-knowed" title="" href="javascript:void(0)"><img alt="功能更新" title="" class="bubl_icon bubl-off-icon" src="https://cn-assets.gitee.com/assets/bulb_off-24ee940be20998aace89a3f040cbc704.svg" />
<img alt="功能更新" title="" class="bubl_icon bubl-on-icon" src="https://cn-assets.gitee.com/assets/bulb_on-3986b1dc417285398e3d15671bd8f261.svg" />
</a></div>
<div class='feature-update-notice-panel menu'>
<div class='notice-img'>
<img alt="" title="" class="notice-img-show" src="" />
</div>
<div class='notice-update-title'></div>
<div class='notice-update-des'></div>
<div class='notice-btn-list d-flex-between'>
<button name="button" type="button" class="ui basic orange button btn-notice btn-knowed click-knowed" style="margin-right: 0">我知道了</button>
<a class="ui button orange btn-notice btn-details click-knowed" target="_blank" href="">查看详情</a>
</div>
</div>
</div>

<a class="item git-nav-user__login-item" sa_evt="login_show" sa_referrer_url="" sa_referrer_action="站导航右上角-登录按钮" sa_referrer_type="仓库页面" href="/login">登录
</a><a class="item git-nav-user__register-item" sa_evt="register_show" sa_referrer_url="" sa_referrer_action="站导航右上角-注册按钮" sa_referrer_type="仓库页面" href="/signup">注册
</a><script>
  $('.destroy-user-session').on('click', function() {
    $.cookie('access_token', null, { path: '/' });
  })
</script>

</div>
</div>
</div>
</header>
<script>
  Gitee.initNavbar()
  Gitee.initRepoRemoteWay()
  $.cookie('user_locale',null)
</script>

<script>
  var userAgent = navigator.userAgent;
  var isLessIE11 = userAgent.indexOf('compatible') > -1 && userAgent.indexOf('MSIE') > -1;
  if(isLessIE11){
    var can_access = ""
    if (can_access != "true"){
      window.location.href = "/incompatible.html";
    }
  }
</script>

<div class='fixed-notice-infos'>
<div class='all-messages'>
</div>
<div class='ui container'>
<div class='flash-messages' id='messages-container'></div>
</div>
<script>
  (function() {
    $(function() {
      var $error_box, alertTip, notify_content, notify_options, template;
      template = '<div data-notify="container" class="ui {0} message" role="alert">' + '<i data-notify="dismiss" class="close icon"></i>' + '<span data-notify="message">{2}</span>' + '</div>';
      notify_content = null;
      notify_options = {};
      alertTip = '';
      $error_box = $(".flash_error.flash_error_box");
      if (notify_options.type === 'error' && $error_box.length > 0 && !$.isEmptyObject(notify_content.message)) {
        if (notify_content.message === 'captcha_fail') {
          alertTip = "验证码不正确";
        } else if (notify_content.message === 'captcha_expired') {
          alertTip = "验证码已过期，请点击刷新";
        } else if (notify_content.message === 'not_found_in_database') {
          alertTip = "帐号或者密码错误";
        } else if (notify_content.message === 'not_found_and_show_captcha') {
          alertTip = "帐号或者密码错误";
        } else if (notify_content.message === 'phone_captcha_fail') {
          alertTip = "手机验证码不通过";
        } else {
          alertTip = notify_content.message;
        }
        return $error_box.html(alertTip).show();
      } else if (notify_content) {
        if ("show" === 'third_party_binding') {
          return $('#third_party_binding-message').html(notify_content.message).addClass('ui message red');
        }
        notify_options.delay = 3000;
        notify_options.template = template;
        notify_options.offset = {
          x: 10,
          y: 30
        };
        notify_options.element = '#messages-container';
        return $.notify(notify_content, notify_options);
      }
    });
  
  }).call(this);
</script>

</div>
<script>
  (function() {
    $(function() {
      var setCookie;
      setCookie = function(name, value) {
        $.cookie(name, value, {
          path: '/',
          expires: 365
        });
      };
      $('#remove-bulletin, #remove-bulletin-dashboard').on('click', function() {
        setCookie('remove_bulletin', "gitee-maintain-1677815209");
        $('#git-bulletin').hide();
      });
      $('#remove-member-bulletin').on('click', function() {
        setCookie('remove_member_bulletin', "gitee_member_bulletin");
        $(this).parent().hide();
      });
      return $('#remove-gift-bulletin').on('click', function() {
        setCookie('remove_gift_bulletin', "gitee-gift-bulletin");
        $(this).parent().hide();
      });
    });
  
  }).call(this);
</script>
<script>
  function closeMessageBanner(pthis, type, val) {
    var json = {}
  
    val = typeof val === 'undefined' ? null : val
    $(pthis).parent().remove()
    if (type === 'out_of_enterprise_member') {
      json = {type: type, data: val}
    } else if (type === 'enterprise_overdue') {
      json = {type: type, data: val}
    }
    $.post('/profile/close_flash_tip', json)
  }
</script>

<div class='site-content'>
<div class='git-project-header'>
<div class='fixed-notice-infos'>
<div class='ui info icon floating message green' id='fetch-ok' style='display: none'>
<div class='content'>
<div class='header status-title'>
<i class='info icon status-icon'></i>
代码拉取完成，页面将自动刷新
</div>
</div>
</div>
<div class='ui info icon floating message error' id='fetch-error' style='display: none'>
<div class='content'>
<div class='header status-title'>
<i class='info icon status-icon'></i>
<span class='error_msg'></span>
</div>
</div>
</div>
</div>
<div class='ui container'>
<div class='git-project-categories'>
<a href="/explore">开源项目</a>
<span class='symbol'>></span>
<a href="/explore/other-open-source">其他开源</a>
<span class='symbol'>&gt;</span>
<a href="/explore/acm">ACM/OJ 项目</a>
<span class='symbol and-symbol'>&&</span>
</div>

<div class='git-project-header-details'>
<div class='git-project-header-container'>
<div class='git-project-header-actions'>
<div class='ui tiny modal project-donate-modal' id='project-donate-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>捐赠</div>
<div class='content'>
捐赠前请先登录
</div>
<div class='actions'>
<a class='ui blank button cancel'>取消</a>
<a class='ui orange ok button' href='/login'>前往登录</a>
</div>
</div>
<div class='ui small modal wepay-qrcode'>
<i class='iconfont icon-close close'></i>
<div class='header'>
扫描微信二维码支付
<span class='wepay-cash'></span>
</div>
<div class='content weqcode-center'>
<img id='wepay-qrcode' src=''>
</div>
<div class='actions'>
<div class='ui cancel blank button'>取消</div>
<div class='ui ok orange button'>支付完成</div>
</div>
</div>
<div class='ui mini modal' id='confirm-alipay-modal'>
<div class='header'>支付提示</div>
<div class='content'>
将跳转至支付宝完成支付
</div>
<div class='actions'>
<div class='ui approve orange button'>确定</div>
<div class='ui blank cancel button'>取消</div>
</div>
</div>

<span class='ui buttons basic watch-container'>
<div class='ui dropdown button js-project-watch' data-watch-type='unwatch'>
<input type='hidden' value=''>
<i class='iconfont icon-watch'></i>
<div class='text'>
Watch
</div>
<i class='dropdown icon'></i>
<div class='menu'>
<a data-value="unwatch" class="item" sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Watch" sa_referrer_type="仓库页面" rel="nofollow" data-method="post" href="/neilpang/acme.sh/unwatch"><i class='iconfont icon-msg-read'></i>
不关注
</a><a data-value="watching" class="item" sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Watch" sa_referrer_type="仓库页面" rel="nofollow" data-method="post" href="/neilpang/acme.sh/watch"><i class='iconfont icon-msg-read'></i>
关注所有动态
</a><a data-value="releases_only" class="disabled item" sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Watch" sa_referrer_type="仓库页面" rel="nofollow" data-method="post" href="/neilpang/acme.sh/release_only_watch"><i class='iconfont icon-msg-read'></i>
仅关注版本发行动态
</a><a data-value="ignoring" class="item" sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Watch" sa_referrer_type="仓库页面" rel="nofollow" data-method="post" href="/neilpang/acme.sh/ignoring_watch"><i class='iconfont icon-msg-read'></i>
关注但不提醒动态
</a></div>
</div>
<style>
  .js-project-watch .text .iconfont {
    display: none; }
  .js-project-watch a, .js-project-watch a:hover {
    color: #000; }
  .js-project-watch .item > .iconfont {
    visibility: hidden;
    margin-left: -10px; }
  .js-project-watch .selected .iconfont {
    visibility: visible; }
  .js-project-watch .menu {
    margin-top: 4px !important; }
</style>
<script>
  $('.js-project-watch').dropdown({
    action: 'select',
    onChange: function(value, text, $selectedItem) {
      var type = value === 'unwatch' ? 'Watch' : 'Watching';
      $(this).children('.text').text(type);
      $(this).dropdown('set selected', value)
    }
  });
</script>

<a class="ui button action-social-count" title="2" href="/neilpang/acme.sh/watchers">2
</a></span>
<span class='basic buttons star-container ui'>
<a class="ui button star" sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Star" sa_referrer_type="仓库页面" href="/login"><i class='iconfont icon-star'></i>
Star
</a><a class="ui button action-social-count " title="47" href="/neilpang/acme.sh/stargazers">47
</a></span>
<span class='ui basic buttons fork-container' title='无权 Fork 此仓库'>
<a class="ui button fork" title="你必须登录后才可以fork一个仓库" sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Fork" sa_referrer_type="仓库页面" href="/login"><i class='iconfont icon-fork'></i>
Fork
</a><a class="ui button action-social-count disabled-style" title="18" href="/neilpang/acme.sh/members">18
</a></span>
</div>
<h2 class='git-project-title mt-0 mb-0'>
<span class="project-title"><i class="project-icon iconfont icon-project-public" title="这是一个公开仓库"></i> <a title="Neilpang" class="author" href="/neilpang">Neilpang</a> / <a title="acme.sh" class="repository" target="" style="padding-bottom: 0px; margin-right: 4px" sa_evt="repoClick" sa_location="仓库页面" sa_url="" sa_repo_id="937333" href="/neilpang/acme.sh">acme.sh</a></span><span class="project-badges"><a title="已被推荐" class="git-project-recommend-badge" href="/explore"><i class='iconfont icon-recommended'></i>
</a><style>
  .gitee-modal {
    width: 500px !important; }
</style>
</span>
<input type="hidden" name="recomm_at" id="recomm_at" value="2017-02-03 16:16" />
<input type="hidden" name="project_title" id="project_title" value="Neilpang/acme.sh" />
</h2>
</div>
</div>
</div>
<script>
  var title_import_url = "https://github.com/Neilpang/acme.sh.git";
  var title_post_url = "/neilpang/acme.sh/update_import";
  var title_fork_url = "/neilpang/acme.sh/sync_fork";
  var title_project_path = "acme.sh";
  var title_p_name = "acme.sh";
  var title_p_id= "937333";
  var title_description = "An ACME Shell script, a certbot client: acme.sh";
  var title_form_authenticity_token = "dX57V/T6YsYqlKXaOE7MPOHNIkuJTVrEhT68iReL0XQxh310uqyUlcdqNFukDZQWe/Ynn99TGUh9wUYfGGLFyg==";
  var watch_type = "unwatch";
  var checkFirst = false;
  
  $('.js-project-watch').dropdown('set selected', watch_type);
  $('.checkbox.sync-wiki').checkbox();
  $('.checkbox.team-member-checkbox').checkbox();
</script>
<style>
  i.loading, .icon-sync.loading {
    -webkit-animation: icon-loading 1.2s linear infinite;
    animation: icon-loading 1.2s linear infinite;
  }
  .qrcode_cs {
    float: left;
  }
  .check-sync-wiki {
    float: left;
    height: 28px;
    line-height: 28px;
  }
  .sync-wiki-warn {
    color: #e28560;
  }
</style>

<div class='git-project-nav'>
<div class='ui container'>
<div class='ui secondary pointing menu'>
<a class="item active" href="/neilpang/acme.sh"><i class='iconfont icon-code'></i>
代码
</a><a class="item " href="/neilpang/acme.sh/issues"><i class='iconfont icon-task'></i>
Issues
<span class='ui mini circular label'>
0
</span>
</a><a class="item " href="/neilpang/acme.sh/pulls"><i class='iconfont icon-pull-request'></i>
Pull Requests
<span class='ui mini circular label'>
0
</span>
</a><a class="item " href="/neilpang/acme.sh/wikis"><i class='iconfont icon-wiki'></i>
Wiki
</a><a class="item  " href="/neilpang/acme.sh/graph/master"><i class='iconfont icon-statistics'></i>
统计
</a><a class="item " href="/neilpang/acme.sh/gitee_go"><i class='iconfont icon-workflow'></i>
流水线
</a><div class='item'>
<div class='ui pointing top right dropdown git-project-service'>
<div>
<i class='iconfont icon-service'></i>
服务
<i class='dropdown icon'></i>
</div>
<div class='menu' style='display:none'>
<a class="item" href="/neilpang/acme.sh/pages"><img src="/static/images/logo-en.svg" alt="Logo en" />
<div class='item-title'>
Gitee Pages
</div>
</a><a class="item" href="/neilpang/acme.sh/quality_analyses?platform=sonar_qube"><img src="https://cn-assets.gitee.com/assets/sonar_mini-5e1b54bb9f6c951d97fb778ef623afea.png" alt="Sonar mini" />
<div class='item-title'>
质量分析
</div>
</a><a class="item" target="_blank" href="https://gitee.com/help/articles/4193"><img src="https://cn-assets.gitee.com/assets/jenkins_for_gitee-554ec65c490d0f1f18de632c48acc4e7.png" alt="Jenkins for gitee" />
<div class='item-title'>
Jenkins for Gitee
</div>
</a><a class="item" target="_blank" href="https://gitee.com/help/articles/4285"><img src="https://cn-assets.gitee.com/assets/baidu_efficiency_cloud-81a98c2eb67fac83b1453ca3d2feb326.svg" alt="Baidu efficiency cloud" />
<div class='item-title'>
百度效率云
</div>
</a><a class="item" target="_blank" href="https://gitee.com/help/articles/4318"><img src="https://cn-assets.gitee.com/assets/cloudbase-1197b95ea3398aff1df7fe17c65a6d42.png?20200925" alt="Cloudbase" />
<div class='item-title'>
腾讯云托管
</div>
</a><a class="item" target="_blank" href="https://gitee.com/help/articles/4330"><img src="https://cn-assets.gitee.com/assets/cloud_serverless-686cf926ced5d6d2f1d6e606d270b81e.png" alt="Cloud serverless" />
<div class='item-title'>
腾讯云 Serverless
</div>
</a><a class="item" href="/neilpang/acme.sh/open_sca"><img src="https://cn-assets.gitee.com/assets/open_sca/logo-9049ced662b2f9936b8001e6f9cc4952.png" alt="Logo" />
<div class='item-title'>
悬镜安全
</div>
</a><button class='ui orange basic button quit-button' id='quiting-button'>
我知道了，不再自动展开
</button>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
  $('.git-project-nav .ui.dropdown').dropdown({ action: 'nothing' });
  var gitee_reward_config = JSON.parse(localStorage.getItem('gitee_reward_config') || null) || false
  var $settingText = $('.setting-text')
  // 如果没有访问过
  if(!gitee_reward_config) $settingText.addClass('red-dot')
</script>
<style>
  .git-project-nav i.checkmark.icon {
    color: green;
  }
  #quiting-button {
    display: none;
  }
  
  .git-project-nav .dropdown .menu.hidden:after {
    visibility: hidden !important;
  }
</style>
<script>
  isSignIn = false
  isClickGuide = false
  $('#git-versions.dropdown').dropdown();
  $.ajax({
    url:"/neilpang/acme.sh/access/add_access_log",
    type:"GET"
  });
  $('#quiting-button').on('click',function() {
    $('.git-project-service').click();
    if (isSignIn) {
      $.post("/projects/set_service_guide")
    }
    $.cookie("Serve_State", true, { expires: 3650, path: '/'})
    $('#quiting-button').hide();
  });
  if (!(isClickGuide || $.cookie("Serve_State") == 'true')) {
    $('.git-project-service').click()
    $('#quiting-button').show()
  }
</script>

</div>
<div class='ui container'>
<div class='register-guide'>
<div class='register-container'>
<div class='regist'>
加入 Gitee
</div>
<div class='description'>
与超过 1000 万 开发者一起发现、参与优秀开源项目，私有仓库也完全免费 ：）
</div>
<a class="ui orange button free-registion" sa_evt="register_show" sa_referrer_url="" sa_referrer_action="免费加入" sa_referrer_type="仓库页面" href="/signup?from=project-guide">免费加入</a>
<div class='login'>
已有帐号？
<a href="/login?from=project-guide">立即登录</a>
</div>
</div>
</div>

<div class='git-project-content-wrapper'>

<div class='ui grid' id='project-wrapper'>
<div class='twelve wide column'>
<div id='git-project-search-panel' style='display: none;'>
<a href='javascript: void(0);' id='back-to-list'>
<i class='angle left icon'></i>
返回
</a>
<div class='ui icon input search-input'>
<i class='iconfont icon-search icon'></i>
<input id='search-name' maxlength='40' placeholder='搜索文件' type='text'>
</div>
</div>
<div class='git-project-content' id='git-project-content'>
<div class='git-project-desc-wrapper'>
<script>
  $('.git-project-desc-wrapper .ui.dropdown').dropdown();
  if (false) {
    gon.project_new_blob_path = "/neilpang/acme.sh/new/master"
    bindShowModal({
      el: $('.no-license .project-license__create'),
      complete: function(data, modal) {
        if (!data.haveNoChoice && !data.data) {
          Flash.show('请选择一项开源许可证')
        } else {
          location.href = gon.project_new_blob_path + '?license=' + data.data
        }
      },
      skip: function () {
        location.href = gon.project_new_blob_path + '?license'
      }
    });
  }
  
  $(".project-admin-action-box .reject").click(function() {
    var reason = $('[name=review-reject-reason]').val();
    if (!reason) {
      Flash.error('请选择不通过理由')
      return
    }
    $.ajax({
      type: 'POST',
      url: "/admin/shumei_content/shumei_check/reject_project_public",
      data: {
        reason: reason,
        status: 'rejected',
        project_id: 937333
      },
      success: function(result){
        if(result.status == 'success'){
          window.location.reload();
        }else{
          Flash.error(result.message)
        }
      }
    })
  })
  
  $(".project-admin-action-box .approve").click(function(){
  
    $.ajax({
      type: 'POST',
      url: "/admin/shumei_content/shumei_check/reject_project_public",
      data: {
        status: 'approved',
        project_id: 937333
      },
      success: function(result){
        if(result.status == 'success'){
          window.location.reload();
        }else{
          Flash.error(result.message)
        }
      }
    })
  })
  
  $(".project-admin-action-box .waiting").click(function(){
  
    $.ajax({
      type: 'POST',
      url: "/admin/shumei_content/shumei_check/reject_project_public",
      data: {
        status: 'waiting',
        project_id: 937333
      },
      success: function(result){
        if(result.status == 'success'){
          window.location.reload();
        }else{
          Flash.error(result.message)
        }
      }
    })
  })
  
  $('i.help.circle.icon').popup({
    popup: '.no-license .ui.popup',
    position: 'right center'
  });
  
  $('#remove-no-license-message').on('click', function() {
    $.cookie("skip_repo_no_license_message_937333", 'hide', { expires: 365 });
    $('#user-no-license-message').hide();
    return;
  });
</script>
</div>

<div class='git-project-bread' id='git-project-bread'>
<div class='ui horizontal list mr-1'>
<div class='item git-project-branch-item'>
<input type="hidden" name="path" id="path" value="" />
<div class='ui top left pointing dropdown gradient button dropdown-has-tabs' id='git-project-branch'>
<input type="hidden" name="ref" id="ref" value="master" />
<div class='default text'>
master
</div>
<i class='dropdown icon'></i>
<div class='menu'>
<div class='ui left icon search input'>
<i class='iconfont icon-search'></i>
<input class='search-branch' placeholder='搜索分支' type='text'>
</div>
<div class='tab-menu'>
<div class='tab-menu-action' data-tab='branches'>
<a class="ui link button" href="/neilpang/acme.sh/branches">管理</a>
</div>
<div class='tab-menu-action' data-tab='tags'>
<a class="ui link button" href="/neilpang/acme.sh/tags">管理</a>
</div>
<div class='tab-menu-item' data-placeholder='搜索分支' data-tab='branches'>
分支 (8)
</div>
<div class='tab-menu-item' data-placeholder='搜索标签' data-tab='tags'>
标签 (37)
</div>
</div>
<div class='tab scrolling menu' data-tab='branches' id='branches_panel'>
<div data-value="dev" class="item"><span>dev</span></div>
<div data-value="master" class="item"><span>master</span></div>
<div data-value="tlsa" class="item"><span>tlsa</span></div>
<div data-value="u" class="item"><span>u</span></div>
<div data-value="shebang" class="item"><span>shebang</span></div>
<div data-value="json" class="item"><span>json</span></div>
<div data-value="dnsconf" class="item"><span>dnsconf</span></div>
<div data-value="cron" class="item"><span>cron</span></div>
</div>
<div class='tab scrolling menu' data-tab='tags'>
<div class='item' data-value='3.0.4'>3.0.4</div>
<div class='item' data-value='3.0.3'>3.0.3</div>
<div class='item' data-value='3.0.2'>3.0.2</div>
<div class='item' data-value='3.0.1'>3.0.1</div>
<div class='item' data-value='3.0.0'>3.0.0</div>
<div class='item' data-value='2.9.0'>2.9.0</div>
<div class='item' data-value='2.8.9'>2.8.9</div>
<div class='item' data-value='2.8.8'>2.8.8</div>
<div class='item' data-value='2.8.7'>2.8.7</div>
<div class='item' data-value='2.8.6'>2.8.6</div>
<div class='item' data-value='2.8.5'>2.8.5</div>
<div class='item' data-value='2.8.4'>2.8.4</div>
<div class='item' data-value='2.8.3'>2.8.3</div>
<div class='item' data-value='2.8.2'>2.8.2</div>
<div class='item' data-value='2.8.1'>2.8.1</div>
<div class='item' data-value='2.8.0'>2.8.0</div>
<div class='item' data-value='2.7.9'>2.7.9</div>
<div class='item' data-value='2.7.8'>2.7.8</div>
<div class='item' data-value='2.7.7'>2.7.7</div>
<div class='item' data-value='2.7.6'>2.7.6</div>
<div class='item' data-value='2.7.5'>2.7.5</div>
<div class='item' data-value='2.7.4'>2.7.4</div>
<div class='item' data-value='2.7.3'>2.7.3</div>
<div class='item' data-value='2.7.2'>2.7.2</div>
<div class='item' data-value='2.7.1'>2.7.1</div>
<div class='item' data-value='v2.6.9'>v2.6.9</div>
<div class='item' data-value='2.6.8'>2.6.8</div>
<div class='item' data-value='2.6.6'>2.6.6</div>
<div class='item' data-value='2.6.5'>2.6.5</div>
<div class='item' data-value='2.6.4'>2.6.4</div>
<div class='item' data-value='2.6.0'>2.6.0</div>
<div class='item' data-value='2.5.2'>2.5.2</div>
<div class='item' data-value='2.3.0'>2.3.0</div>
<div class='item' data-value='2.2.9'>2.2.9</div>
<div class='item' data-value='2.0.2'>2.0.2</div>
<div class='item' data-value='1.2.3'>1.2.3</div>
<div class='item' data-value='1.2.2'>1.2.2</div>
</div>
</div>
</div>
<style>
  .iconfont.icon-shieldlock {
    color: #8c92a4;
  }
</style>
<script>
  var $branchesDropdown = $('#branches_panel');
  var $searchNameInput = $('.search-branch');
  var concurrentRequestLock = false;
  var filterXSS = window.filterXSS;
  $branchesDropdown.scroll(function() {
    var branchesPanel = document.getElementById('branches_panel');
    var numOfBranches = $branchesDropdown.children().length;
    var pageToken = $branchesDropdown.children().last().text().trim();
    if (branchesPanel.clientHeight + branchesPanel.scrollTop + 37 > branchesPanel.scrollHeight && numOfBranches < 8) {
      loadData({ page_token: pageToken });
    }
  });
  
  $searchNameInput.on('input', window.globalUtils.debouce(function (e) {
    var $currentTab = $('.tab-menu-action.active');
    var numOfBranches = $branchesDropdown.children().length;
    if($currentTab.data('tab') === 'branches' && numOfBranches < 8) {
    var searchWord = $searchNameInput.val().trim();
      if (searchWord !== "") {
        loadData({ search: searchWord });
      } else {
        loadData({});
      }
    }
  }, 500));
  
  function loadData(data) {
    if (concurrentRequestLock) { return; }
      concurrentRequestLock = true;
      $.ajax({
        url: "/neilpang/acme.sh/branches/load_more",
        type: 'GET',
        data: data,
        dataType: 'json',
        success: function (branches) {
          var html = '';
          var protectRule = '';
          if (data.search || !data.page_token) {
            $branchesDropdown.empty();
          }
          branches.forEach(function (branch) {
            var branchName = filterXSS(branch.name);
            if(branch.branch_type.value === 1) {
              var rule = filterXSS(branch.protection_rule.wildcard);
              protectRule = `<i
                 class="iconfont icon-shieldlock protected-branch-popup"
                 data-title="受保护分支"
                 data-content='保护规则： ${rule}'
                >
                </i>`
            }
            html += `<div data-value='${branchName}' class="item">
                      <span>${branchName}</span> ${protectRule}
                     </div>`
          });
          $branchesDropdown.append(html);
          $('.protected-branch-popup').popup()
        },
        complete: function () {
          concurrentRequestLock = false;
        }
    });
  }
</script>

<script>
  $(function () {
    Gitee.initTabsInDropdown($('#git-project-branch').dropdown({
      fullTextSearch: true,
      selectOnKeydown: true,
      action: function (text,value,el) {
        var oItemOrInitObject = el[0] || el
        var isNotSelect = oItemOrInitObject.dataset.tab && oItemOrInitObject.dataset.tab === 'branches'
        if(isNotSelect){
          console.warn("You didn't choose a branch")
          return
        } 
        var path = $('#path').val();
        var href = ['/neilpang/acme.sh/tree', encodeURIComponent(value), path].join('/');
        window.location.href = href;
        return true
      },
      onNoResults: function (searchTerm) {
        //未找到结果
        return true
      },
    }));
    $('.protected-branch-popup').popup()
  })
</script>

</div>
</div>
<div class='git-project-right-actions pull-right'>
<div class='ui orange button' id='btn-dl-or-clone'>
克隆/下载
<i class='dropdown icon'></i>
</div>
<div class='git-project-download-panel for-project ui bottom right popup'>
<div class='ui small secondary pointing menu'>
<a class='item active' data-text='' data-type='http' data-url='https://gitee.com/neilpang/acme.sh.git'>HTTPS</a>
<a class='item' data-text='' data-type='ssh' data-url='git@gitee.com:neilpang/acme.sh.git'>SSH</a>
<a class='item' data-text="该仓库未启用SVN访问，请仓库管理员前往【&lt;a target='_blank' href=/neilpang/acme.sh/settings&gt;仓库设置&lt;/a&gt;】开启。" data-type='svn' data-url=''>SVN</a>
<a class='item' data-text="该仓库未启用SVN访问，请仓库管理员前往【&lt;a target='_blank' href=/neilpang/acme.sh/settings&gt;仓库设置&lt;/a&gt;】开启。" data-type='svn_ssh' data-url=''>SVN+SSH</a>
</div>
<div class='ui fluid right labeled small input download-url-panel'>
<input type="text" name="project_clone_url" id="project_clone_url" value="https://gitee.com/neilpang/acme.sh.git" onclick="focus();select()" readonly="readonly" />
<div class='ui basic label'>
<div class='ui small basic orange button' data-clipboard-target='#project_clone_url' id='btn-copy-clone-url'>
复制
</div>
</div>
</div>
<div class='ui fluid right labeled warning-text forbid-warning-text'>

</div>
<hr>
<a class="ui fluid download link button" sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="克隆/下载" sa_referrer_type="仓库页面" href="javascript:void(0);"><i class='icon download'></i>
下载ZIP
</a><div class='download_repository_zip form modal tiny ui' id='unlanding-complaint-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>
登录提示
</div>
<div class='container actions'>
<div class='content'>
该操作需登录 Gitee 帐号，请先登录后再操作。
</div>
<div class='ui orange icon large button ok'>
立即登录
</div>
<div class='ui button blank cancel'>
没有帐号，去注册
</div>
</div>
</div>
<script>
  var $elm = $('.download');
  
  $elm.on('click', function() {
    var modals = $("#unlanding-complaint-modal.download_repository_zip");
    if (modals.length > 1) {
      modals.eq(0).modal('show');
    } else {
      modals.modal('show');
    }
  })
  $("#unlanding-complaint-modal.download_repository_zip").modal({
    onDeny: function() {
      window.location.href = "/signup?from=download_repository_zip";
    },
    onApprove: function() {
      window.location.href = "/login?from=download_repository_zip";
    }
  })
</script>

</div>
<script>
  (function() {
    var $btnClone, $btnCopy, $input, $panel;
  
    $btnClone = $('#btn-dl-or-clone');
  
    $panel = $('.git-project-download-panel');
  
    $input = $('#project_clone_url');
  
    $btnCopy = $('#btn-copy-clone-url');
  
    $btnClone.popup({
      on: 'click',
      hoverable: true,
      position: 'bottom center'
    });
  
    $panel.find('.menu > .item').on('click', function(e) {
      var $item, dataUrl;
      $item = $(this).addClass('active');
      $item.siblings().removeClass('active');
      dataUrl = $item.attr('data-url');
      if (dataUrl) {
        $panel.find('.download-url-panel').show();
        $input.val(dataUrl);
        $panel.find('.forbid-warning-text').html('');
      } else {
        $panel.find('.download-url-panel').hide();
        $panel.find('.forbid-warning-text').html($item.attr('data-text') || '');
      }
      return $.cookie('remote_way', $item.attr('data-type'), {
        expires: 365,
        path: '/'
      });
    }).filter('[data-type="' + ($.cookie('remote_way') || 'http') + '"]').trigger('click');
  
    new Clipboard($btnCopy[0]).on('success', function() {
      $btnCopy.popup({
        content: '已复制',
        position: 'right center',
        onHidden: function() {
          return $btnCopy.popup('destroy');
        }
      });
      return $btnCopy.popup('show');
    });
  
  }).call(this);
</script>

</div>
<div class='d-inline pull-right' id='git-project-root-actions'>
<div class='ui horizontal list repo-action-list'>
<div class='item'>
<div class='ui pointing right top dropdown gradient button' id='git-project-file'>
<div class='text'>文件</div>
<i class='dropdown icon'></i>
<div class='menu'>
<a title="新建文件" id="new_file_bread" class="item repo-action" href="/neilpang/acme.sh/new/master">新建文件
</a><a title="新建 Diagram 文件" class="item repo-action" href="/neilpang/acme.sh/new/master?ext=drawio">新建 Diagram 文件
</a><div class='disabled item'>新建子模块</div>
<div class='disabled item'>上传文件</div>
<a class='item repo-action' id='search-files'>
搜索文件
</a>
</div>
</div>
</div>
<div class='item toschina-content__hidden'>
<a class="ui gradient button webide" target="_blank" href="/-/ide/project/neilpang/acme.sh/edit/master/-/">Web IDE</a>
</div>
</div>
<script>
  $('#git-project-file').dropdown({ action: 'hide' });
</script>

</div>
<div class='breadcrumb_path path-breadcrumb-contrainer' id='git-project-breadcrumb'>

</div>
<div class='ui horizontal list repo-action-list branches-tags' style=''>
<div class='item'>
<a class="ui blank button" href="/neilpang/acme.sh/branches"><i class='iconfont icon-branches'></i>
分支 8
</a></div>
<div class='item mr-3'>
<a class="ui blank button" href="/neilpang/acme.sh/tags"><i class='iconfont icon-tag'></i>
标签 37
</a></div>
</div>
</div>
<script>
  if(window.gon.locale == 'en')
    $('.branches-tags').css('margin-top', '12px')
</script>

<style>
  .ui.dropdown .menu > .header {
    text-transform: none; }
</style>
<script>
  $(function () {
    var $tip = $('#apk-download-tip');
    if (!$tip.length) {
      return;
    }
    $tip.find('.btn-close').on('click', function () {
      $tip.hide();
    });
  });
  (function(){
    function pathAutoRender() {
      var $parent = $('#git-project-bread'),
          $child = $('#git-project-bread').children('.ui.horizontal.list'),
          mainWidth = 0;
      $child.each(function (i,item) {
        mainWidth += $(item).width()
      });
      $('.breadcrumb.path.fork-path').remove();
      if (mainWidth > 995) {
        $('#path-breadcrumb').hide();
        $parent.append('<div class="ui breadcrumb path fork-path">' + $('#path-breadcrumb').html() + '<div/>')
      } else {
        $('#path-breadcrumb').show();
      }
    }
    window.pathAutoRender = pathAutoRender;
    pathAutoRender();
  })();
</script>

<div class='branch-diff-notice-bar hide'>
<div class='left-section'></div>
<div class='right-section'>
<div class='ui button gradient contribute'>
贡献代码
<i class='dropdown icon'></i>
</div>
<div class='ui button gradient branch-sync hide'>
同步代码
<i class='dropdown icon'></i>
</div>
</div>
</div>
<div class='ui popup contribute branch-diff-pop-panel contribute-pop'>
<div class='notice-title'></div>
<div class='notice-sub-title'></div>
<div class='notice-content'></div>
<a class='ui button orange fluid disabled create-pr' href='/' target='_blank'>
创建 Pull Request
</a>
</div>
<div class='ui popup branch-diff-pop-panel branch-sync-pop'>
<div class='notice-title'></div>
<div class='notice-content'></div>
<div class='known-more'>
<a href='/help/articles/4395' target='_blank'>
了解更多
</a>
</div>
<div class='btn-group'>
<div class='ui button basic red discard-btn hide'></div>
<a class='ui button orange basic diff-btn hide' href='/' target='_blank'>
对比差异
</a>
<a class='ui button gradient pr-sync-btn hide' href='/' target='_blank'>
通过 Pull Request 同步
</a>
<div class='ui buttons basic dropdown-group-btn hide'>
<div class='ui button branch-sync-btn'>
同步更新到分支
</div>
<div class='ui button dropdown dropdown-create-pr'>
<i class='icon dropdown'></i>
<div class='menu'>
<div class='disabled item'>
<div>
通过 Pull Request 同步
<div class='text-muted fs-12 mt-1'>
将会在向当前分支创建一个 Pull <br/>Request，合入后将完成同步
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
  (function () {
    const i18_compare_current_branch = `当前分支与 <a href="URL">BRANCH</a> 相比`
    const i18_branch_ahead_commit = `，领先 <a href="URL">NUM 个 Commit</a>`
    const i18_branch_behind_commit = `，落后 <a href="URL">NUM 个 Commit</a>`
  
    const i18_contribute_ahead_title = `当前分支比 BRANCH 领先了 NUM 次提交。`
    const i18_contribute_pr_create = `创建一个 Pull Request 贡献代码。`
    const i18_contribute_has_pr = `已创建了 Pull Request`
    const i18_contribute_no_ahead = `这个分支没有领先于 BRANCH 的代码提交。`
  
    const i18_branch_sync_behind  = `这个分支已落后于 BRANCH 分支`
    const i18_branch_sync_behind_desc = `从 BRANCH 分支同步 NUM 个提交来更新分支以保持当前分支代码是最新的。`
    const i18_branch_sync_out_of_date = `此分支已过时`
    const i18_branch_sync_out_of_date_desc = `你可以将 BRANCH 分支中的最新更改合并到此分支中。或丢弃当前分支上的提交以使当前分支与 BRANCH 分支匹配。这将从当前分支中删除 NUM 个提交。`
    const i18_branch_discard_diff = `丢弃 NUM 个提交`
  
    window.locale_temple_branch_diff = {
      i18_compare_current_branch,
      i18_branch_ahead_commit,
      i18_branch_behind_commit,
  
      i18_contribute_ahead_title,
      i18_contribute_pr_create,
      i18_contribute_has_pr,
      i18_contribute_no_ahead,
  
      i18_branch_sync_behind,
      i18_branch_sync_behind_desc,
      i18_branch_sync_out_of_date,
      i18_branch_sync_out_of_date_desc,
      i18_branch_discard_diff
    }
  })();
</script>

<div class='row column tree-holder' id='tree-holder'>
<div class='tree-content-holder' id='tree-content-holder'>
<div class='ui flat nopadding segment tree-content'>
<div class='git-project-recent-commit' id='git-project-info'>
<div class='recent-commit'>
<a class="commit-author-link  js-popover-card" data-username="null" href="mailto:github@neilpang.com"><img class="avatar circular ui image 20 mini" width="20" alt="" avatar="neil-" /> <span class="commit-author-name">neil</span></a>
<span>
<a class="repo-index-commit-msg" title="fix pr_dns.yml" href="/neilpang/acme.sh/commit/916743f44b27dc9f3327e084946fb9c22b757372">fix pr_dns.yml</a>
</span>
<span>916743f</span>
<span class='timeago' datetime='2022-08-07 11:07' title='2022-08-07 11:07:04 +0800'></span>
<build-status commit-id='916743f44b27dc9f3327e084946fb9c22b757372'></build-status>
</div>
<div class='all-commits'>
<a href="/neilpang/acme.sh/commits/master"><i class='iconfont icon-commit'></i>
4824 次提交
</a></div>
</div>

<div class='grid list selection table_da39a3ee5e6b4b0d3255bfef95601890afd80709 tree-table ui' id='tree-slider'>
<div class='create-folder-form form ui'>
<form id="folder_form-edit" action="/neilpang/acme.sh/new/master" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="Mlh+4BJPrewbxSJvPMz4Or/xOh0C9qNiunnN3mMmvUB2oXjDXBlbv/Y7s+6gj6AQJco/yVTo4O5ChjdIbM+p/g==" />
<div class='fields'>
<div class='field'>
<input type="hidden" name="new_file_path" id="new_file_path" />
<input type="hidden" name="content" id="content" />
<input id='new_folder_path' name='new_folder_path' placeholder='新建文件夹' type='text'>
</div>
<div class='field'>
<button name="button" type="submit" class="ui primary button orange submit field-init-btn js-submit-btn">提交</button>
<a class="ui basic white button cancel field-init-btn" href="javascript:void(0)">取消</a>
</div>
<div class='ui mid-center small message notice'>
<strong>提示:</strong>
由于 Git 不支持空文件夾，创建文件夹后会生成空的 .keep 文件
</div>
</div>
</form>

</div>
<div class='file_4c40eab00f24304ca400313319c58d461788ff5e row tree-item' data-branch='master' data-type='folder' file_hex='file_4c40eab00f24304ca400313319c58d461788ff5e'>
<div class='five wide column tree-item-file-name tree-folder tree-list-item' data-path='.github' data-type='folder'>
<i class='iconfont icon-folders'></i>
<a title=".github" href="/neilpang/acme.sh/tree/master/.github"><span class='simplified-path'></span>.github
</a></div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_4c40eab00f24304ca400313319c58d461788ff5e row tree-item tree-item-rename' file_hex='file_4c40eab00f24304ca400313319c58d461788ff5e' style='display:none'>
<div class='ui column form' path='tree/master/.github'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='.github'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>
<div class='file_b0d51b9ff91b623cc42b17c529b7c21c2ab57fb4 row tree-item' data-branch='master' data-type='folder' file_hex='file_b0d51b9ff91b623cc42b17c529b7c21c2ab57fb4'>
<div class='five wide column tree-item-file-name tree-folder tree-list-item' data-path='deploy' data-type='folder'>
<i class='iconfont icon-folders'></i>
<a title="deploy" href="/neilpang/acme.sh/tree/master/deploy"><span class='simplified-path'></span>deploy
</a></div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_b0d51b9ff91b623cc42b17c529b7c21c2ab57fb4 row tree-item tree-item-rename' file_hex='file_b0d51b9ff91b623cc42b17c529b7c21c2ab57fb4' style='display:none'>
<div class='ui column form' path='tree/master/deploy'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='deploy'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>
<div class='file_70f6e65460f96d0ab48bd2a65619fa08edd42e64 row tree-item' data-branch='master' data-type='folder' file_hex='file_70f6e65460f96d0ab48bd2a65619fa08edd42e64'>
<div class='five wide column tree-item-file-name tree-folder tree-list-item' data-path='dnsapi' data-type='folder'>
<i class='iconfont icon-folders'></i>
<a title="dnsapi" href="/neilpang/acme.sh/tree/master/dnsapi"><span class='simplified-path'></span>dnsapi
</a></div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_70f6e65460f96d0ab48bd2a65619fa08edd42e64 row tree-item tree-item-rename' file_hex='file_70f6e65460f96d0ab48bd2a65619fa08edd42e64' style='display:none'>
<div class='ui column form' path='tree/master/dnsapi'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='dnsapi'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>
<div class='file_4f08301dcb7bf7ec8486798a9d2a1d43f508c8aa row tree-item' data-branch='master' data-type='folder' file_hex='file_4f08301dcb7bf7ec8486798a9d2a1d43f508c8aa'>
<div class='five wide column tree-item-file-name tree-folder tree-list-item' data-path='notify' data-type='folder'>
<i class='iconfont icon-folders'></i>
<a title="notify" href="/neilpang/acme.sh/tree/master/notify"><span class='simplified-path'></span>notify
</a></div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_4f08301dcb7bf7ec8486798a9d2a1d43f508c8aa row tree-item tree-item-rename' file_hex='file_4f08301dcb7bf7ec8486798a9d2a1d43f508c8aa' style='display:none'>
<div class='ui column form' path='tree/master/notify'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='notify'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>
<div class='file_6651ddff6eb82c840ced7c1dddee15c6e1913dd4 row tree-item' data-branch='master' data-type='file' file_hex='file_6651ddff6eb82c840ced7c1dddee15c6e1913dd4'>
<div class='five wide column tree-item-file-name tree-list-item' data-path='Dockerfile' data-type='file'>
<i class="iconfont icon-file"></i>
<a title="Dockerfile" href="/neilpang/acme.sh/blob/master/Dockerfile">Dockerfile</a>
</div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_6651ddff6eb82c840ced7c1dddee15c6e1913dd4 row tree-item tree-item-rename' file_hex='file_6651ddff6eb82c840ced7c1dddee15c6e1913dd4' style='display:none'>
<div class='ui column form' path='blob/master/Dockerfile'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='Dockerfile'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>
<div class='file_4a8486805915245bbbe2e3c8c1a9d680c6843a82 row tree-item' data-branch='master' data-type='file' file_hex='file_4a8486805915245bbbe2e3c8c1a9d680c6843a82'>
<div class='five wide column tree-item-file-name tree-list-item' data-path='LICENSE.md' data-type='file'>
<i class="iconfont icon-file"></i>
<a title="LICENSE.md" href="/neilpang/acme.sh/blob/master/LICENSE.md">LICENSE.md</a>
</div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_4a8486805915245bbbe2e3c8c1a9d680c6843a82 row tree-item tree-item-rename' file_hex='file_4a8486805915245bbbe2e3c8c1a9d680c6843a82' style='display:none'>
<div class='ui column form' path='blob/master/LICENSE.md'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='LICENSE.md'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>
<div class='file_8ec9a00bfd09b3190ac6b22251dbb1aa95a0579d row tree-item' data-branch='master' data-type='file' file_hex='file_8ec9a00bfd09b3190ac6b22251dbb1aa95a0579d'>
<div class='five wide column tree-item-file-name tree-list-item' data-path='README.md' data-type='file'>
<i class="iconfont icon-file"></i>
<a title="README.md" href="/neilpang/acme.sh/blob/master/README.md">README.md</a>
</div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_8ec9a00bfd09b3190ac6b22251dbb1aa95a0579d row tree-item tree-item-rename' file_hex='file_8ec9a00bfd09b3190ac6b22251dbb1aa95a0579d' style='display:none'>
<div class='ui column form' path='blob/master/README.md'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='README.md'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>
<div class='file_49cbefa772f77243d1b9e38af95dc8911ca9658f row tree-item' data-branch='master' data-type='file' file_hex='file_49cbefa772f77243d1b9e38af95dc8911ca9658f'>
<div class='five wide column tree-item-file-name tree-list-item' data-path='acme.sh' data-type='file'>
<i class="iconfont icon-file"></i>
<a title="acme.sh" href="/neilpang/acme.sh/blob/master/acme.sh">acme.sh</a>
</div>
<div class='js-tree-row-commit'></div>
</div>
<div class='rename-file_49cbefa772f77243d1b9e38af95dc8911ca9658f row tree-item tree-item-rename' file_hex='file_49cbefa772f77243d1b9e38af95dc8911ca9658f' style='display:none'>
<div class='ui column form' path='blob/master/acme.sh'>
<div class='two fields'>
<div class='five wide field'>
<input class='ui input' name='new_filename' type='text' value='acme.sh'>
</div>
<div class='five wide field'>
<button class='ui blue button popup-save' type='submit'>保存</button>
<button class='ui basic button popup-close'>取消</button>
</div>
</div>
</div>
</div>

</div>

</div>
<div class='ui tree_progress' data-logs-path='/neilpang/acme.sh/refs/master/logs_tree/'>
<div class='ui active inverted dimmer'>
<div class='ui small text loader'>Loading...</div>
</div>
</div>
<div class='readme-box' id='git-readme'>
<div class='ui flat nopadding segment file_holder'>
<div class='file_title'>
<i class='iconfont icon-readme'></i>
<span class='file_name'>
README.md
</span>
</div>
<div class='file_catalog'>
<div class='toggle'>
<i class='icon angle left'></i>
</div>
<div class='scroll-container'>
<div class='container'>
<div class='skeleton'>
<div class='line line1'></div>
<div class='line line2'></div>
<div class='line line3'></div>
<div class='line line1'></div>
<div class='line line2'></div>
<div class='line line3'></div>
</div>
</div>
</div>
</div>
<div class='file_content markdown-body'>
<p>内容可能含有违规信息</p>
</div>
<div class='file_line'></div>
</div>
</div>
<script>
  "use strict";
  if ($('.markdown-body').children("style").length != 0) {
    var i, array = $('.markdown-body').children("style");
    array.first().attr('scoped','');
    $.scoped();
  }
  
  window.Gitee.initReadmeCatalog();
  toMathMlCode('','markdown-body')
  
  $('.file_content a, .catalog-li a.anchor').click(function () {
    var anchor = $(this).attr('href')
    window.location.hash = anchor
  })
  
  $('.appeal_message').removeClass('text-center')
</script>
<style>
  .txt-style {
    background: #FFF !important;
    padding: 0 !important; }
</style>

</div>
<div class='project__footer-container'>
<div class='actions'>
<div class='item star-container'>
<div class='unstar'>
<a sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Star" sa_referrer_type="仓库页面" href="/login"><div class='circle'>
<i class='iconfont icon-star-solid'></i>
</div>
</a><a class="content" href="/neilpang/acme.sh/stargazers"><div class='title'>
Starred
</div>
<div class='desc action-social-count'>
47
</div>
</a></div>
<div class='star'>
<a sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Star" sa_referrer_type="仓库页面" href="/login"><div class='circle'>
<i class='iconfont icon-star'></i>
</div>
</a><a class="content" href="/neilpang/acme.sh/stargazers"><div class='title'>
Star
</div>
<div class='desc action-social-count'>
47
</div>
</a></div>
</div>
<div class='item fork-container'>
<a sa_evt="loginInform_show" sa_referrer_url="" sa_referrer_action="Fork" sa_referrer_type="仓库页面" href="/login"><div class='circle'>
<i class='iconfont icon-fork'></i>
</div>
</a><a href="/neilpang/acme.sh/members"><div class='content'>
<div class='title'>
Fork
</div>
<div class='desc'>
18
</div>
</div>
</a></div>
<div class='item donate-container'>
<div class='circle'>
<i class='iconfont icon-donate'></i>
</div>
<div class='content'>
<div class='title'>捐赠</div>
<div class='desc'>
0 人次
</div>
</div>
</div>
</div>
</div>
<script>
  var $donateModal = $('.project-donate-modal');
  $('.donate-container').on('click', '.circle, .content', function () {
    $donateModal.modal('show');
  });
</script>

<script id='tree-item-context-menu-template' type='text/plain'>
<div class='ui menu compact vertical tree-context'>
<a class='btn-open-new-tab item tree-operation'>
<i class='file outline icon'></i>
新标签打开
</a>
<a class='btn-copy item tree-operation'>
<i class='copy icon'></i>
复制
</a>
<a class='btn-rename item tree-operation'>
<i class='edit icon'></i>
重命名
</a>
<a class='btn-delete item tree-operation'>
<i class='trash icon'></i>
删除
</a>
</div>
</script>
<script id='tree-item-submodule-context-menu-template' type='text/plain'>
<div class='ui menu compact vertical tree-context'>
<a class='btn-copy item tree-operation'>
<i class='copy icon'></i>
复制
</a>
<a class='btn-compact-edit item tree-operation submodule_item'>
<i class='edit icon'></i>
编辑
</a>
<a class='btn-submodule-delete item tree-operation submodule_item'>
<i class='trash icon'></i>
删除
</a>
</div>
</script>
<script>
  $(function() {
    var $createFolderForm = $('.create-folder-form'),
        $createFolderSubmitBtn = $('.create-folder-form .js-submit-btn')
        $folderPath = $('#new_folder_path'),
        $message = $('.create-folder-form .notice'),
        folders = [".github","deploy","dnsapi","notify"],
        folderReg = new RegExp(/\/+/);
  
    var INDEX_BEGIN_WITH_READONLY_DIR = 0
    var gitGCModal = new GiteeModalHelper({
        approveText: "确认",
        cancelText: "取消",
        okText: "确认",
    })
    function checkFolder(folder) {
      var i, itemArr;
      if (folder == '') {
        return false;
      }
      for (i = 0; i< folders.length; i++) {
        itemArr = folders[i].split('/');
        if (itemArr[0] == folder){
          return true
        }
      }
      return false;
    }
  
    function createFolderShow () {
      $createFolderForm.show();
      $folderPath.focus();
    }
  
    $('.create-folder-form .cancel').click(function () {
      $createFolderForm.hide();
    })
  
    $folderPath.on('input', function (e) {
      if($(this).parent().hasClass('error')) {
        $message.removeClass('warn').html("<strong>提示:</strong> 由于 Git 不支持空文件夾，创建文件夹后会生成空的 .keep 文件");
        $(this).parent().removeClass('error');
      }
      $createFolderSubmitBtn.removeClass('disabled');
    })
  
    $createFolderForm.submit(function (e) {
      var value = $folderPath.val();
      if (!folderReg.test(value) && !checkFolder(value) && value) {
        $('#new_file_path').val(value + '/.keep');
      } else {
        $message.addClass('warn').html("文件夹名不为空，不含有字符（／）且不能与当前目录文件夹同名");
        $folderPath.parent().addClass('error');
        e.preventDefault();
      }
      $createFolderSubmitBtn.addClass('disabled');
    })
  
    $('#create-folder').click(createFolderShow);
    window.createFolderShow = createFolderShow;
  
    window.hasTreeContextMenu = false;
    var contextMenuTemplate = $('#tree-item-context-menu-template').html();
    var submoduleContextMenuTemplate = $("#tree-item-submodule-context-menu-template").html();
    if ("true" == "false" || "true" == "false" || "false" == "false") {
      return;
    }
  
    function createContextMenu($item, x, y) {
      if (hasTreeContextMenu) {
        $('.tree-context').remove();
        hasTreeContextMenu = false;
        return;
      }
      hasTreeContextMenu = true;
      var isSubmodule = $item.hasClass('tree-item-submodule-name')
      var path = $item.parent().find('a').attr('href');
      var $menu = isSubmodule ? $(submoduleContextMenuTemplate).appendTo('body') : $(contextMenuTemplate).appendTo('body');
      var readonly = $item.attr('data-readonly') !== undefined
      var submoduleEditUrl = $item.closest('.tree-item').attr('edit_url')
      var submoduleDeleteUrl = $item.closest('.tree-item').attr('delete_url')
      var hasNormal = $item.closest('.tree-item')[0].hasAttribute('normal')
      if ($('.btn-readonly')[0]) {
        if (readonly) {
          $('.btn-readonly')[0].children[0].className = 'icon unlock'
          $('.btn-readonly')[0].lastChild.data = "取消只读"
        } else {
          $('.btn-readonly')[0].lastChild.data = "标记为只读"
        }
      }
      $menu.css({ left: x, top: y , 'min-width': '90px'});
      $menu.find('.btn-open-new-tab').attr({
        href: path,
        target: '_blank'
      });
      window.Clipboard && new Clipboard('.btn-copy', {
        text: function () {
          return $item.text().trim();
        }
      });
      // submodule 菜单事件
      // 编辑子模块
      if (!hasNormal) {
        $menu.find('.btn-compact-edit').addClass('disabled')
      }
      $menu.find('.btn-compact-edit').on('click', function(event) {
        if (!hasNormal) {
          return
        }
        window.location.href = submoduleEditUrl
      });
      // 删除子模块
      $menu.find('.btn-submodule-delete').on('click', function(event) {
        removeSubmodule(submoduleDeleteUrl, $item)
      });
      // 普通文件 菜单事件
      $menu.find('.btn-rename').on('click', function(event) {
        rename($item.parent().attr('file_hex'));
      });
      $menu.find('.btn-delete').on('click', function(event) {
        removeFile($item.parent().next().find('.ui.form').attr('path').replace(/\+/g, '%20'), $item.find('a').text());
      })
      $menu.find('.btn-readonly').on('click', function(event) {
        var obj = $item.parent().next().find('.ui.form').attr('path').replace(/\+/g, '%20')
        var readonly = $item.attr('data-readonly') !== undefined
        if (readonly) {
          removeReadonlyMark(obj, $item)
        } else {
          addReadonlyMark(obj, $item)
        }
      })
      $menu.find('.btn-readonly-is-uncharged-enterprise').popup({
        content: "仅付费企业版可使用文件只读功能",
        className: {
          popup: 'ui popup',
        },
        position: 'bottom center'
      })
      $menu.find('.btn-readonly-is-open-svn').popup({
        content: "仓库已开启 SVN 支持，无法标记只读文件/目录",
        className: {
          popup: 'ui popup',
        },
        position: 'bottom center'
      })
    }
    // submodule 右键菜单事件
  
    var editing = false
  
    $(document).on('click',function(event){
      if (hasTreeContextMenu && event.button !== 2) {
        setTimeout(function () {
          $('.tree-context').remove();
          hasTreeContextMenu = false;
        }, 200);
      }
    })
  
    $('.tree-item').on('click',function(event){
      if (hasTreeContextMenu) {
        event.preventDefault();
      }
    })
  
    function isReadonly(path) {
      if (!gon.readonlyItems) {
        return false
      } else {
        var item_path = getItemPath(path, 'folder')
        return isTreeItemReadonly(item_path, gon.readonlyItems)
      }
    }
  
    function isParentsReadonly(path) {
      var self_path = path.replace(/\/$/, '')
      var parentPathArray = self_path.split('/')
      if (parentPathArray.length < 2) {
        return false
      }
      parentPathArray.pop()
      var parentPath = parentPathArray.join('/') + '/'
      return isReadonly(parentPath)
    }
  
    // 删除只读标记
    function removeReadonlyMark(path, $item) {
      var $icon = $($item.context.children[0])
      var $parent = $item.parent('.tree-item')
      var type = $parent.data('type')
      var branch = $parent.data('branch')
      var readonly_item = $item.data('path')
      if (type !== 'file') {
        readonly_item += "/"
      }
  
      var confirmString = "\n      <p>所属分支: <code class=\"readonly-branch\">".concat(htmlSafe(branch), "</code></p>      <p>文件路径: <code class=\"readonly-path\">").concat(htmlSafe(readonly_item), "</code></p>      <strong>确认取消分支上这个路径的只读标记？</strong>\n      ");
  
      gitGCModal.confirm("取消只读", confirmString, function() {
        var parentsReadonly = isParentsReadonly(readonly_item)
        if (parentsReadonly) {
          return gitGCModal.alert('提示', '只读记录不存在，或父级目录为只读',function () {
            location.reload()
          })
        }
        $.ajax({
          url: "/neilpang/acme.sh/readonly",
          type: 'DELETE',
          data: {
            branch: branch,
            path: readonly_item
          },
          success: function(res) {
            if (res.code !== 0) {
              gitGCModal.alert("提示", res.msg, function() {
                location.reload();
              })
            }else {
              $parent.removeClass('readonly-item')
              if (gon.readonlyItems) {
                gon.readonlyItems.splice(gon.readonlyItems.indexOf(readonly_item), 1)
              }
              if (type === 'file') {
                $icon.removeClass('icon-file-readonly readonly-icon')
                $icon.addClass('icon-file')
              } else {
                $icon.removeClass('icon-folder-readonly readonly-icon')
                $icon.addClass('icon-folders')
              }
              $icon.popup('destroy')
              $item.removeAttr('data-readonly')
            }
          }
        })
      })
    }
  
    // 只读过滤
    function isTreeItemReadonly(path, readonlyItems) {
      var item = readonlyItems.find(function(item) {
        if (item.slice(-1) === '/') {
          return path.indexOf(item) === INDEX_BEGIN_WITH_READONLY_DIR
        } else {
          return path === item
        }
      })
      return item !== undefined
    }
  
    function getItemPath(path) {
      var path_type = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 'file';
      return path_type === 'file' ? path : "".concat(path, "/");
    }
  
    // 启用异步只读差异化的次数
    var is_can_readonly = false
    // 异步对文件树进行只读差异化显示
    function markTree() {
      $.ajax({
        url: "/neilpang/acme.sh/readonly",
        method: 'get',
        data: {
          "branch": "master"
        },
        success:function(result) {
          var readonlyItems = result.readonly_items
          gon.readonlyItems = readonlyItems
          $(".tree-list-item").each(function(){
            $this = $(this)
            var path = $this.attr('data-path')
            var type = $this.attr('data-type')
            var item_path = getItemPath(path, type)
            var readonly = isTreeItemReadonly(item_path, readonlyItems)
            $icon = $this.find('i')
            $parent = $this.parent('.tree-item')
            if (readonly) {
              $parent.addClass('readonly-item')
              $this.attr('data-readonly', '')
              $icon.attr('class', "iconfont icon-".concat(type, "-readonly readonly-icon"));
              $icon.attr('data-readonly', '')
              $icon.popup({
                content: "只读",
                className   : {
                  popup: 'ui popup dark',
                },
                position: 'top center'
              })
            } else {
              var className =  type === 'file' ? 'file' : 'folders'
              $this.removeAttr('data-readonly')
              $icon.attr('class', "iconfont icon-".concat(className));
              $icon.removeAttr('data-readonly')
            }
          })
        }
      })
    }
  
    // 若已开启只读功能，对目录进行只读差异化标记
    if (is_can_readonly) {
      markTree()
    }
  
    // 添加只读标记
    function addReadonlyMark(path, $item) {
      var $icon = $($item.context.children[0])
      var $parent = $item.parent('.tree-item')
      var type = $parent.data('type')
      var branch = $parent.data('branch')
      var readonly_item = $item.data('path')
      if (type !== 'file') {
        readonly_item += "/"
      }
  
      var confirmString = "\n      <p>所属分支: <code class=\"readonly-branch\">".concat(htmlSafe(branch), "</code></p>      <p>文件路径: <code class=\"readonly-path\">").concat(htmlSafe(readonly_item), "</code></p>      <strong>确认将分支上的这个路径标记为只读？</strong>\n      ");
      gitGCModal.confirm("标记只读", confirmString,function (){
        $.ajax({
          url: "/neilpang/acme.sh/readonly",
          type: 'POST',
          data: {
            branch: branch,
            path: readonly_item,
          },
          success: function(res) {
            if (res.code !== 0) {
              gitGCModal.alert("提示", res.msg,function (){
                location.reload();
              })
            } else {
              // 之前未开启只读功能
              if (!is_can_readonly) {
                is_can_readonly = true
                return markTree()
              }
              $parent.addClass('readonly-item')
              var existReadonlyItems = gon.readonlyItems || []
              existReadonlyItems.push(readonly_item)
              gon.readonlyItems = existReadonlyItems
              $icon.popup({
                content: "只读",
                className   : {
                  popup: 'ui popup dark',
                },
                position: 'top center'
              })
              if (type === 'file') {
                $icon.removeClass('icon-file')
                $icon.addClass('icon-file-readonly readonly-icon')
              } else {
                $icon.removeClass('icon-folders')
                $icon.addClass('icon-folder-readonly readonly-icon')
              }
              $item.attr('data-readonly', '')
            }
          }
        })
      })
    }
  
    function removeFile(path, file_name) {
      var file_name = file_name || path
      var content = "确定要删除 %{name} 吗？".replace('%{name}', htmlSafe(file_name));
      gitGCModal.confirm("删除", content, function() {
        $.ajax({
          type: "DELETE",
          dataType: "JSON",
          url: "/neilpang/acme.sh/delete/" + path,
          success: function(res) {
            if (res.status != 1) {
              var alert_message = res.message || "删除失败"
              return gitGCModal.alert("提示", alert_message)
            }
            if ($('.tree-item-file-name').length == 2) {
              window.location.href = '/' + gon.user_project;
            } else {
              window.location.href = window.location.pathname;
            }
          }
        });
      })
    }
    // 删除子模块
    function removeSubmodule(deleteUrl, $item) {
      if (!deleteUrl) return
      var file_name = $item.text().trim()
      var content = "此操作无法恢复，确定要删除子模块%{name}？".replace('%{name}', htmlSafe(file_name));
      new GiteeModalHelper({
        approveText: "删除并提交推送",
        cancelText: "取消",
        okText: "删除并提交推送",
      }).confirm("删除", content, function() {
        $.ajax({
          type: "DELETE",
          dataType: "JSON",
          url: deleteUrl,
          success: function(res) {
            if (res.status == 200) {
              $item.closest('.row.tree-item').remove();
              window.location.reload();
            } else {
              Flash.error(res.message, 5000)
            }
          },
          error: function (err) {
            err.responseJSON && Flash.error(err.responseJSON.message);
          },
        });
      })
    }
  
    function rename(file_hex) {
      $(".row.tree-item").show();
      $(".tree-item-rename").hide();
  
      if($("."+file_hex).is(':hidden') == true) return;
  
      $("."+file_hex).hide();
      var _t = $(".rename-"+file_hex);
      src = _t.attr('src_text')
      if(src==undefined){
         newName = _t.find("[name='new_filename']").val()
        _t.attr('src_text',newName)
      }else{
        _t.find("[name='new_filename']").val(_t.attr('src_text'))
      }
      $(".rename-"+file_hex).css("display","");
    }
  
    setTimeout(function(){
      $(".popup-save").click(function(){
        form = $(this).parents(".ui.form")
        file_hex = $(this).parents(".row.tree-item").attr("file_hex");
        new_filename = $.trim(form.find("[name='new_filename']").val())
        overwrite = false
        $('.tree-item-file-name').find('a').each(function(a){
          title = $(this).attr('title');
          if(title != undefined){
            if (title.split('/')[0] == new_filename) {
              overwrite = true;
            }
          }
        });
        if(overwrite){
          form.find("[name='new_filename']").focus();
          gitGCModal.alert("提示", "存在相同的文件名,请修改后重试")
          return;
        }
        $.ajax({
          type: 'POST',
          url: "/neilpang/acme.sh/rename/"+ form.attr('path').replace(/\+/g, '%20'),
          data:
          {
            new_filename: new_filename
          },
          success: function(o){
            if(o.status == 1){
              href = window.location.href.split('?')[0]
              window.location.href = href;
            }else {
              var alert_message = o.message || "重命名失败"
              gitGCModal.alert("提示", alert_message)
            }
          },
          dataType: "json"
        });
      })
  
      $(".popup-close").click(function(){
        $(".row.tree-item").show();
        $(".tree-item-rename").hide();
      })
      $('.tree-item-file-name, .tree-item-submodule-name').each(function() {
        var $this = $(this);
        if (typeof $this.parent().attr('file_hex') === 'undefined') {
          return;
        }
        $this.on('contextmenu', function(event) {
          event.preventDefault();
          createContextMenu($this, event.pageX, event.pageY);
        })
      })
    },1000)
  })
</script>
<style>
  .readonly-item {
    background-color: #FBFBFB !important;
  }
  .readonly-path,.readonly-branch {
    display: block;
    white-space: normal;
    word-break: break-word;
    line-height: 1.8;
    margin-top: 1em;
  }
  .btn-readonly-is-uncharged-enterprise, .btn-readonly-is-open-svn {
    background-color: #f5f5f5 !important;
    color: #757575 !important;
  }
</style>

<div class='complaint'>
<div class='ui modal small form' id='landing-comments-complaint-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>
举报
</div>
<div class='content'>
<div class='appeal-success-tip hide'>
<i class='iconfont icon-ic_msg_success'></i>
<div class='appeal-success-text'>
举报成功
</div>
<span>
我们将于2个工作日内通过站内信反馈结果给你！
</span>
</div>
<div class='appeal-tip'>
请认真填写举报原因，尽可能描述详细。
</div>
<div class='ui form appeal-form'>
<div class='inline field'>
<label class='left-part appeal-type-wrap'>
举报类型
</label>
<div class='ui dropdown selection' id='appeal-comments-types'>
<div class='text default'>
请选择举报类型
</div>
<i class='dropdown icon'></i>
<div class='menu'></div>
</div>
</div>
<div class='inline field'>
<label class='left-part'>
举报原因
</label>
<textarea class='appeal-reason' id='appeal-comment-reason' name='msg' placeholder='请说明举报原因' rows='3'></textarea>
</div>
<div class='ui message callback-msg hide'></div>
<div class='ui small error text message exceeded-size-tip'></div>
</div>
</div>
<div class='actions'>
<div class='ui button blank cancel'>
取消
</div>
<div class='ui orange icon button disabled ok' id='complaint-comment-confirm'>
发送
</div>
</div>
</div>
<script>
  var $complaintCommentsModal = $('#landing-comments-complaint-modal'),
      $complainCommentType = $complaintCommentsModal.find('#appeal-comments-types'),
      $complaintModalTip = $complaintCommentsModal.find('.callback-msg'),
      $complaintCommentsContent = $complaintCommentsModal.find('.appeal-reason'),
      $complaintCommentBtn = $complaintCommentsModal.find('#complaint-comment-confirm'),
      complaintSending = false,
      initedCommentsType = false;
  
  function initCommentsTypeList() {
    if (!initedCommentsType) {
      $.ajax({
        url: "/appeals/fetch_types",
        method: 'get',
        data: {'type': 'comment'},
        success: function (data) {
          var result = '';
          for (var i = 0; i < data.length; i++) {
            result = result + "<div class='item' data-value='" + data[i].id + "'>" + data[i].name + "</div>";
          }
          $complainCommentType.find('.menu').html(result);
        }
      });
      $complainCommentType.dropdown({showOnFocus: false});
      initedCommentsType = true;
    }
  }
  $complainCommentType.on('click', function() {
    $complaintCommentsModal.modal({
      autofocus: false,
      onApprove: function() {
        return false;
      },
      onHidden: function() {
        restoreCommonentDefault();
      }
    }).modal('show');
  });
  
  $complaintCommentsContent.on('change keyup', function(e) {
    var content = $(this).val();
    if ($.trim(content).length > 0 && $complainCommentType.dropdown('get value').length > 0 ) {
      $complaintCommentBtn.removeClass('disabled');
      return;
    }
    $complaintCommentBtn.addClass('disabled');
  });
  
  
  $complainCommentType.dropdown({
    showOnFocus: false,
    onChange: function(value, text, $selectedItem) {
      if (value.length > 0 && $.trim($complaintCommentsContent.val()).length > 0) {
        $complaintCommentBtn.removeClass('disabled');
        return
      }
      $complaintCommentBtn.addClass('disabled');
    }
  });
  
  function restoreCommonentDefault() {
    $complainCommentType.dropdown('restore defaults');
    $complaintCommentsContent.val('');
    $('.exceeded-size-tip').text('').hide();
    $complaintModalTip.text('').hide();
    setTimeout(function() {
      setCommentSendTip(false);
    }, 1500);
  }
  
  $complaintCommentBtn.on('click',function(e){
    var reason = $complaintCommentsContent.val();
    var appealableId = $('#landing-comments-complaint-modal').attr('data-id');
    if (complaintSending) {
      return;
    }
    var appealType = $complainCommentType.dropdown('get value');
    var formData = new FormData();
    formData.append('appeal_type_id', appealType);
    formData.append('reason', reason);
    formData.append('appeal_type','Note');
    formData.append('target_id',appealableId);
    $.ajax({
      type: 'POST',
      url: "/appeals",
      cache: false,
      contentType: false,
      processData: false,
      data: formData,
      beforeSend: function() {
        setCommentSendStatus(true);
      },
      success: function(res) {
        if (res.status == 200) {
          setCommentSendTip(true);
          setTimeout(function() {
            $complaintCommentsModal.modal('hide');
            restoreCommonentDefault();
          }, 3000);
        }
        setCommentSendStatus(false);
      },
      error: function(err) {
        showCommonTips(err.responseJSON.message, 'error');
        setCommentSendStatus(false);
      }
    })
  });
  
  function showCommonTips(text, type) {
    $complaintModalTip.text(text).show();
    if (type == 'error') {
      $complaintModalTip.removeClass('success').addClass('error');
    } else {
      $complaintModalTip.removeClass('error').addClass('success');
    }
  }
  
  function setCommentSendStatus(value) {
    complaintSending = value;
    if (complaintSending) {
      $complaintCommentBtn.addClass('loading');
      $complaintCommentsContent.attr('readonly', true);
      $complainCommentType.attr('readonly', true);
    } else {
      $complaintCommentBtn.removeClass('loading');
      $complaintCommentsContent.attr('readonly', false);
      $complainCommentType.attr('readonly', false);
    }
  }
  
  function setCommentSendTip(value) {
    if (value) {
      $('.appeal-success-tip').removeClass('hide');
      $('.appeal-tip').addClass('hide');
      $('.appeal-form').addClass('hide');
      $('#landing-comments-complaint-modal .actions').addClass('hide');
    } else {
      $('.appeal-success-tip').addClass('hide');
      $('.appeal-tip').removeClass('hide');
      $('.appeal-form').removeClass('hide');
      $('#landing-comments-complaint-modal .actions').removeClass('hide');
    }
  }
</script>

<div class='ui small modal' id='misjudgment_appeal_modal'>
<i class='close icon'></i>
<div class='header dividing ui'>
误判申诉
</div>
<div class='content'>
<p>此处可能存在不合适展示的内容，页面不予展示。您可通过相关编辑功能自查并修改。</p>
<p>如您确认内容无涉及 不当用语 / 纯广告导流 / 暴力 / 低俗色情 / 侵权 / 盗版 / 虚假 / 无价值内容或违法国家有关法律法规的内容，可点击提交进行申诉，我们将尽快为您处理。</p>
<div class='buttons'>
<div class='ui button blank cancel'>取消</div>
<div class='ui button orange submit'>提交</div>
</div>
</div>
</div>
<style>
  #misjudgment_appeal_modal .buttons {
    float: right;
    margin-top: 30px;
    margin-bottom: 20px; }
    #misjudgment_appeal_modal .buttons .cancel {
      margin-right: 20px; }
</style>
<script>
  var $misjudgmentAppealModal = $('#misjudgment_appeal_modal');
  $('.cancel').on('click',function(){
    $misjudgmentAppealModal.modal('hide');
  });
  var $jsSubmitAppeal = $misjudgmentAppealModal.find('.submit')
  $jsSubmitAppeal.on('click', function(e) {
    e.preventDefault();
    $(this).addClass('loading').addClass('disabled');
    var type = $(this).attr('data-type');
    var id = $(this).attr('data-id');
    var projectId = $(this).attr('data-project-id');
    var appealType = $(this).attr('data-appeal-type');
    $.ajax({
      type: "PUT",
      url: "/misjudgment_appeal",
      data: {
        type: type,
        id: id,
        project_id: projectId,
        appeal_type: appealType
      },
      success: function(data) {
        Flash.info('提交成功');
        $jsSubmitAppeal.removeClass('loading');
        $misjudgmentAppealModal.modal('hide');
        location.reload()
      },
      error: function(e) {
        Flash.error('提交失败:'+e.responseText);
        $jsSubmitAppeal.removeClass('loading').removeClass('disabled');
        location.reload()
      }
    });
  })
</script>

</div>
<script>
  "use strict";
  $('.js-check-star').checkbox('set unchecked')
</script>

</div>
<script>
  (function() {
    $(function() {
      Tree.init();
      return TreeCommentActions.init();
    });
  
  }).call(this);
</script>
</div>
</div>
<div class='four wide column' style=''>
<div class='project__right-side'>
<div class='side-item intro'>
<div class='header'>
<h4>简介</h4>
</div>
<div class='content'>
<span class='git-project-desc-text'>An ACME Shell script, a certbot client: acme.sh</span>
<a class='hide spread' href='javascript:void(0);'>
展开
<i class='caret down icon'></i>
</a>
<a class='retract hide' href='javascript:void(0);'>
收起
<i class='caret up icon'></i>
</a>
<div class='intro-list'>
<div class='blank d-flex d-flex-between dropdown item js-project-label_show label-list-line-feed project-label-list ui' data-labels='[]' data-url='/neilpang/acme.sh/update_description'>
<div class='mixed-label'>
</div>

<div class='default'>暂无标签</div>
</div>
<div class='item'>
<i class='iconfont icon-link'></i>
<span class='git-project-homepage'>
<a rel="nofollow" id="homepage" target="_blank" href="https://acme.sh">https://acme.sh</a>
</span>
</div>
<div class='item'>
<i class='iconfont icon-tag-program'></i>
<span class='summary-languages'>
Shell
<span class='text-muted'>
等 2 种语言
<i class='icon dropdown'></i>
</span>
</span>
<div class='ui popup summary-languages-popup'>
<div class='row'>
<div class='lang'>
<a href="/explore/all?lang=Shell">Shell</a>
</div>
<div class='lang-bar'>
<div class='bar' style='width: 99.9%;'></div>
</div>
<a class="percentage" href="/explore/all?lang=Shell">99.9%</a>
</div>
<div class='row'>
<div class='lang'>
<a href="/explore/all?lang=Dockerfile">Dockerfile</a>
</div>
<div class='lang-bar'>
<div class='bar' style='width: 0.1%;'></div>
</div>
<a class="percentage" href="/explore/all?lang=Dockerfile">0.1%</a>
</div>
</div>
</div>

<div class='item'>
<i class='iconfont icon-licence'></i>
<a target="_blank" id="license-popup" href="/neilpang/acme.sh/blob/master/LICENSE.md">GPL-3.0</a>
<div class='ui popup dark'>使用 GPL-3.0 开源许可协议</div>
</div>
</div>
</div>
<div class='content intro-form'>
<div class='ui small input'>
<textarea name='project[description]' placeholder='描述' rows='5'></textarea>
</div>
<div class='ui small input'>
<input data-regex-value='(^$)|(^(http|https):\/\/(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]).*)|(^(http|https):\/\/[a-zA-Z0-9]+([_\-\.]{1}[a-zA-Z0-9]+)*\.[a-zA-Z]{2,10}(:[0-9]{1,10})?(\?.*)?(\/.*)?$)' name='project[homepage]' placeholder='主页(eg: https://gitee.com)' type='text'>
</div>
<button class='ui orange button mt-1 btn-save'>
保存更改
</button>
<div class='ui blank button btn-cancel-edit'>
取消
</div>
</div>
</div>
<div class='side-item release'>
<div class='header'>
<h4>发行版</h4>
</div>
<div class='content'>
<span class='text-muted'>
暂无发行版
</span>
</div>
</div>
<div class='side-item radar'>
<div class='header mb-1'>
<h4 class='limit-length'>acme.sh</h4>
<a class="ui link button radar-qa" href="javascript:void(0);"><i class='iconfont icon-help-circle'></i>
</a></div>
<div class='content'>
<div data-url='/neilpang/acme.sh/project_radars' id='metrics-radar'>
<div class='wrap skeleton'>
<div class='total-score hide'>
<div class='text'></div>
<div class='score'></div>
</div>
</div>
<div class='ui popup radar-popup'>
<h4 class='title'>Gitee 指数包含如下维度</h4>
<div class='project-radar-list'>
<div class='descript-contianer'>
<div class='descript-title'>
<p>代码活跃度</p>
<p>社区活跃度</p>
<p>团队健康</p>
<p>流行趋势</p>
<p>影响力</p>
</div>
<div class='descript'>
<p>：与代码提交频次相关</p>
<p>：与项目和用户的issue、pr互动相关</p>
<p>：与团队成员人数和稳定度相关</p>
<p>：与项目近期受关注度相关</p>
<p>：与项目的star、下载量等社交指标相关</p>
</div>
</div>
</div>
<div class='finaltime'></div>
</div>
</div>
<script src="https://cn-assets.gitee.com/assets/skill_radar/rep_app-145010700aea13172f33e6c1c7df08c2.js"></script>

</div>
</div>
<div class='side-item contrib' data-url='/neilpang/acme.sh/contributors_count?ref=master' id='contributor'>
<div class='header'>
<h4>
贡献者
<span class='text-muted' id='contributor-count'></span>
</h4>
<a class="ui link button pull-right" href="/neilpang/acme.sh/contributors?ref=master">全部</a>
</div>
<div class='content' id='contributor-list'></div>
<div class='ui active centered inline loader' id='contributor-loader'></div>
</div>
<div class='side-item events' data-url='/neilpang/acme.sh/events.json' id='proj-events'>
<div class='header'>
<h4>近期动态</h4>
</div>
<div class='content'>
<div class='ui comments' id='event-list'></div>
<a class="loadmore hide" href="javascript:void(0);">加载更多
<i class='icon dropdown'></i>
</a><center>
<div class='text-muted nomore hide'>不能加载更多了</div>
<div class='ui inline loader active'></div>
</center>
</div>
</div>
</div>
<div class='ui modal tiny' id='edit-project-description'>
<i class='iconfont icon-close close'></i>
<div class='header'>编辑仓库简介</div>
<div class='content'>
<div class='item mb-2'>
<div class='title label'>简介内容</div>
<div class='ui small input'>
<textarea maxlength='200' name='project[description]' placeholder='描述' rows='5'>An ACME Shell script, a certbot client: acme.sh</textarea>
</div>
</div>
<div class='item mb-2'>
<div class='title label'>主页</div>
<div class='ui small input'>
<input data-regex-value='(^$)|(^(http|https):\/\/(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]).*)|(^(http|https):\/\/[a-zA-Z0-9]+([_\-\.]{1}[a-zA-Z0-9]+)*\.[a-zA-Z]{2,10}(:[0-9]{1,10})?(\?.*)?(\/.*)?$)' name='project[homepage]' placeholder='主页(eg: https://gitee.com)' type='text' value='https://acme.sh'>
</div>
</div>
</div>
<div class='actions'>
<button class='ui button blank cancel'>取消</button>
<button class='ui button orange btn-save'>保存更改</button>
</div>
</div>

<script>
  window.gon.projectRightSide = {
    homepage: "https://acme.sh",
    description: "An ACME Shell script, a certbot client: acme.sh",
    url: '/neilpang/acme.sh/update_description',
    i18n: {
      invalidHomepage: '不是有效的 http 地址',
      descriptionLimitExceeded: '简介长度不得超过%{limit}个字符',
      noDescription: '暂无描述',
      noPermission: '无权限操作！',
      requestError: '修改发生错误，请稍后重试！'
    }
  }
  window.gon.cloneArrSelectedLabel = [] || []
  $(function () {
    var $editModal = $('#edit-project-description')
    $editModal.modal({
      onShow: function () {
        window.globalUtils.getFocus($editModal.find('textarea'))
      }
    })
    $('.project__right-side').on('click', '.header .btn-edit', function () {
      $editModal.modal('show')
    })
    $('#license-popup').popup({ position: 'bottom center', lastResort: 'bottom center' })
  
    $('.js-project-label_show').projectLabel({
      i18n: {
        empty: "标签名不能为空",
        verify: "标签名只允许包含中文、字母、数字或者中划线(-)，不能以中划线开头，且长度少于35个字符",
        max: "最多选择 5 个标签"
      }
    })
  })
</script>

</div>
</div>
</div>
<style>
  .team-member-checkbox .ui.radio.checkbox.checked label:after {
    top: 7px !important; }
</style>

</div>
<script>
  (function() {
    var donateModal;
  
    Gitee.modalHelper = new GiteeModalHelper({
      alertText: '提示',
      okText: '确定'
    });
  
    donateModal = new ProjectDonateModal({
      el: '#project-donate-modal',
      alipayUrl: '/neilpang/acme.sh/alipay',
      wepayUrl: '/neilpang/acme.sh/wepay',
      nameIsBlank: '名称不能为空',
      nameTooLong: '名称过长（最多为 36 个字符）',
      modalHelper: Gitee.modalHelper
    });
  
    if (null === 'true') {
      donateModal.show();
    }
  
    $('#project-donate').on('click', function() {
      return donateModal.show();
    });
  
  }).call(this);
</script>
<script>
  Tree.initHighlightTheme('white')
</script>


</div>
<div class='gitee-project-extension'>
<div class='extension lang'>Shell</div>
<div class='extension public'>1</div>
<div class='extension https'>https://gitee.com/neilpang/acme.sh.git</div>
<div class='extension ssh'>git@gitee.com:neilpang/acme.sh.git</div>
<div class='extension namespace'>neilpang</div>
<div class='extension repo'>acme.sh</div>
<div class='extension name'>acme.sh</div>
<div class='extension branch'>master</div>
</div>

<script>
  $(function() {
    GitLab.GfmAutoComplete.dataSource = "/neilpang/acme.sh/autocomplete_sources"
    GitLab.GfmAutoComplete.Emoji.assetBase = '/assets/emoji'
    GitLab.GfmAutoComplete.setup();
  });
</script>

<footer id='git-footer-main'>
<div class='ui container'>
<div class='logo-row'>
<a href="https://gitee.com"><img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='logo-img' src='/static/images/logo-black.svg?t=158106666'>
</a></div>
<div class='name-important'>
深圳市奥思网络科技有限公司版权所有
</div>
<div class='ui two column grid d-flex-center'>
<div class='nine wide column git-footer-left'>
<div class='ui four column grid' id='footer-left'>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/all-about-git">Git 大全</a>
</div>
<div class='item'>
<a class="item" rel="nofollow" href="https://oschina.gitee.io/learn-git-branching/">Git 命令学习</a>
</div>
<div class='item'>
<a class="item" rel="nofollow" href="https://copycat.gitee.com/">CopyCat 代码克隆检测</a>
</div>
<div class='item'>
<a class="item" href="/appclient">APP与插件下载</a>
</div>
</div>
</div>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/gitee_reward">Gitee Reward</a>
</div>
<div class='item'>
<a class="item" href="/gitee-stars">Gitee 封面人物</a>
</div>
<div class='item'>
<a class="item" href="/gvp">GVP 项目</a>
</div>
<div class='item'>
<a class="item" rel="nofollow" href="https://blog.gitee.com/">Gitee 博客</a>
</div>
<div class='item'>
<a class="item" href="/enterprises#nonprofit-plan">Gitee 公益计划</a>
</div>
<div class='item'>
<a class="item" href="https://gitee.com/features/gitee-go">Gitee 持续集成</a>
</div>
</div>
</div>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/api/v5/swagger">OpenAPI</a>
</div>
<div class='item'>
<a class="item" href="https://help.gitee.com">帮助文档</a>
</div>
<div class='item'>
<a class="item" href="/self_services">在线自助服务</a>
</div>
<div class='item'>
<a class="item" href="/help/articles/4378">更新日志</a>
</div>
</div>
</div>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/about_us">关于我们</a>
</div>
<div class='item'>
<a class="item" rel="nofollow" href="https://www.oschina.net/news/131099/oschina-hiring">加入我们</a>
</div>
<div class='item'>
<a class="item" href="/terms">使用条款</a>
</div>
<div class='item'>
<a class="item" href="/oschina/git-osc/issues">意见建议</a>
</div>
<div class='item'>
<a class="item" href="/links.html">合作伙伴</a>
</div>
</div>
</div>
</div>
</div>
<div class='seven wide column right aligned followus git-footer-right'>
<div class='qrcode mini_app'>
<img alt="微信小程序" src="https://cn-assets.gitee.com/assets/mini_app-e5eee5a21c552b69ae6bf2cf87406b59.jpg" />
<p class='mini_app-text'>微信小程序</p>
</div>
<div class='qrcode weixin'>
<img alt="微信服务号" src="https://cn-assets.gitee.com/assets/qrcode-weixin-9e7cfb27165143d2b8e8b268a52ea822.jpg" />
<p class='weixin-text'>微信服务号</p>
</div>
<div class='phone-and-qq column'>
<div class='ui list official-support-container'>
<div class='item'>
<a class="icon-popup" title="点击加入 Gitee 官方群" rel="nofollow" href="//qm.qq.com/cgi-bin/qm/qr?k=FOdoYurYb10aXeAiViAgsqWX0fsgykNZ"><i class='iconfont icon-logo-qq'></i>
<span>官方技术交流QQ群：777320883</span>
</a></div>
<div class='item mail-and-zhihu'>
<a rel="nofollow" href="mailto: git@oschina.cn"><i class='iconfont icon-msg-mail'></i>
<span id='git-footer-email'>git#oschina.cn</span>
</a></div>
<div class='item mail-and-zhihu'>
<a target="_blank" rel="nofollow" href="https://www.zhihu.com/org/ma-yun-osc/"><i class='iconfont icon-zhihu'></i>
<span>Gitee</span>
</a></div>
<div class='item tel'>
<a>
<i class='iconfont icon-tel'></i>
<span>售前及售后使用咨询：400-606-0201</span>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class='bottombar'>
<div class='ui container'>
<div class='ui d-flex d-flex-between'>
<div class='seven wide column partner d-flex'>
<div class='open-atom d-flex-center'>
<img class="logo-openatom mr-1" alt="开放原子开源基金会" src="https://cn-assets.gitee.com/assets/logo-openatom-d083391cc8a54e283529f3fc11cc38ca.svg" />
<a target="_blank" rel="nofollow" href="https://www.openatom.org/">开放原子开源基金会</a>
<div class='sub-title ml-1'>合作代码托管平台</div>
</div>
<div class='report-12377 d-flex-center ml-3'>
<img class="report-12377__logo mr-1" alt="违法和不良信息举报中心" src="https://cn-assets.gitee.com/assets/12377@2x-1aa42ed2d2256f82a61ecf57be1ec244.png" />
<a target="_blank" rel="nofollow" href="https://12377.cn">违法和不良信息举报中心</a>
</div>
<div class='copyright ml-3'>
<a rel="nofollow" href="http://beian.miit.gov.cn/">粤ICP备12009483号</a>
</div>
</div>
<div class='nine wide column right aligned'>
<i class='icon world'></i>
<a href="/language/zh-CN">简 体</a>
/
<a href="/language/zh-TW">繁 體</a>
/
<a href="/language/en">English</a>
</div>
</div>
</div>
</div>
</footer>

<script>
  var officialEmail = $('#git-footer-email').text()
  $('#git-footer-main .icon-popup').popup({ position: 'bottom center' })
  $('#git-footer-email').text(officialEmail.replace('#', '@'))
  window.gon.popover_card_locale = {
    follow:"关注",
    unfollow:"已关注",
    gvp_title: "GVP - Gitee 最有价值开源项目",
    project: "项目",
    org: "开源组织",
    member: "",
    author: "作者",
    user_blocked: "该用户已被屏蔽或已注销",
    net_error: "网络错误",
    unknown_exception: "未知异常"
  }
  window.gon.select_message = {
    placeholder: "请输入个人空间地址或完整的邮箱地址"
  }
</script>
<script src="https://cn-assets.gitee.com/webpacks/popover_card-d30978018805efc377e9.bundle.js"></script>
<link rel="stylesheet" media="all" href="https://cn-assets.gitee.com/webpacks/css/gitee_nps-69491f94919350b0258c.css" />
<script src="https://cn-assets.gitee.com/webpacks/gitee_nps-548cf00696f895086765.bundle.js"></script>
<script src="https://cn-assets.gitee.com/webpacks/gitee_icons-3342fb55bd515db55827.bundle.js"></script>


<div class='side-toolbar'>
<div class='button toolbar-help'>
<i class='iconfont icon-help'></i>
</div>
<div class='ui popup left center dark'>点此查找更多帮助</div>
<div class='toolbar-help-dialog'>
<div class='toolbar-dialog-header'>
<h3 class='toolbar-dialog-title'>搜索帮助</h3>
<form class="toolbar-help-search-form" action="/help/load_keywords_data" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
<div class='ui icon input fluid toolbar-help-search'>
<input name='keywords' placeholder='请输入产品名称或问题' type='text'>
<i class='icon search'></i>
</div>
</form>

<i class='iconfont icon-close toolbar-dialog-close-icon'></i>
</div>
<div class='toolbar-dialog-content'>
<div class='toolbar-help-hot-search'>
<div class='toolbar-roll'>
<a class="init active" title="Git 命令在线学习" href="https://oschina.gitee.io/learn-git-branching/?utm_source==gitee-help-widget"><i class='Blue icon icon-command iconfont'></i>
<span>Git 命令在线学习</span>
</a><a class="init " title="如何在 Gitee 导入 GitHub 仓库" href="https://gitee.com/help/articles/4261?utm_source==gitee-help-widget"><i class='icon icon-clipboard iconfont orange'></i>
<span>如何在 Gitee 导入 GitHub 仓库</span>
</a></div>
<div class='toolbar-list'>
<div class='toolbar-list-item'>
<a href="/help/articles/4114">Git 仓库基础操作</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4166">企业版和社区版功能对比</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4191">SSH 公钥设置</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4194">如何处理代码冲突</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4232">仓库体积过大，如何减小？</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4279">如何找回被删除的仓库数据</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4283">Gitee 产品配额说明</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4284">GitHub仓库快速导入Gitee及同步更新</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4328">什么是 Release（发行版）</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4354">将 PHP 项目自动发布到 packagist.org</a>
</div>
</div>
</div>
<div class='toolbar-help-search-reseult'></div>
</div>
</div>
<script>
  var opt = { position: 'left center'};
  var $helpSideToolbar = $('.button.toolbar-help');
  var $toolbarRoll = $('.toolbar-roll');
  
  $(function() {
    if (false) {
      $helpSideToolbar.popup(opt).popup({lastResort:'left center'})
    } else {
      $helpSideToolbar.popup({lastResort:'left center'}).popup('show', opt);
      setTimeout(function() {
        $helpSideToolbar.popup('hide', opt);
      }, 3000);
    }
  
    if ($toolbarRoll.length) {
      setInterval(function() {
        var $nextActiveLink = $toolbarRoll.find('a.active').next();
        if (!$nextActiveLink.length) {
          $nextActiveLink = $toolbarRoll.find('a:first-child');
        }
        $nextActiveLink.attr('class', 'active').siblings().removeClass('active init');
      }, 5000);
    }
  })
</script>

<div class='popup button' id='home-comment'>
<i class='iconfont icon-comment'></i>
</div>
<div class='ui popup dark'>评论</div>
<div class='toolbar-appeal popup button'>
<i class='iconfont icon-report'></i>
</div>
<div class='ui popup dark'>
仓库举报
</div>
<script>
  $('.toolbar-appeal').popup({ position: 'left center' });
</script>

<div class='button gotop popup' id='gotop'>
<i class='iconfont icon-top'></i>
</div>
<div class='ui popup dark'>回到顶部</div>
</div>
<div class='form modal normal-modal tiny ui' id='unlanding-complaint-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>
登录提示
</div>
<div class='container actions'>
<div class='content'>
该操作需登录 Gitee 帐号，请先登录后再操作。
</div>
<div class='ui orange icon large button ok'>
立即登录
</div>
<div class='ui button blank cancel'>
没有帐号，去注册
</div>
</div>
</div>
<script>
  var $elm = $('.toolbar-appeal');
  
  $elm.on('click', function() {
    var modals = $("#unlanding-complaint-modal.normal-modal");
    if (modals.length > 1) {
      modals.eq(0).modal('show');
    } else {
      modals.modal('show');
    }
  })
  $("#unlanding-complaint-modal.normal-modal").modal({
    onDeny: function() {
      window.location.href = "/signup?from=";
    },
    onApprove: function() {
      window.location.href = "/login?from=";
    }
  })
</script>

<style>
  .side-toolbar .bdsharebuttonbox a {
    font-size: 24px;
    color: white !important;
    opacity: 0.9;
    margin: 6px 6px 0px 6px;
    background-image: none;
    text-indent: 0;
    height: auto;
    width: auto;
  }
</style>
<style>
  #udesk_btn a {
    margin: 0px 20px 167px 0px !important;
  }
</style>
<script>
  (function() {
    $('#project-user-message').popup({
      position: 'left center'
    });
  
  }).call(this);
</script>
<script>
  Gitee.initSideToolbar({
    hasComment: true,
    commentUrl: '/neilpang/acme.sh#tree_comm_title'
  })
</script>





<script>
  (function() {
    this.__gac = {
      domain: 'www.oschina.net'
    };
  
  }).call(this);
</script>

<script src="https://cn-assets.gitee.com/assets/bdstatic/app-070a9e339ac82bf2bf7ef20375cd4121.js"></script>
<script src="https://cn-assets.gitee.com/webpacks/build_status-a3ee4cc8489b2defc1a8.bundle.js"></script>
<script src="https://cn-assets.gitee.com/webpacks/scan_status-12043c7d32460905e204.bundle.js"></script>
<script src="https://cn-assets.gitee.com/webpacks/mermaid_render-7a8ec62c3ce489559313.bundle.js"></script>
</body>
</html>
