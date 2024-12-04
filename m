Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1443E77170
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 16:41:54 +0000 (UTC)
Subject: Installing empty directory
To: yocto@lists.yoctoproject.org
From: "Jesus Jimenez Sanchez" <Jesus.JimenezSanchez@verifone.com>
X-Originating-Location: DE (195.138.223.243)
X-Originating-Platform: Linux Firefox 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 04 Dec 2024 08:41:45 -0800
Message-ID: <pjL4.1733330505962809259.ABTE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bp780rpBziWytWX1hjTu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 16:41:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64400

--bp780rpBziWytWX1hjTu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to add an empty directory using a recipe. I have this in the do=
_install:

do_install() {
install -d ${D}/bt_firmware
}

FILES_${PN} +=3D "/bt_firmware"

But I get the following error:

Files/directories were installed but not shipped in any package:
/bt_firmware
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.

What am I missing here? What should I add to get it shipped?

--bp780rpBziWytWX1hjTu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I am trying to add an empty directory using a recipe. I have this in t=
he do_install:</div>
<div>&nbsp;</div>
<div>
<div>do_install() {<br />&nbsp; &nbsp; install -d ${D}/bt_firmware</div>
<div>}</div>
<div>&nbsp;</div>
<div>FILES_${PN} +=3D "/bt_firmware"</div>
<div>&nbsp;</div>
<div>But I get the following error:</div>
<div>&nbsp;</div>
<div>Files/directories were installed but not shipped in any package:<br />=
&nbsp; /bt_firmware<br />Please set FILES such that these items are package=
d. Alternatively if they are unneeded, avoid installing them or delete them=
 within do_install.</div>
<div>&nbsp;</div>
<div>What am I missing here? What should I add to get it shipped?</div>
</div>

--bp780rpBziWytWX1hjTu--

