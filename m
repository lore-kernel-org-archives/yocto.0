Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42425EB64D8
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 14:40:16 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.14189.1686753606783006416
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 07:40:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=WzAi9KfA;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexandre.belloni@bootlin.com)
X-GND-Sasl: alexandre.belloni@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686753604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dV8kWNRGHuxaZl9aKz12ms9f+8BIBiGbr5Gx+lcN/04=;
	b=WzAi9KfAUFiDlBPRMysDzp8t/67hi3x23o5yHot8a0wq7RsZ3Jzygi5T0M4kkRHGxyZzH3
	tr48H40WHgAsHd+YEwqF2TLuVbTEB8SX5gT0JYPHjEkrYiB6Nl78//3qFOXHOC6k3/kE9g
	VDIHnuzeUJs8zlVHTQqaHA976+VlqbILhVB9yHQhvapdOBDSc0e4k4/WeLEuF3qHd8WvMp
	71hhnZNRaaErQNCeA22KmcLc/baEK65cuq0I/U6E1/xSw9Kfs7Ve4MECJdfOhCExQfb7WR
	i0COI3wnaFYEfaw7KUveoU9TQsqn0TqspKUhMhM9biToRy8wDDGLpbKifcjipQ==
X-GND-Sasl: alexandre.belloni@bootlin.com
X-GND-Sasl: alexandre.belloni@bootlin.com
X-GND-Sasl: alexandre.belloni@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id BB7284000E;
	Wed, 14 Jun 2023 14:40:03 +0000 (UTC)
Date: Wed, 14 Jun 2023 16:40:03 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexis =?iso-8859-1?Q?Lothor=E9?= <alexis.lothore@bootlin.com>,
	yocto@lists.yoctoproject.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
Message-ID: <202306141440030c676fbb@mail.local>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
 <895aca2cd720d61c4a1f5a5eabaf606c00117546.camel@linuxfoundation.org>
 <122697e4-887c-7262-a359-e046914d80db@bootlin.com>
 <20230614142959bbebf1d3@mail.local>
 <534877efea9b78bfbe9a539b57588bf2b692b1a8.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <534877efea9b78bfbe9a539b57588bf2b692b1a8.camel@linuxfoundation.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 14:40:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60305

On 14/06/2023 15:32:25+0100, Richard Purdie wrote:
> On Wed, 2023-06-14 at 16:29 +0200, Alexandre Belloni wrote:
> > On 14/06/2023 14:15:54+0200, Alexis Lothor� wrote:
> > > On 6/14/23 12:31, Richard Purdie wrote:
> > > > On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothor� via
> > > > lists.yoctoproject.org wrote:
> > > > > From: Alexis Lothor� <alexis.lothore@bootlin.com>
> > > > > 
> > > > > This series is a follow-up for the 4.3_M1.rc1 regression report issue.
> > > > > 
> > > > > It has been observed that the report is empty. This issue is linked to
> > > > > configuration description in yocto-autobuilder-helper, and has been
> > > > > identified through the following steps:
> > > > > - empty report is supposed to be a comparison between yocto-4.2 (4.2.rc3)
> > > > >   and 4.3_M1.rc1
> > > > > - yocto-4.2 results are almost empty: we only find test results from Intel
> > > > >   QA (pushed _after_ the AB build) and not the AB test results
> > > > > - tests results are managed by send-qa-email.send-qa-email uses resulttool
> > > > >   to systematically gather and store test results in local git directory
> > > > > - however, it looks for basebranch/comparebranch to know if those results
> > > > >   can be pushed onto git server, and those variables depend on config.json
> > > > >   content
> > > > > - yocto-4.2 (4.2.rc3) has been built on release branch mickledore
> > > > >   (https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/5212)
> > > > > - since mickledore is not yet described in config.json, send-qa-email
> > > > >   considers it as a "work" branch (contrary to a "release" branch) and does
> > > > >   not push test results
> > > > > 
> > > > > As a consequence:
> > > > > - first commit brings in python logger
> > > > > - second commit adds a warning when such case happen, since we are able to
> > > > >   detect it
> > > > > - third fix actually adds mickledore as a release branch to properly store
> > > > >   again test results
> > > > > 
> > > > > There must be a more robust rework to do (because the issue will likely
> > > > > happen on each major delivery), but I aimed for the quick and small fix to
> > > > > quickly bring back tests results storage without breaking other things in
> > > > > the process
> > > > > 
> > > > > Alexis Lothor� (3):
> > > > >   scripts/send-qa-email: use logger instead of raw prints
> > > > >   scripts/send-qa-email: print warning when test results are not stored
> > > > >   config.json: add mickledore as direct push branch for test results
> > > > 
> > > > Thanks for the analysis. I agree we need to somehow fix this properly.
> > > > One solution might be to always push for poky if the branch name
> > > > doesn't end with -next?
> > > 
> > > That might work indeed. If we are sure enough that no custom/feature branch will
> > > be used in poky with send-qa-email (ie, only in poky-contrib), I can do the fix
> > > this way
> > 
> > I sometimes use a different branch name when testing things out (like 64
> > bit time) but as long as we all know, we can probably ensure this ends in
> > -next.
> 
> That would always be in poky-contrib though?
> 

Indeed!

> Cheers,
> 
> Richard

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

