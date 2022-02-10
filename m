Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6AC433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 14:21:54 +0000 (UTC)
Subject: Re: Upgrading Yocto without rebuilding instances #yocto
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (85.222.117.222)
X-Originating-Platform: Linux Firefox 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Feb 2022 06:21:53 -0800
References: <TDvW.1644498600309308080.vIMU@lists.yoctoproject.org>
In-Reply-To: <TDvW.1644498600309308080.vIMU@lists.yoctoproject.org>
Message-ID: <15456.1644502913733460763@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dD8zLUC35AnSPO5xugUy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 14:21:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56146

--dD8zLUC35AnSPO5xugUy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello

IIRC you can prepare configuration for Zeus and run build, lots of things p=
robable will need to be rebuild

as there will be in different versions but if only U-Boot is a problem then=
 maybe you could stay on Hardknott

version and only change the U-Boot version? Could you please share some mor=
e information about your build?

Which layers are you using? Do you have some custom layer?

Greetings

--

Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--dD8zLUC35AnSPO5xugUy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello</p>
<p>IIRC you can prepare configuration for Zeus and run build, lots of thing=
s probable will need to be rebuild</p>
<p>as there will be in different versions but if only U-Boot is a problem t=
hen maybe you could stay on Hardknott</p>
<p>version and only change the U-Boot version? Could you please share some =
more information about your build?</p>
<p>Which layers are you using? Do you have some custom layer?</p>
<p>Greetings</p>
<p>--</p>
<p>Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />GPG: 5C495EA3EB=
EECA59<br />https://3mdeb.com | @3mdeb_com</p>

--dD8zLUC35AnSPO5xugUy--

