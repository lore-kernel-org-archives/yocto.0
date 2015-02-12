Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E235EE00942; Wed, 11 Feb 2015 23:36:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5151E008EA
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 23:36:16 -0800 (PST)
Received: by iecrp18 with SMTP id rp18so9953015iec.7
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 23:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JbwNXbS44FkQeB2HpCRMdRmuFq5vavT9grH0cwtnXcg=;
	b=ymUgK2uCJeNd0+xiHL7pz7zaoDxylsUPBmG2shyGEouNNjZmJ0c4lruQMcJx8WN0oh
	gZy66irT/LA6/vb6EqVLuZpCuS++5iK1HaX/AfgSX7dgvjYM4/PxXVB1doe2IufcsM6s
	5DdSkURBa/kAJab3Q653Lf0kcVr37APRFxpeR4Ho1fm+tGZxZ1g1GZa37A6QEZkLVQlP
	yuIJ/Fx6U466mvptMLJpofAGhRae8T70ogv3LvIjsN2ENe6JvniGdKbLv0z2ZgSZK/Wg
	8pq92yf28P8o0MCWZ1kqV0BJeOnAQ/9o+YdarKulZtaq4VPVycEqJB1kF/Eb0Yxmlow1
	szuw==
X-Received: by 10.50.111.10 with SMTP id ie10mr2184498igb.15.1423726576019;
	Wed, 11 Feb 2015 23:36:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Wed, 11 Feb 2015 23:35:45 -0800 (PST)
In-Reply-To: <CACS+7ZRNm2Y0SJn76imF6DNoEsL2+ppC1zG45iGspOmL0EN0BQ@mail.gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
	<EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
	<CAJTo0LbSFesauhA_H39Znd07SR5JCs45izy2us=cFWVGXtW8hg@mail.gmail.com>
	<80920FD0-CA08-45D7-9A41-3971FB2D58D7@gmail.com>
	<CAJTo0LbqTrQzk0KeHDxYnmtZrrFdZD12DWrjA=Y4RtbQzwM0ow@mail.gmail.com>
	<CAMKF1sr7bYpKqzTmvX5rCuYc-Rb2se7Vsrr4aYA43E_b1Z=vWA@mail.gmail.com>
	<CACS+7ZRNm2Y0SJn76imF6DNoEsL2+ppC1zG45iGspOmL0EN0BQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Feb 2015 15:35:45 +0800
Message-ID: <CAMKF1sqjQm+n5xKfS0utm9B9h_S+RYWrgnGUCboRNCk5XSUmzg@mail.gmail.com>
To: Dan McGregor <danismostlikely@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Thu, 12 Feb 2015 07:36:20 -0000
Content-Type: text/plain; charset=UTF-8

Hi Richard/All

I have refreshed the branch to include the patch which moves the src
uri to use the newly released glibc 2.21 branch
and please run it via autobuilder ( top 5 commits )

Thanks
-Khem



