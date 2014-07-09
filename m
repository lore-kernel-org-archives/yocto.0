Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D62E2E00744; Wed,  9 Jul 2014 05:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 066C8E00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 05:41:48 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	3826B9EE2F_3BD388CB; Wed,  9 Jul 2014 12:41:48 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	E5B6F9EE24_3BD388BF; Wed,  9 Jul 2014 12:41:47 +0000 (GMT)
Received: from [10.250.7.78] (unknown [10.250.7.78])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id C88AD31111;
	Wed,  9 Jul 2014 14:41:47 +0200 (CEST)
Message-ID: <53BD388B.1050709@dfki.de>
Date: Wed, 09 Jul 2014 14:41:47 +0200
From: "Dr. Markus Eich" <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <53BD0DA4.50108@dfki.de>
	<5D833673AB94D9489A7F7F73E9E611C814ADD788@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
	<53BD30F2.8030506@dfki.de>
	<5D833673AB94D9489A7F7F73E9E611C814ADD7F8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
In-Reply-To: <5D833673AB94D9489A7F7F73E9E611C814ADD7F8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
Subject: Re: How to select defconfig for kernel build with yocto/bitbake
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
X-List-Received-Date: Wed, 09 Jul 2014 12:41:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

bitbake -e produces the following output. I have listed the methods 
dealing with .config.



do_kernel_configme() {
     echo "[INFO] doing kernel configme"
     export KMETA=${KMETA}

     if [ -n ${KCONFIG_MODE} ]; then
         configmeflags=${KCONFIG_MODE}
     else
         # If a defconfig was passed, use =n as the baseline, which is 
achieved
         # via --allnoconfig
         if [ -f 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/defconfig 
]; then
             configmeflags="--allnoconfig"
         fi
     fi

     cd 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git
PATH=/home/eich/yocto/poky/scripts:/home/eich/odroid/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi:/home/eich/odroid/build/tmp/sysroots/odroid-xu/usr/bin/crossscripts:/home/eich/odroid/build/tmp/sysroots/x86_64-linux/usr/sbin:/home/eich/odroid/build/tmp/sysroots/x86_64-linux/usr/bin:/home/eich/odroid/build/tmp/sysroots/x86_64-linux/sbin:/home/eich/odroid/build/tmp/sysroots/x86_64-linux/bin:/home/eich/yocto/poky/scripts:/home/eich/yocto/poky/bitbake/bin:/home/eich/ros_catkin_ws/install_isolated/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/eich/bin:/usr/local/java/jre1.7.0_55/bin:/home/eich/install/bin:/opt/toolchains/arm-eabi-4.6/bin:/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git/scripts/util
     configme ${configmeflags} --reconfig --output 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/linux-odroid_xu-standard-build 
standard odroid-xu
     if [ $? -ne 0 ]; then
         echo "ERROR. Could not configure odroid-xu-standard"
         exit 1
     fi

     echo "# Global settings from linux recipe" >> 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/linux-odroid_xu-standard-build/.config
     echo "CONFIG_LOCALVERSION="\"-custom\" >> 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/linux-odroid_xu-standard-build/.config

}


do_compile_kernelmodules() {
     unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
     if (grep -q -i -e '^CONFIG_MODULES=y$' .config); then
         oe_runmake -j 4 modules CC="arm-poky-linux-gnueabi-gcc 
-mno-thumb-interwork -marm" LD="arm-poky-linux-gnueabi-ld.bfd  "
     else
         bbnote "no modules to compile"
     fi

}

kernel_do_configure() {
     # fixes extra + in /lib/modules/2.6.37+
     # $ scripts/setlocalversion . => +
     # $ make kernelversion => 2.6.37
     # $ make kernelrelease => 2.6.37+
     touch 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/linux-odroid_xu-standard-build/.scmversion 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git/.scmversion

     # Copy defconfig to .config if .config does not exist. This allows
     # recipes to manage the .config themselves in do_configure_prepend().
     if [ -f 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/defconfig" 
] && [ ! -f 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/linux-odroid_xu-standard-build/.config" 
]; then
         cp 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/defconfig" 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/linux-odroid_xu-standard-build/.config"
     fi
     eval oe_runmake_call oldnoconfig || yes '' | oe_runmake oldconfig
     install -m 0644 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git/arch/arm/configs/odroidxu_ubuntu_defconfig 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/defconfig
     install -m 0644 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git/arch/arm/configs/odroidxu_ubuntu_defconfig 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git/.config

}


kernel_do_install() {
     #
     # First install the modules
     #    unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
     if (grep -q -i -e '^CONFIG_MODULES=y$' .config); then
         oe_runmake DEPMOD=echo 
INSTALL_MOD_PATH="/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image" 
modules_install
         rm 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/lib/modules/None/build"
         rm 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/lib/modules/None/source"
         # If the kernel/ directory is empty remove it to prevent QA issues
         rmdir --ignore-fail-on-non-empty 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/lib/modules/None/kernel"
     else
         bbnote "no modules to install"
     fi

     #
     # Install various kernel output (zImage, map file, config, module 
support files)
     #
     install -d 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/boot
     install -d 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/boot
     install -m 0644 arch/arm/boot/uImage 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/boot/uImage-None
     install -m 0644 System.map 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/boot/System.map-None
     install -m 0644 .config 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/boot/config-None
     install -m 0644 vmlinux 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/boot/vmlinux-None
     [ -e Module.symvers ] && install -m 0644 Module.symvers 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/boot/Module.symvers-None
     install -d 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/etc/modules-load.d
     install -d 
