<!DOCTYPE html>
<html>
	<head>
		<title>[(site_name)] | Evolution CMS Manager Login</title>
		<meta http-equiv="content-type" content="text/html; charset=[+modx_charset+]">
		<meta name="robots" content="noindex, nofollow">
		<meta name="viewport" content="width=device-width">
		<link rel="icon" type="image/ico" href="[+favicon+]">
		<link rel="stylesheet" type="text/css" href="media/style/[(manager_theme)]/style.css">
		<style>
			html, body { min-height: 100%; height: 100%; }
			body {background-color: #000; color: #fff; background-image: url('/assets/templates/hidelogin/images/evo.jpg'); background-position:50% 50%; background-repeat: no-repeat; background-size: cover; }
			.page { height: 100%; padding-top: 7%; }
			.loginbox { width: 90%; max-width: 25rem; margin: 0 auto; }
			.copyrights { position: absolute; left: 0; right: 0; bottom: 0; padding: .5rem 1rem; font-size: .675rem; color: #aaa; text-align: right }
			.copyrights a { color: #777 }
			#submitButton { float: right; }
			#FMP-email_label { color: #818a91 }
			#FMP-email { margin-bottom: 1rem }
			#FMP-email_button { float: right; }
			/* mainloader */
			#mainloader { position: absolute; z-index: 50000; top: 0; left: 0; width: 100%; height: 100%; text-align: center; vertical-align: middle; padding: 15% 0 0 0; background-color: transparent; opacity: 0; visibility: hidden; -webkit-transition-duration: 0.3s; transition-duration: 0.3s }
			#mainloader.show { opacity: 1; visibility: visible; -webkit-transition-duration: 0.1s; transition-duration: 0.1s }
			#mainloader::before { content: ""; display: block; position: absolute; z-index: 1; left: 50%; top: 50%; width: 120px; height: 120px; margin: -60px 0 0 -60px; border-radius: 50%; animation: rotate 2s linear infinite; box-shadow: 5px 5px 0 0 rgb(234, 132, 82), 14px -7px 0 0 rgba(111, 163, 219, 0.7), -7px 11px 0 0 rgba(112, 193, 92, 0.74), -11px -7px 0 0 rgba(147, 205, 99, 0.78); }
			@keyframes rotate {
				to { transform: rotate(360deg) }
				}
		</style>
	</head>
	<body class="[+manager_theme_style+]">
		<div class="page">
			<div class="tab-page loginbox"></div>
		</div>
		<div class="show" id="mainloader"></div>
		<script>
			/* <![CDATA[ */
			window.onload = function(e){
				setTimeout(function(){
					document.getElementById('mainloader').classList.remove('show');
				}, 200);
			};
			/* ]]> */
		</script>
	</body>
</html>