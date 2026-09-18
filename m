Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FBB5C982D7
	for <webhook@archiver.kernel.org>; Fri, 18 Sep 2026 09:22:27 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7118.1789723341624526969
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2026 02:22:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=viEF7r9M;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Unsubscribe-Post:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=20GJf1/D1XYjq5qsdTCCrliKG7QYxLyLj3oFyBp0TpA=; b=v
	iEF7r9MC0H2DMegSiFYViLC69fzMk9nUMHk74UDTlYWMp5/2ddW2EXJEA36i0qKz2XUfAh7qvvlAR
	7+MbgrEEGD8Y+eXA9LUzku6jBYDAB+oYhjoiIfsM9dyp4W3nOqG2q4hwkPgGJkuWbdOOxChDZnb9g
	SyJ9tovNWJtX4i3zAtsS9zX0HYD+GDgeWn+9XRkg7tcv1MdPP2QMMwVLiHZHBm/qUu2g6k480ehNk
	JsrIn+9aG7r0r3UwAs7GCgyZvFQ5IiKUEpu2XPhTCqyX8EdaJW0uwn+TsyOU9ps/ht3oeauhSMqoy
	FU22dh5QVf7egptNq1sO4RKp2Mw9uykXg==;
Received: from pool-174-114-114-5.cpe.net.cable.rogers.com ([174.114.114.5]:42782 helo=sheena)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1x7UnN-00000003Sl1-2nGL;
	Fri, 18 Sep 2026 05:22:19 -0400
Date: Fri, 18 Sep 2026 05:19:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Marco Cavallini <m.cavallini@koansoftware.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Has anyone built a (wrynose) core-image-minimal for NXP
 i.MX93 FRDM?
In-Reply-To: <da121bfb-d0d1-4c2c-b063-fbb27fa8d88a@koansoftware.com>
Message-ID: <185d39e9-9bd3-0066-c42d-6fabd6c68643@crashcourse.ca>
References: <3c9cc3c8-6d85-57a9-0345-492ab5dcd100@crashcourse.ca> <aa020169-3981-431d-a529-c301140c69c8@koansoftware.com> <5b505c19-21fe-9502-29ea-d2b5d2acd83c@crashcourse.ca> <da121bfb-d0d1-4c2c-b063-fbb27fa8d88a@koansoftware.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Sep 2026 09:22:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66735

On Thu, 17 Sep 2026, Marco Cavallini wrote:

> On 17/09/26 13:34, Robert P. J. Day wrote:
> > On Thu, 17 Sep 2026, Marco Cavallini wrote:
> >
> > > On 05/09/26 16:57, Robert P. J. Day via lists.yoctoproject.org wrote:
> > > >
> > > >     I tried this a while ago and it failed, apparently due to a version
> > > > of U-Boot that was not recent enough. So I just put the board to the
> > > > side, then recently noticed that the wizards at Bootlin have updated
> > > > their training/lab material to wrynose:
> > > >
> > > > https://bootlin.com/blog/bootlins-yocto-training-course-updated-to-wrynose/
> > > >
> > > > and one of the supported boards is the FRDM, so I'm just going to
> > > > follow the course and see if there's no issue now.
> > > >
> > > > rday
> > > >
> > >
> > >
> > > Hi Robert,
> > > as we at KOAN are using FRDM91 (imx91-11x11-lpddr4-frdm) for our recent
> > > trainings, I confirm that the NXP setup using 'wrynose' has a broken
> > > recipe
> > > for u-boot-imx-2026.04-r0: do_fetch fails.
> > >
> > > At the moment we consider stable the manifest based on scarthgap only
> > > imx-6.6.52-2.2.1 and using meta-imx-frdm.
> >
> >    I tried again earlier this week (my board is i.MX93, not i.MX91,
> > wonder if that makes a difference), and I can boot a
> > core-image-minimal from SD card now, based on the instructions here:
> >
> > https://github.com/nxp-imx/imx-manifest/tree/imx-linux-wrynose
> >
> >    I'll verify this when I get home later, but I seem to have a working
> > wrynose build.
> >
> > rday
>
>
>
> Hi Robert,
> I am following the same instructions using the NXP manifest and repo.
> I tried again now during lunch and it worked for my FRDM91
> (imx91-11x11-lpddr4-frdm)
>
> I confirm that the NXP setup using 'wrynose' works

  cool. and if i remember correctly, the issue was that some of the
FRDM boards were shipped with a problematic u-boot binary, but
building fresh from wrynose release seems to have solved the issue.
does that sound about right? in any event, glad to hear that it now
works for you.

rday

