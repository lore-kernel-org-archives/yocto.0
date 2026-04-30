Return-Path: <eavillegast@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D397CFF8875
	for <webhook@archiver.kernel.org>; Thu, 30 Apr 2026 09:30:00 +0000 (UTC)
Subject: Re: [yocto] Rockchip project: opinions on RAUC vs SWUpdate?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@lists.yoctoproject.org
From: "Alessandro Villegas" <eavillegast@gmail.com>
X-Originating-Location: Barcelona, Catalonia, ES (64.190.114.74)
X-Originating-Platform: Linux Chrome 147
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 30 Apr 2026 02:29:56 -0700
References: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
In-Reply-To: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
Message-ID: <1166661.1777541396539976674@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bllxO5tCNGGzrkN8d2ha"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2026 09:30:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66463

--bllxO5tCNGGzrkN8d2ha
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Robert,

i have use both with meta-rockchip, in my opinion i prefer meta-swupdate du=
e to its flexibility, if you want a ready-to-go meta-rauc is better, is eas=
ier to use and safer by default.

--bllxO5tCNGGzrkN8d2ha
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello Robert,&nbsp;<br /><br />i have use both with meta-rockchip, in =
my opinion i prefer meta-swupdate due to its flexibility, if you want a rea=
dy-to-go meta-rauc is better, is easier to use and safer by default.</div>

--bllxO5tCNGGzrkN8d2ha--

