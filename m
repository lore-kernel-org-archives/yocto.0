Return-Path: <a.sterbini@tiscali.it>
Received: from santino.mail.tiscali.it (santino.mail.tiscali.it
	[213.205.33.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A011E006C2
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 07:02:25 -0700 (PDT)
Received: from [192.168.1.72] ([94.38.121.206])
	by santino.mail.tiscali.it with 
	id aE2H1l0074THF2u01E2KRJ; Fri, 10 May 2013 16:02:20 +0200
x-auth-user: a.sterbini@tiscali.it
Message-ID: <518CFDE7.2030606@tiscali.it>
Date: Fri, 10 May 2013 16:02:15 +0200
From: Andrea Sterbini <a.sterbini@tiscali.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130402 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Problems building yocto for Xilinx ML507 (with some tentative fixes)
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
X-List-Received-Date: Fri, 10 May 2013 14:02:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi
I have just bought an old Xilinx ML507 and I am trying to build yocto, 
but I find some problems building the minimal image
I am a yocto newbie ... thus I wonder if I am missing something important.

My setup: Linux Fedora 18 64 bits

I hope I am following the correct procedure:
> git clone git://git.yoctoproject.org/poky
> cd poky
> git clone git://git.yoctoproject.org/meta-xilinx -b 
> master-xilinx-ml507-gcc-4.7 meta-xilinx
> git clone git://git.openembedded.org/meta-openembedded
> . oe-init-build-env

My bblayers contains
> BBLAYERS ?= " \
>   /home/andrea/src/FPGA/poky/meta \
>   /home/andrea/src/FPGA/poky/meta-yocto \
>   /home/andrea/src/FPGA/poky/meta-yocto-bsp \
>   /home/andrea/src/FPGA/poky/meta-openembedded/toolchain-layer \
> /home/andrea/src/FPGA/poky/meta-openembedded-contrib/toolchain-layer \
>   /home/andrea/src/FPGA/poky/meta-xilinx \
>   /home/andrea/src/FPGA/poky/meta-angstrom \
>   "

My local.conf contains

> BB_NUMBER_THREADS = "4"
> PARALLEL_MAKE = "-j 4"
>
> XILINX_LOC ?= "/opt/Xilinx/13.3/ISE_DS"
>
> MACHINE ?= "virtex-5-ml507-powerpc-440"
>
> XILINX_BSP_PATH ?= "/home/andrea/src/FPGA/poky-ml507/xilinx-ml507-updated"
> XILINX_BOARD ?= "ml507"
>
> INHERIT += "rm_work"
>
> PREFERRED_VERSION_libffi = "3.0.13"
> PREFERRED_VERSION_libffi-native = "3.0.13"
>
> MACHINE ??= "qemux86"
>
> DISTRO ?= "poky"
>
> PACKAGE_CLASSES ?= "package_rpm"
>
> EXTRA_IMAGE_FEATURES = "debug-tweaks"
>
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>
> PATCHRESOLVE = "noop"
>
> BB_DISKMON_DIRS = "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K"
>
> CONF_VERSION = "1"

The problems I have found (and someway fixed) are:

1) when I do "bitbake meta-toolchain" I get an error complaining that 
the compiler is not able to build for powerpc with FPU
Fix: I have changed the ml507 rules to include just the soft FPU

> diff --git a/conf/machine/virtex-5-ml507-powerpc-440.conf 
> b/conf/machine/virtex-5-ml507-powerpc-440.conf
> index d44fc87..d268919 100644
> --- a/conf/machine/virtex-5-ml507-powerpc-440.conf
> +++ b/conf/machine/virtex-5-ml507-powerpc-440.conf
> @@ -5,7 +5,8 @@
>  #@DESCRIPTION: Machine configuration for the Xilinx ML507 FPGA 
> development platform with a Virtex-5 PowerPC 440 processor (with APU FPU).
>
>  include conf/machine/include/virtex-5/virtex-5-base.inc
> -include conf/machine/include/tune-ppc440e.inc
> +#AS include conf/machine/include/tune-ppc440e.inc
> +include conf/machine/include/tune-ppc440.inc
>
>  # Specify linux kernel devicetree
>  KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/virtex440-ml507.dts"

2) the libffi library version "3.0.12" has a small bug (a misplaced 
#ifndef), which is fixed in version "3.0.13"
Fix: I have added to my local.conf

> PREFERRED_VERSION_libffi = "3.0.13"
> PREFERRED_VERSION_libffi-native = "3.0.13"

This way the toolchain compiles properly

When I try "bitbake core-image-minimal" I get 2 problems:

1) the Xilinx git repository has moved from git.xilinx.com to 
github.com/Xilinx
Fix: I have changed the links in u-boot and linux-xilinx
>
> --- a/recipes-bsp/u-boot/u-boot-xilinx_2012.10.bb
> +++ b/recipes-bsp/u-boot/u-boot-xilinx_2012.10.bb
> @@ -12,7 +12,7 @@ PR = "r01"
>
>  # U-Boot source location
>  KBRANCH = "master"
> -SRC_URI = 
> "git://git.xilinx.com/u-boot-xlnx.git;branch=${KBRANCH};protocol=git"
> +SRC_URI = 
> "git://github.com/Xilinx/u-boot-xlnx.git;branch=${KBRANCH};protocol=git"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-kernel/linux/linux-xilinx_3.3.bb 
> b/recipes-kernel/linux/linux-xilinx_3.3.bb
> index d803676..76c1edd 100644
> --- a/recipes-kernel/linux/linux-xilinx_3.3.bb
> +++ b/recipes-kernel/linux/linux-xilinx_3.3.bb
> @@ -18,7 +18,7 @@ SRCREV = "1e92da8e3a66b051766b1be57be67e2bff11e19d"
>  PR = "r02"
>
>  KBRANCH = "master"
> -SRC_URI = 
> "git://git.xilinx.com/linux-xlnx.git;protocol=git;branch=${KBRANCH} \
> +SRC_URI = 
> "git://github.com/Xilinx/linux-xlnx.git;protocol=git;branch=${KBRANCH} \
> file://0001-Xilinx-Update-IP-Core-support-for-Xilinx-ISE-14.1.patch \
> file://0002-virtex440-ml507.dts-Update-device-tree-file-using-Xi.patch \
> file://0003-xilinxfb-Fix-regression-in-call-to-XPS-TFT-controlle.patch \
> diff --git a/recipes-kernel/linux/linux-xilinx_3.6.bb 
> b/recipes-kernel/linux/linux-xilinx_3.6.bb
> index 5d529a6..b7d2904 100644
> --- a/recipes-kernel/linux/linux-xilinx_3.6.bb
> +++ b/recipes-kernel/linux/linux-xilinx_3.6.bb
> @@ -17,7 +17,7 @@ SRCREV = "04d9378881401e71f83b8b4fea0abd71d33b4052"
>  PR = "r02"
>
>  KBRANCH = "master"
> -SRC_URI = 
> "git://git.xilinx.com/linux-xlnx.git;protocol=git;branch=${KBRANCH} \
> +SRC_URI = 
> "git://github.com/Xilinx/linux-xlnx.git;protocol=git;branch=${KBRANCH} \
>             file://defconfig \
>             "
>  # Apply machine specific patches.
> diff --git a/recipes-kernel/linux/linux-xilinx_git.bb 
> b/recipes-kernel/linux/linux-xilinx_git.bb
> index 1800183..32351f7 100644
> --- a/recipes-kernel/linux/linux-xilinx_git.bb
> +++ b/recipes-kernel/linux/linux-xilinx_git.bb
> @@ -18,7 +18,7 @@ PV = "${LINUX_VERSION}+git-${SRCREV}"
>  PR = "r18"
>
>  KBRANCH = "master-next"
> -SRC_URI = 
> "git://git.xilinx.com/linux-xlnx.git;protocol=git;branch=${KBRANCH} \
> +SRC_URI = 
> "git://github.com/Xilinx/linux-xlnx.git;protocol=git;branch=${KBRANCH} \
>             file://defconfig"
>
>  FILESPATH = "${@base_set_filespath([ 
> '${FILE_DIRNAME}/${PN}/${SOC_FAMILY}' ], d)}"

