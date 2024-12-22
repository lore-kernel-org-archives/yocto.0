Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9E5AE77188
	for <webhook@archiver.kernel.org>; Sun, 22 Dec 2024 08:38:25 +0000 (UTC)
Subject: Re: [yocto] compare images builds settings
To: olivierperrier@yahoo.fr, yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 22 Dec 2024 00:38:18 -0800
References: <5tDB.1734774803796643346.wDaB@lists.yoctoproject.org>
In-Reply-To: <5tDB.1734774803796643346.wDaB@lists.yoctoproject.org>
Message-ID: <14778.1734856698772989236@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fPpo0KR9CkLx7x9I2vYI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Dec 2024 08:38:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64476

--fPpo0KR9CkLx7x9I2vYI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
as it's stated in the Yocto documentation, you must use : append instead of=
 the +=3D operator if you want to avoid ordering issues. The reason for thi=
s is because doing so unconditionally append s to the variable and avoids o=
rdering problems due to the variable being set in image recipes and.bbclass=
 files with operators like ?=3D. Using :append ensures the operation takes =
effect.

https://docs.yoctoproject.org/dev-manual/customizing-images.html#customizin=
g-images-using-local-conf

--
Marco Cavallini | KOAN sas
Bergamo - Italia
embedded software engineering
https://KoanSoftware.com

--fPpo0KR9CkLx7x9I2vYI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>as it's stated in the Yocto documentation, you must use <code class=3D=
"docutils literal notranslate"><span class=3D"pre">:<span class=3D"highligh=
ted">append</span></span></code> instead of the <code class=3D"docutils lit=
eral notranslate"><span class=3D"pre">+=3D</span></code> operator if you wa=
nt to avoid ordering issues. The reason for this is because doing so uncond=
itionally <span class=3D"highlighted">append</span>s to the variable and av=
oids ordering problems due to the variable being set in image recipes and <=
code class=3D"docutils literal notranslate"><span class=3D"pre">.bbclass</s=
pan></code> files with operators like <code class=3D"docutils literal notra=
nslate"><span class=3D"pre">?=3D</span></code>. Using <code class=3D"docuti=
ls literal notranslate"><span class=3D"pre">:append</span></code> ensures t=
he operation takes effect.</div>
<div>&nbsp;</div>
<div><a href=3D"https://docs.yoctoproject.org/dev-manual/customizing-images=
.html#customizing-images-using-local-conf" target=3D"_blank" rel=3D"noopene=
r">https://docs.yoctoproject.org/dev-manual/customizing-images.html#customi=
zing-images-using-local-conf</a></div>
<div>&nbsp;</div>
<div>--<br />Marco Cavallini | KOAN sas<br />Bergamo - Italia<br />embedded=
 software engineering<br />https://KoanSoftware.com</div>

--fPpo0KR9CkLx7x9I2vYI--

