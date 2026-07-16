Return-Path: <u.oelmann@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9D76C44501
	for <webhook@archiver.kernel.org>; Thu, 16 Jul 2026 08:22:54 +0000 (UTC)
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8028.1784190167172823658
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2026 01:22:47 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.200.13, mailfrom: u.oelmann@pengutronix.de)
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2FE7020225B;
	Thu, 16 Jul 2026 10:22:44 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1wkHMi-0024Te-0N;
	Thu, 16 Jul 2026 10:22:44 +0200
Received: from uol by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1wkHMi-0000000EGBb-06RI;
	Thu, 16 Jul 2026 10:22:44 +0200
From: =?utf-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
To: luis.merayo@ridgerun.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Limiting Yocto Memory Usage
In-Reply-To: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
	(Luis Merayo via lists yoctoproject org's message of "Fri, 10 Jul 2026
	15:26:55 -0600")
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
User-Agent: mu4e 1.12.15; emacs 30.2
Date: Thu, 16 Jul 2026 10:22:43 +0200
Message-ID: <6rpl0nny24.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2026 08:22:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66645

Hey Luis,

On Fri, Jul 10 2026 at 15:26 -0600, "Luis Merayo via lists.yoctoproject.org=
" <luis.merayo=3Dridgerun.com@lists.yoctoproject.org> wrote:
> Hi,
>
> I would like to know if there is a way to limit Bitbake's Memory usage
> to a specific percentage of the available RAM. For example, can the
> Yocto build be limited to use a maximum of 70% of RAM?

if you are doing your Bitbake work on a machine running a systemd based
Linux distribution you could simply do something like

  $ systemd-run \
       --user \
       --scope \
       --property=3DCPUWeight=3D<YOUR_CPUWEIGHT> \
       --property=3DIOWeight=3D<YOUR_IOWEIGHT> \
       --property=3DMemoryHigh=3D<YOUR_MEMORYHIGH> \
       --property=3DOOMPolicy=3Dkill \
       --unit=3D"bitbake-run" \
       bitbake [...]

to somewhat limit the resources, see systemd.resource-control(5) and
systemd.scope(5) for details regarding the used parameters.

Best regards,
Ulrich


> Could these three variables achieve this?
>
>  BB_PRESSURE_MAX_CPU, BB_PRESSURE_MAX_IO , BB_PRESSURE_MAX_MEMORY
>
> I see the range for these variables is from 1 to 1000000, so I would
> like to understand if there is a way to specify their values as a
> function of the available RAM.
>
> Regards,
>
> Luis
>
>
> This email and any attachments are intended for the sole use of the named=
 recipient(s) and contain(s) confidential
> information that may be proprietary, privileged, or copyrighted under app=
licable law. If you are not the intended
> recipient, do not read, copy, or forward this email message or any attach=
ments, delete this email message and any
> attachments immediately.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66637): https://lists.yoctoproject.org/g/yocto/messag=
e/66637
> Mute This Topic: https://lists.yoctoproject.org/mt/120213825/3618626
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [u.oelmann@peng=
utronix.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

