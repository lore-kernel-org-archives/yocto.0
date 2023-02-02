Return-Path: <dev@g0hl1n.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71690C05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 07:19:04 +0000 (UTC)
Received: from out-115.mta0.migadu.com (out-115.mta0.migadu.com [91.218.175.115])
 by mx.groups.io with SMTP id smtpd.web11.9400.1675322337893754650
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 23:18:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@g0hl1n.net header.s=key1 header.b=o2Ao9Use;
 spf=pass (domain: g0hl1n.net, ip: 91.218.175.115, mailfrom: dev@g0hl1n.net)
Date: Thu, 2 Feb 2023 08:18:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=g0hl1n.net; s=key1;
	t=1675322335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xWsQlu+XJO6JVVC0Wf6yEsAiM9iaP1kibOvq/+V7vqY=;
	b=o2Ao9User6EShdFp+iISXsfCk3z02oDK+EKWI1yBhu8ZQ4st6NnGbzW8NjcWhOMlYs2jnp
	W6bhwCu2pwKvyfsoJjgIx+46roQ+SRsosR07VnoWHxRzydZp1B+uOSrFdxYYWI4+SoIeL4
	+y+QX4uB9JNj7dA5CShI4eidt3qX/B8=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Richard Leitner <dev@g0hl1n.net>
To: Robert Joslyn <robert.joslyn@redrectangle.org>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"dspore@parraid.com" <dspore@parraid.com>
Subject: Re: [yocto] Adding openjdk-11 to Yocto
Message-ID: <Y9thAUU9hME+hrBh@g0hl1n.net>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
 <5FFCF910-A57E-4369-9D88-12FCC585E778@redrectangle.org>
 <Y9o+Za7X8j20qRIS@g0hl1n.net>
 <909273E4-7D7B-47B2-9E79-9FB5431C82CF@redrectangle.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <909273E4-7D7B-47B2-9E79-9FB5431C82CF@redrectangle.org>
X-Migadu-Flow: FLOW_OUT
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 07:19:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59140

On Wed, Feb 01, 2023 at 07:32:00PM -0800, Robert Joslyn wrote:

...

> Sure, I can expand the recipe for additional architectures. A quick loo=
k at the other downloads shows they have builds for x86, x86-64, arm, aar=
ch64, ppc64, sparcv9 and s390x. I don=E2=80=99t think Yocto supports spar=
c or s390, but accommodating the others should be straightforward. I shou=
ld be able to get the time to put a patch together later this week.

Sounds great! Looking forward to your patches.

Please ensure this mail address <dev@g0hl1n.net> in on Cc. Thanks!

regards;rl

>=20
> Thanks,
> Robert

