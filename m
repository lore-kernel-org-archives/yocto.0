Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D092AE008FF; Sun, 11 Jan 2015 11:55:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48335E008A6
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 11:55:23 -0800 (PST)
Received: by mail-la0-f45.google.com with SMTP id gq15so21340944lab.4
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 11:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WJBdpvp32qdDMB2YwN3qfIov/pdRnw4U73lQyVJc864=;
	b=vwCE2T89/IxsSCgiMCLFccJJzMlAqzH7GDZvY40nZzG4hmS+19vDUbCG6uHoc6VLaz
	3sxp8HZ+v4rLRTzULJ7ehDEofeUDOqkFxgzeFzGl/pYnUe7b0zNnmbINy23nEebg7+VA
	aFmWSy9h7SFKLcNKalbyod2RfOrriCR6e8Ye7nJ6QGAA4SqDK+Vt42gcQOJxv2r7SYcD
	zn900hIMzfDXCikUuxZYZD0wjzcrr39daIoGxvMavdjlWXRty8Kzj41w3OYGl3vcx7FE
	l9tWGe/zQqXkzJmnUA0+gj6McT2NQH0BZEPIwLI0ZS8aEomfdM8K8ymQNYEVDebE4g6v
	kvbA==
MIME-Version: 1.0
X-Received: by 10.112.134.74 with SMTP id pi10mr32612528lbb.67.1421006122232; 
	Sun, 11 Jan 2015 11:55:22 -0800 (PST)
Received: by 10.112.48.41 with HTTP; Sun, 11 Jan 2015 11:55:22 -0800 (PST)
In-Reply-To: <54B1A9B4.4070207@mindchasers.com>
References: <54B0028D.2000503@mindchasers.com>
	<CADkTA4NvLdwTnknRvg83B1FNQgOSQg5x66kYo437+mszf=dWrQ@mail.gmail.com>
	<54B1A9B4.4070207@mindchasers.com>
Date: Sun, 11 Jan 2015 14:55:22 -0500
Message-ID: <CADkTA4Noanc6T9j=kcohkZYhTESDFkSv4bxYwoFNQAkSy6nQdw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
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
X-List-Received-Date: Sun, 11 Jan 2015 19:55:33 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jan 10, 2015 at 5:37 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> On 01/10/2015 02:45 PM, Bruce Ashfield wrote:
>>
>> On Fri, Jan 9, 2015 at 11:32 AM, Bob Cochran <yocto@mindchasers.com>
>> wrote:
>>>
>>> Hi,
>>>
>>> I'm working with the latest poky master branch (as of this morning:
>>> 876370419a), and I can't force a recompile of the kernel:
>>>
>>> $ bitbake virtual/kernel -c compile -f
>>>
>>> fails with
>>>
>>> | make[2]: *** [prepare3] Error 1
>>>
>>> I have seen this with both linux-qoriq and my own derived linux-yocto
>>> recipe.
>>>
>>> I believe it's due to my sysroots kernel source directory not being
>>> clean.
>>>
>>> When I initially bake my kernel, I can see that the do_populate_sysroot
>>> task
>>> is run and it copies a .config into sysroots/<machine>/usr/src/kernel.
>>>
>>> When I try to force the recompile, MAKE sees that my source directory
>>> isn't
>>> clean and quits ( throws the prepare3 error ).
>>>
>>> Somewhat related, I also notice that neither a
>>>
>>> $ bitbake virtual/kernel -c cleansstate
>>>
>>> nor a
>>>
>>> $ bitbake virtual/kernel -c cleanall
>>>
>>> actually cleans my kernel source directory.  Should it?
>>>
>>>
>>> If these are legitimate bugs, I'll be happy to file a bugzilla report.
>>
>>
>>
>> These are due to some changes that we merged at the end of December to
>> improve kernel build times. We have bugs open for this issue
>
>
>
> BTW, I'm browsing bugzilla but not seeing a bug entry that obviously covers
> these issues.
>
> I'm looking at kernel-configuration, kernel-tooling, and linux-yocto.
>
> Perhaps it's covered somewhere else?  Can you please let me know the bug id?

https://bugzilla.yoctoproject.org/show_bug.cgi?id=7121

Covers the same root cause.

Bruce

>
> Thanks again,
>
> Bob
>
>
>
>
> , and set of
>>
>> changes nearly ready that addresses this, and a few other pending issues.
>>
>> Bruce
>>
>>>
>>>
>>> Thanks
>>>
>>> Bob
>>>
>>>
>>>
>>>
>>>
>>> Error Log from running "bitbake virtual/kernel -c compile -f":
>>>
>>>
>>> | DEBUG: Executing shell function do_compile
>>> | NOTE: make -j 4 uImage CC=powerpc64-poky-linux-gcc
>>> --sysroot=/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b
>>> LD=powerpc64-poky-linux-ld.bfd
>>> --sysroot=/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b
>>> |   CHK     include/config/kernel.release
>>> |   GEN
>>>
>>> /build/yocto/t1040_1/tmp/work/t1040rdb_64b-poky-linux/linux-qoriq/3.12-r0/build/Makefile
>>> |   CHK     include/generated/uapi/linux/version.h
>>> |   Using /build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel
>>> as
>>> source for kernel
>>> |   /build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel is not
>>> clean, please run 'make mrproper'
>>> |   in the
>>> '/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel'
>>> directory.
>>> |   CHK     include/generated/utsrelease.h
>>> | make[2]: *** [prepare3] Error 1
>>> | make[2]: *** Waiting for unfinished jobs....
>>> |   CC      scripts/mod/empty.o
>>> |   CC      scripts/mod/devicetable-offsets.s
>>> |   MKELF   scripts/mod/elfconfig.h
>>> |   HOSTCC  scripts/mod/modpost.o
>>> |   HOSTCC  scripts/mod/sumversion.o
>>> |   GEN     scripts/mod/devicetable-offsets.h
>>> |   HOSTCC  scripts/mod/file2alias.o
>>> |   HOSTLD  scripts/mod/modpost
>>> | make[1]: *** [sub-make] Error 2
>>> | make: *** [all] Error 2
>>> | ERROR: oe_runmake failed
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

