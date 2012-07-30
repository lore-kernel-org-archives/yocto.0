Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B5FE0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 13:11:41 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so12211054pbb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 13:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4qliEMcGGfvZyBQ/K5Oa74G0PuqEGyCf7Qk6uVxX4bg=;
	b=wYwWT0fsg0+DoichHBR6KJR7JoiRwSrnbm2sE6K7z0Zn1MVPEK15rFoqixvu83asl+
	WXcWJ0Z3PH0kydS8ZmD3fTaNm0w0MkiyT3pmuEFhv4G/hknhRQShfb6C2RaYycORrpDZ
	zxr6IP8byNtvpigVZoYdELxbhOm9hVx9Dy9R7yCnaAHCaIiMQ8rKBKcjWYXUJUOYch8y
	1rSrCOkaK4jbelfICu2dBEpA5zbNxbPU8abmCIHrw7cC1tgr9rftdgdiZ34boP6SxEs1
	DNe9V115RN3N8VEuY1x4xP7wE3/gtS8MRJ6peHacXpFCLoR5vwSADmLq1E0HpWJ5aPSo
	ceZg==
MIME-Version: 1.0
Received: by 10.68.125.228 with SMTP id mt4mr38031228pbb.21.1343679100587;
	Mon, 30 Jul 2012 13:11:40 -0700 (PDT)
Received: by 10.68.201.4 with HTTP; Mon, 30 Jul 2012 13:11:40 -0700 (PDT)
In-Reply-To: <5016C780.5060400@windriver.com>
References: <CACW_hTZwzZUyWmmvDaFqaqt7do=_WfXOzA2ytAcs5CD1UmS0kA@mail.gmail.com>
	<CADkTA4Pm=bFeA9FpBeZ7usqAo+c1cS+mqaM7b=1Zcm6RnErRhQ@mail.gmail.com>
	<CACW_hTZOt=e8sWjarwip27qLJ8rY-c7cRRKttUUCtvFsmu5fag@mail.gmail.com>
	<5016C780.5060400@windriver.com>
Date: Mon, 30 Jul 2012 22:11:40 +0200
Message-ID: <CACW_hTbW9ot2QGHhukCHDC_QzuNibX+JOsSvodFRpGSKdyRF3Q@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: denzil kernel build issues
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
X-List-Received-Date: Mon, 30 Jul 2012 20:11:41 -0000
Content-Type: multipart/alternative; boundary=047d7b2e48c47b8f4204c611ab06

--047d7b2e48c47b8f4204c611ab06
Content-Type: text/plain; charset=ISO-8859-1

2012/7/30 Bruce Ashfield <bruce.ashfield@windriver.com>

