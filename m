Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ABA7C83F1B
	for <webhook@archiver.kernel.org>; Wed, 16 Jul 2025 11:18:25 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest package of libgpiod
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Jairo Mejia Aponte" <jairo.mejiaaponte@belden.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (217.111.97.134)
X-Originating-Platform: Linux Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Jul 2025 04:18:20 -0700
References: <3D1121B6-3BEE-4AD5-810B-4A9553AC7926@arm.com>
In-Reply-To: <3D1121B6-3BEE-4AD5-810B-4A9553AC7926@arm.com>
Message-ID: <22459.1752664700863708263@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UO85gRYa9YdCkFq0NUtp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Jul 2025 11:18:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65664

--UO85gRYa9YdCkFq0NUtp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

Thank you for the quick answer.

>=20
> The easiest way to figure this out is to use the package manager to remov=
e
> libgpiod-ptest package in the image. That should fail and tell you what
> the dependency is.
>=20

I double check the deploy-rpms folder and I do not have a ptest package fro=
m this recipe. I think that I do not fully follow, how exactly can I use th=
e package manager to remove the libgpiod-ptest package from the image?

--UO85gRYa9YdCkFq0NUtp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hi Ross,&nbsp;</div>
<div>&nbsp;</div>
<div>Thank you for the quick answer.</div>
</div>
<div>&nbsp;</div>
<blockquote>
<div>The easiest way to figure this out is to use the package manager to re=
move libgpiod-ptest package in the image. That should fail and tell you wha=
t the dependency is.</div>
</blockquote>
<div>&nbsp;</div>
<div>I double check the deploy-rpms folder and I do not have a ptest packag=
e from this recipe. I think that I do not fully follow, how exactly can I u=
se the package manager to remove the libgpiod-ptest package from the image?=
&nbsp;</div>

--UO85gRYa9YdCkFq0NUtp--

