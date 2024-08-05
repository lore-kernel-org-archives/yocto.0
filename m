Return-Path: <bartiszosti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620AAC3DA7F
	for <webhook@archiver.kernel.org>; Mon,  5 Aug 2024 06:50:45 +0000 (UTC)
Subject: lack of javascriptcoregtk-4.0 #scarthgap
To: yocto@lists.yoctoproject.org
From: bartiszosti@gmail.com
X-Originating-Location: Gorzyce, Lesser Poland, PL (109.196.245.39)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 04 Aug 2024 23:50:35 -0700
Message-ID: <3diF.1722840635783159101.Rmv7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oUE5bg5Qyndq8rqemoiT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 06:50:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63649

--oUE5bg5Qyndq8rqemoiT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm trying to build a application based on the Tauri.
I created a simple application and currently a recipe I shared below.

tauri-vanilla.bb
LICENSE =3D "CLOSED"

SRC_URI =3D "git://github.com/bartiszosti/tauri-vanilla.git;branch=3Dmaster=
;protocol=3Dhttps"
SRCREV =3D "${AUTOREV}"

S =3D "${WORKDIR}/git"

DEPENDS =3D "nodejs webkitgtk3"

do_compile[network] =3D "1"
CARGO_DISABLE_BITBAKE_VENDORING =3D "1"
CARGO_SRC_DIR =3D "src-tauri"

inherit cargo pkgconfig

I'm able to achive 86% of the compilation with that recipe, deleting the "-=
-frozen" flag from the CARGO_BUILD_FLAGS in cargo.bbclass and setting the P=
ACKAGEGROUP_SOUP to "soup2" in the webkitgtk3.bb but then I get error thet =
the javascriptcoregtk-4.0 is missing. Do you know how can I add this librar=
y to dependancies?

Best regards,
Bartosz Szostak

--oUE5bg5Qyndq8rqemoiT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,<br />I'm trying to build a application based on the Tauri.<br /=
>I created a simple application and currently a recipe I shared below.</div=
>
<div>&nbsp;</div>
<div>tauri-vanilla.bb</div>
<div>
<div style=3D"background-color: #1e1f22; color: #bcbec4;">
<pre style=3D"font-family: 'JetBrains Mono',monospace; font-size: 9.8pt;"><=
span style=3D"color: #c77dbb; font-style: italic;">LICENSE </span>=3D <span=
 style=3D"color: #6aab73;">"CLOSED"<br /></span><span style=3D"color: #6aab=
73;"><br /></span><span style=3D"color: #c77dbb; font-style: italic;">SRC_U=
RI </span>=3D <span style=3D"color: #6aab73;">"git://github.com/bartiszosti=
/tauri-vanilla.git;branch=3Dmaster;protocol=3Dhttps"<br /></span><span styl=
e=3D"color: #c77dbb; font-style: italic;">SRCREV </span>=3D <span style=3D"=
color: #6aab73;">"${AUTOREV}"<br /></span><span style=3D"color: #6aab73;"><=
br /></span><span style=3D"color: #c77dbb; font-style: italic;">S </span>=
=3D <span style=3D"color: #6aab73;">"${WORKDIR}/git"<br /></span><span styl=
e=3D"color: #6aab73;"><br /></span><span style=3D"color: #c77dbb; font-styl=
e: italic;">DEPENDS </span>=3D <span style=3D"color: #6aab73;">"nodejs webk=
itgtk3"<br /></span><span style=3D"color: #6aab73;"><br /></span><span styl=
e=3D"color: #c77dbb; font-style: italic;">do_compile[network] </span>=3D <s=
pan style=3D"color: #6aab73;">"1"<br /></span><span style=3D"color: #c77dbb=
; font-style: italic;">CARGO_DISABLE_BITBAKE_VENDORING </span>=3D <span sty=
le=3D"color: #6aab73;">"1"<br /></span><span style=3D"color: #c77dbb; font-=
style: italic;">CARGO_SRC_DIR </span>=3D <span style=3D"color: #6aab73;">"s=
rc-tauri"<br /></span><span style=3D"color: #6aab73;"><br /></span><span st=
yle=3D"color: #cf8e6d;">inherit</span> cargo pkgconfig</pre>
</div>
</div>
<div><br />I'm able to achive 86% of the compilation with that recipe, dele=
ting the "--frozen" flag from the CARGO_BUILD_FLAGS in cargo.bbclass and se=
tting the PACKAGEGROUP_SOUP to "soup2" in the webkitgtk3.bb but then I get =
error thet the javascriptcoregtk-4.0 is missing. Do you know how can I add =
this library to dependancies?<br /><br />Best regards,<br />Bartosz Szostak=
</div>
<div>&nbsp;</div>

--oUE5bg5Qyndq8rqemoiT--

