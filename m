Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B046E004CF
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 11:19:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r4TIJeCC017647
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 May 2013 11:19:40 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 29 May 2013 11:19:38 -0700
Message-ID: <51A646B8.2090509@windriver.com>
Date: Wed, 29 May 2013 14:19:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Caio <caiortp@gmail.com>
References: <CAJqtCyZR0+LAyymBB7Nv28Cv+m9gQnaVqNYFFbxvh5qvovJXcA@mail.gmail.com>
In-Reply-To: <CAJqtCyZR0+LAyymBB7Nv28Cv+m9gQnaVqNYFFbxvh5qvovJXcA@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 May 2013 18:19:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-05-29 02:15 PM, Caio wrote:
> Hello,
>
> I'm following the ELC2013 hands-on
> (https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf)
> but with poky 9.0.
>
> Git Branch (b15bdd842092f2335784c20b8e1b3a0ddcf7996b)
>
> In the lab3 I'm trying to compile a kernel from master git tree.
>
>
> But I'm having these trouble to enable NFSD.
> -WARNING: addon feature "features/nfsd/nfsd-enable" was not found
>

There's a bug in master at the moment that is breaking linux-yocto-custom.

I'll send it out for merge shortly.

In the meantime, take this change:

--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -7,6 +7,6 @@ DISTRO_FEATURES_append = " pam largefile opengl"
  PREFERRED_PROVIDER_virtual/libx11 = "libx11"

  # Ensure the kernel nfs server is enabled
-KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
+KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"


Bruce

>
> My log:
>
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "lab3-qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.1"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp
> meta-lab3-qemux86 = "dylan:3768675706462c0cc8566ead958161e77e2247e9"
>
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_patch (see
> /home/caio/yocto/poky/lab3/tmp/work/lab3_qemux86-poky-linux/linux-yocto-custom/3.4.28+gitAUTOINC+c7788792a5e7b0d5d7f96d0766b4cb6112d47d75-r0/temp/log.do_patch.8248
> for further information)
> ERROR: Logfile of failure stored in:
> /home/caio/yocto/poky/lab3/tmp/work/lab3_qemux86-poky-linux/linux-yocto-custom/3.4.28+gitAUTOINC+c7788792a5e7b0d5d7f96d0766b4cb6112d47d75-r0/temp/log.do_patch.8248
> Log data follows:
> | DEBUG: Executing shell function do_patch
> | WARNING: no meta data branch found ...
> | Already on 'linux-3.4.y'
> | WARNING: addon feature "features/nfsd/nfsd-enable" was not found
> | ERROR: required features were not found. aborting
> | ERROR. Could not update linux-3.4.y
> | ERROR: Function failed: do_patch (see
> /home/caio/yocto/poky/lab3/tmp/work/lab3_qemux86-poky-linux/linux-yocto-custom/3.4.28+gitAUTOINC+c7788792a5e7b0d5d7f96d0766b4cb6112d47d75-r0/temp/log.do_patch.8248
> for further information)
> ERROR: Task 843
> (/home/caio/yocto/poky/meta-lab3-qemux86/recipes-kernel/linux/linux-yocto-custom.bb,
> do_patch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1618 tasks of which 1613 didn't need to
> be rerun and 1 failed.
> No currently running tasks (1618 of 1647)
>
> Summary: 1 task failed:
>    /home/caio/yocto/poky/meta-lab3-qemux86/recipes-kernel/linux/linux-yocto-custom.bb,
> do_patch
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
> I tryed configure defconf to
>
> CONFIG_NETWORK_FILESYSTEMS=y
> CONFIG_NFS_FS=y
> CONFIG_NFS_DEF_FILE_IO_SIZE=4096
> CONFIG_NFS_V3=y
> # CONFIG_NFS_V3_ACL is not set
> CONFIG_NFS_V4=y
> #CONFIG_NFS_V4_1 is not set
> CONFIG_ROOT_NFS=y
> # CONFIG_NFS_USE_LEGACY_DNS is not set
> CONFIG_NFS_USE_KERNEL_DNS=y
> CONFIG_NFSD=y
>
>
> The Recipe
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;protocol=git;bareclone=1"
>
> SRC_URI += "file://defconfig"
>
> #SRC_URI += "file://yocto-testmod.patch"
> #SRC_URI += "file://lab3.cfg"
>
> #module_autoload_yocto-testmod = "yocto-testmod"
>
> KBRANCH = "linux-3.4.y"
>
> LINUX_VERSION ?= "3.4.28"
> LINUX_VERSION_EXTENSION ?= "-custom"
>
> SRCREV="${AUTOREV}"
>
> PR = "r0"
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE_lab3-qemux86 = "lab3-qemux86"
>
>
> There's some advice to me?
>
> Thank you!
>
> Regards,
>
> Caio Pereira
>
>
> --
> ----------------------------------------------
> Caio Pereira
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


