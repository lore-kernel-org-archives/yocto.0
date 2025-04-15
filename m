Return-Path: <Yash.Shinde@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 787E4C369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 11:33:03 +0000 (UTC)
Subject: Re: [yocto] cargo/rust from meta-rust-bin in eSDK of yocto 4.x
To: sandro.anders@carmedialab.com, yocto@lists.yoctoproject.org
From: "Yash Shinde" <Yash.Shinde@windriver.com>
X-Originating-Location: Mumbai, Maharashtra, IN (45.124.142.173)
X-Originating-Platform: Windows Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 15 Apr 2025 04:32:53 -0700
References: <21197.1730274753800585235@lists.yoctoproject.org>
In-Reply-To: <21197.1730274753800585235@lists.yoctoproject.org>
Message-ID: <12015.1744716773398951671@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EU7BqtjYsUjITHJBTyV0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 11:33:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65170

--EU7BqtjYsUjITHJBTyV0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Sandro,

Recently, I also faced the similar issue as follows:

>=20
> ERROR: libstd-rs-1.86.0-r0 do_prepare_recipe_sysroot: The file
> /usr/bin/cargo is installed by both rust-native and cargo-native, abortin=
g
>=20
>=20
>=20

Could you please explain how you resolved this issue?
I tried adding BBMASK in the recipe but it didn't seem to work.
Also, I noticed that BBMASK isn't widely used in other recipes.

Is there any better solution than using BBMASK?

Regards,
Yash

--EU7BqtjYsUjITHJBTyV0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Sandro,<br /><br />Recently, I also faced the similar issue as foll=
ows:</div>
<div style=3D"color: #fffaf4; background-color: #00000000; font-family: 'co=
n', 'monospace-fallback', 'monospace'; font-size: 13.636363636363637px;">&n=
bsp;</div>
<blockquote>
<div>ERROR: libstd-rs-1.86.0-r0 do_prepare_recipe_sysroot: The file /usr/bi=
n/cargo is installed by both rust-native and cargo-native, aborting</div>
<div>&nbsp;</div>
</blockquote>
<div>Could you please explain how you resolved this issue?<br />I tried add=
ing BBMASK in the recipe but it didn't seem to work.<br />Also, I noticed t=
hat BBMASK isn't widely used in other recipes.<br /><br />Is there any bett=
er solution than using BBMASK?<br /><br />Regards,<br />Yash</div>
<div>&nbsp;</div>

--EU7BqtjYsUjITHJBTyV0--

