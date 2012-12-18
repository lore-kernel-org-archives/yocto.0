Return-Path: <koansoftware@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62E15E00655
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 07:45:14 -0800 (PST)
Received: by mail-pb0-f53.google.com with SMTP id jt11so523273pbb.12
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 07:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=J22/RbfZ+A7BVbDCYwkTacJZasE6oCxz/+iaLRyzvR0=;
	b=Gye1Pyp01/UKlnwyGjUAWB+j78lyrI38JtxWYl68RK82BxikPwq2N0CYooDLVRUPZF
	ZbIAT+F+weyuyhDRL94Z4Lr98AJevsywJM8rmZx5kyo7jq22Oh7jxz6CgparVXI+zSzc
	/EQUrtsS9RZtNDLDCAAufHRmTSBJ0Ursm436RPpkpSSiSUNDiugR9P3lBhCKhmrQqNVk
	2tIKQPnpZ9FMuWzdYuVIzSi6/9qdp5S6A9ocG1h4R9Hjy966ReaPfd2gQqWslijA6TCr
	QWYBBWz4pCg03iG/oZNZIiylw8lYfCwyifb/gOHLFl3AKNK3ostyr5VZ0gf8MlESrIpW
	vd9A==
MIME-Version: 1.0
Received: by 10.66.77.201 with SMTP id u9mr7664221paw.80.1355845514236; Tue,
	18 Dec 2012 07:45:14 -0800 (PST)
Received: by 10.68.228.229 with HTTP; Tue, 18 Dec 2012 07:45:14 -0800 (PST)
In-Reply-To: <CADkTA4NAdSTxwjMfSKVutev6ksRoDce9a9buVnZymVXpeXCJqw@mail.gmail.com>
References: <50C4EF27.2030106@gmail.com>
	<CADkTA4NAdSTxwjMfSKVutev6ksRoDce9a9buVnZymVXpeXCJqw@mail.gmail.com>
Date: Tue, 18 Dec 2012 16:45:14 +0100
Message-ID: <CAHQNVWDNEdVzv3-2Jf2eNPiEG1zChRT78J8-4d2NXd1a20+iww@mail.gmail.com>
From: "Marco C." <koansoftware@gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: bitbake -c devshell option
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Dec 2012 15:45:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/12/9 Bruce Ashfield <bruce.ashfield@gmail.com>:

> As Chris said, this way should still work, and it does work here for me.
> There's
> one thing that you may notice with kernel's that have split source/build
> dirs
> (like linux-yocto), is that once you have gone through the configure phase
> and drop into the devshell you may not have KBUILT_OUTPUT set to the
> build directory, and end up dropping files in the source dir .. which causes
> you
> mrproper and build issue.
>
> I have a local append to devshell that sets:
>
>       d.setVar("KBUILD_OUTPUT", "${B}")
>
> To make sure things work.  If you need something like this as well, or have
> problems with linux-yocot, I can arrange to have something like this added
> by default. But since no one else has asked about it, I assumed no one else
> is either using devshell, or they haven't run into it.
>
> Cheers,
>
> Bruce


Dear Bruce,
I'd like to have the same behaviour as before, so what you suggested
would suit me.
Could you please tell me where to add that line?
Fileneme and function.

Thank you
 --
Marco Cavallini

2012/12/9 Bruce Ashfield <bruce.ashfield@gmail.com>:
>
>
>
> On Sun, Dec 9, 2012 at 3:05 PM, Marco <koansoftware@gmail.com> wrote:
>>
>> Hello,
>> I was used to work with oe-classic.
>> When I used oe-classic, often I used the 'devshell' option to try to
>> compile (make uImage) the kernel with the entire environment set up
>> correctly.
>> Now if I do the same procedure with Yocto 8 Danny it does not work.
>> For example I'm using a default configuration below:
>>
>> 1st step
>> ---
>> MACHINE="beagleboard" bitbake -c devshell virtual/kernel
>>
>> Build Configuration:
>> BB_VERSION        = "1.16.0"
>> TARGET_ARCH       = "arm"
>> TARGET_OS         = "linux-gnueabi"
>> MACHINE           = "beagleboard"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.3"
>> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "danny:09031ac2fc0f30ec577ee823fc61ff0e5d852e21"
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 912 tasks of which 912 didn't need to be
>> rerun and all succeeded.
>>
>>
>> 2nd step just after 1st
>> ------------------------
>> MACHINE="beagleboard" bitbake -c devshell virtual/kernel
>>
>> - Devshell starts in a new screen
>> ------------------------
>> $ pwd
>>
>> ~/yocto-8-danny/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.4.11+git1+a201268353c030d9fafe00f2041976f7437d9386_1+449f7f520350700858f21a5554b81cc8ad23267d-r4.3/linux
>>
>> - lauch a kernel build (as I was used to do)
>> ------------------------
>> $ make
>> scripts/kconfig/conf --silentoldconfig Kconfig
>> ***
>> *** Configuration file ".config" not found!
>> ***
>> *** Please run some configurator (e.g. "make oldconfig" or
>> *** "make menuconfig" or "make xconfig").
>> ***
>> make[2]: *** [silentoldconfig] Error 1
>> make[1]: *** [silentoldconfig] Error 2
>> make: *** No rule to make target `include/config/auto.conf', needed by
>> `include/config/kernel.release'.  Stop.
>>
>>
>> I would like to find out whether you can still do this and what is the new
>> way to go
>
>
> As Chris said, this way should still work, and it does work here for me.
> There's
> one thing that you may notice with kernel's that have split source/build
> dirs
> (like linux-yocto), is that once you have gone through the configure phase
> and drop into the devshell you may not have KBUILT_OUTPUT set to the
> build directory, and end up dropping files in the source dir .. which causes
> you
> mrproper and build issue.
>
> I have a local append to devshell that sets:
>
>       d.setVar("KBUILD_OUTPUT", "${B}")
>
> To make sure things work.  If you need something like this as well, or have
> problems with linux-yocot, I can arrange to have something like this added
> by default. But since no one else has asked about it, I assumed no one else
> is either using devshell, or they haven't run into it.
>
> Cheers,
>
> Bruce
>
>
>
>>
>>
>> TIA
>> --
>> Marco Cavallini
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at
> its end"

