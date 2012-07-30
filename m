Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DF0EE0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 14:32:24 -0700 (PDT)
Received: by yenl5 with SMTP id l5so6127739yen.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 14:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HcR4uLfwxyXHt8thulfyICWHredx0LQLFjRnS0vHBIA=;
	b=vweCQ2WdFncpSSf5cNqiL9T5CGeSp1lIpy2mMQQBRkS5H/1Yqh0HW9VKJGCP83riAX
	7OGLi3QRt8K4fPLCGVZFpASO3yoHw+MjHW2SL70EoG9sX/Qux7s7U5yc8Ck5YwJLnZ7C
	iW0gYDFass1ACr3Zqy/BTXXpOLbSQxBzi6Y3OsaTuYM6jfZ5+FTlCE7YWaNlai2ma1V/
	aNTb57HHA62o8z9803K4U4IipOqd/qwqxiz89nzzNl6PS7DGCrNx3W6QNWeqr7zl/nrp
	Y+qzWafus53XfOZWzQ2EnSyUNXNgLUWWmirXzw11A5+Ns/PEF2XpMF/c3kqnIK2mscrl
	02Rw==
MIME-Version: 1.0
Received: by 10.66.85.135 with SMTP id h7mr27351509paz.75.1343683943565; Mon,
	30 Jul 2012 14:32:23 -0700 (PDT)
Received: by 10.68.201.4 with HTTP; Mon, 30 Jul 2012 14:32:23 -0700 (PDT)
In-Reply-To: <5016EF90.4080003@windriver.com>
References: <CACW_hTZwzZUyWmmvDaFqaqt7do=_WfXOzA2ytAcs5CD1UmS0kA@mail.gmail.com>
	<CADkTA4Pm=bFeA9FpBeZ7usqAo+c1cS+mqaM7b=1Zcm6RnErRhQ@mail.gmail.com>
	<CACW_hTZOt=e8sWjarwip27qLJ8rY-c7cRRKttUUCtvFsmu5fag@mail.gmail.com>
	<5016EF90.4080003@windriver.com>
Date: Mon, 30 Jul 2012 23:32:23 +0200
Message-ID: <CACW_hTYquYBv5kumE_DiB1Zu+SN8qOqAxQsqqcSW073afxkL4g@mail.gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 21:32:24 -0000
Content-Type: multipart/alternative; boundary=f46d042de469258ae404c612cc6d

