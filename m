Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66674C05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 03:32:23 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.6910.1675308737368374779
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 19:32:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@redrectangle.org header.s=gm1 header.b=Ii4UNBe5;
 spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 217.70.183.194, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id E10F340003;
	Thu,  2 Feb 2023 03:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redrectangle.org;
	s=gm1; t=1675308735;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WLmBC9tP3l9C4u5Rcec4kVWSgVXA5e6a5ShzWiSbw0E=;
	b=Ii4UNBe5rZO2piAkq12I87fczIjjVGqNANtd5IU2YLscLtI29T+lH494qG2KXXWIo2R19m
	j22faI14eope+Kld8KRnzRpQCnj07gz0q7H7iQdQuy4hb6xtAJiRmfmsPHBwdT+CJcAK7o
	410wGxfxp3/BmDowEsyUK/Y8tKhb+wNXlT4iG8MB4L265fD7ZG5ZbGEeqYR5nw+o6RHWXr
	8B+sv4oq/+Jd4w5tmrZYOkaYZTovjGP+dpNMwfczBA2QR90MNxhGSruf4b/O7k/uifpEiI
	6axGAPxvmflEj+PlyoiZvmthtZPX7lm/FKfABRVrtA7DR1+1VWC9xBwRneW66w==
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: [yocto] Adding openjdk-11 to Yocto
From: Robert Joslyn <robert.joslyn@redrectangle.org>
In-Reply-To: <Y9o+Za7X8j20qRIS@g0hl1n.net>
Date: Wed, 1 Feb 2023 19:32:00 -0800
Cc: Richard Leitner <richard.leitner@skidata.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "dspore@parraid.com" <dspore@parraid.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <909273E4-7D7B-47B2-9E79-9FB5431C82CF@redrectangle.org>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
 <5FFCF910-A57E-4369-9D88-12FCC585E778@redrectangle.org>
 <Y9o+Za7X8j20qRIS@g0hl1n.net>
To: Richard Leitner <richard.leitner@linux.dev>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 03:32:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59139


> On Feb 1, 2023, at 2:26 AM, Richard Leitner =
<richard.leitner@linux.dev> wrote:
>=20
> Hi,
>=20
> On Tue, Jan 31, 2023 at 06:39:08AM -0800, Robert Joslyn wrote:
>>=20
>>> On Jan 30, 2023, at 12:27 PM, Richard Leitner =
<richard.leitner@skidata.com> wrote:
>>>=20
>>> Hi David,
>>> unfortunately none I'm aware of.
>>>=20
>>> But if you have time to add java 11 (or newer) support to meta-java =
I can give support/guidance.
>>>=20
>>> regards;rl
>>=20
>> Is there any interest in adding recipes that install pre-built Java =
binaries to meta-java? I needed a newer Java and the easy way was to =
make a recipe to install the Adoptium binaries: =
https://github.com/bobolopolis/meta-adoptium/blob/main/recipes-core/temuri=
n/temurin-jdk-17-bin_17.0.6%2B10.bb
>>=20
>> This was fine for my purposes, but obviously there=E2=80=99s =
tradeoffs to using someones pre-built binary. I can send a patch to add =
these to meta-java if it would be useful to others.
>=20
> Yes, please. That would be awesome! Looking forward to your patches.
>=20
> But please make sure the recipe works for all supported architectures,
> not only x86_64. Thanks!
>=20
> regards;rl

Sure, I can expand the recipe for additional architectures. A quick look =
at the other downloads shows they have builds for x86, x86-64, arm, =
aarch64, ppc64, sparcv9 and s390x. I don=E2=80=99t think Yocto supports =
sparc or s390, but accommodating the others should be straightforward. I =
should be able to get the time to put a patch together later this week.

Thanks,
Robert=

