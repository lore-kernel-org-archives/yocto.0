Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0FA6C3DA4A
	for <webhook@archiver.kernel.org>; Mon,  5 Aug 2024 12:21:26 +0000 (UTC)
Received: from mailout01.t-online.de (mailout01.t-online.de [194.25.134.80])
 by mx.groups.io with SMTP id smtpd.web10.6585.1722860483972590873
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Aug 2024 05:21:24 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.80, mailfrom: f_l_k@t-online.de)
Received: from fwd75.aul.t-online.de (fwd75.aul.t-online.de [10.223.144.101])
	by mailout01.t-online.de (Postfix) with SMTP id 03C962407D;
	Mon,  5 Aug 2024 14:21:22 +0200 (CEST)
Received: from [192.168.178.67] ([84.163.33.175]) by fwd75.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1sawiA-0OT4oy0; Mon, 5 Aug 2024 14:21:14 +0200
Date: Mon, 05 Aug 2024 14:22:36 +0200
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] lack of javascriptcoregtk-4.0 #scarthgap
To: yocto@lists.yoctoproject.org, bartiszosti@gmail.com
Message-Id: <PPVQHS.SWN8UJYN38W@t-online.de>
In-Reply-To: <3diF.1722840635783159101.Rmv7@lists.yoctoproject.org>
References: <3diF.1722840635783159101.Rmv7@lists.yoctoproject.org>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-BkqFTq0njlkCnjX8GAmO"
X-TOI-EXPURGATEID: 150726::1722860474-457F5709-A09F693E/0/0 CLEAN NORMAL
X-TOI-MSGID: 9b135b57-e5d6-4cf5-9c45-3d341882e241
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 12:21:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63650

--=-BkqFTq0njlkCnjX8GAmO
Content-Type: text/plain; charset=us-ascii; format=flowed

Hi,
webkit2gtk-4.0 and thus also javascriptcoregtk-4.0 are provided by 
webkitgtk-2.38.  Yocto/oe has a higher version of webkitgtk which 
provides webkit2gtk-4.1/javascriptcoregtk-4.1 (if built with gtk3 
support) That's probably why the rust crate doesn't find the one it 
wants.

On Sun, Aug 4 2024 at 11:50:35 PM -07:00:00, bartiszosti@gmail.com 
wrote:
> Hello,
> I'm trying to build a application based on the Tauri.
> I created a simple application and currently a recipe I shared below.
> 
> tauri-vanilla.bb
> LICENSE = "CLOSED"
> 
> SRC_URI = 
> "git://github.com/bartiszosti/tauri-vanilla.git;branch=master;protocol=https"
> SRCREV = "${AUTOREV}"
> 
> S = "${WORKDIR}/git"
> 
> DEPENDS = "nodejs webkitgtk3"
> 
> do_compile[network] = "1"
> CARGO_DISABLE_BITBAKE_VENDORING = "1"
> CARGO_SRC_DIR = "src-tauri"
> 
> inherit cargo pkgconfig
> 
> I'm able to achive 86% of the compilation with that recipe, deleting 
> the "--frozen" flag from the CARGO_BUILD_FLAGS in cargo.bbclass and 
> setting the PACKAGEGROUP_SOUP to "soup2" in the webkitgtk3.bb but 
> then I get error thet the javascriptcoregtk-4.0 is missing. Do you 
> know how can I add this library to dependancies?
> 
> Best regards,
> Bartosz Szostak
> 


--=-BkqFTq0njlkCnjX8GAmO
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto"><div>Hi,</div><div>webkit2gtk-4.0 and t=
hus also javascriptcoregtk-4.0 are provided by webkitgtk-2.38. &nbsp;Yocto/=
oe has a higher version of webkitgtk which provides webkit2gtk-4.1/javascri=
ptcoregtk-4.1 (if built with gtk3 support) That's probably why the rust cra=
te doesn't find the one it wants. &nbsp;</div></div><div id=3D"geary-quote"=
 dir=3D"auto"><br>On Sun, Aug 4 2024 at 11:50:35 PM -07:00:00, bartiszosti@=
gmail.com wrote:<br><blockquote type=3D"cite"><div>Hello,<br>I'm trying to =
build a application based on the Tauri.<br>I created a simple application a=
nd currently a recipe I shared below.</div>
<div>&nbsp;</div>
<div>tauri-vanilla.bb</div>
<div>
<div style=3D"background-color: #1e1f22; color: #bcbec4;">
<pre style=3D"font-family: 'JetBrains Mono',monospace; font-size: 9.8pt;"><=
span style=3D"color: #c77dbb; font-style: italic;">LICENSE </span>=3D <span=
 style=3D"color: #6aab73;">"CLOSED"<br></span><span style=3D"color: #6aab73=
;"><br></span><span style=3D"color: #c77dbb; font-style: italic;">SRC_URI <=
/span>=3D <span style=3D"color: #6aab73;">"git://github.com/bartiszosti/tau=
ri-vanilla.git;branch=3Dmaster;protocol=3Dhttps"<br></span><span style=3D"c=
olor: #c77dbb; font-style: italic;">SRCREV </span>=3D <span style=3D"color:=
 #6aab73;">"${AUTOREV}"<br></span><span style=3D"color: #6aab73;"><br></spa=
n><span style=3D"color: #c77dbb; font-style: italic;">S </span>=3D <span st=
yle=3D"color: #6aab73;">"${WORKDIR}/git"<br></span><span style=3D"color: #6=
aab73;"><br></span><span style=3D"color: #c77dbb; font-style: italic;">DEPE=
NDS </span>=3D <span style=3D"color: #6aab73;">"nodejs webkitgtk3"<br></spa=
n><span style=3D"color: #6aab73;"><br></span><span style=3D"color: #c77dbb;=
 font-style: italic;">do_compile[network] </span>=3D <span style=3D"color: =
#6aab73;">"1"<br></span><span style=3D"color: #c77dbb; font-style: italic;"=
>CARGO_DISABLE_BITBAKE_VENDORING </span>=3D <span style=3D"color: #6aab73;"=
>"1"<br></span><span style=3D"color: #c77dbb; font-style: italic;">CARGO_SR=
C_DIR </span>=3D <span style=3D"color: #6aab73;">"src-tauri"<br></span><spa=
n style=3D"color: #6aab73;"><br></span><span style=3D"color: #cf8e6d;">inhe=
rit</span> cargo pkgconfig</pre>
</div>
</div>
<div><br>I'm able to achive 86% of the compilation with that recipe, deleti=
ng the "--frozen" flag from the CARGO_BUILD_FLAGS in cargo.bbclass and sett=
ing the PACKAGEGROUP_SOUP to "soup2" in the webkitgtk3.bb but then I get er=
ror thet the javascriptcoregtk-4.0 is missing. Do you know how can I add th=
is library to dependancies?<br><br>Best regards,<br>Bartosz Szostak</div>
<div>&nbsp;</div>
</blockquote></div>
--=-BkqFTq0njlkCnjX8GAmO--


