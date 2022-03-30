Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC20C433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 13:53:55 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web12.7384.1648648434255098979
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 06:53:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gcqvDBnU;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230,
 mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id E8253240006;
	Wed, 30 Mar 2022 13:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1648648432;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Sp1BJs56brTLlpQztiU1nBOkfWUIzsixfD8pbLsLVUQ=;
	b=gcqvDBnU/H7uYwPDKP72b8aviCd0WguyuoCUV2E6SUwiLYRIdEsDUi9zyXDUgIt1+yyWyB
	WRxHLyEROsPDddKB0tySl2YqunS0wlLFLc4uU9B56jnDrzGpGDvLifx0iltQW4+4qiLQ2e
	upg3wjNcCSJkXeKZ3LipYh0/51kGthlYCpCpc+6S5EjKr0n+oiNCbqBaWKvRyT9jX4nnEG
	Wi4YlY9+ujC3DTURrZ3rLyAnQiCSjAVocHilyF3lmgm3jVVzcEmFKCqQbNcxRg7esQmSbB
	I5gGqbOJFW+P7Fabyp9MbsAOXZAYapVqfcrEngl4k0BeG+38goyk44vyI9RrJA==
Date: Wed, 30 Mar 2022 15:53:51 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Subject: Re: [yocto] SCM usage in source urls and bandwidth
Message-ID: <YkRg74lxBklzqIpn@piout.net>
References: 
 <8afc5cc5da4718e87e0c11b3a6ee8df1cca6a404.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: 
 <8afc5cc5da4718e87e0c11b3a6ee8df1cca6a404.camel@linuxfoundation.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 13:53:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56599

On 30/03/2022 11:42:46+0100, Richard Purdie wrote:
> [list address fixed, sorry]
> 
> We've been having bandwidth trouble with downloads.yoctoproject.org so we did
> some quick analysis to see what the issue is. Basically in speeding up the
> server which was the rate limit, we hit the limits of the hosting pipe. I'd note
> a few things:
> 
> a) it isn't the sstate mirroring, it is nearly all being used by downloads.
> 
> b) 25% of all our bandwidth is going on "git2_sourceware.org.git.binutils-
> gdb.git.tar.gz" - i.e. downloading the source mirror binutils tarball
> 
> c) 15% is on git2_sourceware.org.git.glibc.git.tar.gz i.e. glibc
> 
> d) OE-Core has downloads.yoctoproject.org as a MIRROR
> 
> e) poky has it as a PREMIRROR
> 
> What are our options? As far as I can see we could:
> 
> a) increase the pipe from downloads.yoctoproject.org but that does come at a
> non-trivial cost to the project.
> 
> b) Seek help with hosting some of the larger mirror tarballs from people better
> able to host them and have that as a first premirror?
> 
> c) Switch the binutils and glibc recipes to tarballs and patches. I know Khem
> finds this less convenient and they keep moving back and forward but we keep
> running into this issue and having to switch back from git.
> 
> d) To soften the blow of c) we could add devupstream support to the recipes? We
> could script updating the recipe to add the patches?
> 
> e) We could drop the PREMIRRORS from poky. This would stop the SCM targets from
> hitting our mirrors first. That does transfer load to the upstream project SCMs
> though and I'm not sure that will be appreciated. I did sent that patch, I'm not
> sure about it though.

I would simply drop PREMIRRORS, this is actually a privacy concern for
some of our customers that didn't realize they are leaking the names of
their internal git repositories to downloads.yoctoproject.org.



-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