On Tue, Feb 3, 2015 at 10:43 PM, Dan McGregor <danismostlikely@gmail.com> wrote:
> On 2 February 2015 at 23:03, Khem Raj <raj.khem@gmail.com> wrote:
>> On Mon, Feb 2, 2015 at 1:45 PM, Burton, Ross <ross.burton@intel.com> wrote:
>>>
>>> On 2 February 2015 at 18:33, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>> Yeah, I am on archlinux (the other end of spectrum). Nevertheless, I have
>>>> updated the contrib tree which fixes cross-localedef-native compile time
>>>> issue. So you should be good
>>>> to go now.
>>>
>>>
>>> Bad news, glibc is now failing:
>>>
>>> | x86_64-poky-linux-gcc  -m64 -march=corei7 -mtune=corei7 -mfpmath=sse
>>> -msse4.2
>>> --sysroot=/data/poky-master/tmp/sysroots/intel-corei7-64-tcbootstrap
>>> dl-open.c -c -std=gnu99 -fgnu89-inline  -O2 -Wall -Werror -Winline
>>> -Wno-error=undef -Wundef -Wwrite-strings -feliminate-unused-debug-types
>>> -fmerge-all-constants -frounding-math -g -pipe -Wstrict-prototypes   -fPIC
>>> -mno-sse -mno-mmx        -I../include
>>> -I/data/poky-master/tmp/work/corei7-64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/elf
>>> -I/data/poky-master/tmp/work/corei7-64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux
>>> -I../sysdeps/unix/sysv/linux/x86_64/64  -I../sysdeps/unix/sysv/linux/x86_64
>>> -I../sysdeps/unix/sysv/linux/x86  -I../sysdeps/unix/sysv/linux/wordsize-64
>>> -I../sysdeps/x86_64/nptl  -I../sysdeps/unix/sysv/linux/include
>>> -I../sysdeps/unix/sysv/linux  -I../sysdeps/nptl  -I../sysdeps/pthread
>>> -I../sysdeps/gnu  -I../sysdeps/unix/inet  -I../sysdeps/unix/sysv
>>> -I../sysdeps/unix/x86_64  -I../sysdeps/unix  -I../sysdeps/posix
>>> -I../sysdeps/x86_64/64  -I../sysdeps/x86_64/fpu/multiarch
>>> -I../sysdeps/x86_64/fpu  -I../sysdeps/x86/fpu/include -I../sysdeps/x86/fpu
>>> -I../sysdeps/x86_64/multiarch  -I../sysdeps/x86_64  -I../sysdeps/x86
>>> -I../sysdeps/ieee754/ldbl-96  -I../sysdeps/ieee754/dbl-64/wordsize-64
>>> -I../sysdeps/ieee754/dbl-64  -I../sysdeps/ieee754/flt-32
>>> -I../sysdeps/wordsize-64  -I../sysdeps/ieee754  -I../sysdeps/generic  -I..
>>> -I../libio -I. -nostdinc -isystem
>>> /data/poky-master/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64/gcc/x86_64-poky-linux/4.9.2/include
>>> -isystem
>>> /data/poky-master/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64/gcc/x86_64-poky-linux/4.9.2/include-fixed
>>> -isystem /data/poky-master/tmp/sysroots/intel-corei7-64/usr/include
>>> -D_LIBC_REENTRANT -include
>>> /data/poky-master/tmp/work/corei7-64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/libc-modules.h
>>> -DMODULE_NAME=rtld -include ../include/libc-symbols.h  -DPIC -DSHARED     -o
>>> /data/poky-master/tmp/work/corei7-64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/elf/dl-open.os
>>> -MD -MP -MF
>>> /data/poky-master/tmp/work/corei7-64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/elf/dl-open.os.dt
>>> -MT
>>> /data/poky-master/tmp/work/corei7-64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/elf/dl-open.os
>>> | dl-caller.c:1:0: error: SSE instruction set disabled, using 387
>>> arithmetics [-Werror]
>>> |  /* Check whether caller comes from the right place.
>>> |  ^
>>> | dl-open.c:1:0: error: SSE instruction set disabled, using 387 arithmetics
>>> [-Werror]
>>> |  /* Load a shared object at runtime, relocate it, and run its initializer.
>>> |  ^
>>> | cc1: all warnings being treated as errors
>>> | cc1: all warnings being treated as errors
>>
>> The real problem is we are injecting -mfpmath=sse -msse4.2 via CCARGS
>> and for this particular file glibc says  -mno-sse -mno-mmx
>> so it defaults to x87 80bit arithmetics. May be we should get a bit
>> milder with optimizations for this case when compiling glibc. Since
>> glibc has its own notion about floating point.
>>
>> I think this issue was there even with older version of glibc for i7
>> but it was flagged as a warning, glibc 2.21 now uses -Werror by
>> default. Can you confirm that via inspecting 2.20 glibc build logs for
>> this machine ?
>>
>> I have pushed another patch to disable sse for replacing fpu. Please
>> try it out and let me know if it fixed it.
>>
>
> The new branch is working well for me, for wandboard-quad, beaglebone,
> and cubieboard2.
>
>>>
>>> Ross
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core

