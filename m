Return-Path: <lukforward@posteo.at>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7B90C2D0CD
	for <webhook@archiver.kernel.org>; Fri, 16 May 2025 01:15:51 +0000 (UTC)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by mx.groups.io with SMTP id smtpd.web10.2912.1747358150733081085
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 May 2025 18:15:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@posteo.at header.s=2017 header.b=RO61WIDt;
 spf=pass (domain: posteo.at, ip: 185.67.36.65, mailfrom: lukforward@posteo.at)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id D6BDF240027
	for <yocto@lists.yoctoproject.org>; Fri, 16 May 2025 03:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.at; s=2017;
	t=1747358148; bh=XW6VbVRRgmGgtUvoDJFRJYAabMMLGgcNhW4zylPbkiY=;
	h=Message-ID:Subject:From:To:Date:Content-Type:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=RO61WIDtG4ocx54BcPpn73BYmFgY3V/2srz+mcMvs05F7IgSnyqhLJ253/imDuiit
	 JDdHd2DXVy7xD7ygDdy8QYvG9V+zWAxkjFwTvltC507Sd7oBY3SrVyBRa7Sr6D8z05
	 uFWbr6VYmorVOpr8Pigs7IJMReVFMg0zA/Nat3Dw9Ojzx7sG87VV5ghwBQ7bPmm6H+
	 0GpAn68LB3Wo+ahJufPmKGg5LApvy4FWCueMeC04MOOYSU2tTIkMMXn2ruGc3tt1Kv
	 WI1XE9lhlgis73ZqeBWYAU44Lk3I/VVglS9FSn5w56x+TOetmc+IMBUy/EBZESJ33j
	 prBieTHrOdZRA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4Zz8KJ21F0z6tvq;
	Fri, 16 May 2025 03:15:48 +0200 (CEST)
Message-ID: <4d5a6ea1017737c7c26d76403d3abcd4ac7f6bfc.camel@posteo.at>
Subject: Re: [yocto] meta-mingw - how to use the SDK on Windows
From: Lukas Palme <lukforward@posteo.at>
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Date: Fri, 16 May 2025 01:15:47 +0000
In-Reply-To: <6b4beaae9d8891eba0c66d12a27e7676376976cb.camel@posteo.at>
References: <183DCFFB81DE0E31.22015@lists.yoctoproject.org>
	 <313eaa317c8b09936c20623afaa8087f0bb97c3a.camel@vrag.ch>
	 <CAJdd5Gb0=dN0_63sAWUTOLD+Zw5BT6Crzjq2DJfJLQztWG9-KA@mail.gmail.com>
	 <183EB64B80205975.2891@lists.yoctoproject.org>
	 <b1c78474edf596f1cfccab131218ab653de794ce.camel@vrag.ch>
	 <6b4beaae9d8891eba0c66d12a27e7676376976cb.camel@posteo.at>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 May 2025 01:15:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65347

Am Freitag, dem 16.05.2025 um 03:13 +0200 schrieb Lukas Palme:
> > Hi there and sorry for spamming - I am still completely puzzled and
> > still spending loads of hours trying to the the Windows SDK to
> > work.
> >=20
> > Simple question - please - Is the meta-mingw, yocto generated SDK
> > for
> > Windows supposed to work? Or is it just a place for testing /
> > evaluation? I see the last change took place more or less 2 weeks
> > ago,
> > so it seems it's still maintained.
> >=20
> > Is there anybody out there who got the Windows SDK to work? Or do
> > you
> > recommend not trying to use it altogether?=20
> >=20
> > Thanks for any hints!
> > BR
> > Dave
>=20
> Hi Dave,
>=20
> I use the MinGW SDK on a Windows 10 machine in my company.
>=20
> One tricky part to find out was that it is necessary to extract the
> SDK
> tar archive as Administrator (I use 7-zip), otherwise symlinks cannot
> be created correctly which causes problems.
>=20
> Also we don't use any setup script or CMake file from the SDK
> directly,
> but handcrafted our own CMake toolchain file. Basically we took all
> the
> relevant variables from the setup script and put them in the
> toolchain
> file and assigned them to the corresponding CMake variables (e.g. CC
> ->
> CMAKE_C_COMPILER)
> But invoking the compiler directly should work too.
>=20
> I should note that we are still on kirkstone, haven't tried scarthgap
> yet.
>=20
> Kind regards,
> Lukas


