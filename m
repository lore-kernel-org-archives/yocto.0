Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E2BC83F22
	for <webhook@archiver.kernel.org>; Wed, 16 Jul 2025 10:11:25 +0000 (UTC)
Subject: [scarthgap] Setting image feature dev-pkgs bring ptest package of libgpiod
To: yocto@lists.yoctoproject.org
From: "Jairo Mejia Aponte" <jairo.mejiaaponte@belden.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (217.111.97.134)
X-Originating-Platform: Linux Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Jul 2025 03:11:17 -0700
Message-ID: <OU7o.1752660677577093318.K0lx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r2dLpxkMbTyR7rFJFJJ0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Jul 2025 10:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65662

--r2dLpxkMbTyR7rFJFJJ0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have found while using *libgpiod* package from meta-oe that you get the p=
test package when the IMAGE_FEATURE option *dev-pkgs* is enabled. This look=
s for me as a bug because it should only bring the normal and dev package o=
f the *libgpiod*. I check if the dev package came with the ptest folder fro=
m do_install, but the packages split of the recipe looks fine to me.

I could not find in the recipe anything that could tell me why this is happ=
ening. I would like to know if someone has an idea how to disable this thin=
g. I want to control which ptest packages are in my dev machine to reduce t=
he time execution of the ptests.

Thank you

--r2dLpxkMbTyR7rFJFJJ0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,&nbsp;</div>
<div>&nbsp;</div>
<div>I have found while using&nbsp;<strong>libgpiod&nbsp;</strong>package f=
rom meta-oe that you get the ptest package when the IMAGE_FEATURE option&nb=
sp;<strong>dev-pkgs&nbsp;</strong>is enabled. This looks for me as a bug be=
cause it should only bring the normal and dev package of the&nbsp;<strong>l=
ibgpiod</strong>. I check if the dev package came with the ptest folder fro=
m do_install, but the packages split of the recipe looks fine to me.&nbsp;<=
/div>
<div>&nbsp;</div>
<div>I could not find in the recipe anything that could tell me why this is=
 happening. I would like to know if someone has an idea how to disable this=
 thing. I want to control which ptest packages are in my dev machine to red=
uce the time execution of the ptests.&nbsp;</div>
<div>&nbsp;</div>
<div>Thank you</div>

--r2dLpxkMbTyR7rFJFJJ0--

