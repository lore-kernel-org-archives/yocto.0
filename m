Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0C43E00AAF; Wed,  1 Nov 2017 10:38:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27CAAE00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 10:38:49 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id h6so5616665oia.10
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 10:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Hk0LVV9rGCMr9DrVO/cE2+7gNJfd+NTeL5Ygmw/2Y5Y=;
	b=fMlHzo+4Ad1Hq7fKCA42uJs4lucJ3qNEmk8R7/oCs77g3VOTR4Y6cg3xR2dJcgDXwc
	UsdP3oE9wAbsUmZJgdjlvqWbCaoPGLPpfQV6mRMbGxiCf9R7/QfTUh4DKmHb9UQEg41+
	U/Hwl+hUotTGFAFQ4xeA7BuzRAdunrdfwSw2oGkyHxx1UHSe7VA46yamLIbHL6/deH9p
	Y1j0ohzyQPKK7Kl/BV1V6ZGtJsUUgGYN8Ra73ztish6cgvR03kdzUsS6EunS+R3ScsdV
	hYeR/TRngYcfZ65wCXjEuydzrdNcCMFNM3rRK1OnKR7IdLDPcDeR3cfUIGUvOujmdRoQ
	+uZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Hk0LVV9rGCMr9DrVO/cE2+7gNJfd+NTeL5Ygmw/2Y5Y=;
	b=JxWrTIKkE/2nfdHZu1iCRHHXaj85DFj/ItH8NoinxomVAudcVeeXZXBCYIqG248Oz5
	FpuXOq6ZP8z2KVoIL0MKe2R7NRPvCqjONRIpcXA62LoIZHfs122fFz+eVVBx6cSHYaOp
	cnOQ4jWDQ9+IVh6k4ZIJpkfWt0SGSuhJe7q55aYbTvtSQtUdvt8COKbYhsKM2lMVBiIj
	69v1v8FuNxCUfA5oo6uyYwMwvnW0agkjlCZbHeep0UMrmxqR8cPENyoBuT9Erqqrul6M
	eJBckE/uz+zJiCsjSPdllceVuw/ShYzmzJjBSM+fbqy5kE1SKWS/Z5CqaRjvkpqfJc1j
	cBMA==
X-Gm-Message-State: AJaThX6LajzriGXgHp+RwpyyYbdSWhH0sD+pk6SvrRaG476ILCoeMTzk
	SFHN+w5gVm1uCPGD95AvUVhjyzouJyC3ZBXzsc3/7bhq
X-Google-Smtp-Source: ABhQp+R2XS8wbwC62YsgV7I3kDFsczT1gHQ9ta6OX8hvID2DDB0cvtZSF41Mc0uYQLDz/ll1netp3KjLtOQWpU66Ux8=
X-Received: by 10.157.12.187 with SMTP id b56mr327770otb.288.1509557929058;
	Wed, 01 Nov 2017 10:38:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Wed, 1 Nov 2017 10:38:48 -0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 1 Nov 2017 18:38:48 +0100
Message-ID: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Wed, 01 Nov 2017 17:38:52 -0000
Content-Type: text/plain; charset="UTF-8"

I'm just upgrading to pyro and have some issues with u-boot-fw-utils.

The error fails at do_compile stage which looks like this:

    do_compile () {
            oe_runmake ${UBOOT_MACHINE}
            oe_runmake env
    }


The error is:

Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 16 CROSS_COMPILE=arm-senic-linux-gnueabi-
CC=arm-senic-linux-gnueabi-       gcc  -march=armv7ve -mfpu=neon-vfpv4
 -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/alan/senic-os-update/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot
 -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0=/usr/src/debug/u-boot-fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0
-fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot-native=
-fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot=
 -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed V=1
| ERROR: oe_runmake failed
| make -f ./Makefile silentoldconfig
| make -f ./scripts/Makefile.build obj=scripts/basic
|   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2
-fomit-frame-pointer      -o scripts/basic/fixdep
scripts/basic/fixdep.c
| /bin/sh: 1: cc: not found


I would assume this is a to specific error to ask help about. It seems
that the compiler isn't being called correctly (it's called as cc,
which isn't the full compiler name).
Suggestions are welcome but that isn't the reason for my post.

Is there a way to run the above listed make command with the same
environment as it is run when the error is produced?

I have tried:

devtool modify  u-boot-fw-utils

but it doesn't bring me to an environment where I can reproduce the
error by executing the make call manually.
I get different non related errors:

make: invalid option -- 'a'
make: invalid option -- 'c'
make: invalid option -- '='
make: invalid option -- 'a'
make: invalid option -- '7'
make: invalid option -- 'c'
make: invalid option -- 'u'
make: invalid option -- '='

and the make I'm using comes from /usr/bin/make instead of somewhere from yocto.

Any ideas on how to approach?

Be Well,
Alan

