Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 279F9E00529; Wed, 22 Aug 2018 11:09:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94993E003D7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:09:13 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id 93-v6so1865688qks.3
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kkgRwM3QHqI+m5oavTxQlW9VNYsA2BdhNU0b3wS+b1Q=;
	b=rDtW5l6BU07yo7xCxghxZL9zL/Y5Yu1sjrti21Q2rTZPqpa7T+wSj0wiVMG5k6wuvP
	4QcMi9+GUw+G/CRU+2VzyoQ29+svVWVSAB/gpxGIESpdKdSl0B2hh+XZDW2y3hmZjnDh
	6h/5Uh/akEktadgVZ1N+yPMFdUorcTuUBtO3Zfa4zJ0BeEA0kOcz3xZtiJyD9Sninzcl
	ogmrW0n66TEGyWqvZDbVD16Tmkext5ma6QKn4OZHNjJ6OyV+I3ROMCduWrawJ7wWXsyE
	OzevvgQzTez7h16Q1YqpWUpEVeGK03bYsGL/eQd4JbolnUe+hoUBqoUBvR37wqiRmrOl
	Bk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kkgRwM3QHqI+m5oavTxQlW9VNYsA2BdhNU0b3wS+b1Q=;
	b=quybSvmkA5EJ6BXe5FHJov5mR/11bEp3FYTzAeDaF5GEB/fDXyzcGWOnfBSptcJSHq
	sA+UXpVwdGnc+Gx8ZiqBiBRj3J/lboqE4f6OEd87/pkQtXuxBQR2VlRCTXN4Lx9NGsz7
	DCu08jqRsWqGkvHrtoQrUR14XFY4Z7S/8vWXnGAYvHq2BBSOFNAXQVwRv5dBxE+mSlGi
	x6ZzSDrE2n+D9oFfLHYOTQfE0gWWe+upaGjTBKYghuZH6v+JGkdmw+bDYrlUxnd+Zlpa
	A3pM9AWAcQ/Nt0vKsLgRAxfJWLtZzkqT0xAH021Rnk+7fyd8DplATT7k8qpOvCrH2MHQ
	e1Sw==
X-Gm-Message-State: AOUpUlGXXKOLzRIJIVeilIc4Oe0qy2CQwQN6LyE3U+bM0YDPXKrhqIRu
	ImCN8DhXwODmiJPmAZguZmn4pP2CfOiF8uo1N28=
X-Google-Smtp-Source: AA+uWPya2YmYVgxKtic7+PmvmW9GzuuflFFcC7K34MQ5GvMsSaobV80SwGUEC4/cUrlGmUtpDnNZ2WGhcgjkPkcN1QY=
X-Received: by 2002:a37:2e03:: with SMTP id
	u3-v6mr52798492qkh.223.1534961352712; 
	Wed, 22 Aug 2018 11:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAJO0J4i9QqAYO5AJb2qWhwO9yz6PhSr1Q9juGFA63G--Fjm8qw@mail.gmail.com>
In-Reply-To: <CAJO0J4i9QqAYO5AJb2qWhwO9yz6PhSr1Q9juGFA63G--Fjm8qw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Aug 2018 11:08:46 -0700
Message-ID: <CAMKF1so_qG7+MLYcGhKVqNqzTa5QgP-KKL4RvJo=Lehw6vgypg@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: nativesdk-gcc tries to link with host
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
X-List-Received-Date: Wed, 22 Aug 2018 18:09:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 22, 2018 at 7:35 AM Paulo Neves <ptsneves@gmail.com> wrote:
>
> Hello,
>
> I am trying to use nativesdk-gcc to have a gcc compiler for my sdk
> machine. Everything looks to work correctly but some code make the
> linker attempt to use host libraries.
>
> This is weird because this only happens when I use libraries that are
> in the ${SDKROOT}/lib and not in ${SDKROOT}/usr/lib. Examples librt or
> libpthread.
>
> An example program[1], build with [2] results in
> //lib64/libpthread.so.0: undefined reference to `h_errno@GLIBC_PRIVATE'
> //lib64/libpthread.so.0: undefined reference to
> `__vdso_clock_gettime@GLIBC_PRIVATE'
> //lib64/libpthread.so.0: undefined reference to
> `__libc_dl_error_tsd@GLIBC_PRIVATE'
>
> One thing I noticed is that the sysroot of this nativesdk-gcc is not
> poisoned. I am not sure if this on purpose or not because gcc-7.3.bb
> requires  gcc-7.3.inc gcc-target.inc in this order. The problem is
> that gcc-7.3.inc poisons the sysroot and gcc-target.inc "unpoisons"
> the sysroot. Basically gcc-target overwrites EXTRA_OECONF_PATHS that
> was set by gcc-7.3.inc.
>

target sysroot poisoning is naturally not needed we could do that but it is
not useful, for nativesdk  it behaves like a native gcc except that it prefers
the libraries from SDK rootfs, now should be limit it to just the
rootfs and blind
it from system rootfs .. may be I dont know if thats useful.

> Let me know if you are aware of what is wrong.
> Paulo Neves
>
> [1] d.c
> #define _GNU_SOURCE
>        #include <sched.h>
>        #include <unistd.h>
>        #include <stdlib.h>
>        #include <stdio.h>
>
>  #ifdef __STDC__
>  # include <limits.h>
>  #else
>  # include <assert.h>
>  #endif
>
>  #undef timer_create
>
>   char timer_create ();
>   int
>  main ()
>  {
>  return timer_create ();
>    ;
>    return 0;
>  }
>
> [2] bash -c "PATH=./buildtools/sysroots/x86_64-pokysdk-linux/usr/bin/
> && gcc -lrt d.c"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