> On 12-07-30 10:20 AM, Frans Meulenbroeks wrote:
>
>> Hi Bruce,
>>
>> Thanks for your support.
>> See below
>>
>> 2012/7/30 Bruce Ashfield <bruce.ashfield@gmail.com
>> <mailto:bruce.ashfield@gmail.**com <bruce.ashfield@gmail.com>>>
>>
>>
>>     On Mon, Jul 30, 2012 at 7:33 AM, Frans Meulenbroeks
>>     <fransmeulenbroeks@gmail.com <mailto:fransmeulenbroeks@**gmail.com<fransmeulenbroeks@gmail.com>
>> >>
>>
>>     wrote:
>>      > Dear all,
>>      >
>>      > I finally managed to find time to pick up porting my project to
>>     denzil and
>>      > did encounter two issues that I wanted to report back:
>>      >
>>      > First is that I could not find what the preferred way was to
>>     disable a
>>      > kernel option in my bsp.
>>      > (the option concerned is CONFIG_PM).
>>      > Of course I can sed it out in do_configure but I'd hoped it could
>>     be simpler
>>      > (I have tried:
>>      > CONFIG_PM=n
>>      > in my config snippet)
>>
>>     Putting:
>>
>>     # CONFIG_PM is not set
>>
>>     in your configuration fragment will turn off an option, the BSP
>>     guide has a
>>     "# CONFIG_SMP is not set" as an example for this.
>>
>>
>> i thought it would and I have had this in my config too, but still it
>> get switched on. Guess there is something else in my config that sets
>> this.
>> Will dive into this.
>>
>>
>>      >
>>      > Secondly a patch of mine does not seem to apply properly the
>>     first time, but
>>      > it does apply a second time.
>>      > This suggests a race between do_kernel_checkout and do_patch
>>
>>     There shouldn't be any race .. if this doesn't work:
>>
>>     addtask kernel_checkout before do_patch after do_unpack
>>
>>     Then there are some serious problems with bitbake's task scheduling.
>>
>>     If you didn't do a clean between the two runs, the second is
>>     attempting to continue
>>     the patching and you still aren't getting what you want.
>>
>>
>> I did not do a clean inbetween. I figured patch would reattempt to patch
>> and, since the file is there it would continue.
>>
>> The addtask line is there in one of the bitbake files.
>>
>> The odd thing is that the exact same thing builds fine under 3.0.
>> Actually I was trying to move from 3.0 to 3.2 while stumbling on this.
>>
>>
>>
>>     Without seeing what you've ported, or a work in progress I can't say
>>     exactly
>>     what is wrong, but your meta data is somehow wrong or completely
>>     missing.
>>     Have you set any meta or BSP SRCREVs explicitly ?
>>
>>
>> I have put my work-in-progress in:
>>
>> https://www.dropbox.com/s/**h58h6pq5b0f4u2s/patchproblem.**tar.gz<https://www.dropbox.com/s/h58h6pq5b0f4u2s/patchproblem.tar.gz>vi
>>
>> you might want to edit conf/layer.conf as it has hardcoded paths.
>> If I go to meta-syrcxx/conf/machine/**syrcxx.conf and set the preferred
>> kernel version to 3.0 things build fine.
>> Then I did set to 3.2 and it fails.
>>
>
> I'll give this a try, sounds like a typical patch/meta issue, so I should
> see it quickly.


Thanks a lot. The file that it wants to patch is there. I can imagine a
patch fault as I am just bringing this over from 3.0 but would have
expected a different message.

>
>
>  Note that apart from a PR bump the files
>> meta-syrcxx/recipes-kernel/**linux/linux-yocto_3.2.bbappend
>> meta-syrcxx/recipes-kernel/**linux/linux-yocto_3.0.bbappend
>> are identical (and I am just using files; so the same patches apply.
>>
>> BTW our board is a powerpc 8313e based board (modeled after mpc8313e-rds)
>>
>> One other thing I noticed; do_install seems to take quite some time; not
>> sure why this is (haven't investigated).
>>
>
> hmm. normally that means some sort of rpm issue (or maybe you are
> using ipk), but it can take a significant time.
>

I'm using rpm afaik (didn't change it)
if ipk is faster I can move over (we do not want to use updates, we always
only ship complete images as we then can test what the customer gets)
my host is ubuntu 10.04 if that matters (yeah, I know, it is old, company
preferred etc)

Best regards, Frans

>
> Cheers,
>
> Bruce
>
>
>> Best regards, Frans
>>
>>
>>     Cheers,
>>
>>     Bruce
>>
>>      >
>>      > Below is a log that illustrates this and demonstrates that things
>>     are ok the
>>      > 2nd time.
>>      > (btw I am also a little bit concerned on the command not found
>>     messages).
>>      > And of course any sugguestion for a fix is greatly appreciated.
>>      >
>>      > Best regards, Frans
>>      >
>>      > frans@frans-desktop:~/poky-**denzil-7.0-build$ bitbake
>> virtual/kernel
>>      > Parsing recipes: 100%
>>      >
>>     |#############################**##############################**
>> ##############################**#############################|
>>      > Time: 00:00:30
>>      > Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105
>>     targets, 35
>>      > skipped, 0 masked, 0 errors.
>>      >
>>      > OE Build Configuration:
>>      > BB_VERSION = "1.15.1"
>>      > TARGET_ARCH = "powerpc"
>>      > TARGET_OS = "linux-uclibc"
>>      > MACHINE = "syrcxx"
>>      > DISTRO = "poky"
>>      > DISTRO_VERSION = "1.2"
>>      > TUNE_FEATURES = "m32 fpu-hard ppce300c3"
>>      > TARGET_FPU = ""
>>      > meta
>>      > meta-yocto
>>      > meta-syrcxx = "<unknown>:<unknown>"
>>      >
>>      > NOTE: Resolving any missing task queue dependencies
>>      > NOTE: Preparing runqueue
>>      > NOTE: Executing SetScene Tasks
>>      > NOTE: Executing RunQueue Tasks
>>      > NOTE: Running task 162 of 664 (ID: 6,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_fetch)
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_fetch: Started
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_fetch: Succeeded
>>      > NOTE: Running task 644 of 664 (ID: 2,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_unpack)
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_unpack: Started
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_unpack: Succeeded
>>      > Nmeta-syrcxx/recipes-kernel/**linux/linux-yocto_3.2.bbappend
>>     meta-syrcxx/recipes-kernel/**linux/linux-yocto_3.0.**bbappendOTE:
>>     Running task 645 of 664 (ID: 1,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_kernel_checkout)
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_kernel_checkout: Started
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_kernel_checkout: Succeeded
>>      > NOTE: Running task 646 of 664 (ID: 0,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_validate_branches)
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_validate_branches: Started
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_validate_branches: Succeeded
>>      > NOTE: Running task 647 of 664 (ID: 3,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_patch)
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_patch: Started
>>      > ERROR: Function failed: do_patch (see
>>      >
>>     /home/frans/poky-denzil-7.0-**build/tmp/work/syrcxx-poky-**
>> linux-uclibc/linux-yocto-3.2.**11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**
>> 93a1a2880a-r1.81/temp/log.do_**patch.27211
>>      > for further information)
>>      > ERROR: Logfile of failure stored in:
>>      >
>>     /home/frans/poky-denzil-7.0-**build/tmp/work/syrcxx-poky-**
>> linux-uclibc/linux-yocto-3.2.**11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**
>> 93a1a2880a-r1.81/temp/log.do_**patch.27211
>>      > Log data follows:
>>      > | Branch meta-temp set up to track remote branch meta from origin.
>>      > | Deleted branch meta-temp (was 3499d64).
>>      > | warning: could not find (or was already included):
>>      > cfg/dmaengine/dmaengine.scc
>>      > | warning: could not find (or was already included):
>>      > cfg/usb-mass-storage.scc
>>      > | warning: could not find (or was already included): cfg/vfat.scc
>>      > | warning: could not find (or was already included):
>>      > cfg/dmaengine/dmaengine.scc
>>      > | warning: could not find (or was already included):
>> user-patches.scc
>>      > | ./2-syrcxx-**215ef69425ed902858630c959dabd5**ce.sco: line 21:
>>      > dmaengine_**68b329da9893e34099c7d8ad5cb9c9**40: command not found
>>      > | ./2-syrcxx-**215ef69425ed902858630c959dabd5**ce.sco: line 21:
>>      > dmaengine_**68b329da9893e34099c7d8ad5cb9c9**40: command not found
>>      > | [INFO] validating against known patches
>>     (syrcxx-fsl-mpc8313e-rdb-meta)
>>      > Branch standard/default/syrcxx set up to track remote branch
>>      > standard/default/base from origin.
>>      > [#############################**#####ERROR: Function failed:
>>     do_patch (see
>>      >
>>     /home/frans/poky-denzil-7.0-**build/tmp/work/syrcxx-poky-**
>> linux-uclibc/linux-yocto-3.2.**11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**
>> 93a1a2880a-r1.81/temp/log.do_**patch.27211
>>      > for further information)
>>      > error: patch failed: drivers/gpio/Makefile:41 ] (-)(76 %)
>>      > | error: drivers/gpio/Makefile: patch does not apply
>>      > | To force apply this patch, use 'guilt push -f'
>>      > | [ERROR] unable to complete push
>>      > | pending patches are:
>>      > | Patches directory doesn't exist, try guilt-init
>>      > | ERROR. could not update git tree
>>      > | ERROR. Could not modify standard/default/fsl-mpc8313e-**
>> rdb/syrcxx
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_patch: Failed
>>      > ERROR: Task 3
>>      >
>>     (/home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_patch) failed with exit code '1'
>>      > NOTE: Tasks Summary: Attempted 647 tasks of which 642 didn't need
>>     to be
>>      > rerun and 1 failed.
>>      >
>>      > Summary: 1 task failed:
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_patch
>>      > Summary: There was 1 ERROR message shown, returning a non-zero
>>     exit code.
>>      > frans@frans-desktop:~/poky-**denzil-7.0-build$ ls -l
>>      >
>>     /home/frans/poky-denzil-7.0-**build/tmp/work/syrcxx-poky-**
>> linux-uclibc/linux-yocto-3.2.**11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81/linux/**
>> drivers/gpio/Makefile
>>      > -rw-r--r-- 1 frans frans 2663 2012-07-30 12:27
>>      >
>>     /home/frans/poky-denzil-7.0-**build/tmp/work/syrcxx-poky-**
>> linux-uclibc/linux-yocto-3.2.**11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81/linux/**
>> drivers/gpio/Makefile
>>      > frans@frans-desktop:~/poky-**denzil-7.0-build$ bitbake
>> virtual/kernel
>>      > Loading cache: 100%
>>      >
>>     |#############################**##############################**
>> ##############################**##############################**#|
>>      > ETA: 00:00:00
>>      > Loaded 1106 entries from dependency cache.
>>      >
>>      > OE Build Configuration:
>>      > BB_VERSION = "1.15.1"
>>      > TARGET_ARCH = "powerpc"
>>      > TARGET_OS = "linux-uclibc"
>>      > MACHINE = "syrcxx"
>>      > DISTRO = "poky"
>>      > DISTRO_VERSION = "1.2"
>>      > TUNE_FEATURES = "m32 fpu-hard ppce300c3"
>>      > TARGET_FPU = ""
>>      > meta
>>      > meta-yocto
>>      > meta-syrcxx = "<unknown>:<unknown>"
>>      >
>>      > NOTE: Resolving any missing task queue dependencies
>>      > NOTE: Preparing runqueue
>>      > NOTE: Executing SetScene Tasks
>>      > NOTE: Executing RunQueue Tasks
>>      > NOTE: Running task 241 of 664 (ID: 3,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_patch)
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_patch: Started
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_patch: Succeeded
>>      > NOTE: Running task 648 of 664 (ID: 8,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_kernel_configme)
>>      > NOTE: Running task 649 of 664 (ID: 20,
>>      >
>>     /home/frans/poky-denzil-7.0/**meta/recipes-kernel/linux/linu**
>> x-yocto_3.2.bb <http://linux-yocto_3.2.bb>
>>     <http://linux-yocto_3.2.bb>,
>>
>>      > do_populate_lic)
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_populate_lic: Started
>>      > NOTE: package
>>      >
>>     linux-yocto-3.2.11+git1+**b14a08f5c7b469a5077c10942f4e1a**
>> ec171faa9d_1+**01e948c2bdf7f5ad9f2b30047a8d34**93a1a2880a-r1.81:
>>      > task do_kernel_configme: Started
>>      >
>>      >
>>      > ______________________________**_________________
>>      > yocto mailing list
>>      > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>
>>      > https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>      >
>>
>>
>>
>>     --
>>     "Thou shalt not follow the NULL pointer, for chaos and madness await
>>     thee at its end"
>>
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>
>

--047d7b2e48c47b8f4204c611ab06
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2012/7/30 Bruce Ashfield <span dir=3D"lt=
r">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">br=
uce.ashfield@windriver.com</a>&gt;</span><br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>
<div class=3D"im">On 12-07-30 10:20 AM, Frans Meulenbroeks wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
Hi Bruce,<br>
<br>
Thanks for your support.<br>
See below<br>
<br>
2012/7/30 Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.com" ta=
rget=3D"_blank">bruce.ashfield@gmail.com</a><br></div>
&lt;mailto:<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">br=
uce.ashfield@gmail.<u></u>com</a>&gt;&gt;<div class=3D"im"><br>
<br>
=A0 =A0 On Mon, Jul 30, 2012 at 7:33 AM, Frans Meulenbroeks<br></div>
=A0 =A0 &lt;<a href=3D"mailto:fransmeulenbroeks@gmail.com" target=3D"_blank=
">fransmeulenbroeks@gmail.com</a> &lt;mailto:<a href=3D"mailto:fransmeulenb=
roeks@gmail.com" target=3D"_blank">fransmeulenbroeks@<u></u>gmail.com</a>&g=
t;&gt;<div>
<div class=3D"h5"><br>
=A0 =A0 wrote:<br>
=A0 =A0 =A0&gt; Dear all,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; I finally managed to find time to pick up porting my projec=
t to<br>
=A0 =A0 denzil and<br>
=A0 =A0 =A0&gt; did encounter two issues that I wanted to report back:<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; First is that I could not find what the preferred way was t=
o<br>
=A0 =A0 disable a<br>
=A0 =A0 =A0&gt; kernel option in my bsp.<br>
=A0 =A0 =A0&gt; (the option concerned is CONFIG_PM).<br>
=A0 =A0 =A0&gt; Of course I can sed it out in do_configure but I&#39;d hope=
d it could<br>
=A0 =A0 be simpler<br>
=A0 =A0 =A0&gt; (I have tried:<br>
=A0 =A0 =A0&gt; CONFIG_PM=3Dn<br>
=A0 =A0 =A0&gt; in my config snippet)<br>
<br>
=A0 =A0 Putting:<br>
<br>
=A0 =A0 # CONFIG_PM is not set<br>
<br>
=A0 =A0 in your configuration fragment will turn off an option, the BSP<br>
=A0 =A0 guide has a<br>
=A0 =A0 &quot;# CONFIG_SMP is not set&quot; as an example for this.<br>
<br>
<br>
i thought it would and I have had this in my config too, but still it<br>
get switched on. Guess there is something else in my config that sets this.=
<br>
Will dive into this.<br>
<br>
<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; Secondly a patch of mine does not seem to apply properly th=
e<br>
=A0 =A0 first time, but<br>
=A0 =A0 =A0&gt; it does apply a second time.<br>
=A0 =A0 =A0&gt; This suggests a race between do_kernel_checkout and do_patc=
h<br>
<br>
=A0 =A0 There shouldn&#39;t be any race .. if this doesn&#39;t work:<br>
<br>
=A0 =A0 addtask kernel_checkout before do_patch after do_unpack<br>
<br>
=A0 =A0 Then there are some serious problems with bitbake&#39;s task schedu=
ling.<br>
<br>
=A0 =A0 If you didn&#39;t do a clean between the two runs, the second is<br=
>
=A0 =A0 attempting to continue<br>
=A0 =A0 the patching and you still aren&#39;t getting what you want.<br>
<br>
<br>
I did not do a clean inbetween. I figured patch would reattempt to patch<br=
>
and, since the file is there it would continue.<br>
<br>
The addtask line is there in one of the bitbake files.<br>
<br>
The odd thing is that the exact same thing builds fine under 3.0.<br>
Actually I was trying to move from 3.0 to 3.2 while stumbling on this.<br>
<br>
<br>
<br>
=A0 =A0 Without seeing what you&#39;ve ported, or a work in progress I can&=
#39;t say<br>
=A0 =A0 exactly<br>
=A0 =A0 what is wrong, but your meta data is somehow wrong or completely<br=
>
=A0 =A0 missing.<br>
=A0 =A0 Have you set any meta or BSP SRCREVs explicitly ?<br>
<br>
<br>
I have put my work-in-progress in:<br>
<br>
<a href=3D"https://www.dropbox.com/s/h58h6pq5b0f4u2s/patchproblem.tar.gz" t=
arget=3D"_blank">https://www.dropbox.com/s/<u></u>h58h6pq5b0f4u2s/patchprob=
lem.<u></u>tar.gz</a> vi<br>
<br>
you might want to edit conf/layer.conf as it has hardcoded paths.<br>
If I go to meta-syrcxx/conf/machine/<u></u>syrcxx.conf and set the preferre=
d<br>
kernel version to 3.0 things build fine.<br>
Then I did set to 3.2 and it fails.<br>
</div></div></blockquote>
<br>
I&#39;ll give this a try, sounds like a typical patch/meta issue, so I shou=
ld<br>
see it quickly.</blockquote><div><br>Thanks a lot. The file that it wants t=
o patch is there. I can imagine a patch fault as I am just bringing this ov=
er from 3.0 but would have expected a different message. <br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<div class=3D"im"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Note that apart from a PR bump the files<br>
meta-syrcxx/recipes-kernel/<u></u>linux/linux-yocto_3.2.bbappend<br>
meta-syrcxx/recipes-kernel/<u></u>linux/linux-yocto_3.0.bbappend<br>
are identical (and I am just using files; so the same patches apply.<br>
<br>
BTW our board is a powerpc 8313e based board (modeled after mpc8313e-rds)<b=
r>
<br>
One other thing I noticed; do_install seems to take quite some time; not<br=
>
sure why this is (haven&#39;t investigated).<br>
</blockquote>
<br></div>
hmm. normally that means some sort of rpm issue (or maybe you are<br>
using ipk), but it can take a significant time.<br></blockquote><div><br>I&=
#39;m using rpm afaik (didn&#39;t change it)<br>if ipk is faster I can move=
 over (we do not want to use updates, we always only ship complete images a=
s we then can test what the customer gets)<br>
my host is ubuntu 10.04 if that matters (yeah, I know, it is old, company p=
referred etc) <br><br>Best regards, Frans<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">

<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
<br>
Best regards, Frans<br>
<br>
<br>
=A0 =A0 Cheers,<br>
<br>
=A0 =A0 Bruce<br>
<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; Below is a log that illustrates this and demonstrates that =
things<br>
=A0 =A0 are ok the<br>
=A0 =A0 =A0&gt; 2nd time.<br>
=A0 =A0 =A0&gt; (btw I am also a little bit concerned on the command not fo=
und<br>
=A0 =A0 messages).<br>
=A0 =A0 =A0&gt; And of course any sugguestion for a fix is greatly apprecia=
ted.<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; Best regards, Frans<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; frans@frans-desktop:~/poky-<u></u>denzil-7.0-build$ bitbake=
 virtual/kernel<br>
=A0 =A0 =A0&gt; Parsing recipes: 100%<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 |#############################<u></u>##############################=
<u></u>##############################<u></u>#############################|<=
br>
=A0 =A0 =A0&gt; Time: 00:00:30<br>
=A0 =A0 =A0&gt; Parsing of 829 .bb files complete (0 cached, 829 parsed). 1=
105<br>
=A0 =A0 targets, 35<br>
=A0 =A0 =A0&gt; skipped, 0 masked, 0 errors.<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; OE Build Configuration:<br>
=A0 =A0 =A0&gt; BB_VERSION =3D &quot;1.15.1&quot;<br>
=A0 =A0 =A0&gt; TARGET_ARCH =3D &quot;powerpc&quot;<br>
=A0 =A0 =A0&gt; TARGET_OS =3D &quot;linux-uclibc&quot;<br>
=A0 =A0 =A0&gt; MACHINE =3D &quot;syrcxx&quot;<br>
=A0 =A0 =A0&gt; DISTRO =3D &quot;poky&quot;<br>
=A0 =A0 =A0&gt; DISTRO_VERSION =3D &quot;1.2&quot;<br>
=A0 =A0 =A0&gt; TUNE_FEATURES =3D &quot;m32 fpu-hard ppce300c3&quot;<br>
=A0 =A0 =A0&gt; TARGET_FPU =3D &quot;&quot;<br>
=A0 =A0 =A0&gt; meta<br>
=A0 =A0 =A0&gt; meta-yocto<br>
=A0 =A0 =A0&gt; meta-syrcxx =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;=
<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; NOTE: Resolving any missing task queue dependencies<br>
=A0 =A0 =A0&gt; NOTE: Preparing runqueue<br>
=A0 =A0 =A0&gt; NOTE: Executing SetScene Tasks<br>
=A0 =A0 =A0&gt; NOTE: Executing RunQueue Tasks<br>
=A0 =A0 =A0&gt; NOTE: Running task 162 of 664 (ID: 6,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_fetch)<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_fetch: Started<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_fetch: Succeeded<br>
=A0 =A0 =A0&gt; NOTE: Running task 644 of 664 (ID: 2,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_unpack)<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_unpack: Started<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_unpack: Succeeded<br>
=A0 =A0 =A0&gt; Nmeta-syrcxx/recipes-kernel/<u></u>linux/linux-yocto_3.2.bb=
append<br>
=A0 =A0 meta-syrcxx/recipes-kernel/<u></u>linux/linux-yocto_3.0.<u></u>bbap=
pendOTE:<br>
=A0 =A0 Running task 645 of 664 (ID: 1,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_kernel_checkout)<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_kernel_checkout: Started<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_kernel_checkout: Succeeded<br>
=A0 =A0 =A0&gt; NOTE: Running task 646 of 664 (ID: 0,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_validate_branches)<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_validate_branches: Started<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_validate_branches: Succeeded<br>
=A0 =A0 =A0&gt; NOTE: Running task 647 of 664 (ID: 3,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div><div class=3D"h5"><br>
=A0 =A0 =A0&gt; do_patch)<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_patch: Started<br>
=A0 =A0 =A0&gt; ERROR: Function failed: do_patch (see<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0-<u></u>build/tmp/work/syrcxx-poky-<u></=
u>linux-uclibc/linux-yocto-3.2.<u></u>11+git1+<u></u>b14a08f5c7b469a5077c10=
942f4e1a<u></u>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a=
1a2880a-r1.81/temp/log.do_<u></u>patch.27211<br>

=A0 =A0 =A0&gt; for further information)<br>
=A0 =A0 =A0&gt; ERROR: Logfile of failure stored in:<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0-<u></u>build/tmp/work/syrcxx-poky-<u></=
u>linux-uclibc/linux-yocto-3.2.<u></u>11+git1+<u></u>b14a08f5c7b469a5077c10=
942f4e1a<u></u>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a=
1a2880a-r1.81/temp/log.do_<u></u>patch.27211<br>

=A0 =A0 =A0&gt; Log data follows:<br>
=A0 =A0 =A0&gt; | Branch meta-temp set up to track remote branch meta from =
origin.<br>
=A0 =A0 =A0&gt; | Deleted branch meta-temp (was 3499d64).<br>
=A0 =A0 =A0&gt; | warning: could not find (or was already included):<br>
=A0 =A0 =A0&gt; cfg/dmaengine/dmaengine.scc<br>
=A0 =A0 =A0&gt; | warning: could not find (or was already included):<br>
=A0 =A0 =A0&gt; cfg/usb-mass-storage.scc<br>
=A0 =A0 =A0&gt; | warning: could not find (or was already included): cfg/vf=
at.scc<br>
=A0 =A0 =A0&gt; | warning: could not find (or was already included):<br>
=A0 =A0 =A0&gt; cfg/dmaengine/dmaengine.scc<br>
=A0 =A0 =A0&gt; | warning: could not find (or was already included): user-p=
atches.scc<br>
=A0 =A0 =A0&gt; | ./2-syrcxx-<u></u>215ef69425ed902858630c959dabd5<u></u>ce=
.sco: line 21:<br>
=A0 =A0 =A0&gt; dmaengine_<u></u>68b329da9893e34099c7d8ad5cb9c9<u></u>40: c=
ommand not found<br>
=A0 =A0 =A0&gt; | ./2-syrcxx-<u></u>215ef69425ed902858630c959dabd5<u></u>ce=
.sco: line 21:<br>
=A0 =A0 =A0&gt; dmaengine_<u></u>68b329da9893e34099c7d8ad5cb9c9<u></u>40: c=
ommand not found<br>
=A0 =A0 =A0&gt; | [INFO] validating against known patches<br>
=A0 =A0 (syrcxx-fsl-mpc8313e-rdb-meta)<br>
=A0 =A0 =A0&gt; Branch standard/default/syrcxx set up to track remote branc=
h<br>
=A0 =A0 =A0&gt; standard/default/base from origin.<br>
=A0 =A0 =A0&gt; [#############################<u></u>#####ERROR: Function f=
ailed:<br>
=A0 =A0 do_patch (see<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0-<u></u>build/tmp/work/syrcxx-poky-<u></=
u>linux-uclibc/linux-yocto-3.2.<u></u>11+git1+<u></u>b14a08f5c7b469a5077c10=
942f4e1a<u></u>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a=
1a2880a-r1.81/temp/log.do_<u></u>patch.27211<br>

=A0 =A0 =A0&gt; for further information)<br>
=A0 =A0 =A0&gt; error: patch failed: drivers/gpio/Makefile:41 ] (-)(76 %)<b=
r>
=A0 =A0 =A0&gt; | error: drivers/gpio/Makefile: patch does not apply<br>
=A0 =A0 =A0&gt; | To force apply this patch, use &#39;guilt push -f&#39;<br=
>
=A0 =A0 =A0&gt; | [ERROR] unable to complete push<br>
=A0 =A0 =A0&gt; | pending patches are:<br>
=A0 =A0 =A0&gt; | Patches directory doesn&#39;t exist, try guilt-init<br>
=A0 =A0 =A0&gt; | ERROR. could not update git tree<br>
=A0 =A0 =A0&gt; | ERROR. Could not modify standard/default/fsl-mpc8313e-<u>=
</u>rdb/syrcxx<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_patch: Failed<br>
=A0 =A0 =A0&gt; ERROR: Task 3<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 (/home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hr=
ef=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.b=
b</a><br></div></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_patch) failed with exit code &#39;1&#39;<br>
=A0 =A0 =A0&gt; NOTE: Tasks Summary: Attempted 647 tasks of which 642 didn&=
#39;t need<br>
=A0 =A0 to be<br>
=A0 =A0 =A0&gt; rerun and 1 failed.<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; Summary: 1 task failed:<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div><div class=3D"h5"><br>
=A0 =A0 =A0&gt; do_patch<br>
=A0 =A0 =A0&gt; Summary: There was 1 ERROR message shown, returning a non-z=
ero<br>
=A0 =A0 exit code.<br>
=A0 =A0 =A0&gt; frans@frans-desktop:~/poky-<u></u>denzil-7.0-build$ ls -l<b=
r>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0-<u></u>build/tmp/work/syrcxx-poky-<u></=
u>linux-uclibc/linux-yocto-3.2.<u></u>11+git1+<u></u>b14a08f5c7b469a5077c10=
942f4e1a<u></u>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a=
1a2880a-r1.81/linux/<u></u>drivers/gpio/Makefile<br>

=A0 =A0 =A0&gt; -rw-r--r-- 1 frans frans 2663 2012-07-30 12:27<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0-<u></u>build/tmp/work/syrcxx-poky-<u></=
u>linux-uclibc/linux-yocto-3.2.<u></u>11+git1+<u></u>b14a08f5c7b469a5077c10=
942f4e1a<u></u>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a=
1a2880a-r1.81/linux/<u></u>drivers/gpio/Makefile<br>

=A0 =A0 =A0&gt; frans@frans-desktop:~/poky-<u></u>denzil-7.0-build$ bitbake=
 virtual/kernel<br>
=A0 =A0 =A0&gt; Loading cache: 100%<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 |#############################<u></u>##############################=
<u></u>##############################<u></u>##############################<=
u></u>#|<br>
=A0 =A0 =A0&gt; ETA: 00:00:00<br>
=A0 =A0 =A0&gt; Loaded 1106 entries from dependency cache.<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; OE Build Configuration:<br>
=A0 =A0 =A0&gt; BB_VERSION =3D &quot;1.15.1&quot;<br>
=A0 =A0 =A0&gt; TARGET_ARCH =3D &quot;powerpc&quot;<br>
=A0 =A0 =A0&gt; TARGET_OS =3D &quot;linux-uclibc&quot;<br>
=A0 =A0 =A0&gt; MACHINE =3D &quot;syrcxx&quot;<br>
=A0 =A0 =A0&gt; DISTRO =3D &quot;poky&quot;<br>
=A0 =A0 =A0&gt; DISTRO_VERSION =3D &quot;1.2&quot;<br>
=A0 =A0 =A0&gt; TUNE_FEATURES =3D &quot;m32 fpu-hard ppce300c3&quot;<br>
=A0 =A0 =A0&gt; TARGET_FPU =3D &quot;&quot;<br>
=A0 =A0 =A0&gt; meta<br>
=A0 =A0 =A0&gt; meta-yocto<br>
=A0 =A0 =A0&gt; meta-syrcxx =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;=
<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; NOTE: Resolving any missing task queue dependencies<br>
=A0 =A0 =A0&gt; NOTE: Preparing runqueue<br>
=A0 =A0 =A0&gt; NOTE: Executing SetScene Tasks<br>
=A0 =A0 =A0&gt; NOTE: Executing RunQueue Tasks<br>
=A0 =A0 =A0&gt; NOTE: Running task 241 of 664 (ID: 3,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_patch)<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_patch: Started<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_patch: Succeeded<br>
=A0 =A0 =A0&gt; NOTE: Running task 648 of 664 (ID: 8,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_kernel_configme)<br>
=A0 =A0 =A0&gt; NOTE: Running task 649 of 664 (ID: 20,<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 /home/frans/poky-denzil-7.0/<u></u>meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_3.2.bb" target=3D"_blank">linu<u></u>x-yocto_3.2.bb=
</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-yocto_3.2.bb" target=3D"_blank">http://=
linux-yocto_3.2.bb</a>&gt;,<div class=3D"im"><br>
=A0 =A0 =A0&gt; do_populate_lic)<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_populate_lic: Started<br>
=A0 =A0 =A0&gt; NOTE: package<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 linux-yocto-3.2.11+git1+<u></u>b14a08f5c7b469a5077c10942f4e1a<u></u=
>ec171faa9d_1+<u></u>01e948c2bdf7f5ad9f2b30047a8d34<u></u>93a1a2880a-r1.81:=
<br>
=A0 =A0 =A0&gt; task do_kernel_configme: Started<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; ______________________________<u></u>_________________<br>
=A0 =A0 =A0&gt; yocto mailing list<br></div>
=A0 =A0 =A0&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<div class=3D"=
im"><br>
=A0 =A0 =A0&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><b=
r>
=A0 =A0 =A0&gt;<br>
<br>
<br>
<br>
=A0 =A0 --<br>
=A0 =A0 &quot;Thou shalt not follow the NULL pointer, for chaos and madness=
 await<br>
=A0 =A0 thee at its end&quot;<br>
<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></blockquote>
<br>
</blockquote></div><br>

--047d7b2e48c47b8f4204c611ab06--
