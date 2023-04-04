Return-Path: <dev@g0hl1n.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB45C7618D
	for <webhook@archiver.kernel.org>; Tue,  4 Apr 2023 05:41:19 +0000 (UTC)
Received: from out-24.mta1.migadu.com (out-24.mta1.migadu.com [95.215.58.24])
 by mx.groups.io with SMTP id smtpd.web11.94509.1680586872139686688
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Apr 2023 22:41:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@g0hl1n.net header.s=key1 header.b=OA9EmN5M;
 spf=pass (domain: g0hl1n.net, ip: 95.215.58.24, mailfrom: dev@g0hl1n.net)
Date: Tue, 4 Apr 2023 07:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=g0hl1n.net; s=key1;
	t=1680586869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SAsql8h8Nx1fKG55lHqlwCYzCtwQP9x+LwRCqM82Sz4=;
	b=OA9EmN5MnGehAxGmysGiWN34CE3p4PWpFkxz85eueO0yF+OJjyJTl3amjpNheLoaDaeZsy
	pZ2XPCc3an7yXY2a1A3GoZGYBlGuXj3rfbwwoFP28YUo5dT33ZmlsgHaCQOCM1uCU762Ua
	C/hRZ7cayGNve9a/O0veRX9iAkfgNb4=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Richard Leitner <dev@g0hl1n.net>
To: Robert Joslyn <robert.joslyn@redrectangle.org>
Cc: "Spore, David" <dspore@parraid.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding openjdk-11 to Yocto
Message-ID: <20230404054104.GA4682@g0hl1n.net>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
 <5FFCF910-A57E-4369-9D88-12FCC585E778@redrectangle.org>
 <Y9o+Za7X8j20qRIS@g0hl1n.net>
 <909273E4-7D7B-47B2-9E79-9FB5431C82CF@redrectangle.org>
 <Y9thAUU9hME+hrBh@g0hl1n.net>
 <174006CCF862C3D3.3213@lists.yoctoproject.org>
 <SN4PR0501MB3919376DF634D9E82627C7BCD78B9@SN4PR0501MB3919.namprd05.prod.outlook.com>
 <FE8B9FAC-C978-40F7-B6BA-AB928DBE6FA2@redrectangle.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <FE8B9FAC-C978-40F7-B6BA-AB928DBE6FA2@redrectangle.org>
X-Migadu-Flow: FLOW_OUT
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Apr 2023 05:41:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59608

Hi,

On Mon, Mar 27, 2023 at 08:13:38PM -0700, Robert Joslyn wrote:
> I did send a patch back in February, but never got a response from Rich=
ard L:
> https://lists.openembedded.org/g/openembedded-devel/message/100934

Sorry, I've seen the patch and the discussion on it, but I'm currently
very busy with other things. I hope I get some time for this topic
within the next 2 weeks.

I'll come back to you as soon I have done some review.

regards;rl

>=20
> I=E2=80=99d still like to see it merged, but understand if it=E2=80=99s=
 not what=E2=80=99s wanted in meta-java. I can certainly resend or make c=
hanges if desired.
>=20
> Thanks,
> Robert
>=20