/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/etc/modprobe.d

     #
     # Support for external module building - create a minimal copy of the
     # kernel source tree.
     #
kerneldir=/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/image/usr/src/kernel
     install -d $kerneldir

     #
     # Store the kernel version in sysroots for module-base.bbclass
     #

     echo "None" > $kerneldir/kernel-abiversion

     #
     # Store kernel image name to allow use during image generation
     #

     echo 
"uImage--3.4.91+gitrAUTOINC+a26607bfa2-r0-odroid-xu-20140709123549" 
 >$kerneldir/kernel-image-name

     #
     # Copy the entire source tree. In case an external build directory is
     # used, copy the build directory over first, then copy over the source
     # dir. This ensures the original Makefiles are used and not the
     # redirecting Makefiles in the build directory.
     #
     find . -depth -not -name "*.cmd" -not -name "*.o" -not -path 
"./Documentation*" -not -path "./source*" -not -path "./.*" -print0 | 
cpio --null -pdlu $kerneldir
     cp .config $kerneldir
     if [ 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git" 
!= 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/linux-odroid_xu-standard-build" 
]; then
         pwd="$PWD"
         cd 
"/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4.91+gitrAUTOINC+a26607bfa2-r0/git"
         find . -depth -not -path "./Documentation*" -not -path "./.*" 
-print0 | cpio --null -pdlu $kerneldir
         cd "$pwd"
     fi

     # Test to ensure that the output file and image type are not actually
     # the same file. If hardlinking is used, they will be the same, and 
there's
     # no need to install.
     ! [ arch/arm/boot/uImage -ef $kerneldir/uImage ] && install -m 0644 
arch/arm/boot/uImage $kerneldir/uImage
     install -m 0644 System.map $kerneldir/System.map-None

     # Dummy Makefile so the clean below works
         mkdir $kerneldir/Documentation
         touch $kerneldir/Documentation/Makefile

     #
     # Clean and remove files not needed for building modules.
     # Some distributions go through a lot more trouble to strip out
     # unecessary headers, for now, we just prune the obvious bits.
     #
     # We don't want to leave host-arch binaries in /sysroots, so
     # we clean the scripts dir while leaving the generated config
     # and include files.
     #
     oe_runmake -C $kerneldir CC="arm-poky-linux-gnueabi-gcc 
-mno-thumb-interwork -marm" LD="arm-poky-linux-gnueabi-ld.bfd  " clean 
_mrproper_scripts

     # hide directories that shouldn't have their .c, s and S files deleted
     for d in tools scripts lib; do
         mv $kerneldir/$d $kerneldir/.$d
     done

     # delete .c, .s and .S files, unless we hid a directory as .<dir>. 
This technique is
     # much faster than find -prune and -exec
     find $kerneldir -not -path '*/\.*' -type f -name "*.[csS]" -delete

     # put the hidden dirs back
     for d in tools scripts lib; do
         mv $kerneldir/.$d $kerneldir/$d
     done

     # As of Linux kernel version 3.0.1, the clean target removes
     # arch/powerpc/lib/crtsavres.o which is present in
     # KBUILD_LDFLAGS_MODULE, making it required to build external modules.
     if [ arm = "powerpc" ]; then
         cp -l arch/powerpc/lib/crtsavres.o 
$kerneldir/arch/powerpc/lib/crtsavres.o
     fi

     # Necessary for building modules like compat-wireless.
     if [ -f include/generated/bounds.h ]; then
         cp -l include/generated/bounds.h 
