Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2947C38142
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 14:39:34 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.13636.1675175964441153906
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Jan 2023 06:39:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@redrectangle.org header.s=gm1 header.b=Ozt2CWpI;
 spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 217.70.183.199, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id E457CFF802;
	Tue, 31 Jan 2023 14:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redrectangle.org;
	s=gm1; t=1675175962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bcay5X7RhRLHXMPIfI32auBy68BqdrkbexkAqyATKgI=;
	b=Ozt2CWpInWmTYjyZzOOSph+kel6jQoK/dvXorFyYcQsQJ/FRtA+dkBffFjMPNBQKdu8zkg
	RhPiKscOFAgJ3M1HioGPjysKUUTI4V+2lJjfRQOrm9kFtHR4EDp1TQH4eoBoA7e4uQU2Mu
	ElBnmsxr8yV2IMCMmCxgtcZgZXq6OrAiO5yRfwyEZZrq7KN9Hxdfu6Byk0UPq+teH4rx6w
	x+QaAP73hoM88C8poRQ+yfKhzCWZZ92IgLnrbSNVq8GP6noyLYdIz7h38lcze4/SGadJER
	otfhzmzvvwL9JBvtCasLJciCOhWlPStNz4KQZfA8WOBlo2Sy9AHjqNvQT3kGOw==
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: [yocto] Adding openjdk-11 to Yocto
From: Robert Joslyn <robert.joslyn@redrectangle.org>
In-Reply-To: <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
Date: Tue, 31 Jan 2023 06:39:08 -0800
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "dspore@parraid.com" <dspore@parraid.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5FFCF910-A57E-4369-9D88-12FCC585E778@redrectangle.org>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
To: Richard Leitner <richard.leitner@skidata.com>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 14:39:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59121


> On Jan 30, 2023, at 12:27 PM, Richard Leitner =
<richard.leitner@skidata.com> wrote:
>=20
> Hi David,
> unfortunately none I'm aware of.
>=20
> But if you have time to add java 11 (or newer) support to meta-java I =
can give support/guidance.
>=20
> regards;rl


Is there any interest in adding recipes that install pre-built Java =
binaries to meta-java? I needed a newer Java and the easy way was to =
make a recipe to install the Adoptium binaries: =
https://github.com/bobolopolis/meta-adoptium/blob/main/recipes-core/temuri=
n/temurin-jdk-17-bin_17.0.6%2B10.bb

This was fine for my purposes, but obviously there=E2=80=99s tradeoffs =
to using someones pre-built binary. I can send a patch to add these to =
meta-java if it would be useful to others.

Thanks,
Robert=