2) bitbake complains about the license missing from the u-boot recipe
3) I have troubles also with the git.denx.de repository, which I can 
easily clone by hand but not by bitbake
Fix: I have added the required variables at the end (and fixed the git 
links)

> diff --git a/recipes-bsp/u-boot/u-boot-xilinx_git.bb 
> b/recipes-bsp/u-boot/u-boot-xilinx_git.bb
> index 2ae1ec3..7a4a394 100644
> --- a/recipes-bsp/u-boot/u-boot-xilinx_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-xilinx_git.bb
> @@ -4,6 +4,7 @@ require recipes-bsp/u-boot/u-boot.inc
>  DEFAULT_PREFERENCE = "-1"
>
>  PR = "r17"
> +
>  PV_virtex-5   = "v2012.04.01"
>  PV_microblaze = "v2012.10"
>  PV_zynq-7     = "v2012.10"
> @@ -16,19 +17,27 @@ FILESPATH = "${@base_set_filespath([ 
> '${FILE_DIRNAME}/${PN}/${SOC_FAMILY}' ], d)
>
>  # Virtex-5 src location
>  KBRANCH_virtex-5 = "master"
> -SRC_URI_virtex-5 = 
> "git://git.denx.de/u-boot.git;branch=${KBRANCH};protocol=git"
> -SRCREV_virtex-5 = "415d386877df49eb051b85ef74fa59a16dc17c7d"
> +#SRC_URI_virtex-5 = 
> "git://git.denx.de/u-boot.git;branch=${KBRANCH};protocol=git"
> +#SRCREV_virtex-5 = "415d386877df49eb051b85ef74fa59a16dc17c7d"
> +SRC_URI_virtex-5 = 
> "git://github.com/Xilinx/u-boot-xlnx.git;branch=${KBRANCH};protocol=git"
> +SRCREV_virtex-5 = "26786228acfdc0a02190a8d9ca9fcca51a5dcf28"
>
>  # Spartan-6 src location
>  KBRANCH_spartan-6 = "master"
> -SRC_URI_spartan-6 = 
> "git://git.xilinx.com/u-boot-xlnx.git;branch=${KBRANCH};protocol=git"
> +SRC_URI_spartan-6 = 
> "git://github.com/Xilinx/u-boot-xlnx.git;branch=${KBRANCH};protocol=git"
>  SRCREV_spartan-6 = "26786228acfdc0a02190a8d9ca9fcca51a5dcf28"
>
>  # Zynq-7 src location
>  KBRANCH_zynq-7 = "master"
> -SRC_URI_zynq-7 = 
> "git://git.xilinx.com/u-boot-xlnx.git;branch=${KBRANCH};protocol=git"
> +SRC_URI_zynq-7 = 
> "git://github.com/Xilinx/u-boot-xlnx.git;branch=${KBRANCH};protocol=git"
>  SRCREV_zynq-7 = "26786228acfdc0a02190a8d9ca9fcca51a5dcf28"
>
> +PV                = "${PV_${SOC_FAMILY}}"
> +LIC_FILES_CHKSUM  = "${LIC_FILES_CHKSUM_${SOC_FAMILY}}"
> +KBRANCH           = "${KBRANCH_${SOC_FAMILY}}"
> +SRC_URI           = "${SRC_URI_${SOC_FAMILY}}"
> +SRCREV            = "${SRCREV_${SOC_FAMILY}}"
> +
>  XILINX_BOARD ?= "${@find_board(bb.data.getVar('XILINX_BSP_PATH', d, 
> 1), d)}"
>
>  S = "${WORKDIR}/git"

There still some problems which stop my build ...
I will get them to you in a following email

All the best
AndreaS



