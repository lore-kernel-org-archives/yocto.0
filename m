Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a106.g.dreamhost.com (caiajhbdcbhh.dreamhost.com
	[208.97.132.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A154BE017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 15:48:41 -0700 (PDT)
Received: from homiemail-a106.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a106.g.dreamhost.com (Postfix) with ESMTP id 601522005D107
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 15:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:subject:references:in-reply-to
	:content-type:content-transfer-encoding; s=aeonyx.ca; bh=ia/wX4i
	VDduf+cI+WRgpHQNyzz4=; b=QZ7ROko6SccrEKKrGnVZNkwX2cuhiDxenD9H9Ff
	7f8qc95OCRwM1AjI2dYmPoXXoRIPGBso+LmQBEXbo5xCqKexiLnjlH/TeRuMs+Hg
	45/4fD65JPnDNO17s2muBvW5if7rRmQCS/eT+OicsIKxYxrQaXi3palQVUhdRGrf
	7qoE=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a106.g.dreamhost.com (Postfix) with ESMTPSA id
	E4BD82005D106
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 15:48:39 -0700 (PDT)
Message-ID: <5272DE46.7080005@aeonyx.ca>
Date: Thu, 31 Oct 2013 18:48:38 -0400
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <52702B41.1040504@aeonyx.ca>
	<52703CE8.9020306@aeonyx.ca>	<CAMKF1spWtCmptujJk_N3AUz3v961+T+JibJtbFpZmF7ZEB3VFA@mail.gmail.com>
	<52706EC2.1020409@aeonyx.ca>
In-Reply-To: <52706EC2.1020409@aeonyx.ca>
Subject: Re: Fail to build core-image-minimal when MACHINE=genericx86-64
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
X-List-Received-Date: Thu, 31 Oct 2013 22:48:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

With the help of a friend, have confirmed that 'core-image-minimal' 
cannot be built with Ubuntu 13.10 64-bit when MACHINE=genericx86-64. 
Attempted the build on a different machine in a different city, same 
results (failure to build).

Confirmed that 'core-image-minimal' can be successfully built under an 
lxc and a chroot running Debian Wheezy, on Ubuntu 13.10 64-bit, with 
MACHINE=genericx86-64.

Filed bug 5440 on Yocto Bugzilla.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5440

Markus


On 10/29/2013 10:28 PM, Markus Svilans wrote:
> Thanks, Khem.
>
> Following your suggestion, I tried removing the com32/ subdirectory
> from the build, by modifying the do_configure() routine in
> syslinux_6.01.bb recipe. It did not work, there were errors related to
> missing .o files in a later step.
>
> Your response prompted me to look further.
>
> It appears that in the do_install() step, the syslinux recipe is using
> the host gcc and ld, and not the cross-compiler gcc and ld.
>
> For example, from the do_install log:
>> gcc -Wp,-MT,ctime.o,-MD,./.ctime.o.d -std=gnu99
>> -fno-stack-protector -fwrapv -freg-struct-return -Os -fPIC
>> -fno-exceptions -fno-asynchronous-unwind-tables -fno-strict-aliasing
>> -falign-functions=0 -falign-jumps=0 -falign-labels=0 -falign-loops=0
>> -mregparm=3 -DREGPARM=3 -W -Wall -Wstrict-prototypes
>> -fomit-frame-pointer -D__COM32__ -nostdinc -iwithprefix include
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gplinclude
>> -c -o ctime.o
>> /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na
> tive/6.01-r0/syslinux-6.01/com32/libupload/ctime.c
>
> Additionally, according to the makefile fragment "com32.mk" (in the
> directory
> ~/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky-linux/syslinux/6.02-r0/syslinux-6.02/mk/)
> there should be some architecture related parameters following
> "-std=gnu99".
> To see why not, I had a look in the file "syslinux.mk" (in the same
> directory). The architecture selection is done via the SUBARCH and
> ARCH variables. I tried various sed commands in the BB recipe
> do_configure() step to force ARCH to "x86_64", but nothing seemed to
> make it work.
>
> Next I tried the following change in the do_install() step in the BB
> recipe:
>
> Before:
>     oe_runmake install INSTALLROOT="${D}" firmware="bios"
>
> After:
>     oe_runmake install CC="${CC} ${CFLAGS}" LDFLAGS="${LDFLAGS} -A
> i386" INSTALLROOT="${D}" ${SYSLINUX_ARCH} firmware="bios"
>
> Now the cross-compiler was being invoked, but with conflicting flags:
>
>> x86_64-poky-linux-gcc  -m64
>> --sysroot=/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/sysroots/genericx86-64
>> -O2 -pipe -g -feliminate-unused-debug-types
>> -Wp,-MT,ctime.o,-MD,./.ctime.o.d -std=gnu99 -m32 -march=i386
>> -mpreferred-stack-boundary=2  -fno-stack-protector -fwrapv
>> -freg-struct-return -Os -fPIC -fno-exceptions
>> -fno-asynchronous-unwind-tables -fno-strict-aliasing
>> -falign-functions=0 -falign-jumps=0 -falign-labels=0 -falign-loops=0
>> -mregparm=3 -DREGPARM=3 -W -Wall -Wstrict-prototypes
>> -fomit-frame-pointer -D__COM32__ -nostdinc -iwithprefix include
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky-linux/syslinux/6.02-r0/syslinux-6.02/com32/libutil/include
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky-linux/syslinux/6.02-r0/syslinux-6.02/com32/include
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky-linux/syslinux/6.02-r0/syslinux-6.02/com32/include/sys
>> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky-linux/syslinux/6.02-r0/syslinux-6.02/com32/gplinclude
>> -c -o ctime.o
>> /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky-linux/syslinux/6.02-r0/syslinux-6.02/com32/libupload/ctime.c
>
> The build didn't work, there were more errors during the link stage.
>
> Basically it looks like the syslinux recipe cannot handle
> cross-compilation to x86_64 at the moment. Making it work is a little
> bit outside my experience level. I feel like I am feeling around in
> the dark here. Maybe could someone else take a look at this?
>
> Thanks very much
> Markus
>
>
>
>
> On 10/29/2013 07:11 PM, Khem Raj wrote:
>> On Tue, Oct 29, 2013 at 3:55 PM, Markus Svilans <msvilans@aeonyx.ca>
>> wrote:
>>> Dear list,
>>>
>>> A quick update:
>>>
>>> - The same build failure occurred when I tried "bitbake
>>> core-image-minimal"
>>> using a fresh poky 1.5 downloaded from the Yocto web site, with
>>> MACHINE set
>>> to genericx86-64.
>>> - The same build failure occurred when I manually created a recipe for
>>> syslinux 6.02 and tried to build it directly "bitbake syslinux"
>>>
>>> Any assistance would be greatly appreciated.
>> its failing while building syslinux-native package and as it seems
>> from errors, its not building com32 bits by passing -m32
>> flags to compiler. Seems like you need to hack syslinux build and add
>> -m32 when building com32/ subdir or alternatively
>> remove it from build
>>
>> sed -e 's,com32/\S*,,g' -i Makefile
>>
>> but that may not be best thing to do.
>>
>>
>>> Thanks very much
>>> Markus
>>>
>>>
>>>
>>> On 10/29/2013 05:40 PM, Markus Svilans wrote:
>>>
>>> Dear list,
>>>
>>> I'm trying to build a core-image-minimal recipe using
>>> MACHINE=genericx86-64
>>> but it always fails at syslinux-native-6.01 recipe. I've tried
>>> deleting my
>>> tmp and build folders several times, but it will not build. I am
>>> using the
>>> genericx86-64 BSP package downloaded from the Yocto website, located
>>> at:
>>>
>>> https://www.yoctoproject.org/download/intel-x86-64-based-pcs-and-devices-genericx86-64
>>>
>>>
>>> File: genericx86-64-dora-10.0.0.tar.bz2
>>>
>>> I extracted it to:
>>> /home/markus/yocto/genericx86-64-dora-10.0.0
>>>
>>> Then ran the "oe-init-build-env" script and editted local.conf to
>>> enable
>>> parallel make, and changed MACHINE to genericx86-64. (I've attached
>>> a copy
>>> of my local.conf file.)
>>>
>>> After that, I ran the command "bitbake core-image-minimal" and sat
>>> back,
>>> waiting for it to build.
>>>
>>> The build always fails at syslinux-native.
>>>
>>> I tried several things:
>>> - deleted tmp directory, re-try build = failure
>>> - deleted build directory, re-try build = failure
>>> - deleted build directory, build only syslinux = failure
>>> - deleted build directory, build only syslinux-native = failure
>>>
>>> I think I may be doing something wrong, because about an hour of Google
>>> searching did not turn up anybody having a similar issue.
>>>
>>> I am running Kubuntu 13.10 64-bit.
>>>
>>> Can anyone please offer any advice, so that I can successfully build
>>> x86-64
>>> images?
>>>
>>> Thanks very much
>>> Markus
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


