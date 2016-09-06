Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9938DE00F55; Tue,  6 Sep 2016 03:05:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50618E00C6A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 03:05:04 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bhDFV-0001es-E6
	for yocto@yoctoproject.org; Tue, 06 Sep 2016 12:05:01 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Tue, 06 Sep 2016 10:05:13 +0000
Message-ID: <87fupd8ht2.fsf@posteo.net>
References: <871t0ya6co.fsf@posteo.net>
	<CAF3SDA44veF1YgepzyN0L-ntKGTr9Z4NwwMFGb4yw9XW_RNokw@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:tfKUAmSRNCsOlBgOw193Og9l/hM=
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
X-List-Received-Date: Tue, 06 Sep 2016 10:05:08 -0000
Content-Type: text/plain




"Daniel." <danielhilst@gmail.com> writes:

> I *guess* that it should be -Wl,-soname=libgpr.so.1 intead of
> -Wl,-soname,libgpr.so.1. Now from where this flags are comming is a
> good question..

No that is correct, I double checked.

I would love to build the library "by hand" - namely without using
bitbake -  from the build directory, the build log tells :

+ bbnote make -j 4
 CC=arm-phytec-linux-gnueabi-gcc  -march=armv7-a -marm -mthumb-interwork
 -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8
 --sysroot=/export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1
 LDFLAGS=""
 -I/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/include
 BUILDDIR=/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git
 + echo NOTE: make -j 4 CC=arm-phytec-linux-gnueabi-gcc  -march=armv7-a
 -marm -mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8
 --sysroot=/export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1
 LDFLAGS=""
 -I/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/include
 BUILDDIR=/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git
 
Of course jumping in the build directory and issuing the command does
not work as the make tool does not recognize options such as -marm and
companions as they are gcc's options.

I have manually added the cross compiler folder to my local PATH but and
I have quoted all the gcc's options under the CC variable:


CC='arm-phytec-linux-gnueabi-gcc  -march=armv7-a -marm -mthumb-interwork
...' 

Is there a standard/better way to do it ? That results in an error as
some header files could not be found

[C]       Compiling src/core/lib/profiling/basic_timers.c
In file included from
/export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1/usr/include/features.h:389:0,
from include/grpc/impl/codegen/port_platform.h:193,
from
include/grpc/support/port_platform.h:37,
from
src/core/lib/profiling/basic_timers.c:34:
/export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/phycore-am335x-1/usr/include/gnu/stubs.h:7:29:
fatal error:
gnu/stubs-soft.h: No
such file or
directory
# include <gnu/stubs-soft.h>

I am not getting this error when building using bitbake therefore I am
pretty sure I am missing some include paths or .. what ?



>
> 2016-09-05 9:17 GMT-03:00 Pietro <pulsarpietro@posteo.net>:
>>
>> Hi all,
>>
>> I want to cross compile the gRPC library for ARM and I am using the
>> Yocto build system.
>>
>> The build fails for the following error, which I am suspicious has
>> something to do with the compiler being used:
>>
>>
>> [LD]      Linking
>> /export/arm/xxx/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/libs/opt/libgpr.so.1.0.0-pre1
>>
>> arm-phytec-linux-gnueabi-ld
>> : unrecognized option '
>> -Wl,-soname,libgpr.so.1
>>
>>
>> arm-phytec-linux-gnueabi-ld
>> : use the --help option for usage information
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> -- 
> "Do or do not. There is no try"
>   Yoda Master


