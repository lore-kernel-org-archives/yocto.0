Return-Path: <samdietz2001@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D55DC433F5
	for <webhook@archiver.kernel.org>; Tue, 18 Jan 2022 05:29:42 +0000 (UTC)
Subject: Installing only python .pyc files onto the image #yocto
To: yocto@lists.yoctoproject.org
From: "Sam" <samdietz2001@gmail.com>
X-Originating-Location: Canberra, Australian Capital Territory,
 AU (115.70.184.3)
X-Originating-Platform: Linux Firefox 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 Jan 2022 21:29:41 -0800
Message-ID: <VbzN.1642483781624340218.oKJy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="C53sOCCvhNjxQqQBSilp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 05:29:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55895

--C53sOCCvhNjxQqQBSilp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Was wondering if there was a way to edit the distitils3.bbclass or a simila=
r file to only install the python .pyc files onto a yocto image?

I saw something about editing the distutils-common-base.bbclass online, how=
ever, it was only mentioned and not elaborated on.

I am currently working with a setup that installs .py files, then generates=
 the .pyc files and removes the .py files. I am now looking for a method th=
at will only install the .pyc files.

Any help would be appreciated.

--C53sOCCvhNjxQqQBSilp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Was wondering if there was a way to edit the distitils3.bbclass or a simila=
r file to only install the python .pyc files onto a yocto image?<br /><br /=
>I saw something about editing the distutils-common-base.bbclass online, ho=
wever, it was only mentioned and not elaborated on.<br /><br />I am current=
ly working with a setup that installs .py files, then generates the .pyc fi=
les and removes the .py files. I am now looking for a method that will only=
 install the .pyc files.<br /><br />Any help would be appreciated.

--C53sOCCvhNjxQqQBSilp--

