Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5CEE71083
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 15:05:03 +0000 (UTC)
Subject: Re: following from bitbake virtual/kernel -c menuconfig
To: yocto@lists.yoctoproject.org
From: kevincathcart@gmail.com
X-Originating-Location: Raleigh, North Carolina, US (71.158.89.111)
X-Originating-Platform: Mac Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 21 Sep 2023 06:48:49 -0700
References: <AM9PR03MB70124AD0AE23ACB9C3DA351692F9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB70124AD0AE23ACB9C3DA351692F9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Message-ID: <558.1695304129495444012@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bhWodW77zz6pLuFtLaIq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 15:05:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61067

--bhWodW77zz6pLuFtLaIq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You can use that generated full .config file as documented at the start of:
https://docs.yoctoproject.org/singleindex.html#changing-the-configuration

However, often the better option is to run `-c menuconfig`, let it save as =
.config, and
then run `-c diffconfig`. This produces a small configuration fragment that=
 includes just the
changes you made.=C2=A0See:
https://docs.yoctoproject.org/kernel-dev/common.html#creating-configuration=
-fragments

The basic process for that is make a kernel .bbappend in your custom layer,=
 that includes the
fragment as a SRC_URL=C2=A0ending in .cfg into the kernel build. If that is=
 done the kernel recipe
(via one of the kernel bbclasses) takes care of merging=C2=A0your configura=
tion with the default.

--bhWodW77zz6pLuFtLaIq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You can use that generated full .config file as documented at the start of:=
<br /><a style=3D"background-color: #ffffff;" href=3D"https://docs.yoctopro=
ject.org/singleindex.html#changing-the-configuration" target=3D"_blank" rel=
=3D"noopener">https://docs.yoctoproject.org/singleindex.html#changing-the-c=
onfiguration</a><br /><br />However, often the better option is to run `-c =
menuconfig`, let it save as .config, and<br />then run `-c diffconfig`. Thi=
s produces a small configuration fragment that includes just the<br />chang=
es you made.&nbsp;See:<br />https://docs.yoctoproject.org/kernel-dev/common=
.html#creating-configuration-fragments<br /><br />The basic process for tha=
t is make a kernel .bbappend in your custom layer, that includes the<br />f=
ragment as a SRC_URL&nbsp;ending in .cfg into the kernel build. If that is =
done the kernel recipe<br />(via one of the kernel bbclasses) takes care of=
 merging&nbsp;your configuration with the default.

--bhWodW77zz6pLuFtLaIq--

