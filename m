Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9278AC433F5
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 17:25:30 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web09.14197.1639416329194817363
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 09:25:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id F03EA6000D;
	Mon, 13 Dec 2021 17:25:26 +0000 (UTC)
Date: Mon, 13 Dec 2021 18:25:23 +0100
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org,
 "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] help with ERROR: Nothing RPROVIDES <recipe> error
In-Reply-To: 
 <PR3PR08MB5657B3DDFFDB5107D8BB07F38B749@PR3PR08MB5657.eurprd08.prod.outlook.com>
References: 
 <PR3PR08MB5657B3DDFFDB5107D8BB07F38B749@PR3PR08MB5657.eurprd08.prod.outlook.com>
Message-ID: <5E52C02E-03F5-4BAB-9D61-0EE2656E9918@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 17:25:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55562

Hi Jos=C3=A9,

On December 13, 2021 12:26:29 PM GMT+01:00, "Cardenas Jose Antonio (JCARDE=
NA)" <joseantonio=2Ecardenas@niko=2Eeu> wrote:
>Hi all=2E
>
>I have added a recipe to BBMASK to skip the processing of this recipe for=
 now, but when I try to compile the image i get ERROR: Nothing RPROVIDES <r=
ecipe> error=2E It's like I should say to yocto to reparse all recipes but =
I don't find the way to do it without remove the build directory and build =
again=2E
>

The issue is that you masked a recipe whose packages are required by other=
 recipes packages=2E Find where the RDEPENDS is set for this recipe package=
 and remove the package which depends on that recipe package from your imag=
e (usually, don't include it), or break the dependency chain there by remov=
ing the RDEPENDS=2E

Hope this helps,
Cheers,
Quentin

>Regards=2E
>Jos=C3=A9

