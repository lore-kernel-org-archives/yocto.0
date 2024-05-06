Return-Path: <f.louveau@lacroix.group>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F9FBC10F16
	for <webhook@archiver.kernel.org>; Mon,  6 May 2024 08:08:03 +0000 (UTC)
Subject: Re: [yocto] Verity hash in kernel bootscript
To: f.louveau@lacroix.group, yocto@lists.yoctoproject.org
From: f.louveau@lacroix.group
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (81.250.230.22)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 May 2024 01:07:55 -0700
References: <20089.1714651888078006301@lists.yoctoproject.org>
In-Reply-To: <20089.1714651888078006301@lists.yoctoproject.org>
Message-ID: <27164.1714982875549651016@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QwfEQW2LaSRDkVfYPwRv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 May 2024 08:08:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63033

--QwfEQW2LaSRDkVfYPwRv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I continue exploring the capability of yocto to make what I want for dm-ver=
ity, without succes until now :(

As I understand, for a dedicated image, yocto/bitbake will identify package=
s to compile and package. And during do_rootfs, relevant packages (in PACKA=
GE_INSTALL) will be installed in tmp/work/<>/<image>/rootfs. Some recipes a=
lso deploy some elements directly in DEPLOY_DIR_IMAGE (like uboot and kerne=
l).

My question is where can I find the step where kernel and bootloader are ad=
ded to the list of compiled packages ?

--QwfEQW2LaSRDkVfYPwRv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I continue exploring the capability of yocto to mak=
e what I want for dm-verity, without succes until now :(<br /><br />As I un=
derstand, for a dedicated image, yocto/bitbake will identify packages to co=
mpile and package. And during do_rootfs, relevant packages (in PACKAGE_INST=
ALL) will be installed in tmp/work/&lt;&gt;/&lt;image&gt;/rootfs. Some reci=
pes also deploy some elements directly in DEPLOY_DIR_IMAGE (like uboot and =
kernel).<br /><br />My question is where can I find the step where kernel a=
nd bootloader are added to the list of compiled packages ?

--QwfEQW2LaSRDkVfYPwRv--

