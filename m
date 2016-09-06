Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E789E00F55; Tue,  6 Sep 2016 03:31:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D643E00C6A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 03:31:19 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id 1so181103622wmz.1
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 03:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zhJ/Gh0i8aSgX4s6YsG5wHWT7QBCMB5EWcM6X6XjowQ=;
	b=1Q1MX50VDwXpkYpor3arCMC/RYpbFpv+SqfYe+Sjr0WsdDcSWuI0ARtGM+eExn/Z8C
	cLFqRGQZffRG9OMUvC9DAKb0HrgPR4uOEqHb2xLJbMj/UP27gRF60hpaKBVDlKnLYUd4
	eDK8AP08UxrztN4HDNXkPWfJWVHrMNSzecuQqQEQQPp8B/DJaKcT18GZP1KtADYz9tAp
	Cb9H76+ri9G166fmxv5v56dtoi3HCis7nX+83WhGay8xUnkiByE6q6Ou1g7xToNlt4Ao
	EUgxo9pH34MUcfr8/rpbYWvFgd2TONXxYFfuPWyFLaqb7X0fQ1XhEeHUGm8ZW3U8NGzY
	5OLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zhJ/Gh0i8aSgX4s6YsG5wHWT7QBCMB5EWcM6X6XjowQ=;
	b=gQcbJ7ONJGiIPeHCkachveElkdALyI8i1rz+qsa4hA04DrrpsOWkZq+/EGNNogTu1A
	TsOa2uIPntBkBovULgGylA6rDSzzdv2rZG2cBlLfnbXNEcOetxtup6FDurm8ivl2u5dz
	hZIW1fH1j1uN5gHmeIz/ngrEhrJz0A/CPRUSAm2wTlNnPj1izbtfGPkIW4COYLn6bme1
	CyeGfWjVQ27Svw9gkons9tvYUf8Rb6jlmagY51kHgmQT6kBo8t53KYC/Rbjo6OW6PfBE
	sVyanMFv5pLBHqmRIAcUlGMurhl6zrX4oK3ZPWaPt8wWGyEDsyn+UXnPDBJ9FMCMEf6M
	xL5A==
X-Gm-Message-State: AE9vXwOWUHfF0dZ+M5IcCOwLRT9bIjiodZte6mfZI+HJ/iNzdPHYJMOyo97zv2PW02vceujMcg+zbudgVndteg==
X-Received: by 10.28.68.136 with SMTP id r130mr19763248wma.4.1473157878694;
	Tue, 06 Sep 2016 03:31:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.130.132 with HTTP; Tue, 6 Sep 2016 03:30:58 -0700 (PDT)
In-Reply-To: <87fupd8ht2.fsf@posteo.net>
References: <871t0ya6co.fsf@posteo.net>
	<CAF3SDA44veF1YgepzyN0L-ntKGTr9Z4NwwMFGb4yw9XW_RNokw@mail.gmail.com>
	<87fupd8ht2.fsf@posteo.net>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Tue, 6 Sep 2016 12:30:58 +0200
Message-ID: <CAD4b0_JXoL7ErkBb9rXh5XWUE4uvqXyDU16yeB=xAMhcq4F0Mg@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: yocto@yoctoproject.org
Subject: Re: arm-*-linux-gnueabi : unrecognized option -Wl, -soname
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
X-List-Received-Date: Tue, 06 Sep 2016 10:31:23 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 6, 2016 at 12:05 PM, Pietro <pulsarpietro@posteo.net> wrote:
>
>
>
> "Daniel." <danielhilst@gmail.com> writes:
>
>> I *guess* that it should be -Wl,-soname=libgpr.so.1 intead of
>> -Wl,-soname,libgpr.so.1. Now from where this flags are comming is a
>> good question..
>
> No that is correct, I double checked.
>
> I would love to build the library "by hand" - namely without using
> bitbake -  from the build directory, the build log tells :
>
> + bbnote make -j 4
>  CC=arm-phytec-linux-gnueabi-gcc  -march=armv7-a -marm -mthumb-interwork
>  -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8
>  --sysroot=/export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1
>  LDFLAGS=""
>  -I/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/include
>  BUILDDIR=/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git
>  + echo NOTE: make -j 4 CC=arm-phytec-linux-gnueabi-gcc  -march=armv7-a
>  -marm -mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8
>  --sysroot=/export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1
>  LDFLAGS=""
>  -I/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/include
>  BUILDDIR=/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git
>
> Of course jumping in the build directory and issuing the command does
> not work as the make tool does not recognize options such as -marm and
> companions as they are gcc's options.
>
> I have manually added the cross compiler folder to my local PATH but and
> I have quoted all the gcc's options under the CC variable:
>
>
> CC='arm-phytec-linux-gnueabi-gcc  -march=armv7-a -marm -mthumb-interwork
> ...'
>
> Is there a standard/better way to do it ? That results in an error as
> some header files could not be found
>
> [C]       Compiling src/core/lib/profiling/basic_timers.c
> In file included from
> /export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1/usr/include/features.h:389:0,
> from include/grpc/impl/codegen/port_platform.h:193,
> from
> include/grpc/support/port_platform.h:37,
> from
> src/core/lib/profiling/basic_timers.c:34:
> /export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1/usr/include/gnu/stubs.h:7:29:
> fatal error:
> gnu/stubs-soft.h: No
> such file or
> directory
> # include <gnu/stubs-soft.h>
>
> I am not getting this error when building using bitbake therefore I am
> pretty sure I am missing some include paths or .. what ?
>

Maybe the Makefile they have is just not up to the task of cross
compilation. I see that gRPC comes with a cmake setup as well, why not
use that? You'll need `inherit cmake` in your recipe and try with
default build scripts first.

Cheers,
-- 
Maciej Borzecki
RnDity

