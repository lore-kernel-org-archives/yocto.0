Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C527FE00874; Thu, 28 Apr 2016 11:01:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 900F7E00874
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 11:01:34 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id j74so118032283ywg.1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 11:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=7GiUuP0lrTGoceeVweNMAOJb9diE0bqhXsZT4dxD+k4=;
	b=rUW3ocYpJHJFuQ0ZtLbDvKSwWY56P9R/ga8ge67fMrI+vEfeGlWNzSllm468kNT58s
	WocUGWMqHQw96+dHlUPW32w6hn/THFf5YG3GVA4dUKBOS+K5E6Y6zMFMJXW1nXXbex+q
	ZzFvI7PBTjyvEOvQJL2+tcESmpkAoQ8/5YdmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=7GiUuP0lrTGoceeVweNMAOJb9diE0bqhXsZT4dxD+k4=;
	b=ZnkO8JmizHfD8JEfI7BYhtE+UE4CfHRxOYO9+B97BCpx8DeJcFuCOWLwlkyj8N24PA
	ImNkYwO7WvAFJEfVOIo82mi323cj+8Q5XjDvVm60M4UB3QHUY6n8ecXyWZP5i6+ftp/B
	glPt/IUIsFElV6CPRZCLEtd9ugYSDjW1L6S2acuMzJSGRrYmTpU3nydrfcUgRbWrKOab
	X9GBn8dKRkQfTew2fosn3cwmrs90MZYJobXBkfad8aIteQoMGlgQJLoX1hF77+qQvWNF
	cW7Y7qwpxB9YwZSJzzuKskkGWDCGHDAC7yrvq0Ledii64DJCwIZh68+C+Y+MoRV4AXrJ
	Vtxg==
X-Gm-Message-State: AOPr4FXRaU+2Jj1a2rEONGk5sauMqN3pjUiZi4jLGNonsf6uPyiFb0geCLJdDGqj01AvCg==
X-Received: by 10.37.97.73 with SMTP id v70mr8930095ybb.39.1461866494216;
	Thu, 28 Apr 2016 11:01:34 -0700 (PDT)
Received: from bill-the-cat ([2001:470:8:32a:a8f1:8916:9925:ea71])
	by smtp.gmail.com with ESMTPSA id r8sm5287981ywb.20.2016.04.28.11.01.32
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 28 Apr 2016 11:01:33 -0700 (PDT)
Date: Thu, 28 Apr 2016 14:01:31 -0400
From: Tom Rini <trini@konsulko.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160428180131.GN19598@bill-the-cat>
References: <CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
	<20160427221005.GA19598@bill-the-cat>
	<403123E7-85F1-4CBF-9D6C-E6377B89D5EA@gmail.com>
	<20160428121437.GJ19598@bill-the-cat>
	<CAMKF1spK=tkagRSRCyWzipHt8v1atfuhZahQOQ8UZ0FiCs+UsQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spK=tkagRSRCyWzipHt8v1atfuhZahQOQ8UZ0FiCs+UsQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Thu, 28 Apr 2016 18:01:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 28, 2016 at 07:01:34AM -0700, Khem Raj wrote:
> On Thu, Apr 28, 2016 at 5:14 AM, Tom Rini <trini@konsulko.com> wrote:
> > On Thu, Apr 28, 2016 at 12:08:46AM -0700, Khem Raj wrote:
> >>
> >> > On Apr 27, 2016, at 3:10 PM, Tom Rini <trini@konsulko.com> wrote:
> >> >
> >> > On Wed, Apr 27, 2016 at 10:53:52AM -0700, Khem Raj wrote:
> >> >> thanks I think most of them come to these categories. So any help in
> >> >> fixing them is welcome.
> >> >>
> >> >> 1. kernel older than 4.4, backport needed fixed into these branches or
> >> >> move to newer kernels.
> >> >> 2. uboot dont have gcc6 compiler header files, backport the needed fixes
> >> >
> >> > 9b2c282b348dfe966bbba967dc7a45ce817cce50 from mainline.
> >> >
> >> >> 2. meta-qt4 needs to use gnu++98
> >> >> 3. gcc6 providing its own stdlib.h in libstdc++
> >> >> 4. gcc6 swtiching to gnu++14 for C++ as default.
> >> >> 5. GPLv2-only versions of recipes are simply old will need fixing
> >> >>
> >> >> I will take a stab at fixing the nativesdk recipes which is mostly due
> >> >> to stdlib.h issue.
> >> >
> >> > Please do, I'd like to see some SDKs so I can get more U-Boot testing
> >> > done with gcc-6 :)
> >> >
> >>
> >> I have pushed couple of more fixes which should now fix the nativesdk issues and SDKs should be building
> >>
> >> Tree is here. Let me know how it goes.
> >>
> >> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-6
> >>
> >> and also to github
> >>
> >> https://github.com/kraj/openembedded-core/tree/kraj/master
> >
> > debian/jessie, nodistro, MACHINE=qemux86. bitbake busybox:
> > | make[1]: Leaving directory
> > '/home2/trini/oe-gcc-6/openembedded-core/build/tmp-glibc/work/x86_64-linux/gcc-cross-initial-i586/6.0.0-r0/gcc-6.0.0/build.x86_64-linux.i586-oe-linux/gcc'
> > | cp: cannot create regular file
> > '/home2/trini/oe-gcc-6/openembedded-core/build/tmp-glibc/work/x86_64-linux/gcc-cross-initial-i586/6.0.0-r0/image/home2/trini/oe-gcc-6/openembedded-core/build/tmp-glibc/sysroots/x86_64-linux/usr/lib/i586-oe-linux.gcc-cross-initial-i586/gcc/i586-oe-linux/6.0.1/include/limits.h':
> > No such file or directory
> >
> > Doing MACHINE=qemux86-64 provides a similar error.  Thanks!
> 
> I forgot to rename recipes to 6.1 after I did the gcc rebase since 6.1
> released yesterday. Anyway done now. please retry.

Making progress now, thanks!

-- 
Tom

