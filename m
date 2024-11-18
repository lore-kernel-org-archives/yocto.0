Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C4DD10F41
	for <webhook@archiver.kernel.org>; Mon, 18 Nov 2024 02:50:54 +0000 (UTC)
Subject: Re: [yocto] kernel headers missing head files when using SDK generated from populate_sdk
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 17 Nov 2024 18:50:49 -0800
References: <2bb1bc17-0c88-4f39-aa6c-de503325471e@gmail.com>
In-Reply-To: <2bb1bc17-0c88-4f39-aa6c-de503325471e@gmail.com>
Message-ID: <27469.1731898249273289811@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fy7yHRTzK3lHrsqRadDU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 02:50:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64284

--fy7yHRTzK3lHrsqRadDU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 15, 2024 at 11:22 AM, Gyorgy Sarvari wrote:

>=20
> Random idea: have you tried including kernel-devsrc when generating the
> sdk?
>=20
> TOOLCHAIN_TARGET_TASK:append =3D " kernel-devsrc "
>=20
> This supposed to include the final files from the KERNEL_STAGING_DIR,
> which should have all the generated headers and other stuff.
>=20
> (As a quick check having this task, e.g. I could find my board dependent
> cpucaps.h and headers from arch/arm64/include/asm folder also in my sdk.
> Haven't loaded tried to load the source in an IDE nor tried to compile
> anything with it, however.)

Thank you Gyorgy for your reply.
Later I manually fix the issues by doing below:
1. generate two symbolic link asm pointing to asm-generic
2. copy cpucaps and sysreg-defs.h
3. copy fixdep and modpost
All these files are generated in STAGING_KERNEL_DIR, but are not copied to =
kernel headers in SDK sysroots.
After adding kernel-devsrc to TOOLCHAIN_TARGET_TASK as you suggested, also =
tried together with kernel-dev and kernel-modules, there files are still no=
t copied.

--fy7yHRTzK3lHrsqRadDU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, Nov 15, 2024 at 11:22 AM, Gyorgy Sarvari wrote:</div>
<div>
<blockquote>Random idea: have you tried including kernel-devsrc when genera=
ting the sdk?<br /><br />TOOLCHAIN_TARGET_TASK:append =3D " kernel-devsrc "=
<br /><br />This supposed to include the final files from the KERNEL_STAGIN=
G_DIR, <br />which should have all the generated headers and other stuff.<b=
r /><br />(As a quick check having this task, e.g. I could find my board de=
pendent <br />cpucaps.h and headers from arch/arm64/include/asm folder also=
 in my sdk. <br />Haven't loaded tried to load the source in an IDE nor tri=
ed to compile <br />anything with it, however.)</blockquote>
Thank you Gyorgy for your reply.</div>
<div>Later I manually fix the issues by doing below:</div>
<div>1. generate two symbolic link asm pointing to asm-generic</div>
<div>2. copy cpucaps and sysreg-defs.h</div>
<div>3. copy fixdep and modpost</div>
<div>All these files are generated in STAGING_KERNEL_DIR, but are not copie=
d to kernel headers in SDK sysroots.</div>
<div>After adding kernel-devsrc to TOOLCHAIN_TARGET_TASK as you suggested, =
also tried together with kernel-dev and kernel-modules, there files are sti=
ll not copied.&nbsp;&nbsp;</div>

--fy7yHRTzK3lHrsqRadDU--