$kerneldir/include/generated/bounds.h
     fi
     if [ -d arch/arm/include/generated ]; then
         mkdir -p $kerneldir/arch/arm/include/generated/
         cp -flR arch/arm/include/generated/* 
$kerneldir/arch/arm/include/generated/
     fi

     # Remove the following binaries which cause strip or arch QA errors
     # during do_package for cross-compiled platforms
     bin_files="arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
                arch/powerpc/boot/mktree scripts/kconfig/zconf.tab.o \
            scripts/kconfig/conf.o scripts/kconfig/kxgettext.o"
     for entry in $bin_files; do
         rm -f $kerneldir/$entry
     done

     # kernels <2.6.30 don't have $kerneldir/tools directory so we check 
if it exists before calling sed
     if [ -f $kerneldir/tools/perf/Makefile ]; then
         # Fix SLANG_INC for slang.h
         sed -i 's#-I/usr/include/slang#-I=/usr/include/slang#g' 
$kerneldir/tools/perf/Makefile
     fi

}





On 09.07.2014 14:29, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
> Sorry, Markus.
> Ignore my previous post. It has error.
>
> I think you need to check the output of "bitbake -e <recipe name>" and see how the .config file is created for your recipe.
> Based on that only we need to update the recipe.
>
> Regards,
> B.Sathish Kumar
>
> -----Original Message-----
> From: Sathish Kumar Balasubramaniam -ERS, HCL Tech
> Sent: Wednesday, July 09, 2014 5:54 PM
> To: Dr. Markus Eich; yocto@yoctoproject.org
> Subject: RE: [yocto] How to select defconfig for kernel build with yocto/bitbake
>
> Ok. Can you try the following instead of the content I gave before
>
> KERNEL_DEFCONFIG = "odroidxu_ubuntu_defconfig"
>
> kernel_do_configure_append() {
> 	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig
> 	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${S}/.config
> }
>
>
> Regards,
> B.Sathish Kumar
>
> -----Original Message-----
> From: Dr. Markus Eich [mailto:markus.eich@dfki.de]
> Sent: Wednesday, July 09, 2014 5:39 PM
> To: Sathish Kumar Balasubramaniam -ERS, HCL Tech; yocto@yoctoproject.org
> Subject: Re: [yocto] How to select defconfig for kernel build with yocto/bitbake
>
> Thank you Sathish for the quick answer.
>
> The recipes now copies odroidxu_ubuntu_defconfig to defconfig in the
> workdir, but it still seems to be ignored.
> Maybe I am missing some includes to make the .config from defconfig?
>
> Using "make odroidxu_ubuntu_defconfig" using cross compiling (followed
> by "make zImage") works fine, while bitbake virtual/kernel produces some
> errors which are probably due to the wrong .config.
>
>
> Cheers,
>
> Markus
>
>
>
>
>
> On 09.07.2014 13:33, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
>> Hi Markus,
>>
>> Try adding the following to your recipe file
>>
>> KERNEL_DEFCONFIG = "odroidxu_ubuntu_defconfig"
>>
>> do_configure_prepend() {
>>           install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
>> }
>>
>>
>> Regards,
>> B.Sathish Kumar
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Dr. Markus Eich
>> Sent: Wednesday, July 09, 2014 3:09 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] How to select defconfig for kernel build with yocto/bitbake
>>
>> Dear all,
>>
>> I work on the process to compile odroid xu kernel with yocto/bitbake
>>
>> In the kernel sources (from hardkernel) I have the corresponding
>> defconfig file, i.e. in the git folder
>> /arch/arm/configs/odroidxu_ubuntu_defconfig.
>>
>> How can I tell bitbake in my recipe to use "odroidxu_ubuntu_defconfig"?
>>
>> My recipe looks as follow:
>>
>> ===
>> require recipes-kernel/linux/linux-yocto.inc
>>
>> KERNEL_IMAGETYPE = "uImage"
>>
>> COMPATIBLE_MACHINE = "odroid-xu"
>>
>> LINUX_VERSION = "3.4.91"
>> LINUX_VERSION_EXTENSION = "-custom"
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-hardkernel-3.4:"
>>
>> S = "${WORKDIR}/git"
>>
>> # from where to fetch the kernel
>> KERNEL_REPO_OWNER ??= "hardkernel"
>> KERNEL_REPO_URI ??= "git://github.com/${KERNEL_REPO_OWNER}/linux.git"
>> KBRANCH = "odroidxu-3.4.y"
>>
>> SRCREV = "${AUTOREV}"
>>
>> KV = "3.4.91"
>> PV = "${KV}+gitr${SRCPV}"
>> LOCALVERSION ?= ""
>>
>>
>> SRC_URI = " \
>>      ${KERNEL_REPO_URI};nocheckout=1;branch=${KBRANCH} \
>> "
>>
>> PACKAGES =+ "kernel-headers"
>> FILES_kernel-headers = "${exec_prefix}/src/linux*"
>> ===
>>
>> Cheers,
>>
>> Markus
>>
>>
>>
>>

-- 
Dr.-Ing. Markus Eich

  Senior Researcher
  Marine Inspection Robotics
  Space Robotics
  
  Besuchsadresse der Nebengesch‰ftstelle:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straﬂe 5
  28359 Bremen, Germany
  
  Postadresse der Hauptgesch‰ftsstelle Standort Bremen:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straﬂe 1
  28359 Bremen, Germany

  Tel.:     +49 421 178 45-4105
  Zentrale: +49 421 178 45-0
  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
  E-Mail:   markus.eich@dfki.de

  Weitere Informationen: http://www.dfki.de/robotik
  -----------------------------------------------------------------------
  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
  Firmensitz: Trippstadter Straﬂe 122, D-67663 Kaiserslautern
  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
  (Vorsitzender) Dr. Walter Olthoff
  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
  Amtsgericht Kaiserslautern, HRB 2313
  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
  USt-Id.Nr.:    DE 148646973
  Steuernummer:  19/673/0060/3
  -----------------------------------------------------------------------