--f46d042de469258ae404c612cc6d
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
>> Note that apart from a PR bump the files
>> meta-syrcxx/recipes-kernel/**linux/linux-yocto_3.2.bbappend
>> meta-syrcxx/recipes-kernel/**linux/linux-yocto_3.0.bbappend
>> are identical (and I am just using files; so the same patches apply.
>>
>
> You've got a couple of minor problems in the files. dmaengine is
> incorrectly referenced for 3.2. I've attached a fix for that. The
> other items are just warnings..
>
> I have fixes to make that bad configuration reference a hard error,
> with a message during do_patch that high lights the problem .. for
> master. But in denzil, what you got is what I'd expect.
>
> Your max7311.patch also needs to be refreshed for 3.2, since it won't
> apply as is.
>
> After the failure, I refreshed it as follows:
>
>
>  > bitbake -c devshell linux-yocto
>
> # in dev-shell:
>
>  # already fixed in master, but denzil requires this:
>  > export GUILT_BASE=meta
>  > guilt next
> links/files/max7311.patch
>  > guilt push -f
>  # resolve conflict in drivers/gpio/Makefile
>  > git add drivers/gpio/Makefile drivers/gpio/max7311.c
> include/linux/max7311_gpio.h
>  > git clean -f
> Removing drivers/gpio/Makefile.rej
>  > git tag standard/default/syrcxx_top
>  > guilt refresh
> Patch links/files/max7311.patch refreshed
>
>  > cp meta/patches/standard/default/**syrcxx/links/files/max7311.**patch
> $your_layer_location/meta-**syrcxx/recipes-kernel/linux/**files
>
>  > guilt push -a
> Applying patch..links/files/axonbus-**remote.patch
> Patch applied.
> Applying patch..links/files/axonbus-**local.patch
> Patch applied.
> Applying patch..links/files/axon-**display.patch
> Patch applied.
> Applying patch..links/files/axon-**keyboard.patch
> Patch applied.
> Applying patch..links/files/axon-hwmon.**patch
> Patch applied.
>
>  # the series is now clean.
>
> I then cleaned linux-yocto and restarted, it configures and builds
> after that (and eventually gets a build error, but that looks like an
> issue with the code on the 3.2 kernel .. and is for someone else to
> fix :)
>
> As for the CONFIG_PM, it's a Kconfig "feature" that is causing you
> pain. You can't directly "access" (enable/disable) and option that
> doesn't have help text, since the help text makes it "user visible"
> and hence a configuration knob. (Don't blame me, I don't condone this,
> but it is what it is). In this case you need to blast one of the
> dependencies
> to disable it. I turned off CONFIG_SUSPEND to get CONFIG_PM out of
> my final.config.
>
> I inlined my three changes here, the last one is the patch refresh
> for drivers/Kconfig, so it's not all that useful :)
>
> Cheers,
>
> Bruce
>
> Cool!

Thanks alot
as for CONFIG_PM: I guessed soemthing like that was the case.
Will peek into the rest of your email and test things tomorrow morning
(11.30 pm here)

Best regards, Frans

>
> -------------------------
>
>
> > diff -u syrcxx.cfg.orig syrcxx.cfg
> --- syrcxx.cfg.orig     2012-07-30 16:02:20.374008667 -0400
> +++ syrcxx.cfg  2012-07-30 16:23:04.364007467 -0400
> @@ -304,7 +304,7 @@
>  CONFIG_FORCE_MAX_ZONEORDER=11
>  # CONFIG_CMDLINE_BOOL is not set
>  CONFIG_EXTRA_TARGETS=""
> -CONFIG_PM=n
> +# CONFIG_SUSPEND is not set
>  # CONFIG_SECCOMP is not set
>  CONFIG_ISA_DMA_API=y
>  #
> yow-bashfiel-d2 [/home/bruc...inux/files]> diff -u syrcxx.scc.orig
> syrcxx.scc
> --- syrcxx.scc.orig     2012-07-30 15:16:22.374007496 -0400
> +++ syrcxx.scc  2012-07-30 15:17:01.284008083 -0400
> @@ -2,7 +2,7 @@
>
>  include cfg/usb-mass-storage.scc
>  include cfg/vfat.scc
> -include cfg/dmaengine/dmaengine.scc
> +include cfg/dmaengine.scc
>
>  kconf hardware user-config.cfg
>  include user-patches.scc
> yow-bashfiel-d2 [/home/bruc...inux/files]> diff -u max7311.patch.orig
> max7311.patch
> --- max7311.patch.orig  2012-07-30 15:18:55.963930827 -0400
> +++ max7311.patch       2012-07-30 15:33:02.192760856 -0400
> @@ -1,7 +1,7 @@
>  Index: linux-2.6.38/drivers/gpio/**max7311.c
>  ==============================**==============================**=======
>  diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> -index 3143ac7..ed49ee2 100644
> +index 4e04157..6703509 100644
>  --- a/drivers/gpio/Kconfig
>  +++ b/drivers/gpio/Kconfig
>  @@ -23,7 +23,6 @@ config ARCH_REQUIRE_GPIOLIB
> @@ -12,7 +12,7 @@
>   menuconfig GPIOLIB
>         bool "GPIO Support"
>         depends on ARCH_WANT_OPTIONAL_GPIOLIB || ARCH_REQUIRE_GPIOLIB
> -@@ -137,6 +136,13 @@ config GPIO_MAX7300
> +@@ -200,6 +199,13 @@ config GPIO_MAX7300
>         help
>           GPIO driver for Maxim MAX7301 I2C-based GPIO expander.
>
> @@ -27,17 +27,18 @@
>         tristate "MAX7319, MAX7320-7327 I2C Port Expanders"
>         depends on I2C
>  diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> -index bdf3dde..5e22ef0 100644
> +index 4e018d6..d9abdc2 100644
>  --- a/drivers/gpio/Makefile
>  +++ b/drivers/gpio/Makefile
> -@@ -41,3 +41,4 @@ obj-$(CONFIG_GPIO_RDC321X)   += rdc321x-gpio.o
> - obj-$(CONFIG_GPIO_JANZ_TTL)   += janz-ttl.o
> - obj-$(CONFIG_GPIO_SX150X)     += sx150x.o
> - obj-$(CONFIG_GPIO_VX855)      += vx855_gpio.o
> +@@ -62,3 +62,5 @@ obj-$(CONFIG_GPIO_WM831X)    += gpio-wm831x.o
> + obj-$(CONFIG_GPIO_WM8350)     += gpio-wm8350.o
> + obj-$(CONFIG_GPIO_WM8994)     += gpio-wm8994.o
> + obj-$(CONFIG_GPIO_XILINX)     += gpio-xilinx.o
>  +obj-$(CONFIG_GPIO_MAX7311)      += max7311.o
> ++
>  diff --git a/drivers/gpio/max7311.c b/drivers/gpio/max7311.c
>  new file mode 100644
> -index 0000000..c196fac
> +index 0000000..7135a24
>  --- /dev/null
>  +++ b/drivers/gpio/max7311.c
>  @@ -0,0 +1,594 @@
>
>
> ------------------------
>
>
>
>
>
>
>> BTW our board is a powerpc 8313e based board (modeled after mpc8313e-rds)
>>
>> One other thing I noticed; do_install seems to take quite some time; not
>> sure why this is (haven't investigated).
>>
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

--f46d042de469258ae404c612cc6d
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
Note that apart from a PR bump the files<br>
meta-syrcxx/recipes-kernel/<u></u>linux/linux-yocto_3.2.bbappend<br>
meta-syrcxx/recipes-kernel/<u></u>linux/linux-yocto_3.0.bbappend<br>
are identical (and I am just using files; so the same patches apply.<br>
</div></div></blockquote>
<br>
You&#39;ve got a couple of minor problems in the files. dmaengine is<br>
incorrectly referenced for 3.2. I&#39;ve attached a fix for that. The<br>
other items are just warnings..<br>
<br>
I have fixes to make that bad configuration reference a hard error,<br>
with a message during do_patch that high lights the problem .. for<br>
master. But in denzil, what you got is what I&#39;d expect.<br>
<br>
Your max7311.patch also needs to be refreshed for 3.2, since it won&#39;t<b=
r>
apply as is.<br>
<br>
After the failure, I refreshed it as follows:<br>
<br>
<br>
=A0&gt; bitbake -c devshell linux-yocto<br>
<br>
# in dev-shell:<br>
<br>
=A0# already fixed in master, but denzil requires this:<br>
=A0&gt; export GUILT_BASE=3Dmeta<br>
=A0&gt; guilt next<br>
links/files/max7311.patch<br>
=A0&gt; guilt push -f<br>
=A0# resolve conflict in drivers/gpio/Makefile<br>
=A0&gt; git add drivers/gpio/Makefile drivers/gpio/max7311.c include/linux/=
max7311_gpio.h<br>
=A0&gt; git clean -f<br>
Removing drivers/gpio/Makefile.rej<br>
=A0&gt; git tag standard/default/syrcxx_top<br>
=A0&gt; guilt refresh<br>
Patch links/files/max7311.patch refreshed<br>
<br>
=A0&gt; cp meta/patches/standard/default/<u></u>syrcxx/links/files/max7311.=
<u></u>patch $your_layer_location/meta-<u></u>syrcxx/recipes-kernel/linux/<=
u></u>files<br>
<br>
=A0&gt; guilt push -a<br>
Applying patch..links/files/axonbus-<u></u>remote.patch<br>
Patch applied.<br>
Applying patch..links/files/axonbus-<u></u>local.patch<br>
Patch applied.<br>
Applying patch..links/files/axon-<u></u>display.patch<br>
Patch applied.<br>
Applying patch..links/files/axon-<u></u>keyboard.patch<br>
Patch applied.<br>
Applying patch..links/files/axon-hwmon.<u></u>patch<br>
Patch applied.<br>
<br>
=A0# the series is now clean.<br>
<br>
I then cleaned linux-yocto and restarted, it configures and builds<br>
after that (and eventually gets a build error, but that looks like an<br>
issue with the code on the 3.2 kernel .. and is for someone else to<br>
fix :)<br>
<br>
As for the CONFIG_PM, it&#39;s a Kconfig &quot;feature&quot; that is causin=
g you<br>
pain. You can&#39;t directly &quot;access&quot; (enable/disable) and option=
 that<br>
doesn&#39;t have help text, since the help text makes it &quot;user visible=
&quot;<br>
and hence a configuration knob. (Don&#39;t blame me, I don&#39;t condone th=
is,<br>
but it is what it is). In this case you need to blast one of the dependenci=
es<br>
to disable it. I turned off CONFIG_SUSPEND to get CONFIG_PM out of<br>
my final.config.<br>
<br>
I inlined my three changes here, the last one is the patch refresh<br>
for drivers/Kconfig, so it&#39;s not all that useful :)<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br></blockquote><div>Cool!<br><br>Thanks alot<br>as for CONFIG_PM: I guess=
ed soemthing like that was the case.<br>Will peek into the rest of your ema=
il and test things tomorrow morning (11.30 pm here)<br><br>Best regards, Fr=
ans <br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
<br>
-------------------------<br>
<br>
<br>
&gt; diff -u syrcxx.cfg.orig syrcxx.cfg<br>
--- syrcxx.cfg.orig =A0 =A0 2012-07-30 16:02:20.374008667 -0400<br>
+++ syrcxx.cfg =A02012-07-30 16:23:04.364007467 -0400<br>
@@ -304,7 +304,7 @@<br>
=A0CONFIG_FORCE_MAX_ZONEORDER=3D11<br>
=A0# CONFIG_CMDLINE_BOOL is not set<br>
=A0CONFIG_EXTRA_TARGETS=3D&quot;&quot;<br>
-CONFIG_PM=3Dn<br>
+# CONFIG_SUSPEND is not set<br>
=A0# CONFIG_SECCOMP is not set<br>
=A0CONFIG_ISA_DMA_API=3Dy<br>
=A0#<br>
yow-bashfiel-d2 [/home/bruc...inux/files]&gt; diff -u syrcxx.scc.orig syrcx=
x.scc<br>
--- syrcxx.scc.orig =A0 =A0 2012-07-30 15:16:22.374007496 -0400<br>
+++ syrcxx.scc =A02012-07-30 15:17:01.284008083 -0400<br>
@@ -2,7 +2,7 @@<br>
<br>
=A0include cfg/usb-mass-storage.scc<br>
=A0include cfg/vfat.scc<br>
-include cfg/dmaengine/dmaengine.scc<br>
+include cfg/dmaengine.scc<br>
<br>
=A0kconf hardware user-config.cfg<br>
=A0include user-patches.scc<br>
yow-bashfiel-d2 [/home/bruc...inux/files]&gt; diff -u max7311.patch.orig ma=
x7311.patch<br>
--- max7311.patch.orig =A02012-07-30 15:18:55.963930827 -0400<br>
+++ max7311.patch =A0 =A0 =A0 2012-07-30 15:33:02.192760856 -0400<br>
@@ -1,7 +1,7 @@<br>
=A0Index: linux-2.6.38/drivers/gpio/<u></u>max7311.c<br>
=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<u></u>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u>=3D=3D=3D=3D=3D=3D=3D<br>
=A0diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig<br>
-index 3143ac7..ed49ee2 100644<br>
+index 4e04157..6703509 100644<br>
=A0--- a/drivers/gpio/Kconfig<br>
=A0+++ b/drivers/gpio/Kconfig<br>
=A0@@ -23,7 +23,6 @@ config ARCH_REQUIRE_GPIOLIB<br>
@@ -12,7 +12,7 @@<br>
=A0 menuconfig GPIOLIB<br>
=A0 =A0 =A0 =A0 bool &quot;GPIO Support&quot;<br>
=A0 =A0 =A0 =A0 depends on ARCH_WANT_OPTIONAL_GPIOLIB || ARCH_REQUIRE_GPIOL=
IB<br>
-@@ -137,6 +136,13 @@ config GPIO_MAX7300<br>
+@@ -200,6 +199,13 @@ config GPIO_MAX7300<br>
=A0 =A0 =A0 =A0 help<br>
=A0 =A0 =A0 =A0 =A0 GPIO driver for Maxim MAX7301 I2C-based GPIO expander.<=
br>
<br>
@@ -27,17 +27,18 @@<br>
=A0 =A0 =A0 =A0 tristate &quot;MAX7319, MAX7320-7327 I2C Port Expanders&quo=
t;<br>
=A0 =A0 =A0 =A0 depends on I2C<br>
=A0diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile<br>
-index bdf3dde..5e22ef0 100644<br>
+index 4e018d6..d9abdc2 100644<br>
=A0--- a/drivers/gpio/Makefile<br>
=A0+++ b/drivers/gpio/Makefile<br>
-@@ -41,3 +41,4 @@ obj-$(CONFIG_GPIO_RDC321X) =A0 +=3D rdc321x-gpio.o<br>
- obj-$(CONFIG_GPIO_JANZ_TTL) =A0 +=3D janz-ttl.o<br>
- obj-$(CONFIG_GPIO_SX150X) =A0 =A0 +=3D sx150x.o<br>
- obj-$(CONFIG_GPIO_VX855) =A0 =A0 =A0+=3D vx855_gpio.o<br>
+@@ -62,3 +62,5 @@ obj-$(CONFIG_GPIO_WM831X) =A0 =A0+=3D gpio-wm831x.o<br>
+ obj-$(CONFIG_GPIO_WM8350) =A0 =A0 +=3D gpio-wm8350.o<br>
+ obj-$(CONFIG_GPIO_WM8994) =A0 =A0 +=3D gpio-wm8994.o<br>
+ obj-$(CONFIG_GPIO_XILINX) =A0 =A0 +=3D gpio-xilinx.o<br>
=A0+obj-$(CONFIG_GPIO_MAX7311) =A0 =A0 =A0+=3D max7311.o<br>
++<br>
=A0diff --git a/drivers/gpio/max7311.c b/drivers/gpio/max7311.c<br>
=A0new file mode 100644<br>
-index 0000000..c196fac<br>
+index 0000000..7135a24<br>
=A0--- /dev/null<br>
=A0+++ b/drivers/gpio/max7311.c<br>
=A0@@ -0,0 +1,594 @@<br>
<br>
<br>
------------------------<br>
<br>
<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
<br>
BTW our board is a powerpc 8313e based board (modeled after mpc8313e-rds)<b=
r>
<br>
One other thing I noticed; do_install seems to take quite some time; not<br=
>
sure why this is (haven&#39;t investigated).<br>
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

--f46d042de469258ae404c612cc6d--
