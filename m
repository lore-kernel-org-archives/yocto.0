Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9FAAE00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 07:38:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2011 07:38:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="79222094"
Received: from unknown (HELO envy.home) ([10.255.12.75])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2011 07:38:51 -0800
Message-ID: <4ECD138D.50401@linux.intel.com>
Date: Wed, 23 Nov 2011 07:38:53 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Josef Ahmad <josef.ahmad@intel.com>
References: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
In-Reply-To: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] EFI support for IA
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
X-List-Received-Date: Wed, 23 Nov 2011 15:38:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Josef,

On 11/23/2011 02:39 AM, Josef Ahmad wrote:
> Hi all
> 
> I've been in contact with Darren Hart, who has opened an RFC re:
> including support for EFI into Yocto.
> Meanwhile, due to time constraints of my own project, I worked out a
> patch to enable EFI on IA-based BSPs.

There are various issues I'm currently working through with respect to
this. See the mail thread on openembedded-core with respect to this:

http://lists.linuxtogo.org/pipermail/openembedded-core/2011-November/012972.html

Also, while my tree is not currently ready for use, if you want to get
an idea about how I'm going about fixing this, you can see it here. Note
that this tree is a development tree and will be rebased frequently:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=dvhart/efi

More comments inline below...

> 
> The patch makes it possible to deploy a system image that adds EFI boot
> feature along with the legacy bios boot mode. Hence it does not replace
> the legacy booting, which is still available on the built image.
> This solution appears to me conservative enough test without breaking
> existing features, and makes the following introduction of an EFI/PCBIOS
> switch relatively straightforward.
> 
> To check out the feature, it's sufficient to add the following lines to
> either your local.conf or layer.conf:
> 
>    # Ensure you build an hddimg
>    IMAGE_FSTYPES += "live"
>    # Enable EFI mode
>    EFI = "1"

We will want to make this part of the MACHINE_FEATURES variables defined
in the machine config.

>    MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub-efi"
>    # Target-specific boot options (e.g. headless mode)
>    GRUB_OPTS = "serial --unit=0 --speed=115200 --word=8 --parity=no
> --stop=1"
>    GRUB_APPEND = "console=uart8250,io,0x3f8,115200n8 ro"
>    GRUB_TIMEOUT = "10"
> 
> This will produce a system image containing the EFI Grub bootloader +
> boot configuration file.
> 
> Currently, the patch applies to the meta layer and therefore has global
> visibility. However, I see from yesterday's meeting minutes that
> meta-intel has been added as a layer itself. Which comes in handy, as we
> can narrow the scope of the patch to the Intel targets, which are the
> only supported machines at the moment.
> 
> Feedbacks are keenly appreciated. I'm still in ramp-up phase with Yocto,
> so I might be doing incorrect assumptions, or not complying with common
> practices.
> 
> - Josef
> 
> -----------------------------------
> 
> From d04ffad92107572f70c06e5692083f285d767c01 Mon Sep 17 00:00:00 2001
> From: Josef Ahmad <josef.ahmad@intel.com <mailto:josef.ahmad@intel.com>>
> Date: Thu, 17 Nov 2011 14:57:20 +0000
> Subject: [PATCH] Add UEFI support to Edison
>  Add UEFI GRUB support into bootimg.bbclass
> 
> Add grub-efi recipe
> 
> Added UEFI GRUB support for system image generation
> 
> Add switch for EFI mode + automated boot conf generation
> 
> Fix typo in grub.bbclass comment header
> 
> x86_64-efi now supported
> ---
>  meta/classes/bootimg.bbclass                       |   24 ++++++
>  meta/classes/grub.bbclass                          |   73
> ++++++++++++++++++
>  .../grub-efi/grub-efi-1.99/40_custom               |    9 ++
>  .../grub-efi/grub-efi-1.99/grub-install.in.patch   |   20 +++++
>  meta/recipes-devtools/grub-efi/grub-efi.bb <http://grub-efi.bb>        
> |   79 ++++++++++++++++++++
>  5 files changed, 205 insertions(+), 0 deletions(-)
>  create mode 100644 meta/classes/grub.bbclass
>  create mode 100755 meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
>  create mode 100644
> meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
>  create mode 100644 meta/recipes-devtools/grub-efi/grub-efi.bb
> <http://grub-efi.bb>
> 
> diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
> index 49ee85e..00c70d4 100644
> --- a/meta/classes/bootimg.bbclass
> +++ b/meta/classes/bootimg.bbclass
> @@ -45,7 +45,20 @@ BOOTIMG_EXTRA_SPACE ?= "512"
>  SYSLINUXCFG  = "${HDDDIR}/syslinux.cfg"
>  SYSLINUXMENU = "${HDDDIR}/menu"
>  
> +GRUBCFG = "${HDDDIR}/grub.cfg"
> +
>  inherit syslinux
> +inherit grub
> +

