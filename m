Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C46B9E00BC1; Thu, 20 Sep 2018 03:43:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A141AE00AB3
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 03:43:15 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id o13-v6so8934666otl.4
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 03:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=o+CdwPR/UNv64WJeNpE7wwiiPvFmA8LqC9DO4RshYg8=;
	b=xGCH/eR1C2Nq50dhMGhH/dwr3/l3ETUKXbBKIwdFI4U8VMJ9tB/ZpMHxB0ydfkSCzK
	uJ8MjAtxtV8jeEKCzg+Vry042j6nryuIoAAkLeARZGD4kiuvia2qAxGFfCuKvdO0A0jF
	BKhdLbJlUJXetyaCrOWPmijGE7CRSLJiCKsq9OANuN0t5RLupgs6ZNwsdF/1C8vSNwwT
	KtcR7+46++klPN9x0ddTv0Lac9pXPD8JIbrtFOkuTELVUBy1kHC4KlazVpX25X4XCXqz
	IM1Xbi/BlPm8Z3JSuDLRRRLJDPpFo9oYzk159YAMMebBy0GO5voyI6NdvQUQYQWCqRmz
	VUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=o+CdwPR/UNv64WJeNpE7wwiiPvFmA8LqC9DO4RshYg8=;
	b=pgUrDDYNpGLdmpqobs6saIJSN1DOGnbjAcBORhurnxXOShoUtbEt6O/coEqtx11gcJ
	0Rky29wLxI4XqshuiiofwdVbBczFSweA5epY6VDEm2aQhJUQHBvlv/w/xpUQymaHtGqH
	S1wNA1LA3bT9aBM/fnlIW6r50smoVfdNn5ZFD/CAP2A/SesGm0yu655sVSGcMzhSmHNm
	5yUG50/cmQW02T26xWVAYxGQsXF54d1WkiTf7wcmwK8E25pZ9bCNezWuzQz+wdsKb73q
	6YIqXIqRBdxiH6tZdbvSwypmro+yfdkj2RM76BUvrGkDCVY6lTSzIb52JTYFrPIIbRqN
	fyaA==
X-Gm-Message-State: APzg51AzP9voEPhUs0OqCISp6WansSQemcqLo24L6fJyEEH2dO/4UC0L
	VIf3Atl0qTvA8qzxgrH1IL0hueoZsxiKJEmoYnFFHA==
X-Google-Smtp-Source: ANB0VdZF1YPOBXrDxQfIvcU7NiwGMjrSFS7XrmGfWD+J5h494ZbjkeU1oB2/6LvSuCUyN0riMT9H1+vcebDYYcfH4j0=
X-Received: by 2002:a9d:798a:: with SMTP id
	h10-v6mr22300139otm.13.1537440194732; 
	Thu, 20 Sep 2018 03:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
	<CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
	<HE1P195MB036230695B60D23AA37F8D95C1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
	<CAJTo0LZiVgrVaoaUgEkki8NFKVNa1hN+b0csKkLnQusENEDFrw@mail.gmail.com>
	<HE1P195MB036259A2AA8B02E857F2E4DEC1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <HE1P195MB036259A2AA8B02E857F2E4DEC1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Sep 2018 11:43:03 +0100
Message-ID: <CAJTo0LYi6OTzfdpH4dCii+ugHhUcAmjmqqt12h-n_N-hLiz3FQ@mail.gmail.com>
To: MohamedYouseif@outlook.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Adding nInvaders game package recipe
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
X-List-Received-Date: Thu, 20 Sep 2018 10:43:16 -0000
Content-Type: text/plain; charset="UTF-8"

So your makefile is explictly saying "ignore the value from the
environment, always use gcc on the host".

Delete that line from the makefile, the default is good and then the
environment value to set CC to the cross compiler will work.

This is why people shouldn't hand-code Makefiles: it is harder than it
looks.  This makefile probably isn't respecting CFLAGS/LD/LDFLAGS
either.

Ross
On Thu, 20 Sep 2018 at 11:00, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
>
> I had run the command and it prints out that:
>
> nInvaders: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=73d88937de4f28a243ba40001af8dbd5c1ca3ac8, not stripped
>
> the ${CC} in makefile is defined as
> CC=gcc
> ________________________________
> From: Burton, Ross <ross.burton@intel.com>
> Sent: Thursday, September 20, 2018 11:28 AM
> To: MohamedYouseif@outlook.com
> Cc: Yocto-mailing-list
> Subject: Re: [yocto] Adding nInvaders game package recipe
>
> On Thu, 20 Sep 2018 at 10:01, Mohamed Youseif
> <MohamedYouseif@outlook.com> wrote:
> > I had changed the source of my package, and create a new recipe for my package so it fetches from SourceForge, the new recipe does not inherit Autotools and modify the do_compile, do_install as following:
> > do_compile () {
> >       oe_runmake
> > }
> >
> > do_install () {
> >       :
> > }
> >
> > but i had modified the do_install task to add it to my image and now it is like this
> > do_install () {
> >
> >       install -d ${D}${bindir}
> >       install -m 0755 nInvaders ${D}${bindir}
> > }
> >
> > then i run "bitbake ninvaders" to check that all tasks will be passed but i got that error for do_package task
> >
> > arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/usr/bin/nInvaders: File format not recognized
>
> Run 'file' on that binary.  It's possible that your hand-coded
> makefile isn't respecting $CC and it built using the host native
> compiler.
>
> Ross

