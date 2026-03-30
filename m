Return-Path: <dl9pf@gmx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22E361061B05
	for <webhook@archiver.kernel.org>; Mon, 30 Mar 2026 14:40:23 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.53162.1774881612456333229
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Mar 2026 07:40:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=dl9pf@gmx.de header.s=s31663417 header.b=VhIzHrnr;
 spf=pass (domain: gmx.de, ip: 212.227.17.20, mailfrom: dl9pf@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1774881602; x=1775486402; i=dl9pf@gmx.de;
	bh=djGSejUvn8jrbqdK42wZHCGbOPLxeMbPsUqSuFd+2Ew=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:Content-Type:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=VhIzHrnrK1FPDI7hJViqI9pmdIyCC5/xzhutxTJlIobSU/Kmq788wBVc2gdU+W99
	 kAd6sjeJDP179uHGEUxVspZJsJQff6SDDt3K9SCwvsnPS0iapzDnBGtvxJJNOuvaJ
	 XZhbB1u3l8syA/TmiTwRjom+HvvGeHFPfUjs7AwCaSWaSIZxcP2/m+0nKp7Wwr6Bg
	 RhicNxdUJCGqQknLTfTnmLI2Nc9VxI36kKaX52miRYHI58KUH3s/ZrL9ieXyHcjFb
	 xlaBLc8KcIFxR6nZ03CvumkOddo3+W305mvSs1sLvaHS49oBkUyybAun4fBA6q98H
	 BkeK/HIWhIcRSX5VFw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MFbRm-1wIoeK0RBe-008Axg; Mon, 30
 Mar 2026 16:40:02 +0200
From: Jan-Simon Moeller <dl9pf@gmx.de>
To: peter.kjellerstedt@axis.com,
 "mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>,
 openembedded-architecture <openembedded-architecture@lists.openembedded.org>,
 yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: "Lee, Chee Yang" <chee.yang.lee@intel.com>
Subject: 
 Re: [yocto] [Openembedded-architecture] Yocto Project Release Tagging Changes
Date: Mon, 30 Mar 2026 16:40:00 +0200
Message-ID: <27332721.1r3eYUQgxm@monster>
In-Reply-To: 
 <39e36ec0a761e6ecf1de0b336e3fe045f898e283.camel@linuxfoundation.org>
References: 
 <CADfgfoZ2-_Vypjx4mDypmh=Hace4+gm5_4S-aN=Zad6O_CKw9A@mail.gmail.com>
 <DB5PR02MB10213399C3597AFB6451DBB21EF54A@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <39e36ec0a761e6ecf1de0b336e3fe045f898e283.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K1:CGoM4ISfW7Gl+TvwPt+iM08AakFEmaHe0DHleqd9oKqCSA3hoct
 vnT3wY8MGZe0FfVWwFkMFTNoNSfn1d7Rhe5LMDC3sfO7m3QY+CS421ThLGzH+CmAuvvX4b6
 rtY0XJWLAuhckO5JEvE+FNuVDwBMR0K1EAB6v37G1a1pyzKOeDfn/5ZiDXp216nRBh0hjjB
 l5MvWRd0gTsMyG4jM3OAA==
UI-OutboundReport: notjunk:1;M01:P0:0We928u/CIw=;1c1NKsHkGglaJb4V2LqL3QotiQT
 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
 EN+hATxiBbkD4lFq+0jM
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Mar 2026 14:40:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66363

Hi all!

> > > Branch-Specific Tags: Tags that include the branch name (e.g.,
> > > kirkstone-4.0.34) that duplicate the official yocto-* tags will be
> > > removed from all repositories.
> >=20
> > NO! ABSOLUTELY NOT! Removing official release tags is a way, way
> > worse  idea than, e.g., removing the master branch when starting to
> > use main.
>=20
> We have too much legacy around in general and we're effectively
> drowning in it. If you already have checkouts the tags will remain,
> this will just remove them from the repos and give people a good hint
> which ones to use going forward. Only duplicate and hence confusing
> tags will be removed where a given commit is referenced by multiple
> tags. I think we want clear repos rather than trying to keep
> archaeology at this point.
>=20

I do second Peter here.

There is a difference between cleaning up and breaking things for downstre=
am=20
users.

This can cause existing older releases of downstream projects to fail to=
=20
clone.

Example1: someone uses repo  and has the tag in the released manifest file

Example2: someone uses kas with the tags in question


* Don't do that. *

You can add the new scheme for future tags and *in addition* add the new=
=20
scheme to the old/deprecated tags to have consistency.=20
But do not *delete* what is in the repo already - do not change history.=
=20


Best regards,
Jan-Simon