One thing I'm working on is making it possible to choose which
bootloader you want to use, and if you want PCBIOS, EFI, or both in your
live image.

> +def get_grub_imgname(bb, d):
> +    import re
> +    host = bb.data.getVar('HOST_SYS', d, 1)
> +    if re.match('i.86.*-linux', host):
> +        return "bootia32.efi"
> +    if re.match('x86.64.*-linux', host):
> +        return "bootx64.efi"


This needs to be based on the TARGET_ARCH, not the HOST_SYS.

> +
> +GRUB_IMGNAME = "${@get_grub_imgname(bb, d)}"
>         
>  build_boot_bin() {
>      install -d ${HDDDIR}
> @@ -62,6 +75,12 @@ build_boot_bin() {
>  
>      install -m 444 ${STAGING_LIBDIR}/syslinux/ldlinux.sys
> ${HDDDIR}/ldlinux.sys
>  
> +    # TODO locate bootloader under /EFI/boot/ as soon as mkdosfs bug is
> fixed
> +
> +    if [ -n "${EFI}" ]; then

OK, good.

> +        install -m 444 ${STAGING_LIBDIR}/grub/${GRUB_IMGNAME} ${HDDDIR}/
> +    fi
> +   
>      # Do a little math, bash style
>      #BLOCKS=`du -s ${HDDDIR} | cut -f 1`
>      BLOCKS=`du -bks ${HDDDIR} | cut -f 1`
> @@ -118,6 +137,11 @@ build_boot_bin() {
>  
>  python do_bootimg() {
>      bb.build.exec_func('build_syslinux_cfg', d)
> +
> +    efi = bb.data.getVar('EFI', d, 1)
> +    if efi:
> +        bb.build.exec_func('build_grub_cfg', d)
> +
>      bb.build.exec_func('build_boot_bin', d)
>  }
>  
> diff --git a/meta/classes/grub.bbclass b/meta/classes/grub.bbclass
> new file mode 100644
> index 0000000..b461fc5
> --- /dev/null
> +++ b/meta/classes/grub.bbclass

I've been calling mine grub-efi to distinguish it from the PCBIOS version.

> @@ -0,0 +1,73 @@
> +# grub.bbclass
> +# (based off syslinux.bbclass Copyright (C) 2004-2006, Advanced Micro
> Devices, Inc.)
> +
> +python build_grub_cfg () {
> +    import sys
> +
> +    workdir = bb.data.getVar('WORKDIR', d, 1)
> +    if not workdir:
> +        bb.error("WORKDIR not defined, unable to package")
> +        return
> +       
> +    labels = bb.data.getVar('LABELS', d, 1)
> +    if not labels:
> +        bb.debug(1, "LABELS not defined, nothing to do")
> +        return
> +   
> +    if labels == []:
> +        bb.debug(1, "No labels, nothing to do")
> +        return
> +
> +    cfile = bb.data.getVar('GRUBCFG', d, 1)
> +    if not cfile:
> +        raise bb.build.FuncFailed('Unable to read GRUBCFG')
> +
> +    bb.mkdirhier(os.path.dirname(cfile))
> +
> +    try:
> +         cfgfile = file(cfile, 'w')
> +    except OSError:
> +        raise bb.build.funcFailed('Unable to open %s' % (cfile))
> +
> +    cfgfile.write('# Automatically created by OE\n')
> +
> +    opts = bb.data.getVar('GRUB_OPTS', d, 1)
> +
> +    if opts:
> +        for opt in opts.split(';'):
> +            cfgfile.write('%s\n' % opt)
> +
> +    cfgfile.write('default=%s\n' % (labels.split()[0]))
> +
> +    timeout = bb.data.getVar('GRUB_TIMEOUT', d, 1)
> +    if timeout:
> +        cfgfile.write('timeout=%s\n' % timeout)
> +    else:
> +        cfgfile.write('timeout=50\n')
> +
> +        for label in labels.split():
> +                localdata = bb.data.createCopy(d)
> +
> +                overrides = bb.data.getVar('OVERRIDES', localdata, True)
> +                if not overrides:
> +                        raise bb.build.FuncFailed('OVERRIDES not defined')
> +
> +                bb.data.setVar('OVERRIDES', label + ':' + overrides,
> localdata)
> +                bb.data.update_data(localdata)
> +
> +                cfgfile.write('\nmenuentry \'%s\'{\n' % (label))
> +                cfgfile.write('linux /vmlinuz ')
> +
> +                append = bb.data.getVar('GRUB_APPEND', localdata, 1)
> +                initrd = bb.data.getVar('INITRD', localdata, 1)
> +
> +                if append:
> +                        cfgfile.write('%s' % (append))
> +                cfgfile.write('\n')
> +   
> +                if initrd:
> +                        cfgfile.write('initrd /initrd')
> +                cfgfile.write('\n}\n')
> +
> +    cfgfile.close()
> +}

I had not done this part yet, I can roll this into my series and keep it
attributed to you.

> diff --git a/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
> b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
> new file mode 100755
> index 0000000..0d80854
> --- /dev/null
> +++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +exec tail -n +3 $0
> +# This file provides an easy way to add custom menu entries.  Simply
> type the
> +# menu entries you want to add after this comment.  Be careful not to
> change
> +# the 'exec tail' line above.
> +menuentry "Linux" {
> +    set root=(hd0,1)
> +    linux /boot/vmlinuz root=__ROOTFS__ rw __VIDEO_MODE__ __VGA_MODE__
> quiet
> +}
> diff --git
> a/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
> b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
> new file mode 100644
> index 0000000..326951d
> --- /dev/null
> +++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
> @@ -0,0 +1,20 @@
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Our use of grub-install doesn't require the -x option, so we should be
> +be able make use of grep versions that don't support it.
> +
> +Signed-off-by: Tom Zanussi <tom.zanussi@intel.com
> <mailto:tom.zanussi@intel.com>>
> +
> +Index: grub-1.99/util/grub-install.in <http://grub-install.in>
> +===================================================================
> +--- grub-1.99.orig/util/grub-install.in <http://grub-install.in>   
> 2011-09-09 22:37:20.093906679 -0500
> ++++ grub-1.99/util/grub-install.in <http://grub-install.in>   
> 2011-09-09 22:37:30.854737882 -0500
> +@@ -510,7 +510,7 @@
> +
> + if [ "x${devabstraction_module}" = "x" ] ; then
> +     if [ x"${install_device}" != x ]; then
> +-      if echo "${install_device}" | grep -qx "(.*)" ; then
> ++      if echo "${install_device}" | grep -q "(.*)" ; then
> +         install_drive="${install_device}"
> +       else
> +         install_drive="`"$grub_probe" --device-map="${device_map}"
> --target=drive --device "${install_device}"`" || exit 1
> diff --git a/meta/recipes-devtools/grub-efi/grub-efi.bb
> <http://grub-efi.bb> b/meta/recipes-devtools/grub-efi/grub-efi.bb
> <http://grub-efi.bb>
> new file mode 100644
> index 0000000..1310c75
> --- /dev/null
> +++ b/meta/recipes-devtools/grub-efi/grub-efi.bb <http://grub-efi.bb>
> @@ -0,0 +1,79 @@
> +SUMMARY = "GRUB2 is the next-generation GRand Unified Bootloader"
> +
> +DESCRIPTION = "GRUB2 is the next generaion of a GPLed bootloader \
> +intended to unify bootloading across x86 operating systems. In \
> +addition to loading the Linux kernel, it implements the Multiboot \
> +standard, which allows for flexible loading of multiple boot images."
> +
> +HOMEPAGE = "http://www.gnu.org/software/grub/"
> +SECTION = "bootloaders"
> +PRIORITY = "optional"
> +
> +LICENSE = "GPLv3"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> +
> +RDEPENDS_${PN} = "diffutils freetype"
> +PR = "r1"
> +PN = "grub-efi"
> +PV = "1.99"
> +
> +
> +SRC_URI = "ftp://ftp.gnu.org/gnu/grub/grub-${PV}.tar.gz
> <ftp://ftp.gnu.org/gnu/grub/grub-$%7BPV%7D.tar.gz> \
> +          file://grub-install.in.patch;apply=yes \
> +          file://40_custom"
> +
> +inherit autotools
> +inherit gettext
> +
> +def set_grub_imgfmt(bb, d):
> +    import re
> +    host = bb.data.getVar('HOST_SYS', d, 1)   

Same here, needs to be based on TARGET_ARCH

> +    if re.match('i.86.*-linux', host):
> +        return "i386"
> +    if re.match('x86.64.*-linux', host):
> +        return "x86_64"
> +
> +GRUB_IMGFMT = "${@set_grub_imgfmt(bb, d)}"
> +
> +EXTRA_OECONF = "--target=${GRUB_IMGFMT} --with-platform=efi
> --enable-grub-mkfont=no \
> +     --disable-nls --enable-efiemu=no --program-prefix="""
> +
> +do_update_unpack_loc () {
> +    rm -rf grub-efi-1.99
> +    mv grub-1.99 grub-efi-1.99
> +}

This is better done by setting the S variable, see my branch linked above:

S = ${WORKDIR}/grub-${PV}

> +
> +do_unpack_append () {
> +    bb.build.exec_func('do_update_unpack_loc', d)
> +}

drop

> +
> +do_configure() {
> +    oe_runconf
> +}
> +
> +python __anonymous () {
> +    import re
> +    host = bb.data.getVar('HOST_SYS', d, 1)
> +    if not re.match('x86.64.*-linux', host) and not
> re.match('i.86.*-linux', host):
> +        raise bb.parse.SkipPackage("incompatible with host %s" % host)
> +}
> +
> +do_install_append () {
> +    install -m 0755 ${WORKDIR}/40_custom ${D}${sysconfdir}/grub.d/40_custom
> +
> +    if [ "${GRUB_IMGFMT}" = "i386" ]
> +        then GRUB_EFIARCH="ia32"
> +    else GRUB_EFIARCH="x64"
> +    fi
> +
> +    ./grub-mkimage -p / -d ./grub-core/ -O ${GRUB_IMGFMT}-efi \

And as we discussed (after you had sent this), we need to ensure
grub-mkimage is a BUILDHOST_ARCH. See the oe-core thread I listed above
some more context. It's a tough problem. I'm currently leaning towards
the building a -native package first. In fact, I'm building native now.
I just need to get access to the real TARGET_ARCH for the --target=
configure argument and then it works.

> +    -o ./boot${GRUB_EFIARCH}.efi \
> +    boot linux fat serial part_msdos normal
> +   
> +    install -d ${STAGING_LIBDIR}/grub/
> +    install -m 644 ${S}/boot${GRUB_EFIARCH}.efi ${STAGING_LIBDIR}/grub/
> +}
> +
> +FILES_${PN}-doc = "${datadir}"
> +FILES_${PN} = "/usr /etc"
> +
> -- 
> 1.7.2.5
>

Definitely some good bits in here Josef. Let's make sure we are in sync
so we don't duplicate too much effort here. I will push my changes to
the dvhart/efi branch linked above more frequently so you can have
access to that.

Do you have any objection if I lift your grub cfg generator for the
grub-efi.bbclass? Maintaining your Signed-off-by of course.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

