Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B94BE01439
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 05:54:23 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so3164634qcs.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 05:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=A/f1LNizg7kIqPd12RMA6HVZEsMamIOcDduVavtq1mk=;
	b=PDex8iuMR1bg0c5RzyKxHYYKnlZJXRuqtl/q0AG7gARhRoWZbKlwMRgWIjUPbxXdbu
	TsD1jFM02sMPK6GppwrviGrUdWqTN4hPuZ5IPkYAqA8M0XDu6URmAPJr0zaSbtCMkRoW
	kGp+4o6hlM4sILnVDSQFS99aqGRMWHFZaCT3Ixe9/5+QKrQvMDv4QrL6SNwiHBbdDwJ3
	MzvVy/57mXDBPb79dOnBtnu50sUXBaOft766wJBncz+G0iSpiCp/+s9OkbTpJ4H7sHYR
	hsY71xCO97gJ/EFlDQis2I8leqtuNtGDpehTMgSDYZuSUHkLq3ez1gtz3X9LmilfTe6J
	CmJQ==
MIME-Version: 1.0
Received: by 10.224.106.138 with SMTP id x10mr23568293qao.1.1343652863051;
	Mon, 30 Jul 2012 05:54:23 -0700 (PDT)
Received: by 10.229.247.198 with HTTP; Mon, 30 Jul 2012 05:54:23 -0700 (PDT)
In-Reply-To: <CACW_hTZwzZUyWmmvDaFqaqt7do=_WfXOzA2ytAcs5CD1UmS0kA@mail.gmail.com>
References: <CACW_hTZwzZUyWmmvDaFqaqt7do=_WfXOzA2ytAcs5CD1UmS0kA@mail.gmail.com>
Date: Mon, 30 Jul 2012 08:54:23 -0400
Message-ID: <CADkTA4Pm=bFeA9FpBeZ7usqAo+c1cS+mqaM7b=1Zcm6RnErRhQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 12:54:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 30, 2012 at 7:33 AM, Frans Meulenbroeks
<fransmeulenbroeks@gmail.com> wrote:
> Dear all,
>
> I finally managed to find time to pick up porting my project to denzil and
> did encounter two issues that I wanted to report back:
>
> First is that I could not find what the preferred way was to disable a
> kernel option in my bsp.
> (the option concerned is CONFIG_PM).
> Of course I can sed it out in do_configure but I'd hoped it could be simpler
> (I have tried:
> CONFIG_PM=n
> in my config snippet)

Putting:

# CONFIG_PM is not set

in your configuration fragment will turn off an option, the BSP guide has a
"# CONFIG_SMP is not set" as an example for this.

>
> Secondly a patch of mine does not seem to apply properly the first time, but
> it does apply a second time.
> This suggests a race between do_kernel_checkout and do_patch

There shouldn't be any race ..  if this doesn't work:

   addtask kernel_checkout before do_patch after do_unpack

Then there are some serious problems with bitbake's task scheduling.

If you didn't do a clean between the two runs, the second is
attempting to continue
the patching and you still aren't getting what you want.

Without seeing what you've ported, or a work in progress I can't say exactly
what is wrong, but your meta data is somehow wrong or completely missing.
Have you set any meta or BSP SRCREVs explicitly ?

Cheers,

Bruce

>
> Below is a log that illustrates this and demonstrates that things are ok the
> 2nd time.
> (btw I am also a little bit concerned on the command not found messages).
> And of course any sugguestion for a fix is greatly appreciated.
>
> Best regards, Frans
>
> frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
> Parsing recipes: 100%
> |######################################################################################################################|
> Time: 00:00:30
> Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105 targets, 35
> skipped, 0 masked, 0 errors.
>
> OE Build Configuration:
> BB_VERSION        = "1.15.1"
> TARGET_ARCH       = "powerpc"
> TARGET_OS         = "linux-uclibc"
> MACHINE           = "syrcxx"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2"
> TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-syrcxx       = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 162 of 664 (ID: 6,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_fetch)
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_fetch: Started
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_fetch: Succeeded
> NOTE: Running task 644 of 664 (ID: 2,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_unpack)
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_unpack: Started
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_unpack: Succeeded
> NOTE: Running task 645 of 664 (ID: 1,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_kernel_checkout)
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_kernel_checkout: Started
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_kernel_checkout: Succeeded
> NOTE: Running task 646 of 664 (ID: 0,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_validate_branches)
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_validate_branches: Started
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_validate_branches: Succeeded
> NOTE: Running task 647 of 664 (ID: 3,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_patch)
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_patch: Started
> ERROR: Function failed: do_patch (see
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
> for further information)
> ERROR: Logfile of failure stored in:
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
> Log data follows:
> | Branch meta-temp set up to track remote branch meta from origin.
> | Deleted branch meta-temp (was 3499d64).
> | warning: could not find (or was already included):
> cfg/dmaengine/dmaengine.scc
> | warning: could not find (or was already included):
> cfg/usb-mass-storage.scc
> | warning: could not find (or was already included): cfg/vfat.scc
> | warning: could not find (or was already included):
> cfg/dmaengine/dmaengine.scc
> | warning: could not find (or was already included): user-patches.scc
> | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
> dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
> | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
> dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
> | [INFO] validating against known patches  (syrcxx-fsl-mpc8313e-rdb-meta)
> Branch standard/default/syrcxx set up to track remote branch
> standard/default/base from origin.
>   [##################################ERROR: Function failed: do_patch (see
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
> for further information)
> error: patch failed: drivers/gpio/Makefile:41        ] (-)(76 %)
> | error: drivers/gpio/Makefile: patch does not apply
> | To force apply this patch, use 'guilt push -f'
> | [ERROR] unable to complete push
> | pending patches are:
> | Patches directory doesn't exist, try guilt-init
> | ERROR. could not update git tree
> | ERROR. Could not modify standard/default/fsl-mpc8313e-rdb/syrcxx
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_patch: Failed
> ERROR: Task 3
> (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_patch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 647 tasks of which 642 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_patch
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> frans@frans-desktop:~/poky-denzil-7.0-build$ ls -l
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile
> -rw-r--r-- 1 frans frans 2663 2012-07-30 12:27
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile
> frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
> Loading cache: 100%
> |########################################################################################################################|
> ETA:  00:00:00
> Loaded 1106 entries from dependency cache.
>
> OE Build Configuration:
> BB_VERSION        = "1.15.1"
> TARGET_ARCH       = "powerpc"
> TARGET_OS         = "linux-uclibc"
> MACHINE           = "syrcxx"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2"
> TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-syrcxx       = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 241 of 664 (ID: 3,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_patch)
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_patch: Started
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_patch: Succeeded
> NOTE: Running task 648 of 664 (ID: 8,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_kernel_configme)
> NOTE: Running task 649 of 664 (ID: 20,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_populate_lic)
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_populate_lic: Started
> NOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> task do_kernel_configme: Started
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

