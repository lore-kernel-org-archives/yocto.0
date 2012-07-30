Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90096E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 13:33:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6UKXNBl000062
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 30 Jul 2012 13:33:23 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Mon, 30 Jul 2012 13:33:22 -0700
Message-ID: <5016EF90.4080003@windriver.com>
Date: Mon, 30 Jul 2012 16:33:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTZwzZUyWmmvDaFqaqt7do=_WfXOzA2ytAcs5CD1UmS0kA@mail.gmail.com>
	<CADkTA4Pm=bFeA9FpBeZ7usqAo+c1cS+mqaM7b=1Zcm6RnErRhQ@mail.gmail.com>
	<CACW_hTZOt=e8sWjarwip27qLJ8rY-c7cRRKttUUCtvFsmu5fag@mail.gmail.com>
In-Reply-To: <CACW_hTZOt=e8sWjarwip27qLJ8rY-c7cRRKttUUCtvFsmu5fag@mail.gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 20:33:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-30 10:20 AM, Frans Meulenbroeks wrote:
> Hi Bruce,
>
> Thanks for your support.
> See below
>
> 2012/7/30 Bruce Ashfield <bruce.ashfield@gmail.com
> <mailto:bruce.ashfield@gmail.com>>
>
>     On Mon, Jul 30, 2012 at 7:33 AM, Frans Meulenbroeks
>     <fransmeulenbroeks@gmail.com <mailto:fransmeulenbroeks@gmail.com>>
>     wrote:
>      > Dear all,
>      >
>      > I finally managed to find time to pick up porting my project to
>     denzil and
>      > did encounter two issues that I wanted to report back:
>      >
>      > First is that I could not find what the preferred way was to
>     disable a
>      > kernel option in my bsp.
>      > (the option concerned is CONFIG_PM).
>      > Of course I can sed it out in do_configure but I'd hoped it could
>     be simpler
>      > (I have tried:
>      > CONFIG_PM=n
>      > in my config snippet)
>
>     Putting:
>
>     # CONFIG_PM is not set
>
>     in your configuration fragment will turn off an option, the BSP
>     guide has a
>     "# CONFIG_SMP is not set" as an example for this.
>
>
> i thought it would and I have had this in my config too, but still it
> get switched on. Guess there is something else in my config that sets this.
> Will dive into this.
>
>
>      >
>      > Secondly a patch of mine does not seem to apply properly the
>     first time, but
>      > it does apply a second time.
>      > This suggests a race between do_kernel_checkout and do_patch
>
>     There shouldn't be any race .. if this doesn't work:
>
>     addtask kernel_checkout before do_patch after do_unpack
>
>     Then there are some serious problems with bitbake's task scheduling.
>
>     If you didn't do a clean between the two runs, the second is
>     attempting to continue
>     the patching and you still aren't getting what you want.
>
>
> I did not do a clean inbetween. I figured patch would reattempt to patch
> and, since the file is there it would continue.
>
> The addtask line is there in one of the bitbake files.
>
> The odd thing is that the exact same thing builds fine under 3.0.
> Actually I was trying to move from 3.0 to 3.2 while stumbling on this.
>
>
>
>     Without seeing what you've ported, or a work in progress I can't say
>     exactly
>     what is wrong, but your meta data is somehow wrong or completely
>     missing.
>     Have you set any meta or BSP SRCREVs explicitly ?
>
>
> I have put my work-in-progress in:
>
> https://www.dropbox.com/s/h58h6pq5b0f4u2s/patchproblem.tar.gz vi
>
> you might want to edit conf/layer.conf as it has hardcoded paths.
> If I go to meta-syrcxx/conf/machine/syrcxx.conf and set the preferred
> kernel version to 3.0 things build fine.
> Then I did set to 3.2 and it fails.
> Note that apart from a PR bump the files
> meta-syrcxx/recipes-kernel/linux/linux-yocto_3.2.bbappend
> meta-syrcxx/recipes-kernel/linux/linux-yocto_3.0.bbappend
> are identical (and I am just using files; so the same patches apply.

You've got a couple of minor problems in the files. dmaengine is
incorrectly referenced for 3.2. I've attached a fix for that. The
other items are just warnings..

I have fixes to make that bad configuration reference a hard error,
with a message during do_patch that high lights the problem .. for
master. But in denzil, what you got is what I'd expect.

Your max7311.patch also needs to be refreshed for 3.2, since it won't
apply as is.

After the failure, I refreshed it as follows:


  > bitbake -c devshell linux-yocto

# in dev-shell:

  # already fixed in master, but denzil requires this:
  > export GUILT_BASE=meta
  > guilt next
links/files/max7311.patch
  > guilt push -f
  # resolve conflict in drivers/gpio/Makefile
  > git add drivers/gpio/Makefile drivers/gpio/max7311.c 
include/linux/max7311_gpio.h
  > git clean -f
Removing drivers/gpio/Makefile.rej
  > git tag standard/default/syrcxx_top
  > guilt refresh
Patch links/files/max7311.patch refreshed

  > cp meta/patches/standard/default/syrcxx/links/files/max7311.patch 
$your_layer_location/meta-syrcxx/recipes-kernel/linux/files

  > guilt push -a
Applying patch..links/files/axonbus-remote.patch
Patch applied.
Applying patch..links/files/axonbus-local.patch
Patch applied.
Applying patch..links/files/axon-display.patch
Patch applied.
Applying patch..links/files/axon-keyboard.patch
Patch applied.
Applying patch..links/files/axon-hwmon.patch
Patch applied.

  # the series is now clean.

I then cleaned linux-yocto and restarted, it configures and builds
after that (and eventually gets a build error, but that looks like an
issue with the code on the 3.2 kernel .. and is for someone else to
fix :)

As for the CONFIG_PM, it's a Kconfig "feature" that is causing you
pain. You can't directly "access" (enable/disable) and option that
doesn't have help text, since the help text makes it "user visible"
and hence a configuration knob. (Don't blame me, I don't condone this,
but it is what it is). In this case you need to blast one of the 
dependencies
to disable it. I turned off CONFIG_SUSPEND to get CONFIG_PM out of
my final.config.

I inlined my three changes here, the last one is the patch refresh
for drivers/Kconfig, so it's not all that useful :)

Cheers,

Bruce


-------------------------


 > diff -u syrcxx.cfg.orig syrcxx.cfg
--- syrcxx.cfg.orig     2012-07-30 16:02:20.374008667 -0400
+++ syrcxx.cfg  2012-07-30 16:23:04.364007467 -0400
@@ -304,7 +304,7 @@
  CONFIG_FORCE_MAX_ZONEORDER=11
  # CONFIG_CMDLINE_BOOL is not set
  CONFIG_EXTRA_TARGETS=""
-CONFIG_PM=n
+# CONFIG_SUSPEND is not set
  # CONFIG_SECCOMP is not set
  CONFIG_ISA_DMA_API=y
  #
yow-bashfiel-d2 [/home/bruc...inux/files]> diff -u syrcxx.scc.orig 
syrcxx.scc
--- syrcxx.scc.orig     2012-07-30 15:16:22.374007496 -0400
+++ syrcxx.scc  2012-07-30 15:17:01.284008083 -0400
@@ -2,7 +2,7 @@

  include cfg/usb-mass-storage.scc
  include cfg/vfat.scc
-include cfg/dmaengine/dmaengine.scc
+include cfg/dmaengine.scc

  kconf hardware user-config.cfg
  include user-patches.scc
yow-bashfiel-d2 [/home/bruc...inux/files]> diff -u max7311.patch.orig 
max7311.patch
--- max7311.patch.orig  2012-07-30 15:18:55.963930827 -0400
+++ max7311.patch       2012-07-30 15:33:02.192760856 -0400
@@ -1,7 +1,7 @@
  Index: linux-2.6.38/drivers/gpio/max7311.c
  ===================================================================
  diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
-index 3143ac7..ed49ee2 100644
+index 4e04157..6703509 100644
  --- a/drivers/gpio/Kconfig
  +++ b/drivers/gpio/Kconfig
  @@ -23,7 +23,6 @@ config ARCH_REQUIRE_GPIOLIB
@@ -12,7 +12,7 @@
   menuconfig GPIOLIB
         bool "GPIO Support"
         depends on ARCH_WANT_OPTIONAL_GPIOLIB || ARCH_REQUIRE_GPIOLIB
-@@ -137,6 +136,13 @@ config GPIO_MAX7300
+@@ -200,6 +199,13 @@ config GPIO_MAX7300
         help
           GPIO driver for Maxim MAX7301 I2C-based GPIO expander.

@@ -27,17 +27,18 @@
         tristate "MAX7319, MAX7320-7327 I2C Port Expanders"
         depends on I2C
  diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
-index bdf3dde..5e22ef0 100644
+index 4e018d6..d9abdc2 100644
  --- a/drivers/gpio/Makefile
  +++ b/drivers/gpio/Makefile
-@@ -41,3 +41,4 @@ obj-$(CONFIG_GPIO_RDC321X)   += rdc321x-gpio.o
- obj-$(CONFIG_GPIO_JANZ_TTL)   += janz-ttl.o
- obj-$(CONFIG_GPIO_SX150X)     += sx150x.o
- obj-$(CONFIG_GPIO_VX855)      += vx855_gpio.o
+@@ -62,3 +62,5 @@ obj-$(CONFIG_GPIO_WM831X)    += gpio-wm831x.o
+ obj-$(CONFIG_GPIO_WM8350)     += gpio-wm8350.o
+ obj-$(CONFIG_GPIO_WM8994)     += gpio-wm8994.o
+ obj-$(CONFIG_GPIO_XILINX)     += gpio-xilinx.o
  +obj-$(CONFIG_GPIO_MAX7311)      += max7311.o
++
  diff --git a/drivers/gpio/max7311.c b/drivers/gpio/max7311.c
  new file mode 100644
-index 0000000..c196fac
+index 0000000..7135a24
  --- /dev/null
  +++ b/drivers/gpio/max7311.c
  @@ -0,0 +1,594 @@


------------------------





>
> BTW our board is a powerpc 8313e based board (modeled after mpc8313e-rds)
>
> One other thing I noticed; do_install seems to take quite some time; not
> sure why this is (haven't investigated).
>
> Best regards, Frans
>
>
>     Cheers,
>
>     Bruce
>
>      >
>      > Below is a log that illustrates this and demonstrates that things
>     are ok the
>      > 2nd time.
>      > (btw I am also a little bit concerned on the command not found
>     messages).
>      > And of course any sugguestion for a fix is greatly appreciated.
>      >
>      > Best regards, Frans
>      >
>      > frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
>      > Parsing recipes: 100%
>      >
>     |######################################################################################################################|
>      > Time: 00:00:30
>      > Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105
>     targets, 35
>      > skipped, 0 masked, 0 errors.
>      >
>      > OE Build Configuration:
>      > BB_VERSION = "1.15.1"
>      > TARGET_ARCH = "powerpc"
>      > TARGET_OS = "linux-uclibc"
>      > MACHINE = "syrcxx"
>      > DISTRO = "poky"
>      > DISTRO_VERSION = "1.2"
>      > TUNE_FEATURES = "m32 fpu-hard ppce300c3"
>      > TARGET_FPU = ""
>      > meta
>      > meta-yocto
>      > meta-syrcxx = "<unknown>:<unknown>"
>      >
>      > NOTE: Resolving any missing task queue dependencies
>      > NOTE: Preparing runqueue
>      > NOTE: Executing SetScene Tasks
>      > NOTE: Executing RunQueue Tasks
>      > NOTE: Running task 162 of 664 (ID: 6,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_fetch)
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_fetch: Started
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_fetch: Succeeded
>      > NOTE: Running task 644 of 664 (ID: 2,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_unpack)
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_unpack: Started
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_unpack: Succeeded
>      > Nmeta-syrcxx/recipes-kernel/linux/linux-yocto_3.2.bbappend
>     meta-syrcxx/recipes-kernel/linux/linux-yocto_3.0.bbappendOTE:
>     Running task 645 of 664 (ID: 1,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_kernel_checkout)
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_kernel_checkout: Started
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_kernel_checkout: Succeeded
>      > NOTE: Running task 646 of 664 (ID: 0,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_validate_branches)
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_validate_branches: Started
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_validate_branches: Succeeded
>      > NOTE: Running task 647 of 664 (ID: 3,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_patch)
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_patch: Started
>      > ERROR: Function failed: do_patch (see
>      >
>     /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
>      > for further information)
>      > ERROR: Logfile of failure stored in:
>      >
>     /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
>      > Log data follows:
>      > | Branch meta-temp set up to track remote branch meta from origin.
>      > | Deleted branch meta-temp (was 3499d64).
>      > | warning: could not find (or was already included):
>      > cfg/dmaengine/dmaengine.scc
>      > | warning: could not find (or was already included):
>      > cfg/usb-mass-storage.scc
>      > | warning: could not find (or was already included): cfg/vfat.scc
>      > | warning: could not find (or was already included):
>      > cfg/dmaengine/dmaengine.scc
>      > | warning: could not find (or was already included): user-patches.scc
>      > | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
>      > dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
>      > | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
>      > dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
>      > | [INFO] validating against known patches
>     (syrcxx-fsl-mpc8313e-rdb-meta)
>      > Branch standard/default/syrcxx set up to track remote branch
>      > standard/default/base from origin.
>      > [##################################ERROR: Function failed:
>     do_patch (see
>      >
>     /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
>      > for further information)
>      > error: patch failed: drivers/gpio/Makefile:41 ] (-)(76 %)
>      > | error: drivers/gpio/Makefile: patch does not apply
>      > | To force apply this patch, use 'guilt push -f'
>      > | [ERROR] unable to complete push
>      > | pending patches are:
>      > | Patches directory doesn't exist, try guilt-init
>      > | ERROR. could not update git tree
>      > | ERROR. Could not modify standard/default/fsl-mpc8313e-rdb/syrcxx
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_patch: Failed
>      > ERROR: Task 3
>      >
>     (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_patch) failed with exit code '1'
>      > NOTE: Tasks Summary: Attempted 647 tasks of which 642 didn't need
>     to be
>      > rerun and 1 failed.
>      >
>      > Summary: 1 task failed:
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_patch
>      > Summary: There was 1 ERROR message shown, returning a non-zero
>     exit code.
>      > frans@frans-desktop:~/poky-denzil-7.0-build$ ls -l
>      >
>     /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile
>      > -rw-r--r-- 1 frans frans 2663 2012-07-30 12:27
>      >
>     /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile
>      > frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
>      > Loading cache: 100%
>      >
>     |########################################################################################################################|
>      > ETA: 00:00:00
>      > Loaded 1106 entries from dependency cache.
>      >
>      > OE Build Configuration:
>      > BB_VERSION = "1.15.1"
>      > TARGET_ARCH = "powerpc"
>      > TARGET_OS = "linux-uclibc"
>      > MACHINE = "syrcxx"
>      > DISTRO = "poky"
>      > DISTRO_VERSION = "1.2"
>      > TUNE_FEATURES = "m32 fpu-hard ppce300c3"
>      > TARGET_FPU = ""
>      > meta
>      > meta-yocto
>      > meta-syrcxx = "<unknown>:<unknown>"
>      >
>      > NOTE: Resolving any missing task queue dependencies
>      > NOTE: Preparing runqueue
>      > NOTE: Executing SetScene Tasks
>      > NOTE: Executing RunQueue Tasks
>      > NOTE: Running task 241 of 664 (ID: 3,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_patch)
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_patch: Started
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_patch: Succeeded
>      > NOTE: Running task 648 of 664 (ID: 8,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_kernel_configme)
>      > NOTE: Running task 649 of 664 (ID: 20,
>      >
>     /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
>     <http://linux-yocto_3.2.bb>,
>      > do_populate_lic)
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_populate_lic: Started
>      > NOTE: package
>      >
>     linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
>      > task do_kernel_configme: Started
>      >
>      >
>      > _______________________________________________
>      > yocto mailing list
>      > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>      > https://lists.yoctoproject.org/listinfo/yocto
>      >
>
>
>
>     --
>     "Thou shalt not follow the NULL pointer, for chaos and madness await
>     thee at its end"
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


