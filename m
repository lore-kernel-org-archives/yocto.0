Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EAFC77B60
	for <webhook@archiver.kernel.org>; Tue, 28 Mar 2023 03:14:03 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.57952.1679973235552441814
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Mar 2023 20:13:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@redrectangle.org header.s=gm1 header.b=bEbpvsoQ;
 spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 217.70.183.201, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id AD14A1BF203;
	Tue, 28 Mar 2023 03:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redrectangle.org;
	s=gm1; t=1679973233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OytWHJeuX8bbhmOKwWdN/PXkupUSHUnNQJQ+O2wKTaE=;
	b=bEbpvsoQrNw7X2aJafJsYqQfJd3aEZeNBgz5dC/Bvae35WFN5Jr09twB2ZpLPASVaPK0Gq
	3HCf3a0KU4SpvbyJveil5aP1thTTJH0kV7BxXJU0faCEesUM/wh3khBQdB5kaQtlPARewM
	6tdW+YSWmOUjrBf54a5daYx7GRmlKyqfDpMkU7rh+payANUF7OpoffD4ZFhtZXYdij7NMk
	s8QORIk9qcqeUSpW8N5wCPDuqtdpVoicz296v4W8Ks2boL8wlpX+DWHfKvjTXFSVIYaOVq
	anZ2teplDWYjBom9GfPDTb/gfECU32zK73JLFbsqFq/igUWf4Jlm7vYUZV1Z1g==
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: [yocto] Adding openjdk-11 to Yocto
From: Robert Joslyn <robert.joslyn@redrectangle.org>
In-Reply-To: <SN4PR0501MB3919376DF634D9E82627C7BCD78B9@SN4PR0501MB3919.namprd05.prod.outlook.com>
Date: Mon, 27 Mar 2023 20:13:38 -0700
Cc: Richard Leitner <dev@g0hl1n.net>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <FE8B9FAC-C978-40F7-B6BA-AB928DBE6FA2@redrectangle.org>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
 <5FFCF910-A57E-4369-9D88-12FCC585E778@redrectangle.org>
 <Y9o+Za7X8j20qRIS@g0hl1n.net>
 <909273E4-7D7B-47B2-9E79-9FB5431C82CF@redrectangle.org>
 <Y9thAUU9hME+hrBh@g0hl1n.net> <174006CCF862C3D3.3213@lists.yoctoproject.org>
 <SN4PR0501MB3919376DF634D9E82627C7BCD78B9@SN4PR0501MB3919.namprd05.prod.outlook.com>
To: "Spore, David" <dspore@parraid.com>
X-Mailer: Apple Mail (2.3731.500.231)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 03:14:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59537

I did send a patch back in February, but never got a response from =
Richard L:
https://lists.openembedded.org/g/openembedded-devel/message/100934

I=E2=80=99d still like to see it merged, but understand if it=E2=80=99s =
not what=E2=80=99s wanted in meta-java. I can certainly resend or make =
changes if desired.

Thanks,
Robert

> On Mar 27, 2023, at 6:13 AM, Spore, David <dspore@parraid.com> wrote:
>=20
> Hello,
>=20
> Just wanted to check if there has been any progress on this.
>=20
> Thanks!
>=20
> David
>=20
>=20
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On =
Behalf Of Spore, David via lists.yoctoproject.org
> Sent: Thursday, February 2, 2023 8:02 AM
> To: Richard Leitner <dev@g0hl1n.net>; Robert Joslyn =
<robert.joslyn@redrectangle.org>
> Cc: yocto@lists.yoctoproject.org
> Subject: [EXTERNAL] Re: [yocto] Adding openjdk-11 to Yocto
>=20
> CAUTION: This email originated from outside of Parraid. Do not click =
links or open attachments unless you recognize the sender and know the =
content is safe.
>=20
> Looking forward to the patches too.  Thanks for working on it!
>=20
> David
>=20
>=20
> -----Original Message-----
> From: Richard Leitner <dev@g0hl1n.net>
> Sent: Thursday, February 2, 2023 1:19 AM
> To: Robert Joslyn <robert.joslyn@redrectangle.org>
> Cc: yocto@lists.yoctoproject.org; Spore, David <DSpore@parraid.com>
> Subject: [EXTERNAL] Re: [yocto] Adding openjdk-11 to Yocto
>=20
> CAUTION: This email originated from outside of Parraid. Do not click =
links or open attachments unless you recognize the sender and know the =
content is safe.
>=20
> On Wed, Feb 01, 2023 at 07:32:00PM -0800, Robert Joslyn wrote:
>=20
> ...
>=20
>> Sure, I can expand the recipe for additional architectures. A quick =
look at the other downloads shows they have builds for x86, x86-64, arm, =
aarch64, ppc64, sparcv9 and s390x. I don=E2=80=99t think Yocto supports =
sparc or s390, but accommodating the others should be straightforward. I =
should be able to get the time to put a patch together later this week.
>=20
> Sounds great! Looking forward to your patches.
>=20
> Please ensure this mail address <dev@g0hl1n.net> in on Cc. Thanks!
>=20
> regards;rl
>=20
>>=20
>> Thanks,
>> Robert
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59526): =
https://lists.yoctoproject.org/g/yocto/message/59526
> Mute This Topic: https://lists.yoctoproject.org/mt/96632702/1348415
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[robert.joslyn@redrectangle.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-



