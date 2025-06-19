Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609CFC7115A
	for <webhook@archiver.kernel.org>; Thu, 19 Jun 2025 17:19:22 +0000 (UTC)
Subject: Modpost errors building 3rd party kernel modules outside of the Yocto build
To: yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Texas, US (165.225.32.100)
X-Originating-Platform: Windows Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Jun 2025 10:19:14 -0700
Message-ID: <RQBh.1750353554781657448.kTj1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XVwErDh1DcD3rXZKrfOb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 17:19:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65525

--XVwErDh1DcD3rXZKrfOb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto scarthgap to build a system for the customer's ppc based pl=
atform. I have the yocto portion building all of their images. My next step=
 was to take this resultant package and now use the kernel (Linux 6.6.53) a=
long with it's Module.symvers file to build the customers modules used to a=
ccess their platform's h/w.

In their Makefile for some of their kernel modules they have this variable:

>=20
> KBUILD_EXTRA_SYMBOLS =C2=A0=3D $(ARTIFACTS_ROOT)/yocto/kernel-api/Module.=
symvers
>=20

if I leave that in, I will get a flood of errors like the following:

>=20
> ERROR: modpost: vmlinux: 'load_fp_state' exported twice. Previous export
> was in vmlinux
> ERROR: modpost: vmlinux: 'store_fp_state' exported twice. Previous export
> was in vmlinux
> ERROR: modpost: vmlinux: 'system_state' exported twice. Previous export
> was in vmlinux
> ERROR: modpost: vmlinux: 'static_key_initialized' exported twice. Previou=
s
> export was in vmlinux
>=20
>=20

I'm just starting to debug this and I'm wondering if there is anything that=
 I should be looking at in the recipe for the linux kernel? I'm assuming th=
is is actually a makefile issue on the 3rd party side and not a Yocto recip=
e mistake but I want to cover all my bases.

Any constructive opinions or advice is very much welcome.

Cheers!!

--XVwErDh1DcD3rXZKrfOb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm using Yocto scarthgap to build a system for the customer's ppc bas=
ed platform. I have the yocto portion building all of their images. My next=
 step was to take this resultant package and now use the kernel (Linux 6.6.=
53) along with it's Module.symvers file to build the customers modules used=
 to access their platform's h/w.</div>
<div>&nbsp;</div>
<div>In their Makefile for some of their kernel modules they have this vari=
able:&nbsp;</div>
<div>&nbsp;</div>
<blockquote>
<div>KBUILD_EXTRA_SYMBOLS &nbsp;=3D $(ARTIFACTS_ROOT)/yocto/kernel-api/Modu=
le.symvers</div>
</blockquote>
<div>&nbsp;</div>
<div>if I leave that in, I will get a flood of errors like the following:</=
div>
<div>&nbsp;</div>
<blockquote>
<div>ERROR: modpost: vmlinux: 'load_fp_state' exported twice. Previous expo=
rt was in vmlinux<br />ERROR: modpost: vmlinux: 'store_fp_state' exported t=
wice. Previous export was in vmlinux<br />ERROR: modpost: vmlinux: 'system_=
state' exported twice. Previous export was in vmlinux<br />ERROR: modpost: =
vmlinux: 'static_key_initialized' exported twice. Previous export was in vm=
linux</div>
<div>&nbsp;</div>
</blockquote>
<div>I'm just starting to debug this and I'm wondering if there is anything=
 that I should be looking at in the recipe for the linux kernel? I'm assumi=
ng this is actually a makefile issue on the 3rd party side and not a Yocto =
recipe mistake but I want to cover all my bases.</div>
<div>&nbsp;</div>
<div>Any constructive opinions or advice is very much welcome.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--XVwErDh1DcD3rXZKrfOb--

