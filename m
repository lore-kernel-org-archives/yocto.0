Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 242A0E00FE6; Tue,  6 Sep 2016 15:02:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEF6DE00FDF
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 15:02:41 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id w78so124959458oie.3
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 15:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=U8eMzzMue4W1WgD7zwD65z+avnosc/DAVSbq/uERy1M=;
	b=VRzyMjj8XVUcFb32tiSVdp09G+HxbYhRDzqXFbLUL+kQmUxyyPtwZ7SzNS0BtCM+lV
	s8g4A479O9GawCWEhCDk4hVPhALhgFP0MdeDgdXd6rEJYH1hpBZFuOFuMxsiyBFGD6X/
	QG0tYTmVVpqjGt7ninT7lEj6sy/ig1/cBk84EJEF4ghFCfdqqNPk2buMqpHtx58AXl0F
	2GlBZ0PvXi6tRkJ5fI/lhSbPCqnzQkFLZ6T5tyxDb8V+uljUa1KW1ZORM6RlX3cK2gOJ
	n/zzo1UqCeqrjLLCWVoU2/TuBeS98H5ReoNt8nUZaeqJoJTVd7xlr+UH3Et0L97+qQj3
	4flA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=U8eMzzMue4W1WgD7zwD65z+avnosc/DAVSbq/uERy1M=;
	b=b0aXq5nq8004n0fadbWbNdjdneqjOZciz9+C1tGVugMtxKugQvc+TImvDAH+Pdi1mC
	1viKSoDfuS/HOIfcpiCiV0Y8n50a+gBYmrSGWYS/X7P1A0EguAtqYfYoQnAvPETsBxkc
	Ww51xNBOKvmaXyJlUTvwXW+fILJBDcjKeVQ6lx27C9C9JbRdPJgwxhVEmWsEZiujD3T3
	4P9Z4k4/C2+W0kUWTEatIA7/4w7aYTetQSY3qM85tFLavMTl1oMFUIz+7nBMBUnqw3bb
	97fNkcN3PnRINc9sN2OnBYaf7ekQ3Hoze8N2lLQqisxWWhMaSagSfsSszkq8hweZC0aA
	kCcw==
X-Gm-Message-State: AE9vXwND1vTmNJiZVcs9i+Bh6ZsVJtpAiHSkNTAWUwHv0+/CmadAE/n15VzIqyRaNvc5wakfEXBzGnuIbxHKhg==
X-Received: by 10.202.92.2 with SMTP id q2mr34982807oib.184.1473199356918;
	Tue, 06 Sep 2016 15:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.253.65 with HTTP; Tue, 6 Sep 2016 15:02:36 -0700 (PDT)
In-Reply-To: <CALRMKQr9upirFMexg8nkFEXY8DN9uA7LaCngNGQpk4EroHN3tw@mail.gmail.com>
References: <CALRMKQr9upirFMexg8nkFEXY8DN9uA7LaCngNGQpk4EroHN3tw@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
Date: Tue, 6 Sep 2016 16:02:36 -0600
Message-ID: <CALRMKQr-HghH23Yia8H6iRyu__0DhK6V+YBP0CmoJMTvpOepqA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Building a Kernel Module that uses /lib/modules/<version>/build/Makefile
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
X-List-Received-Date: Tue, 06 Sep 2016 22:02:43 -0000
Content-Type: text/plain; charset=UTF-8

I seem to have been able to solve my own problem by doing a bit more
poking around:

It looks like the makefile I'm looking for is found in
${STAGING_KERNEL_DIR}, which appears in the Makefile as
$(KERNEL_PATH).

At least once I replaced the setting that was hard coded to
/lib/modules/$(KERNEL_VERSION/build with $(KERNEL_PATH), I'm getting a
build.  (I'm still getting some issues with the fact that my third
party source doesn't want to build wtih either kernels 4.1.18 or 4.4.x
as they are both too new, so I may have to patch it's linux_common.h
to accept 4.1.18 instead of 4.1.1, but that is a minor issue in
comparison)

Thank you
  Ron Oakes

On Tue, Sep 6, 2016 at 11:11 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
> I'm trying to integrate a 3rd party kernel module for some hardware
> that we are using as part of our project.  Following the directions
> that work on the native Linux installation for building it doesn't
> quite work for a number of reasons, so I'm now modifying the generated
> Makefile.
>
> However, it appears that the bulk of the work is done by a standard
> makefile located in /lib/modules/$(KERNEL_VERSION)/build (which was
> actually hard-coded by the configure before I started modifying the
> makefile).  But, I'm not able to locate this in the files that Yocto
> has produced when building the embedded kernel and the other kernel
> modules.
>
> I've not booted the target and looked there - but I'd rather not build
> this on the target.  Ideally, I'd like to have everything built on my
> development system (not that we won't have the horsepower to build on
> the target, but I'd rather not be putting the compilers there, nor
> have to be having a module build as part of bring up each time - we
> won't have any non-volitate memory so everything will have to be
> loaded each time we boot.
>
> Similarly, building the binary and just including that may be
> difficult as our build system is running a much older kernel than our
> target (3.10 versus 4.4), so we'd still be in a cross-target situation
> and the 3rd party supplier assumes that one is building for the system
> one is running on and provides limited support otherwise in their
> documentation (I've not contacted them for assistance yet)
>
> Any suggestions/recomendations?
>
> Ron Oakes

