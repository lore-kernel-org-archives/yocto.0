Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74F32C64EC4
	for <webhook@archiver.kernel.org>; Wed,  8 Mar 2023 07:09:19 +0000 (UTC)
Subject: How to install files to custom partition?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.248.160)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Mar 2023 23:09:18 -0800
Message-ID: <UnGr.1678259358220053838.ErtG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yRrUKCndQ5KMgKcOZRyL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 07:09:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59363

--yRrUKCndQ5KMgKcOZRyL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have some files which I need to install them to a custom partition (to /m=
nt/custom). But, I couldn't find any installation variables to install file=
s to /mnt/ (partiton other than rootfs).
I want to do something like below:

do_install() {
install -d ${D}$<mnt>/custom
install -m 0755 ${S}/sample.sh ${D}$<mnt>/custom/sample.sh
}

But I think this is not supported or not easily possible.

Can anyone please let me know how to install files to partition other than =
/ ?

Thanks in advance

--yRrUKCndQ5KMgKcOZRyL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have some files which I need to install them to a custo=
m partition (to /mnt/custom). But, I couldn't find any installation variabl=
es to install files to /mnt/ (partiton other than rootfs).<br />I want to d=
o something like below:<br /><br />
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}$&lt;mnt&gt;/custom</div>
<div>&nbsp; &nbsp; install -m 0755 ${S}/sample.sh ${D}$&lt;mnt&gt;/custom/s=
ample.sh</div>
<div>}<br /><br />But I think this is not supported or not easily possible.=
<br /><br />Can anyone please let me know how to install files to partition=
 other than / ?<br /><br />Thanks in advance</div>

--yRrUKCndQ5KMgKcOZRyL--

