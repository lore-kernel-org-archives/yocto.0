Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EAC9CED27B
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 08:30:50 +0000 (UTC)
Subject: Re: [yocto] Yocto Binary Distro
To: "Dmitry Baryshkov" <dbaryshkov@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Erlangen, Bavaria, DE (147.161.171.73)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Oct 2024 01:30:47 -0700
References: <CALT56yOVpmvaS+oWDG1oJeOLOW2NbLq6TwCGwisFqh=4c95h8Q@mail.gmail.com>
In-Reply-To: <CALT56yOVpmvaS+oWDG1oJeOLOW2NbLq6TwCGwisFqh=4c95h8Q@mail.gmail.com>
Message-ID: <11278.1728376247903375011@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="s65PLu0AJNeH9M8PKsvf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 08:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63958

--s65PLu0AJNeH9M8PKsvf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 01:25 AM, Dmitry Baryshkov wrote:

>=20
> Consider using shared SSTATE, it saves you from all the rebuilds,
> while keeping Yocto internals intact and sane.

We are using sstate cache, but if I am not mistaken it can happen that even=
 though a package is in the sstate cache, there's a cache miss and the pack=
age gets rebuilt - and this is exactly what some coworkers would like to av=
oid, cause it means a different binary is on the target than the one previo=
usly built and tested. That's why I posted another question here (maybe 2 w=
eeks ago) if there's a way to force Yocto to only use sstate-cache and fail=
 if a package needs to be rebuilt or to print a list of packages which were=
 built from source. But there's no an "easy" way to do it.

Aleksandar

>=20
> --
> With best wishes
> Dmitry

--s65PLu0AJNeH9M8PKsvf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Tue, Oct 8, 2024 at 01:25 AM, Dmitry Baryshkov wrote:</div>
<div>
<blockquote>Consider using shared SSTATE, it saves you from all the rebuild=
s,<br />while keeping Yocto internals intact and sane.</blockquote>
We are using sstate cache, but if I am not mistaken it can happen that even=
 though a package is in the sstate cache, there's a cache miss and the pack=
age gets rebuilt - and this is exactly what some coworkers would like to av=
oid, cause it means a different binary is on the target than the one previo=
usly built and tested. That's why I posted another question here (maybe 2 w=
eeks ago) if there's a way to force Yocto to only use sstate-cache and fail=
 if a package needs to be rebuilt or to print a list of packages which were=
 built from source. But there's no an "easy" way to do it.</div>
<div>&nbsp;</div>
<div>Aleksandar</div>
<div><br />
<blockquote>-- <br />With best wishes<br />Dmitry</blockquote>
</div>

--s65PLu0AJNeH9M8PKsvf--

