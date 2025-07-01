Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E27C7EE30
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 17:59:27 +0000 (UTC)
Subject: Re: [yocto] CMake + native devtool recipe seems lost #cmake #devtool
To: joseph.maniaci@seagate.com, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Jul 2025 10:59:26 -0700
References: <18523.1751389478816434853@lists.yoctoproject.org>
In-Reply-To: <18523.1751389478816434853@lists.yoctoproject.org>
Message-ID: <18523.1751392766208676907@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="J636K3xSf3m8hCxVmBu5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 17:59:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65582

--J636K3xSf3m8hCxVmBu5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So if I try to do something crafty like:

do_configure () {
cd ${S} && . ./sourceme.env ${MC_APP_ARGS} && cd -
}

I lose my cmake(assuming) cache, also, it appears that 'cmake_do_compile la=
ngLookup' ignores the target and tries to build all

DEBUG: Executing shell function do_compile
| NOTE: VERBOSE=3D1 cmake --build /home/user/eps-yocto/build/exos-x-vanadiu=
m-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-util/1.0=
+git/lang-lookup-util-1.0+git --target all --
| Error: could not load cache

--J636K3xSf3m8hCxVmBu5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So if I try to do something crafty like:</div>
<div>&nbsp;</div>
<div>do_configure () {<br />&nbsp; &nbsp; cd ${S} &amp;&amp; . ./sourceme.e=
nv ${MC_APP_ARGS} &amp;&amp; cd -<br />}</div>
<div>&nbsp;</div>
<div>I lose my cmake(assuming) cache, also, it appears that 'cmake_do_compi=
le langLookup' ignores the target and tries to build all</div>
<div>&nbsp;</div>
<div>&nbsp;DEBUG: Executing shell function do_compile<br />| NOTE: VERBOSE=
=3D1 cmake --build /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work/=
armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-util/1.0+git/lang-looku=
p-util-1.0+git --target all --<br />| Error: could not load cache</div>

--J636K3xSf3m8hCxVmBu5--

