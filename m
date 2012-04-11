Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA47E00746
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 14:19:29 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2215526pbb.35
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 14:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6f2YmAx14OQhEIgDNt7KAKJLNvXr1snDqAo9ipcJ8xI=;
	b=iinMjkY+gTGD3MVAVJlZy9KkEj2dxsaKuFepvnRfxWexawQjiS2z73+8a4+jCgcudn
	t2gOg252uiJ5jJIgvdjfoixsPUYbMnlbeNFWGY0b0P45Lr3NegQqwDtyJh97qOp8fzXT
	2+h68pLHdfFSlL8/8MV5uSQWpwa8kE/vKrsdVve+pfwEDeKWzI0zONkmNZmvpIpEpiMA
	bc++SAYUFcTam699vY3r3CdD/5jhxa4gJRbfym7Pjgyr0V+4ukmA67Fn7SaZCn1cqf84
	Va1gT2bY4gPvNRpkBoTc2f8ab2qa+miSORRwJKsh7EuabFOv0Aj7yCcONuHjyWSb27pX
	iw/Q==
MIME-Version: 1.0
Received: by 10.68.130.196 with SMTP id og4mr751973pbb.155.1334179169488; Wed,
	11 Apr 2012 14:19:29 -0700 (PDT)
Received: by 10.68.14.166 with HTTP; Wed, 11 Apr 2012 14:19:29 -0700 (PDT)
In-Reply-To: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
Date: Wed, 11 Apr 2012 17:19:29 -0400
Message-ID: <CADzUK1JaG0NHMzNgyPuRom_968orJqsqOMAV8fG9gpz-aDxO=A@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Wed, 11 Apr 2012 21:19:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Is there a page somewhere that gives a rough idea of how quickly a full build runs on various systems?

I dont think there is a page anywhere.

This is as rough as it can get on the two machine that I have not
including the time it takes to download the source files.

HP 2.8GHz core i-7 dual core hyper threaded machine with a 5400 rpm disk:

BB_NUM_THREADS = "8"
PARALLEL_MAKE = "8"

core image minimal 2.5 hours
core image sato 5 hours
core image sdk 8-10 hours

A build machine - Core i7-3960X 3.3 GHz - 6 cores hyperthreaded, with
an SSD for build output and a 7200 rpm 6.0 Gbps claiming HDD for
downloads, poky, whatever

BB_NUM_THREADS = "24"
PARALLEL_MAKE = "24"

core image minimal 27 minutes
core image sato 58-62 minutes
core image sdk 110-120 minutes

OS was always Ubuntu 11.10 - xubuntu on HP laptop, server in build machine.

> I need a faster build platform, but want to get a reasonable price / performance balance ;-)
>
> I'm looking at something like an i7-2700K but am not yet tied...

The build machine cost about $3500 or so from tiger direct/newegg

It was well worth it - instead of doing nightly builds, I can now do a
clean build in under one hour.

