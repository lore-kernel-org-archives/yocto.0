Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ABFC4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 10:27:10 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.15034.1667730421220573511
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 02:27:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=sL/CQUqG;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=99SmkK0sXG6JQfcrC3Uhjm9bpA9h/px4r4aS3SYbLxM=; b=sL/CQUqGAjMpSvcbTPCSmHgaya
	ksM7X6IQ/1BwzfLqOQwKwYZRWq0AcCVMrCtF3if5heNVXxQl5kw7MUeBrBUxAckxGnxprhu3BaX8B
	DdiZKEFvWygFOGUq/uMqpfvP0MWYmt4+hTphHwCLOyvE1br9L6jJYgNZanrw+0bLCEMw92RTZ76Wl
	eFlGCBqAEAdkimmK6gONecTKfu8M49BS0/LZ3lX+KXEOSCvQeeRwK1Ezdii83KXshii9Cvf8O8yYR
	2zLT7NxrXW8IVu8QwZRFoblhusCnnPeufsfNpe0BwYx2pETFJC20UrtJ0/fyxA4koU6Rlnz38oAwA
	g3FzKIMw==;
Received: from 89-27-79-167.bb.dnainternet.fi ([89.27.79.167] helo=[192.168.1.137])
	by mail.kapsi.fi with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1orcri-004A1Q-3c; Sun, 06 Nov 2022 12:26:58 +0200
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [yocto] undefined reference problem persists
From: Anders Montonen <Anders.Montonen@iki.fi>
In-Reply-To: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
Date: Sun, 6 Nov 2022 12:26:56 +0200
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
To: Mistyron <ron.eggler@mistywest.com>
X-Mailer: Apple Mail (2.3445.104.21)
X-SA-Exim-Connect-IP: 89.27.79.167
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 10:27:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58495

On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
>=20
> Hi,
>=20
> I'm working with dunfell and want to compile and install the drivers =
for the Laird LWB5+ module (available from =
https://github.com/LairdCP/meta-laird-cp).
> I have included the path to the layer in meta-laird-cp-pre-3.4 in my =
`bblayers.conf` and since I need the networkmanager and with information =
from their support team (don't trust the README apparently), I've added =
`lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in =
`sample-image-cp-lwb5plus.bb`. When I invoke `$ bitbake =
sample-image-cp-lwb5plus`, I keep getting:
>=20
>     | =
/usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-netwo=
rk-manager-10.4.0.10/src/nmcli/common.c:904: undefined reference to =
`rl_echo_signal_char'
>=20
> even though I've added `readline` to the `DEPENDS` list. Why is this? =
I expected the `rl_echo_signal_char` dependency to be resolved, any =
hints?

Are you using meta-gplv2? That function doesn=E2=80=99t exist yet in the =
version of readline provided by that layer.

Regards,
Anders=

