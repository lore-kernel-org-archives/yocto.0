Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E645CE007CD; Sat, 10 Jan 2015 14:37:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74CB7E00521
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 14:37:42 -0800 (PST)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id 061CB20AA552;
	Sat, 10 Jan 2015 22:37:41 +0000 (UTC)
Message-ID: <54B1A9B4.4070207@mindchasers.com>
Date: Sat, 10 Jan 2015 17:37:40 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <54B0028D.2000503@mindchasers.com>
	<CADkTA4NvLdwTnknRvg83B1FNQgOSQg5x66kYo437+mszf=dWrQ@mail.gmail.com>
In-Reply-To: <CADkTA4NvLdwTnknRvg83B1FNQgOSQg5x66kYo437+mszf=dWrQ@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: linux: having problems forcing a kernel recompile...
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
X-List-Received-Date: Sat, 10 Jan 2015 22:37:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2015 02:45 PM, Bruce Ashfield wrote:
> On Fri, Jan 9, 2015 at 11:32 AM, Bob Cochran <yocto@mindchasers.com> wrote:
>> Hi,
>>
>> I'm working with the latest poky master branch (as of this morning:
>> 876370419a), and I can't force a recompile of the kernel:
>>
>> $ bitbake virtual/kernel -c compile -f
>>
>> fails with
>>
>> | make[2]: *** [prepare3] Error 1
>>
>> I have seen this with both linux-qoriq and my own derived linux-yocto
>> recipe.
>>
>> I believe it's due to my sysroots kernel source directory not being clean.
>>
>> When I initially bake my kernel, I can see that the do_populate_sysroot task
>> is run and it copies a .config into sysroots/<machine>/usr/src/kernel.
>>
>> When I try to force the recompile, MAKE sees that my source directory isn't
>> clean and quits ( throws the prepare3 error ).
>>
>> Somewhat related, I also notice that neither a
>>
>> $ bitbake virtual/kernel -c cleansstate
>>
>> nor a
>>
>> $ bitbake virtual/kernel -c cleanall
>>
>> actually cleans my kernel source directory.  Should it?
>>
>>
>> If these are legitimate bugs, I'll be happy to file a bugzilla report.
>
>
> These are due to some changes that we merged at the end of December to
> improve kernel build times. We have bugs open for this issue


BTW, I'm browsing bugzilla but not seeing a bug entry that obviously 
covers these issues.

I'm looking at kernel-configuration, kernel-tooling, and linux-yocto.

Perhaps it's covered somewhere else?  Can you please let me know the bug 
id?

Thanks again,

Bob



, and set of
> changes nearly ready that addresses this, and a few other pending issues.
>
> Bruce
>
>>
>>
>> Thanks
>>
>> Bob
>>
>>
>>
>>
>>
>> Error Log from running "bitbake virtual/kernel -c compile -f":
>>
>>
>> | DEBUG: Executing shell function do_compile
>> | NOTE: make -j 4 uImage CC=powerpc64-poky-linux-gcc
>> --sysroot=/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b
>> LD=powerpc64-poky-linux-ld.bfd
>> --sysroot=/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b
>> |   CHK     include/config/kernel.release
>> |   GEN
>> /build/yocto/t1040_1/tmp/work/t1040rdb_64b-poky-linux/linux-qoriq/3.12-r0/build/Makefile
>> |   CHK     include/generated/uapi/linux/version.h
>> |   Using /build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel as
>> source for kernel
>> |   /build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel is not
>> clean, please run 'make mrproper'
>> |   in the '/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel'
>> directory.
>> |   CHK     include/generated/utsrelease.h
>> | make[2]: *** [prepare3] Error 1
>> | make[2]: *** Waiting for unfinished jobs....
>> |   CC      scripts/mod/empty.o
>> |   CC      scripts/mod/devicetable-offsets.s
>> |   MKELF   scripts/mod/elfconfig.h
>> |   HOSTCC  scripts/mod/modpost.o
>> |   HOSTCC  scripts/mod/sumversion.o
>> |   GEN     scripts/mod/devicetable-offsets.h
>> |   HOSTCC  scripts/mod/file2alias.o
>> |   HOSTLD  scripts/mod/modpost
>> | make[1]: *** [sub-make] Error 2
>> | make: *** [all] Error 2
>> | ERROR: oe_runmake failed
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>


