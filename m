Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6695FC35280
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 16:33:19 +0000 (UTC)
Subject: Re: Wrong file installed when building a machine
To: yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: Villongo, Lombardy, IT (79.3.92.72)
X-Originating-Platform: Linux Firefox 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Apr 2022 00:00:07 -0700
References: 
 <PAXPR08MB652725DC99C5C2ADC0A246F383E49@PAXPR08MB6527.eurprd08.prod.outlook.com>
In-Reply-To: 
 <PAXPR08MB652725DC99C5C2ADC0A246F383E49@PAXPR08MB6527.eurprd08.prod.outlook.com>
Message-ID: <6568.1649228407483430720@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hrj7jiOeNxRmuish6nIQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 16:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56670

--hrj7jiOeNxRmuish6nIQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 5, 2022 at 04:38 PM, Rombola Davide wrote:

>=20
> FILESEXTRAPATHS_prepend_${MACHINE} :=3D
> "${YOCTOROOT}/meta-a/recipes-my/${PN}/${PN}_rel:"

The following line is sayng that you want to select meta-a when you have a =
MACHINE =3D every machine you have therefore machinec

FILESEXTRAPATHS_prepend_${MACHINE} :=3D "${YOCTOROOT}/meta-a/recipes-my/${P=
N}/${PN}_rel:"=20
You can read it as

FILESEXTRAPATHS_prepend_machinec :=3D "${YOCTOROOT}/meta-a/recipes-my/${PN}=
/${PN}_rel:"

--hrj7jiOeNxRmuish6nIQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 5, 2022 at 04:38 PM, Rombola Davide wrote:<br />
<blockquote>FILESEXTRAPATHS_prepend_${MACHINE} :=3D "${YOCTOROOT}/meta-a/re=
cipes-my/${PN}/${PN}_rel:"</blockquote>
<br />The following line is sayng that you want to select meta-a when you h=
ave a MACHINE =3D every machine you have therefore machinec<br /><br />
<pre><code><span style=3D"font-family: monospace; font-size: 9.75pt; color:=
 #000000; background-color: #ffffff;">FILESEXTRAPATHS_prepend_${MACHINE} :=
=3D "${YOCTOROOT}/meta-a/recipes-my/${PN}/${PN}_rel:" </span></code></pre>
<br />You can read it as <br /><br />
<pre><code><span style=3D"font-family: monospace; font-size: 9.75pt; color:=
 #000000; background-color: #ffffff;">FILESEXTRAPATHS_prepend_machinec :=3D=
 "${YOCTOROOT}/meta-a/recipes-my/${PN}/${PN}_rel:" </span></code><code><spa=
n style=3D"font-family: monospace; font-size: 9.75pt; color: #000000; backg=
round-color: #ffffff;"></span></code></pre>

--hrj7jiOeNxRmuish6nIQ--

