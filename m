Return-Path: <caiortp@gmail.com>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 632E1E01423
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 11:30:34 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id p10so9431956lbi.31
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 11:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=f20Ij4xnrdNn2+33lldsyuxPoqa9v18IuaafHrfJ5kQ=;
	b=hr1g9SGOwTB0W0IZN5Y0rgPibPGzcSLtpV5S8cvGFFiez0w1aQcSe7AgycnYG1akeu
	3joeFeS/NGzU7I7NFw/qYWdHqP6J/a7+c0XUmv/k64XXvgHYCEW0BbYY7P9yGE5Wz/Dz
	yB2wA2tBVYNl0ieUnVybplMfwyCG3YOPaLUuYPqlAyhSuJYHn1+HXM686YhF37LHZAiN
	qwDZIVbdIS5+sUD5U2qQZT57noAU1n4M+LqTP0SanVYz+jWa0SXJOjC22gWTTtHSBBGa
	G9Hyol44W1qczHsQi6bkm4Suo8PhpQfnlBkhbSuUSEVPijbXSRs18nMpJ/fp0UxH7Z1x
	XPrA==
MIME-Version: 1.0
X-Received: by 10.152.19.65 with SMTP id c1mr1991348lae.24.1369852233117; Wed,
	29 May 2013 11:30:33 -0700 (PDT)
Received: by 10.112.63.138 with HTTP; Wed, 29 May 2013 11:30:33 -0700 (PDT)
In-Reply-To: <1369851756.1742.8.camel@empanada>
References: <CAJqtCyZR0+LAyymBB7Nv28Cv+m9gQnaVqNYFFbxvh5qvovJXcA@mail.gmail.com>
	<51A646B8.2090509@windriver.com> <1369851756.1742.8.camel@empanada>
Date: Wed, 29 May 2013 15:30:33 -0300
Message-ID: <CAJqtCya487+ZTs7Mi+W4VEWx+bRNB5ici49Gg=7QBEcam-FTNQ@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Problem to compile kernel (enable nfsd)
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
X-List-Received-Date: Wed, 29 May 2013 18:30:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

Bruce I tested the patch but doesn't work

meta-yocto/conf/distro/poky-
lsb.conf

require conf/distro/poky.conf

DISTRO = "poky-lsb"
DISTROOVERRIDES = "poky:linuxstdbase"

DISTRO_FEATURES_append = " pam largefile opengl"
PREFERRED_PROVIDER_virtual/libx11 = "libx11"

# Ensure the kernel nfs server is enabled
KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"

After a bitbake core-image-minimal
I have the same error.

I will follow the Tom's suggestion and back the poky version.

Thank you very much!

