Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C13E00CBB; Wed, 15 Jun 2016 06:16:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F0C5E00CB0
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 06:16:15 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160615131612640_0685;
	Wed, 15 Jun 2016 06:16:12 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=46315 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bDAhc-00062v-Mm; Wed, 15 Jun 2016 09:17:52 -0400
Date: Wed, 15 Jun 2016 09:15:29 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <20160615131251.GE2569@jama>
Message-ID: <alpine.LFD.2.20.1606150913440.9895@localhost.localdomain>
References: <alpine.LFD.2.20.1606150839230.9417@localhost.localdomain>
	<alpine.LFD.2.20.1606150849540.25853@localhost.localdomain>
	<20160615131251.GE2569@jama>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there an actual "compiler-gcc6.h" patch?
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
X-List-Received-Date: Wed, 15 Jun 2016 13:16:19 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 15 Jun 2016, Martin Jansa wrote:

> On Wed, Jun 15, 2016 at 08:51:11AM -0400, Robert P. J. Day wrote:
> > On Wed, 15 Jun 2016, Robert P. J. Day wrote:
> >
> > >
> > >   following on a post to the list from back on jun 1:
> > >
> > > https://www.mail-archive.com/yocto@yoctoproject.org/msg29568.html
> > >
> > > i figured it wouldn't be hard to find the place where that header file
> > > was added to the master branch for (in this case) the 4.1 kernel, but
> > > i just checked the git repo, master branch, and i don't see that file
> > > there, but i see that a patch to add it was submitted back on june 2:
> > >
> > > https://github.com/Freescale/meta-fsl-arm/blob/master/recipes-kernel/linux/linux-ls1/Fix-the-compile-issue-under-gcc6.patch
> > >
> > > so what is the status of this? am i just reading this incorrectly? or
> > > doing something wrong?
> >
> >   i do realize that that patch referred to above was for the
> > meta-fsl-arm repo, i just assumed it would work its way into master in
> > short order. but i could be totally off-base here.
>
> Backport this change to your kernel:
>
> From cb984d101b30eb7478d32df56a0023e4603cba7f Mon Sep 17 00:00:00 2001
> From: Joe Perches <joe@perches.com>
> Date: Thu, 25 Jun 2015 15:01:02 -0700
> Subject: [PATCH] compiler-gcc: integrate the various compiler-gcc[345].h files
>
> As gcc major version numbers are going to advance rather rapidly in the
> future, there's no real value in separate files for each compiler
> version.
>
> Deduplicate some of the macros #defined in each file too.
>
> Neaten comments using normal kernel commenting style.

  amusingly, i *just* noticed that the current standard/base branch no
longer had the various versions of that file, and said to myself,
"huh, i guess they just merged them all." so using the standard/base
branch is going to resolve this for me. thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


