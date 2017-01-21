Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0172BE006EA; Sat, 21 Jan 2017 03:18:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8747E003DB
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 03:18:02 -0800 (PST)
Received: from mfilter22-d.gandi.net (mfilter22-d.gandi.net [217.70.178.150])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 8052617209C;
	Sat, 21 Jan 2017 12:18:01 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter22-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter22-d.gandi.net (mfilter22-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id P-ffFbMSrFku; Sat, 21 Jan 2017 12:18:00 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 60F8A17209D;
	Sat, 21 Jan 2017 12:17:59 +0100 (CET)
Date: Sat, 21 Jan 2017 11:17:56 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170121111756.2577840b@host0.betafive.co.uk>
In-Reply-To: <CAMKF1spczvaF1RBAADQ542qi7Yv532r0su=eyCpVcaBSze9EqQ@mail.gmail.com>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
	<CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
	<12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
	<CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
	<CAMKF1sr3FmoMT5hzWjqn0dXpBF4cMBbjj9SY016TVikPYAZTfQ@mail.gmail.com>
	<CAK18fxGB=3S4Pu0WPRWkKOg1bD1VYG0uG0vWVMTf_AW-8pkTEQ@mail.gmail.com>
	<CAMKF1spczvaF1RBAADQ542qi7Yv532r0su=eyCpVcaBSze9EqQ@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][morty][PATCH 4/6] linux-raspberrypi: Drop v4.8
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 21 Jan 2017 11:18:08 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 20 Jan 2017 10:21:12 -0800
Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Jan 20, 2017 at 8:25 AM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
> > On Fri, Jan 20, 2017 at 6:49 AM, Khem Raj <raj.khem@gmail.com>
> > wrote:  
> >> 4.8 will build until rpi kernel folks rebase the branch :( moving
> >> forward, we should only keep stable branches which they dont rebase
> >> hopefully and 1 more recipe called linux-raspberrypi_dev.bb to
> >> track the latest upstream release, so it will be clear that this
> >> is a dev kernel.  
> >
> > I like this idea. So you mean having two kernel recipes from now on:
> > 1. one current default of ilnux-raspberrypi
> > 2. and the latest one as linux-raspberrypi-dev
> > ?  
> 
> yes. We can have multiple stable kernel recipes if needed but I would
> like to avoid that too if possible.

This sounds like a great idea.

I'd have an overlap period of a month or so when moving to a new stable
release to give people time to move over. But after that I'd agree we
should just keep a single stable kernel recipe in meta-raspberrypi,
unless there's someone in the community heavily invested in the old
version and willing to maintain it and update it. What we don't want is
releases like 4.1 hanging around long after they've been broken by
changes elsewhere.