2013/5/29 Tom Zanussi <tom.zanussi@intel.com>:
> On Wed, 2013-05-29 at 14:19 -0400, Bruce Ashfield wrote:
>> On 13-05-29 02:15 PM, Caio wrote:
>> > Hello,
>> >
>> > I'm following the ELC2013 hands-on
>> > (https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf)
>> > but with poky 9.0.
>> >
>> > Git Branch (b15bdd842092f2335784c20b8e1b3a0ddcf7996b)
>> >
>> > In the lab3 I'm trying to compile a kernel from master git tree.
>> >
>> >
>> > But I'm having these trouble to enable NFSD.
>> > -WARNING: addon feature "features/nfsd/nfsd-enable" was not found
>> >
>>
>> There's a bug in master at the moment that is breaking linux-yocto-custom.
>>
>
> Also apparently in the dylan point release i.e post-9.0.0.
>
> Tom
>
>> I'll send it out for merge shortly.
>>
>> In the meantime, take this change:
>>
>> --- a/meta-yocto/conf/distro/poky-lsb.conf
>> +++ b/meta-yocto/conf/distro/poky-lsb.conf
>> @@ -7,6 +7,6 @@ DISTRO_FEATURES_append = " pam largefile opengl"
>>   PREFERRED_PROVIDER_virtual/libx11 = "libx11"
>>
>>   # Ensure the kernel nfs server is enabled
>> -KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
>> +KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
>>
>>
>> Bruce
>>
>> >
>> > My log:
>> >
>> > Build Configuration:
>> > BB_VERSION        = "1.18.0"
>> > BUILD_SYS         = "x86_64-linux"
>> > NATIVELSBSTRING   = "Ubuntu-12.04"
>> > TARGET_SYS        = "i586-poky-linux"
>> > MACHINE           = "lab3-qemux86"
>> > DISTRO            = "poky"
>> > DISTRO_VERSION    = "1.4.1"
>> > TUNE_FEATURES     = "m32 i586"
>> > TARGET_FPU        = ""
>> > meta
>> > meta-yocto
>> > meta-yocto-bsp
>> > meta-lab3-qemux86 = "dylan:3768675706462c0cc8566ead958161e77e2247e9"
>> >
>> >
>> > NOTE: Resolving any missing task queue dependencies
>> > NOTE: Preparing runqueue
>> > NOTE: Executing SetScene Tasks
>> > NOTE: Executing RunQueue Tasks
>> > ERROR: Function failed: do_patch (see
>> > /home/caio/yocto/poky/lab3/tmp/work/lab3_qemux86-poky-linux/linux-yocto-custom/3.4.28+gitAUTOINC+c7788792a5e7b0d5d7f96d0766b4cb6112d47d75-r0/temp/log.do_patch.8248
>> > for further information)
>> > ERROR: Logfile of failure stored in:
>> > /home/caio/yocto/poky/lab3/tmp/work/lab3_qemux86-poky-linux/linux-yocto-custom/3.4.28+gitAUTOINC+c7788792a5e7b0d5d7f96d0766b4cb6112d47d75-r0/temp/log.do_patch.8248
>> > Log data follows:
>> > | DEBUG: Executing shell function do_patch
>> > | WARNING: no meta data branch found ...
>> > | Already on 'linux-3.4.y'
>> > | WARNING: addon feature "features/nfsd/nfsd-enable" was not found
>> > | ERROR: required features were not found. aborting
>> > | ERROR. Could not update linux-3.4.y
>> > | ERROR: Function failed: do_patch (see
>> > /home/caio/yocto/poky/lab3/tmp/work/lab3_qemux86-poky-linux/linux-yocto-custom/3.4.28+gitAUTOINC+c7788792a5e7b0d5d7f96d0766b4cb6112d47d75-r0/temp/log.do_patch.8248
>> > for further information)
>> > ERROR: Task 843
>> > (/home/caio/yocto/poky/meta-lab3-qemux86/recipes-kernel/linux/linux-yocto-custom.bb,
>> > do_patch) failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 1618 tasks of which 1613 didn't need to
>> > be rerun and 1 failed.
>> > No currently running tasks (1618 of 1647)
>> >
>> > Summary: 1 task failed:
>> >    /home/caio/yocto/poky/meta-lab3-qemux86/recipes-kernel/linux/linux-yocto-custom.bb,
>> > do_patch
>> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>> >
>> >
>> >
>> > I tryed configure defconf to
>> >
>> > CONFIG_NETWORK_FILESYSTEMS=y
>> > CONFIG_NFS_FS=y
>> > CONFIG_NFS_DEF_FILE_IO_SIZE=4096
>> > CONFIG_NFS_V3=y
>> > # CONFIG_NFS_V3_ACL is not set
>> > CONFIG_NFS_V4=y
>> > #CONFIG_NFS_V4_1 is not set
>> > CONFIG_ROOT_NFS=y
>> > # CONFIG_NFS_USE_LEGACY_DNS is not set
>> > CONFIG_NFS_USE_KERNEL_DNS=y
>> > CONFIG_NFSD=y
>> >
>> >
>> > The Recipe
>> >
>> > inherit kernel
>> > require recipes-kernel/linux/linux-yocto.inc
>> >
>> > SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;protocol=git;bareclone=1"
>> >
>> > SRC_URI += "file://defconfig"
>> >
>> > #SRC_URI += "file://yocto-testmod.patch"
>> > #SRC_URI += "file://lab3.cfg"
>> >
>> > #module_autoload_yocto-testmod = "yocto-testmod"
>> >
>> > KBRANCH = "linux-3.4.y"
>> >
>> > LINUX_VERSION ?= "3.4.28"
>> > LINUX_VERSION_EXTENSION ?= "-custom"
>> >
>> > SRCREV="${AUTOREV}"
>> >
>> > PR = "r0"
>> > PV = "${LINUX_VERSION}+git${SRCPV}"
>> >
>> > COMPATIBLE_MACHINE_lab3-qemux86 = "lab3-qemux86"
>> >
>> >
>> > There's some advice to me?
>> >
>> > Thank you!
>> >
>> > Regards,
>> >
>> > Caio Pereira
>> >
>> >
>> > --
>> > ----------------------------------------------
>> > Caio Pereira
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>



-- 
----------------------------------------------
Caio Pereira

