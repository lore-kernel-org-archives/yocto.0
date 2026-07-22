Return-Path: <u.oelmann@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E040DC44533
	for <webhook@archiver.kernel.org>; Wed, 22 Jul 2026 08:00:52 +0000 (UTC)
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.42974.1784707249016732196
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jul 2026 01:00:50 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.200.13, mailfrom: u.oelmann@pengutronix.de)
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 54648200582;
	Wed, 22 Jul 2026 10:00:41 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1wmRsf-000hZT-0s;
	Wed, 22 Jul 2026 10:00:41 +0200
Received: from uol by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1wmRsf-0000000C5LQ-0gpP;
	Wed, 22 Jul 2026 10:00:41 +0200
From: =?utf-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto@lists.yoctoproject.org,  luis.merayo@ridgerun.com
Subject: Re: [yocto] Limiting Yocto Memory Usage
In-Reply-To: <f7c74a04-f5dc-4e09-8bae-65626db09dde@windriver.com> (Randy
	MacLeod's message of "Tue, 21 Jul 2026 11:22:31 -0400")
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
	<6rpl0nny24.fsf@pengutronix.de>
	<f7c74a04-f5dc-4e09-8bae-65626db09dde@windriver.com>
User-Agent: mu4e 1.12.15; emacs 30.2
Date: Wed, 22 Jul 2026 10:00:41 +0200
Message-ID: <6ra4rja1xy.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jul 2026 08:00:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66652

Hi Randy,

On Tue, Jul 21 2026 at 11:22 -0400, Randy MacLeod <randy.macleod@windriver.=
com> wrote:
> On 2026-07-16 04:22, Ulrich =C3=96lmann via lists.yoctoproject.org wrote:
> >
> > Hey Luis,
> >
> > On Fri, Jul 10 2026 at 15:26 -0600, "Luis Merayo via lists.yoctoproject=
.org"<luis.merayo=3Dridgerun.com@lists.yoctoproject.org> wrote:
> >>
> >> Hi,
> >>
> >> I would like to know if there is a way to limit Bitbake's Memory usage
> >> to a specific percentage of the available RAM. For example, can the
> >> Yocto build be limited to use a maximum of 70% of RAM?
> > if you are doing your Bitbake work on a machine running a systemd based
> > Linux distribution you could simply do something like
> >
> >    $ systemd-run \
> >         --user \
> >         --scope \
> >         --property=3DCPUWeight=3D<YOUR_CPUWEIGHT> \
> >         --property=3DIOWeight=3D<YOUR_IOWEIGHT> \
> >         --property=3DMemoryHigh=3D<YOUR_MEMORYHIGH> \
> >         --property=3DOOMPolicy=3Dkill \
> >         --unit=3D"bitbake-run" \
> >         bitbake [...]
> >
> > to somewhat limit the resources, see systemd.resource-control(5) and
> > systemd.scope(5) for details regarding the used parameters.
> >
> > Best regards,
> > Ulrich
>
>
> Hi Ulrich,
>
> Using systemd-run is something that I've been meaning to try so it's good=
 to
> hear that you're doing it.
>
> Do you have any experiences to share about this approach ?

we currently use the systemd-run approach mainly to make resource
sharing on our build servers a bit fairer between colleagues when
building customer BSPs.

One nice side effect is that every single process of the control group
gets terminated when the systemd-run scope is terminated. No stray
processes are left behind by mistake.

> Do you do world builds?

So far, I am not using it for world builds. Our use case is more about
encapsulating individual build jobs and avoiding that a single build
grabs too much of the machine, rather than stress-testing the setup with
"bitbake world".

> Do you run more than one systemd-run build on a given machine?

Yes, in practice we do end up with multiple builds running in parallel
on the same machine, since (hopefully ;) all colleagues use the same
systemd-run approach.

> Of course it doesn't prevent bitbake from pushing the cgroup contained sy=
stem
> harder that it can handle and bitbake doesn't have any feedback so that's
> something
> to consider when doing the jobserver or free memory build regulation work.

Right. For our purpose, though, it works reasonably well as a pragmatic
way to improve sharing/fairness on multi-user build machines.

Best regards,
Ulrich


> ../Randy
>
>
> >
> >
> >> Could these three variables achieve this?
> >>
> >>   BB_PRESSURE_MAX_CPU, BB_PRESSURE_MAX_IO , BB_PRESSURE_MAX_MEMORY
> >>
> >> I see the range for these variables is from 1 to 1000000, so I would
> >> like to understand if there is a way to specify their values as a
> >> function of the available RAM.
> >>
> >> Regards,
> >>
> >> Luis
> >>
> >>
> >> This email and any attachments are intended for the sole use of the na=
med recipient(s) and contain(s) confidential
> >> information that may be proprietary, privileged, or copyrighted under =
applicable law. If you are not the intended
> >> recipient, do not read, copy, or forward this email message or any att=
achments, delete this email message and any
> >> attachments immediately.
> >>
> >>
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#66645):https://lists.yoctoproject.org/g/yocto/mess=
age/66645
> >> Mute This Topic:https://lists.yoctoproject.org/mt/120272854/3616765
> >> Group Owner:yocto+owner@lists.yoctoproject.org
> >> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>
>
> --
> # Randy MacLeod
> # Wind River Linux
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

