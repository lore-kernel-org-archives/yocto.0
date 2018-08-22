Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DFC5E0079D; Wed, 22 Aug 2018 07:34:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79EE8E00519
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:34:58 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id m27-v6so1815854wrf.3
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=3D6eItcRxdko/BxcATUgbzX2KJ69mMjJoxuUqNdAVMk=;
	b=BFHs//UEzKigR0hdQXUbu8X2LSih4A07TTJIcpQtTYzgKnyRulR7cGmEqxJtrMrqyd
	zWK5SB3AO4Q8GbXcQ68zL2MXAFuRn3mzqlFAnp2XH0PvRSBUfk7wxvep+jbW7hKNvYVt
	UHfrDdYU4IMCExBCUOLoMbmcSB+vNrEC/g1RR/hnOTN3QxQTRTqOXcDUdmbbSu7YTUHt
	nLHfOk5e/kJRVBTQ+cHENfexguOekvjudyp35pdsCH0t/q32jEyENoDnHOe3nehOBqpC
	zooxd5WJYe/yvD7xkXAv3ID/27vviFLCWScz5ouM1Qs9pjQbxjYZE6JnvJhuJBfa0btb
	eBuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3D6eItcRxdko/BxcATUgbzX2KJ69mMjJoxuUqNdAVMk=;
	b=hfzYlvkIk3xu8yPS+H45x4mA+As3dFghaEhrza5Ur/xF53hkRp2M16yrrTCMMqiZqh
	wDCvX+xdFiBqN9n+toHkpSz0gdMNasJUiTtRN/GSgKmCeWuWRcal2JrO7GO3d6KrBteG
	7ImGJ3ZDqtficVtYyF/RCpcCeh8CEhIo3uz/KMHlOCAcp4oNL95LQxLNAFmWdKVSWpLy
	deZnPzpENhkfPPJgNAAYlIFJftfszsqEXvukEwxxkyg1wApuzbfZAetDYNwdMB8uUEmS
	pBQxaZSuos5Iuw3ImycP0iug2ygisxwIQJSg0G2UhWroMe3O3BeHzbniz5U85F9YIuC4
	LUww==
X-Gm-Message-State: APzg51A5MmHXKEDBWp7XZ+jTkcqkVGWbTfvCakonGpGnHrN+Xv5GAEk8
	HJ9OFxPJaBNknRIPT8Z/mq/DwgytN5RsFbcMkfQ9WSk=
X-Google-Smtp-Source: ANB0VdbcRQZ+61rebjBPlXtLfII10MkB5gaaLSYw+plQ0ONKFWlDTdniHRfS73uKz0P5PKflEuqH6hfz9ZvYi1zqVLg=
X-Received: by 2002:a5d:4a87:: with SMTP id
	o7-v6mr9875330wrq.132.1534948497423; 
	Wed, 22 Aug 2018 07:34:57 -0700 (PDT)
MIME-Version: 1.0
From: Paulo Neves <ptsneves@gmail.com>
Date: Wed, 22 Aug 2018 16:32:15 +0200
Message-ID: <CAJO0J4i9QqAYO5AJb2qWhwO9yz6PhSr1Q9juGFA63G--Fjm8qw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: nativesdk-gcc tries to link with host
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
X-List-Received-Date: Wed, 22 Aug 2018 14:34:59 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to use nativesdk-gcc to have a gcc compiler for my sdk
machine. Everything looks to work correctly but some code make the
linker attempt to use host libraries.

This is weird because this only happens when I use libraries that are
in the ${SDKROOT}/lib and not in ${SDKROOT}/usr/lib. Examples librt or
libpthread.

An example program[1], build with [2] results in
//lib64/libpthread.so.0: undefined reference to `h_errno@GLIBC_PRIVATE'
//lib64/libpthread.so.0: undefined reference to
`__vdso_clock_gettime@GLIBC_PRIVATE'
//lib64/libpthread.so.0: undefined reference to
`__libc_dl_error_tsd@GLIBC_PRIVATE'

One thing I noticed is that the sysroot of this nativesdk-gcc is not
poisoned. I am not sure if this on purpose or not because gcc-7.3.bb
requires  gcc-7.3.inc gcc-target.inc in this order. The problem is
that gcc-7.3.inc poisons the sysroot and gcc-target.inc "unpoisons"
the sysroot. Basically gcc-target overwrites EXTRA_OECONF_PATHS that
was set by gcc-7.3.inc.

Let me know if you are aware of what is wrong.
Paulo Neves

[1] d.c
#define _GNU_SOURCE
       #include <sched.h>
       #include <unistd.h>
       #include <stdlib.h>
       #include <stdio.h>

 #ifdef __STDC__
 # include <limits.h>
 #else
 # include <assert.h>
 #endif

 #undef timer_create

  char timer_create ();
  int
 main ()
 {
 return timer_create ();
   ;
   return 0;
 }

[2] bash -c "PATH=./buildtools/sysroots/x86_64-pokysdk-linux/usr/bin/
&& gcc -lrt d.c"

