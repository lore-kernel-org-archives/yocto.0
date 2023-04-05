Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A7ABC7619A
	for <webhook@archiver.kernel.org>; Wed,  5 Apr 2023 12:49:38 +0000 (UTC)
Subject: Re: How to remove Rust (and other packages) from yocto build #bitbake
To: yocto@lists.yoctoproject.org
From: Jesus.JimenezSanchez@verifone.com
X-Originating-Location: Athlone, Leinster, IE (83.70.152.75)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Apr 2023 05:49:28 -0700
References: <CAEt6Nwrrz=RSWih8tLMkHzaoHC7vfvhFVaeLZq0AP_jt7Xy+2w@mail.gmail.com>
In-Reply-To: <CAEt6Nwrrz=RSWih8tLMkHzaoHC7vfvhFVaeLZq0AP_jt7Xy+2w@mail.gmail.com>
Message-ID: <30535.1680698968711077938@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YQZCAhDEn7IO4UmZUbgf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 12:49:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59617

--YQZCAhDEn7IO4UmZUbgf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Thank you for your response.

I guess we'll keep building Rust (slowly).

About the other packages I wanted to remove, does `PACKAGE_EXCLUDE` or `IMA=
GE_INSTALL:remove` not work in this case? Is my only option to dig through =
the recipes and remove them there directly?

Thank you.

--YQZCAhDEn7IO4UmZUbgf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />Thank you for your response.<br /><br />I guess we'll kee=
p building Rust (slowly).<br /><br />About the other packages I wanted to r=
emove, does `PACKAGE_EXCLUDE` or `IMAGE_INSTALL:remove` not work in this ca=
se? Is my only option to dig through the recipes and remove them there dire=
ctly?<br /><br />Thank you.

--YQZCAhDEn7IO4UmZUbgf--

