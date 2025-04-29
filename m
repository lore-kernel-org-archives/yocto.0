Return-Path: <jatedev@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6E8C369DC
	for <webhook@archiver.kernel.org>; Tue, 29 Apr 2025 22:17:55 +0000 (UTC)
Subject: fitimage build code and DEPLOY_DIR
To: yocto@lists.yoctoproject.org
From: "Jate Sujjavanich" <jatedev@gmail.com>
X-Originating-Location: Tallahassee, Florida, US (67.177.99.94)
X-Originating-Platform: Mac Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 29 Apr 2025 15:17:50 -0700
Message-ID: <1Rsv.1745965070672369580.P2NB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XcW8F2sk5ImqL38K3vYg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Apr 2025 22:17:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65267

--XcW8F2sk5ImqL38K3vYg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have some working code which creates a fitImage that u-boot can boot with=
 kernel and ramdisk. I am attempting to reduce host contamination by creati=
ng a local copy which can go into the its file/data.

But this ends up causing changes in the DEPLOY_DIR leading to deletion of s=
ymlinks. I was thinking that the image build code is solely in the tmp/work=
/MACHINE/image-recipe, but I'm thinking now that there is hidden (to me) be=
havior possibly in the bitbake rootfs libraries or sstate code. I hoping so=
meone familiar with this can assist.

Thanks,
Jate S.

--XcW8F2sk5ImqL38K3vYg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have some working code which creates a fitImage that u-boot can boot=
 with kernel and ramdisk. I am attempting to reduce host contamination by c=
reating a local copy which can go into the its file/data.</div>
<div>&nbsp;</div>
<div>But this ends up causing changes in the DEPLOY_DIR leading to deletion=
 of symlinks. I was thinking that the image build code is solely in the tmp=
/work/MACHINE/image-recipe, but I'm thinking now that there is hidden (to m=
e) behavior possibly in the bitbake rootfs libraries or sstate code. I hopi=
ng someone familiar with this can assist.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks,<br />Jate S.</div>

--XcW8F2sk5ImqL38K3vYg--

