Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D356E00CBD; Tue, 15 Aug 2017 06:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9090E00B8D
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 06:15:54 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id c74so3205959iod.4
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 06:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=6CJ6lhHpxJUnjXPCGY3z4IjFrLUt/rb1JlmawD3J22w=;
	b=rhsoux9cGeVee8Q12Sd6IM+XOowUlWPdkiDuEdKv5SC1xM47WIWry5/ZZIBMPtc/dg
	+uz1I1Ju6+CwQy9wslja7s6iKtDJaitSWyeQOMMZ/mC/2cFjXx6k27wgEEFnQwcdARXV
	jMMkIsHctrP5v6jUQ3Vgs7awWtCAFgUGeGGV5Z2c4HBTJIwVqdwKsNNnci56Z+DYOc5z
	Jp8XAACqoTyWkYjeqZspn7iCW+VWNeoY9Y4QdcAgMKEduP9XD7Z+uUUr31iZEEv62u58
	okG9jxiWpNJnFVC55jpTHeChx76o8MEv69JJr2lsUfBoVlSdu/7fZcnwdqn1LwBRWB3E
	Iklw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=6CJ6lhHpxJUnjXPCGY3z4IjFrLUt/rb1JlmawD3J22w=;
	b=gAdiXYbi0hDKnb0GLDMYCS2cigK6209lQZGV1dZa/KQcq2NBrWtjUwxqdSBZDWkycx
	Y3gVbK+l8htI8hAMXLIrZcpdz4tevju8/oIkCs0mrTGOwhks8zFHiXUowRAkhax6Kl0N
	CfYyI0Fzz/boWi1yDqyE/7hRfxp5gEv+g6UY00c59hHl3Lznt3AkhDxPDPsxkX4fVGZL
	G4V6LryHQ7Uo/9oVI6nY2x5UNet03CbZ/mZJp0MjaXmiN67SLlnNZkyXAIJD2HLxci7j
	N5508+Z3YXkxzIdc+/TsvmhE8iVBluydEeOSMB1GaAxTldT3av+drBSfRtdQ/CvvXsTK
	7JTA==
X-Gm-Message-State: AIVw111kkHs/VyG17UheQT/d6hqh0RVD+QtvMAMN+SvtkRLAwuRCDP4U
	xp2IM2Cu+oZuwOBt8ow=
X-Received: by 10.107.142.81 with SMTP id q78mr24616340iod.213.1502802953792; 
	Tue, 15 Aug 2017 06:15:53 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	80sm800064itk.11.2017.08.15.06.15.52
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 15 Aug 2017 06:15:53 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1502802952.2652.34.camel@gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, yocto@yoctoproject.org
Date: Tue, 15 Aug 2017 08:15:52 -0500
In-Reply-To: <f6a1b7cc-f5fc-b891-bed5-3aa0f33632e1@topic.nl>
References: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
	<1502737813.26251.119.camel@genivi.org>
	<f6a1b7cc-f5fc-b891-bed5-3aa0f33632e1@topic.nl>
X-Mailer: Evolution 3.24.4 (3.24.4-1.fc26) 
Mime-Version: 1.0
Subject: Re: release management
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
X-List-Received-Date: Tue, 15 Aug 2017 13:15:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-08-15 at 09:25 +0200, Mike Looijmans wrote:
> ﻿On 14-08-17 21:10, Gunnar Andersson wrote:
> > 
> > Hey Russell
> > 
> > I don't claim to be an authority on best practices but I will share
> > some
> > thoughts.
> > 
> > On Sun, 2017-08-13 at 06:58 -0400, Russell Peterson wrote:
> > > Hello.
> > > 
> > > As I learn more about yocto and more importantly gain practical
> > > experience
> > > with it I have started to think about my release structure.  Is
> > > there a
> > > “best practices” document or something like that that speaks to
> > > this?
> > > For example, how does everyone deal with “external” meta layer
> > > dependencies?  My software uses poky and meta-openembedded, of
> > > course.
> > 
> > We simply use a parent project [1] that includes git submodules,
> > one per
> > yocto layer.  I'm of the opinion that if git (only) can be used,
> > why
> > introduce other tools?   But it requires you to learn and master
> > that
> > feature.
> > 
> 
> We arrived at exactly the same setup. One parent repository that
> contains the 
> project-unique recipes, and submodules for the layers it needs.
> 
> It's a lot better than attempting to script things. For one thing,
> git will 
> tell you the state of the submodules.
> 
> If I rembemer correctly, Android builds use a tool to manage the
> layer 
> repositories. I didn't much like it though. And "yet another tool"...

It's called "repo" https://code.google.com/archive/p/git-repo/.

In my experience git submodules work fine if you follow the core
workflow of adding new submodules and updating them to newer versions.
The workflows for deleting, renaming, changed upstream repostiory, etc.
for submodules is IHMO pretty bad. Pretty much every time I've tried
that it has resulted in a borked local repository that I either had to
manually go into the .git directory and fix, or just start over with a
fresh clone (perhaps I'm just bad at it or newer versions of git are
better?). Not to say you shouldn't use them, just be aware of some of
the catches so you can match the tool to your expected workflow.

For my $0.02: We use git submodules to manage the multiple yocto trees
we are pulling in and also keep "parallel" layers for each with the
local changes we want to make in .bbappends, where possible (following
the strategy of no modifying the original). We do (particularly for
older versions of Yocto) make changes to the core since we have local
mirrors, but we follow a strict policy of getting changes upstreamed
first, and they trying to get upstream to backport to our version (if
it is still supported).

> 
> 
> Kind regards,
> 
> Mike Looijmans
> System Expert
> 
> TOPIC Products
> Materiaalweg 4, NL-5681 RJ Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
> 
> Please consider the environment before printing this e-mail
> 
> 
> 


