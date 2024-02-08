Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C230C4828F
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 23:40:48 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.4758.1707435639501451950
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 15:40:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Zl8y/4cM;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 70BAA1BF204;
	Thu,  8 Feb 2024 23:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707435637;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vn0BufXwVP6+qm4r+ig262qBpOtLfEIYZ68ZN9gTj/w=;
	b=Zl8y/4cMLNhGGmm+rDfVc+1b8qQwEYq+YO9jYV/SyLF3mtChgW+mokgA1Qn8+pbQ9nWUIq
	tq2hicBpNxjIesLqf5QW+O2fntHI7equ4Fpq9PX6hYRu42U0p3a1WC1YSqpO+eQO1v4AGZ
	U6fJpwK+6HdCl1tNuTLWz6ydq2DBrMyqpdq3NVwCYJDZX6tUVlpXLgrDjNt0MNgppPKR7N
	o68NsKvVzWY64Ao0rbx40OUjKF1Hak6xJwkpvF+bkYdjJQVyKr5UrTKtwKne5ohgoes5nL
	ZBAvlodXQIUEq2C4PSKvwyUYz84zvtd+eBwj7RRh99Mq1yh1omvQiYAiwT5iTg==
Date: Fri, 9 Feb 2024 00:40:36 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: Randy MacLeod <randy.macleod@windriver.com>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Try
 allowing a bit more parallelism
Message-ID: <20240208234036648c5e8e@mail.local>
References: <20240208152707.2849716-1-richard.purdie@linuxfoundation.org>
 <a86c1fd2-f341-4575-9da0-6ab08d40539f@windriver.com>
 <45a88b66d57d00b1446443dcbe5460c6fd024d60.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45a88b66d57d00b1446443dcbe5460c6fd024d60.camel@linuxfoundation.org>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 23:40:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62440

On 08/02/2024 23:31:49+0000, Richard Purdie wrote:
> On Thu, 2024-02-08 at 18:13 -0500, Randy MacLeod wrote:
> > On 2024-02-08 10:27 a.m., Richard Purdie wrote:
> > > Currently the autobuilders seem to run at 25% idle at times. We see a lof
> > > of bouncing on IO load and it appears the systems could cope with higher
> > > values.
> > > 
> > > Increase the make load average, cpu and IO pressure limits a bit to
> > > see if build times improve.
> > > 
> > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > ---
> > > �config.json | 6 +++---
> > > �1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/config.json b/config.json
> > > index e8b51cd..7539aeb 100644
> > > --- a/config.json
> > > +++ b/config.json
> > > @@ -49,9 +49,9 @@
> > > �������������"BB_GENERATE_MIRROR_TARBALLS = '1'",
> > > �������������"BB_NUMBER_THREADS = '16'",
> > > �������������"BB_NUMBER_PARSE_THREADS = '16'",
> > > -            "PARALLEL_MAKE = '-j 16 -l 52'",
> > > -            "BB_PRESSURE_MAX_CPU = '10000'",
> > > -            "BB_PRESSURE_MAX_IO = '10000'",
> > > +            "PARALLEL_MAKE = '-j 16 -l 75'",
> 
> >��A value of 75 for the load average limit seems a bit high given that
> > 
> >  there are only 56 v-cores on these machines but maybe that limit won't
> >  kick in if the pressure regulation works. 
> 
> I'm working on the principle that 52 appears to be leaving the machines
> too underloaded. The scheduler is designed to handle load so having
> some new work always ready is probably better overall...
> 
> 
> > I really need to fix and write tests for the pressure regulation but�
> > I'm just not able to make the time these days. Sorry.
> 
> > I guess this change is worth a try to get more data.
> > 
> 
> I think that is where my thinking was at, we need to try something
> different as the performance at the moment just feels wrong somehow.

The centos workers don't have pressure regulation and I have recently
seen bitbake timeout on those s I'm a bit concerned this will
exacerbate the issue.


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

