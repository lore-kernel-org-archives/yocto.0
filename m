Return-Path: <scott.threet@konecranes.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47CFAC433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 06:16:49 +0000 (UTC)
Subject: Re: tc commands in yocto
To: yocto@lists.yoctoproject.org
From: scott.threet@konecranes.com
X-Originating-Location: =?utf-8?b?SGFydmlhbGEsIEthbnRhLUjDpG1lLCBGSSAoNjIu?=
 =?utf-8?b?NjEuOTcuMTEp?=
X-Originating-Platform: Windows Firefox 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Jun 2022 23:16:41 -0700
References: <ZLvj.1654174378520969482.IEN9@lists.yoctoproject.org>
In-Reply-To: <ZLvj.1654174378520969482.IEN9@lists.yoctoproject.org>
Message-ID: <11085.1654582601680067990@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sqBBGRRQroWFcxOKgnRf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 06:16:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57275

--sqBBGRRQroWFcxOKgnRf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I figured out why it isn't working when I finally managed to figure out how=
 to check what kernel parameters the kernel was built with (/proc/config.gz=
); those configuration options are not actually a part of the kernel config=
uration, though I haven't been able to figure out why

as part of the do_configure step my defconfig (including those parameters) =
is copied to .config and this works correctly; but then if I run do_compile=
 those configuration options (as well as several others) are removed from .=
config; though I haven't been able to find out how that happens; as far as =
I can tell the do_compile just runs kernel_do_compile which just does somet=
hing like "oe_runmake Image CC=3D"$SOME_FLAGS_FOR_CROSS_COMPILER" $LOADADDR=
_COMMAND" and then makes dtbs

any ideas why the configuration set in .config is not being used?

--sqBBGRRQroWFcxOKgnRf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I figured out why it isn't working when I finally managed to figure out =
how to check what kernel parameters the kernel was built with (/proc/config=
.gz); those configuration options are not actually a part of the kernel con=
figuration, though I haven't been able to figure out why</p>
<p>&nbsp;</p>
<p>as part of the do_configure step my defconfig (including those parameter=
s) is copied to .config and this works correctly; but then if I run do_comp=
ile those configuration options (as well as several others) are removed fro=
m .config; though I haven't been able to find out how that happens; as far =
as I can tell the do_compile just runs kernel_do_compile which just does so=
mething like "oe_runmake Image CC=3D"$SOME_FLAGS_FOR_CROSS_COMPILER" $LOADA=
DDR_COMMAND" and then makes dtbs</p>
<p>&nbsp;</p>
<p>any ideas why the configuration set in .config is not being used?</p>

--sqBBGRRQroWFcxOKgnRf--

