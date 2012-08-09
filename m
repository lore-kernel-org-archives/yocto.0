Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C232E0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 03:43:32 -0700 (PDT)
Received: by bkty5 with SMTP id y5so126568bkt.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 03:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=gj4y36CNRm0VHBMwxu2cWgZRZLSrGzIZNRwwpN59eMM=;
	b=zYV7LgaWJt4rWvdgtSMRpSouyCO8SjefltOVhCu/VGAlvIjR0LwWPUVbRIiC9cVM7G
	LXX4FdkY99kQQYtwWHxn6pSqb9ryp8X+EQpmIJ0JJO6cO/8EC/6ALfBhXRECiva8QPNP
	7T5zlaxhVWPHRiXOWI/WHmrcdb08gYMEsbJgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=gj4y36CNRm0VHBMwxu2cWgZRZLSrGzIZNRwwpN59eMM=;
	b=RzmtApkwayx58sIORNySgLuiLvftr+S9MSpXNy49DOVEgHRx6hrOQy2Y1H0HH1u4U1
	kMphOB2e3Gy8fJwg+y7vuqQ5IlsGoGyv9cg7on4LDWp//9gBCsw1oHkQL7sqkS6KzVNr
	uksVYeZcVzMT3k8XFMlD1gfpBIjkqVVx1TiduE2Cc6eUDiSggnOyQ8qdUV4OTBjNJL3q
	AghJPaHSBO4cJsoVW0UJjlZ8E4tHS2Jht9L7fNHl/B17gjHGH4ye0dK/Or/Zxju8p9mv
	FFSuJiReeC48iOReYlQ/8eZIR8RHLGLKzFEGQ+zcUPUUwHUUoLIOKX5QQj99f5Dt/+mC
	1DBg==
Received: by 10.204.128.213 with SMTP id l21mr8947776bks.84.1344509010872;
	Thu, 09 Aug 2012 03:43:30 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id t23sm456827bks.4.2012.08.09.03.43.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 03:43:29 -0700 (PDT)
Date: Thu, 9 Aug 2012 12:43:24 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120808214527.9e50d930-61d3-41fc-b26c-da05e297b83d.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120808193528.GA20546@imko.de> <5022C084.5040300@windriver.com>
MIME-Version: 1.0
In-Reply-To: <5022C084.5040300@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQmy4q4ZvPLuicYBQVKSbqnMT6B9NvwN39U/JkTy/YsCfcBYf6ruQM6tgQPd12QN76wfLvWt
Subject: Re: Strange WARNING while do_kernel_configcheck()
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Aug 2012 10:43:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 08, 2012 at 03:39:48PM -0400, Bruce Ashfield wrote:
> On 12-08-08 03:35 PM, Markus Hubig wrote:
> >Hello @all,
> >
> >I'm working on a bsp vor the taskit stamp9g20 cpu module.
> >
> >I have a bbappend file for the linux-yocto_3.2 kernel which was ones working
> >but now (after updating the denzil branch from 7.0 to 7.0.1) I get a strange
> >error while building the kernel.
> >
> >I managed to track the problem down to a warning at the do_kernel_configcheck
> >task ...
> >
> >The warning I get is:
> >
> >| NOTE: validating kernel configuration
> >| WARNING: Can't find any BSP hardware or required configuration fragments.
> >| WARNING: Looked at
> >|<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/hdw_frags.txt
> >| and
> >|<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/required_frags.txt
> >| in directory:
> >|<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs
> >
> >Which seems to be the wrong path to look, course there is no such path like
> >
> ><snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs
> >
> >the whole stuff is in:
> >
> ><snip>/linux/meta/cfg/standard/default/stamp9g20
> >
> >maybe I made a mistake in my linux-yocto_3.2.bbappend file?
> 
> Nope. But there was an interface change to that tool in particular in
> master, so if you've ended up with kern-tools that are mismatched to
> the bbclass .. you'd end up with them looking in the wrong place.

Hmm ok but since I use denzil, and denzil provides the bbclass *and* the
kernel revision for the meta branch ... why don't they match?

Cheers, Markus

