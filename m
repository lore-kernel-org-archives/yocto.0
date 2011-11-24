Return-Path: <josefahmad1@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E3F3E00309
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2011 00:48:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eeav2 with SMTP id v2so120461eea.35
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2011 00:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=MVV3Ii3df9PEw59HP+pcR6+JThkpnMjoNBo8+ZQYKQg=;
	b=ipR7+Vz3oVpQbrjugQF/L2Wm79cCM9beO3V938knM/mjLQNHUkLk4RU35DvFU1zNTK
	rbESH3KMX3a8/dh7+Fs05AJwFcx9q0d8RTy9g0vVkxpfe3WgkjrSzmN4zFAmbiXn5jjI
	AE6+qf8M9Wkb8jH2SD/WIsMWiyf6ZoIxXAkvw=
MIME-Version: 1.0
Received: by 10.14.13.194 with SMTP id b42mr1616538eeb.171.1322124519558; Thu,
	24 Nov 2011 00:48:39 -0800 (PST)
Sender: josefahmad1@gmail.com
Received: by 10.213.19.194 with HTTP; Thu, 24 Nov 2011 00:48:39 -0800 (PST)
In-Reply-To: <4ECD138D.50401@linux.intel.com>
References: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
	<4ECD138D.50401@linux.intel.com>
Date: Thu, 24 Nov 2011 08:48:39 +0000
X-Google-Sender-Auth: e9ovqRKj5TAIKz7tndmp0HJqT_E
Message-ID: <CACJvPv3f-zZ6zK6roH0F5-WnoK6JRt6YEFQBvi2B_dz0ZKOeAg@mail.gmail.com>
From: Josef Ahmad <josef.ahmad@intel.com>
To: dvhart@linux.intel.com, yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 24 Nov 2011 08:48:43 -0000
Content-Type: multipart/alternative; boundary=0016e65bb696564e0304b2771af9

--0016e65bb696564e0304b2771af9
Content-Type: text/plain; charset=ISO-8859-1

Hi Darren,

I'll track your branch to sync our efforts.

I meant to only generate the Grub EFI binary for the target, without
including any tool/library into the root filesystem: I assumed that it's
sufficient to deploy the bootloader onto the top-level image. That's why I
build natively the mkimage tool and run that on the host to get the EFI
executable. Now, as you justly point out, there's a target mismatch:
mkimage incorrectly calls out the host architecture under the -O switch,
whereas it should have been something like ${TARGET_ARCH}-efi.

That said, surely a solution that embodies the GRUB tools into the root
filesystem is desirable.

Feel free to merge my grub config generator into your branch, as well as
any of my contrib you may like. Speaking of grub.bbclass, I named it so as
it's not specifically tied to the EFI mode. It basically builds up the grub
configuration menu, based off machine-specific parameters. I implemented it
among the lines of syslinux.bbclass.

- Josef

On 23 November 2011 15:38, Darren Hart <dvhart@linux.intel.com> wrote:

> Hi Josef,
>
> On 11/23/2011 02:39 AM, Josef Ahmad wrote:
> > Hi all
> >
> > I've been in contact with Darren Hart, who has opened an RFC re:
> > including support for EFI into Yocto.
> > Meanwhile, due to time constraints of my own project, I worked out a
> > patch to enable EFI on IA-based BSPs.
>
> There are various issues I'm currently working through with respect to
> this. See the mail thread on openembedded-core with respect to this:
>
>
> http://lists.linuxtogo.org/pipermail/openembedded-core/2011-November/012972.html
>
> Also, while my tree is not currently ready for use, if you want to get
> an idea about how I'm going about fixing this, you can see it here. Note
> that this tree is a development tree and will be rebased frequently:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=dvhart/efi
>
> More comments inline below...
>
> >
> > The patch makes it possible to deploy a system image that adds EFI boot
> > feature along with the legacy bios boot mode. Hence it does not replace
> > the legacy booting, which is still available on the built image.
> > This solution appears to me conservative enough test without breaking
> > existing features, and makes the following introduction of an EFI/PCBIOS
> > switch relatively straightforward.
> >
> > To check out the feature, it's sufficient to add the following lines to
> > either your local.conf or layer.conf:
> >
> >    # Ensure you build an hddimg
> >    IMAGE_FSTYPES += "live"
> >    # Enable EFI mode
> >    EFI = "1"
>
> We will want to make this part of the MACHINE_FEATURES variables defined
> in the machine config.
>
> >    MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub-efi"
> >    # Target-specific boot options (e.g. headless mode)
> >    GRUB_OPTS = "serial --unit=0 --speed=115200 --word=8 --parity=no
> > --stop=1"
> >    GRUB_APPEND = "console=uart8250,io,0x3f8,115200n8 ro"
> >    GRUB_TIMEOUT = "10"
> >
> > This will produce a system image containing the EFI Grub bootloader +
> > boot configuration file.
> >
> > Currently, the patch applies to the meta layer and therefore has global
> > visibility. However, I see from yesterday's meeting minutes that
> > meta-intel has been added as a layer itself. Which comes in handy, as we
> > can narrow the scope of the patch to the Intel targets, which are the
> > only supported machines at the moment.
> >
> > Feedbacks are keenly appreciated. I'm still in ramp-up phase with Yocto,
> > so I might be doing incorrect assumptions, or not complying with common
> > practices.
> >
> > - Josef
> >
> > -----------------------------------
> >
> > From d04ffad92107572f70c06e5692083f285d767c01 Mon Sep 17 00:00:00 2001
> > From: Josef Ahmad <josef.ahmad@intel.com <mailto:josef.ahmad@intel.com>>
> > Date: Thu, 17 Nov 2011 14:57:20 +0000
> > Subject: [PATCH] Add UEFI support to Edison
> >  Add UEFI GRUB support into bootimg.bbclass
> >
> > Add grub-efi recipe
> >
> > Added UEFI GRUB support for system image generation
> >
> > Add switch for EFI mode + automated boot conf generation
> >
> > Fix typo in grub.bbclass comment header
> >
> > x86_64-efi now supported
> > ---
> >  meta/classes/bootimg.bbclass                       |   24 ++++++
> >  meta/classes/grub.bbclass                          |   73
> > ++++++++++++++++++
> >  .../grub-efi/grub-efi-1.99/40_custom               |    9 ++
> >  .../grub-efi/grub-efi-1.99/grub-install.in.patch   |   20 +++++
> >  meta/recipes-devtools/grub-efi/grub-efi.bb <http://grub-efi.bb>
> > |   79 ++++++++++++++++++++
> >  5 files changed, 205 insertions(+), 0 deletions(-)
> >  create mode 100644 meta/classes/grub.bbclass
> >  create mode 100755
> meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
> >  create mode 100644
> > meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
> >  create mode 100644 meta/recipes-devtools/grub-efi/grub-efi.bb
> > <http://grub-efi.bb>
> >
> > diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
> > index 49ee85e..00c70d4 100644
> > --- a/meta/classes/bootimg.bbclass
> > +++ b/meta/classes/bootimg.bbclass
> > @@ -45,7 +45,20 @@ BOOTIMG_EXTRA_SPACE ?= "512"
> >  SYSLINUXCFG  = "${HDDDIR}/syslinux.cfg"
> >  SYSLINUXMENU = "${HDDDIR}/menu"
> >
> > +GRUBCFG = "${HDDDIR}/grub.cfg"
> > +
> >  inherit syslinux
> > +inherit grub
> > +
>
> One thing I'm working on is making it possible to choose which
> bootloader you want to use, and if you want PCBIOS, EFI, or both in your
> live image.
>
> > +def get_grub_imgname(bb, d):
> > +    import re
> > +    host = bb.data.getVar('HOST_SYS', d, 1)
> > +    if re.match('i.86.*-linux', host):
> > +        return "bootia32.efi"
> > +    if re.match('x86.64.*-linux', host):
> > +        return "bootx64.efi"
>
>
> This needs to be based on the TARGET_ARCH, not the HOST_SYS.
>
> > +
> > +GRUB_IMGNAME = "${@get_grub_imgname(bb, d)}"
> >
> >  build_boot_bin() {
> >      install -d ${HDDDIR}
> > @@ -62,6 +75,12 @@ build_boot_bin() {
> >
> >      install -m 444 ${STAGING_LIBDIR}/syslinux/ldlinux.sys
> > ${HDDDIR}/ldlinux.sys
> >
> > +    # TODO locate bootloader under /EFI/boot/ as soon as mkdosfs bug is
> > fixed
> > +
> > +    if [ -n "${EFI}" ]; then
>
> OK, good.
>
> > +        install -m 444 ${STAGING_LIBDIR}/grub/${GRUB_IMGNAME} ${HDDDIR}/
> > +    fi
> > +
> >      # Do a little math, bash style
> >      #BLOCKS=`du -s ${HDDDIR} | cut -f 1`
> >      BLOCKS=`du -bks ${HDDDIR} | cut -f 1`
> > @@ -118,6 +137,11 @@ build_boot_bin() {
> >
> >  python do_bootimg() {
> >      bb.build.exec_func('build_syslinux_cfg', d)
> > +
> > +    efi = bb.data.getVar('EFI', d, 1)
> > +    if efi:
> > +        bb.build.exec_func('build_grub_cfg', d)
> > +
> >      bb.build.exec_func('build_boot_bin', d)
> >  }
> >
> > diff --git a/meta/classes/grub.bbclass b/meta/classes/grub.bbclass
> > new file mode 100644
> > index 0000000..b461fc5
> > --- /dev/null
> > +++ b/meta/classes/grub.bbclass
>
> I've been calling mine grub-efi to distinguish it from the PCBIOS version.
>
> > @@ -0,0 +1,73 @@
> > +# grub.bbclass
> > +# (based off syslinux.bbclass Copyright (C) 2004-2006, Advanced Micro
> > Devices, Inc.)
> > +
> > +python build_grub_cfg () {
> > +    import sys
> > +
> > +    workdir = bb.data.getVar('WORKDIR', d, 1)
> > +    if not workdir:
> > +        bb.error("WORKDIR not defined, unable to package")
> > +        return
> > +
> > +    labels = bb.data.getVar('LABELS', d, 1)
> > +    if not labels:
> > +        bb.debug(1, "LABELS not defined, nothing to do")
> > +        return
> > +
> > +    if labels == []:
> > +        bb.debug(1, "No labels, nothing to do")
> > +        return
> > +
> > +    cfile = bb.data.getVar('GRUBCFG', d, 1)
> > +    if not cfile:
> > +        raise bb.build.FuncFailed('Unable to read GRUBCFG')
> > +
> > +    bb.mkdirhier(os.path.dirname(cfile))
> > +
> > +    try:
> > +         cfgfile = file(cfile, 'w')
> > +    except OSError:
> > +        raise bb.build.funcFailed('Unable to open %s' % (cfile))
> > +
> > +    cfgfile.write('# Automatically created by OE\n')
> > +
> > +    opts = bb.data.getVar('GRUB_OPTS', d, 1)
> > +
> > +    if opts:
> > +        for opt in opts.split(';'):
> > +            cfgfile.write('%s\n' % opt)
> > +
> > +    cfgfile.write('default=%s\n' % (labels.split()[0]))
> > +
> > +    timeout = bb.data.getVar('GRUB_TIMEOUT', d, 1)
> > +    if timeout:
> > +        cfgfile.write('timeout=%s\n' % timeout)
> > +    else:
> > +        cfgfile.write('timeout=50\n')
> > +
> > +        for label in labels.split():
> > +                localdata = bb.data.createCopy(d)
> > +
> > +                overrides = bb.data.getVar('OVERRIDES', localdata, True)
> > +                if not overrides:
> > +                        raise bb.build.FuncFailed('OVERRIDES not
> defined')
> > +
> > +                bb.data.setVar('OVERRIDES', label + ':' + overrides,
> > localdata)
> > +                bb.data.update_data(localdata)
> > +
> > +                cfgfile.write('\nmenuentry \'%s\'{\n' % (label))
> > +                cfgfile.write('linux /vmlinuz ')
> > +
> > +                append = bb.data.getVar('GRUB_APPEND', localdata, 1)
> > +                initrd = bb.data.getVar('INITRD', localdata, 1)
> > +
> > +                if append:
> > +                        cfgfile.write('%s' % (append))
> > +                cfgfile.write('\n')
> > +
> > +                if initrd:
> > +                        cfgfile.write('initrd /initrd')
> > +                cfgfile.write('\n}\n')
> > +
> > +    cfgfile.close()
> > +}
>
> I had not done this part yet, I can roll this into my series and keep it
> attributed to you.
>
> > diff --git a/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
> > b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
> > new file mode 100755
> > index 0000000..0d80854
> > --- /dev/null
> > +++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
> > @@ -0,0 +1,9 @@
> > +#!/bin/sh
> > +exec tail -n +3 $0
> > +# This file provides an easy way to add custom menu entries.  Simply
> > type the
> > +# menu entries you want to add after this comment.  Be careful not to
> > change
> > +# the 'exec tail' line above.
> > +menuentry "Linux" {
> > +    set root=(hd0,1)
> > +    linux /boot/vmlinuz root=__ROOTFS__ rw __VIDEO_MODE__ __VGA_MODE__
> > quiet
> > +}
> > diff --git
> > a/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
> > b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
> > new file mode 100644
> > index 0000000..326951d
> > --- /dev/null
> > +++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
> > @@ -0,0 +1,20 @@
> > +Upstream-Status: Inappropriate [embedded specific]
> > +
> > +Our use of grub-install doesn't require the -x option, so we should be
> > +be able make use of grep versions that don't support it.
> > +
> > +Signed-off-by: Tom Zanussi <tom.zanussi@intel.com
> > <mailto:tom.zanussi@intel.com>>
> > +
> > +Index: grub-1.99/util/grub-install.in <http://grub-install.in>
> > +===================================================================
> > +--- grub-1.99.orig/util/grub-install.in <http://grub-install.in>
> > 2011-09-09 22:37:20.093906679 -0500
> > ++++ grub-1.99/util/grub-install.in <http://grub-install.in>
> > 2011-09-09 22:37:30.854737882 -0500
> > +@@ -510,7 +510,7 @@
> > +
> > + if [ "x${devabstraction_module}" = "x" ] ; then
> > +     if [ x"${install_device}" != x ]; then
> > +-      if echo "${install_device}" | grep -qx "(.*)" ; then
> > ++      if echo "${install_device}" | grep -q "(.*)" ; then
> > +         install_drive="${install_device}"
> > +       else
> > +         install_drive="`"$grub_probe" --device-map="${device_map}"
> > --target=drive --device "${install_device}"`" || exit 1
> > diff --git a/meta/recipes-devtools/grub-efi/grub-efi.bb
> > <http://grub-efi.bb> b/meta/recipes-devtools/grub-efi/grub-efi.bb
> > <http://grub-efi.bb>
> > new file mode 100644
> > index 0000000..1310c75
> > --- /dev/null
> > +++ b/meta/recipes-devtools/grub-efi/grub-efi.bb <http://grub-efi.bb>
> > @@ -0,0 +1,79 @@
> > +SUMMARY = "GRUB2 is the next-generation GRand Unified Bootloader"
> > +
> > +DESCRIPTION = "GRUB2 is the next generaion of a GPLed bootloader \
> > +intended to unify bootloading across x86 operating systems. In \
> > +addition to loading the Linux kernel, it implements the Multiboot \
> > +standard, which allows for flexible loading of multiple boot images."
> > +
> > +HOMEPAGE = "http://www.gnu.org/software/grub/"
> > +SECTION = "bootloaders"
> > +PRIORITY = "optional"
> > +
> > +LICENSE = "GPLv3"
> > +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> > +
> > +RDEPENDS_${PN} = "diffutils freetype"
> > +PR = "r1"
> > +PN = "grub-efi"
> > +PV = "1.99"
> > +
> > +
> > +SRC_URI = "ftp://ftp.gnu.org/gnu/grub/grub-${PV}.tar.gz
> > <ftp://ftp.gnu.org/gnu/grub/grub-$%7BPV%7D.tar.gz> \
> > +          file://grub-install.in.patch;apply=yes \
> > +          file://40_custom"
> > +
> > +inherit autotools
> > +inherit gettext
> > +
> > +def set_grub_imgfmt(bb, d):
> > +    import re
> > +    host = bb.data.getVar('HOST_SYS', d, 1)
>
> Same here, needs to be based on TARGET_ARCH
>
> > +    if re.match('i.86.*-linux', host):
> > +        return "i386"
> > +    if re.match('x86.64.*-linux', host):
> > +        return "x86_64"
> > +
> > +GRUB_IMGFMT = "${@set_grub_imgfmt(bb, d)}"
> > +
> > +EXTRA_OECONF = "--target=${GRUB_IMGFMT} --with-platform=efi
> > --enable-grub-mkfont=no \
> > +     --disable-nls --enable-efiemu=no --program-prefix="""
> > +
> > +do_update_unpack_loc () {
> > +    rm -rf grub-efi-1.99
> > +    mv grub-1.99 grub-efi-1.99
> > +}
>
> This is better done by setting the S variable, see my branch linked above:
>
> S = ${WORKDIR}/grub-${PV}
>
> > +
> > +do_unpack_append () {
> > +    bb.build.exec_func('do_update_unpack_loc', d)
> > +}
>
> drop
>
> > +
> > +do_configure() {
> > +    oe_runconf
> > +}
> > +
> > +python __anonymous () {
> > +    import re
> > +    host = bb.data.getVar('HOST_SYS', d, 1)
> > +    if not re.match('x86.64.*-linux', host) and not
> > re.match('i.86.*-linux', host):
> > +        raise bb.parse.SkipPackage("incompatible with host %s" % host)
> > +}
> > +
> > +do_install_append () {
> > +    install -m 0755 ${WORKDIR}/40_custom
> ${D}${sysconfdir}/grub.d/40_custom
> > +
> > +    if [ "${GRUB_IMGFMT}" = "i386" ]
> > +        then GRUB_EFIARCH="ia32"
> > +    else GRUB_EFIARCH="x64"
> > +    fi
> > +
> > +    ./grub-mkimage -p / -d ./grub-core/ -O ${GRUB_IMGFMT}-efi \
>
> And as we discussed (after you had sent this), we need to ensure
> grub-mkimage is a BUILDHOST_ARCH. See the oe-core thread I listed above
> some more context. It's a tough problem. I'm currently leaning towards
> the building a -native package first. In fact, I'm building native now.
> I just need to get access to the real TARGET_ARCH for the --target=
> configure argument and then it works.
>
> > +    -o ./boot${GRUB_EFIARCH}.efi \
> > +    boot linux fat serial part_msdos normal
> > +
> > +    install -d ${STAGING_LIBDIR}/grub/
> > +    install -m 644 ${S}/boot${GRUB_EFIARCH}.efi ${STAGING_LIBDIR}/grub/
> > +}
> > +
> > +FILES_${PN}-doc = "${datadir}"
> > +FILES_${PN} = "/usr /etc"
> > +
> > --
> > 1.7.2.5
> >
>
> Definitely some good bits in here Josef. Let's make sure we are in sync
> so we don't duplicate too much effort here. I will push my changes to
> the dvhart/efi branch linked above more frequently so you can have
> access to that.
>
> Do you have any objection if I lift your grub cfg generator for the
> grub-efi.bbclass? Maintaining your Signed-off-by of course.
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0016e65bb696564e0304b2771af9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Darren,<br><br>I&#39;ll track your branch to sync our efforts.<br><br>I =
meant to only generate the Grub EFI binary for the target, without includin=
g any tool/library into the root filesystem: I assumed that it&#39;s suffic=
ient to deploy the bootloader onto the top-level image. That&#39;s why I bu=
ild natively the mkimage tool and run that on the host to get the EFI execu=
table. Now, as you justly point out, there&#39;s a target mismatch: mkimage=
 incorrectly calls out the host architecture under the -O switch, whereas i=
t should have been something like ${TARGET_ARCH}-efi.<br>


<br>That said, surely a solution that embodies the GRUB tools into the root=
 filesystem is desirable.<br><br>Feel free to merge my grub config generato=
r into your branch, as well as any of my contrib you may like. Speaking of =
grub.bbclass, I named it so as it&#39;s not specifically tied to the EFI mo=
de. It basically builds up=20
the grub configuration menu, based off machine-specific parameters. I imple=
mented it among the lines of syslinux.bbclass.<br><br>- Josef<br><br><div c=
lass=3D"gmail_quote">On 23 November 2011 15:38, Darren Hart <span dir=3D"lt=
r">&lt;<a href=3D"mailto:dvhart@linux.intel.com" target=3D"_blank">dvhart@l=
inux.intel.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

Hi Josef,<br>
<div><br>
On 11/23/2011 02:39 AM, Josef Ahmad wrote:<br>
&gt; Hi all<br>
&gt;<br>
&gt; I&#39;ve been in contact with Darren Hart, who has opened an RFC re:<b=
r>
&gt; including support for EFI into Yocto.<br>
&gt; Meanwhile, due to time constraints of my own project, I worked out a<b=
r>
&gt; patch to enable EFI on IA-based BSPs.<br>
<br>
</div>There are various issues I&#39;m currently working through with respe=
ct to<br>
this. See the mail thread on openembedded-core with respect to this:<br>
<br>
<a href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2011-Nove=
mber/012972.html" target=3D"_blank">http://lists.linuxtogo.org/pipermail/op=
enembedded-core/2011-November/012972.html</a><br>
<br>
Also, while my tree is not currently ready for use, if you want to get<br>
an idea about how I&#39;m going about fixing this, you can see it here. Not=
e<br>
that this tree is a development tree and will be rebased frequently:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3D=
dvhart/efi" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/pok=
y-contrib/log/?h=3Ddvhart/efi</a><br>
<br>
More comments inline below...<br>
<div><br>
&gt;<br>
&gt; The patch makes it possible to deploy a system image that adds EFI boo=
t<br>
&gt; feature along with the legacy bios boot mode. Hence it does not replac=
e<br>
&gt; the legacy booting, which is still available on the built image.<br>
&gt; This solution appears to me conservative enough test without breaking<=
br>
&gt; existing features, and makes the following introduction of an EFI/PCBI=
OS<br>
&gt; switch relatively straightforward.<br>
&gt;<br>
&gt; To check out the feature, it&#39;s sufficient to add the following lin=
es to<br>
&gt; either your local.conf or layer.conf:<br>
&gt;<br>
&gt; =A0 =A0# Ensure you build an hddimg<br>
&gt; =A0 =A0IMAGE_FSTYPES +=3D &quot;live&quot;<br>
&gt; =A0 =A0# Enable EFI mode<br>
&gt; =A0 =A0EFI =3D &quot;1&quot;<br>
<br>
</div>We will want to make this part of the MACHINE_FEATURES variables defi=
ned<br>
in the machine config.<br>
<div><br>
&gt; =A0 =A0MACHINE_ESSENTIAL_EXTRA_RDEPENDS +=3D &quot;grub-efi&quot;<br>
&gt; =A0 =A0# Target-specific boot options (e.g. headless mode)<br>
&gt; =A0 =A0GRUB_OPTS =3D &quot;serial --unit=3D0 --speed=3D115200 --word=
=3D8 --parity=3Dno<br>
&gt; --stop=3D1&quot;<br>
&gt; =A0 =A0GRUB_APPEND =3D &quot;console=3Duart8250,io,0x3f8,115200n8 ro&q=
uot;<br>
&gt; =A0 =A0GRUB_TIMEOUT =3D &quot;10&quot;<br>
&gt;<br>
&gt; This will produce a system image containing the EFI Grub bootloader +<=
br>
&gt; boot configuration file.<br>
&gt;<br>
&gt; Currently, the patch applies to the meta layer and therefore has globa=
l<br>
&gt; visibility. However, I see from yesterday&#39;s meeting minutes that<b=
r>
&gt; meta-intel has been added as a layer itself. Which comes in handy, as =
we<br>
&gt; can narrow the scope of the patch to the Intel targets, which are the<=
br>
&gt; only supported machines at the moment.<br>
&gt;<br>
&gt; Feedbacks are keenly appreciated. I&#39;m still in ramp-up phase with =
Yocto,<br>
&gt; so I might be doing incorrect assumptions, or not complying with commo=
n<br>
&gt; practices.<br>
&gt;<br>
&gt; - Josef<br>
&gt;<br>
&gt; -----------------------------------<br>
&gt;<br>
&gt; From d04ffad92107572f70c06e5692083f285d767c01 Mon Sep 17 00:00:00 2001=
<br>
</div>&gt; From: Josef Ahmad &lt;<a href=3D"mailto:josef.ahmad@intel.com" t=
arget=3D"_blank">josef.ahmad@intel.com</a> &lt;mailto:<a href=3D"mailto:jos=
ef.ahmad@intel.com" target=3D"_blank">josef.ahmad@intel.com</a>&gt;&gt;<br>
<div>&gt; Date: Thu, 17 Nov 2011 14:57:20 +0000<br>
&gt; Subject: [PATCH] Add UEFI support to Edison<br>
&gt; =A0Add UEFI GRUB support into bootimg.bbclass<br>
&gt;<br>
&gt; Add grub-efi recipe<br>
&gt;<br>
&gt; Added UEFI GRUB support for system image generation<br>
&gt;<br>
&gt; Add switch for EFI mode + automated boot conf generation<br>
&gt;<br>
&gt; Fix typo in grub.bbclass comment header<br>
&gt;<br>
&gt; x86_64-efi now supported<br>
&gt; ---<br>
&gt; =A0meta/classes/bootimg.bbclass =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 | =A0 24 ++++++<br>
&gt; =A0meta/classes/grub.bbclass =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 73<br>
&gt; ++++++++++++++++++<br>
&gt; =A0.../grub-efi/grub-efi-1.99/40_custom =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A09 ++<br>
&gt; =A0.../grub-efi/grub-efi-1.99/grub-install.in.patch =A0 | =A0 20 +++++=
<br>
</div>&gt; =A0meta/recipes-devtools/grub-efi/<a href=3D"http://grub-efi.bb"=
 target=3D"_blank">grub-efi.bb</a> &lt;<a href=3D"http://grub-efi.bb" targe=
t=3D"_blank">http://grub-efi.bb</a>&gt;<br>
<div>&gt; | =A0 79 ++++++++++++++++++++<br>
&gt; =A05 files changed, 205 insertions(+), 0 deletions(-)<br>
&gt; =A0create mode 100644 meta/classes/grub.bbclass<br>
&gt; =A0create mode 100755 meta/recipes-devtools/grub-efi/grub-efi-1.99/40_=
custom<br>
&gt; =A0create mode 100644<br>
&gt; meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch<br>
&gt; =A0create mode 100644 meta/recipes-devtools/grub-efi/<a href=3D"http:/=
/grub-efi.bb" target=3D"_blank">grub-efi.bb</a><br>
</div>&gt; &lt;<a href=3D"http://grub-efi.bb" target=3D"_blank">http://grub=
-efi.bb</a>&gt;<br>
<div>&gt;<br>
&gt; diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbcla=
ss<br>
&gt; index 49ee85e..00c70d4 100644<br>
&gt; --- a/meta/classes/bootimg.bbclass<br>
&gt; +++ b/meta/classes/bootimg.bbclass<br>
&gt; @@ -45,7 +45,20 @@ BOOTIMG_EXTRA_SPACE ?=3D &quot;512&quot;<br>
&gt; =A0SYSLINUXCFG =A0=3D &quot;${HDDDIR}/syslinux.cfg&quot;<br>
&gt; =A0SYSLINUXMENU =3D &quot;${HDDDIR}/menu&quot;<br>
&gt;<br>
&gt; +GRUBCFG =3D &quot;${HDDDIR}/grub.cfg&quot;<br>
&gt; +<br>
&gt; =A0inherit syslinux<br>
&gt; +inherit grub<br>
&gt; +<br>
<br>
</div>One thing I&#39;m working on is making it possible to choose which<br=
>
bootloader you want to use, and if you want PCBIOS, EFI, or both in your<br=
>
live image.<br>
<div><br>
&gt; +def get_grub_imgname(bb, d):<br>
&gt; + =A0 =A0import re<br>
&gt; + =A0 =A0host =3D bb.data.getVar(&#39;HOST_SYS&#39;, d, 1)<br>
&gt; + =A0 =A0if re.match(&#39;i.86.*-linux&#39;, host):<br>
&gt; + =A0 =A0 =A0 =A0return &quot;bootia32.efi&quot;<br>
&gt; + =A0 =A0if re.match(&#39;x86.64.*-linux&#39;, host):<br>
&gt; + =A0 =A0 =A0 =A0return &quot;bootx64.efi&quot;<br>
<br>
<br>
</div>This needs to be based on the TARGET_ARCH, not the HOST_SYS.<br>
<div><br>
&gt; +<br>
&gt; +GRUB_IMGNAME =3D &quot;${@get_grub_imgname(bb, d)}&quot;<br>
&gt;<br>
&gt; =A0build_boot_bin() {<br>
&gt; =A0 =A0 =A0install -d ${HDDDIR}<br>
&gt; @@ -62,6 +75,12 @@ build_boot_bin() {<br>
&gt;<br>
&gt; =A0 =A0 =A0install -m 444 ${STAGING_LIBDIR}/syslinux/ldlinux.sys<br>
&gt; ${HDDDIR}/ldlinux.sys<br>
&gt;<br>
&gt; + =A0 =A0# TODO locate bootloader under /EFI/boot/ as soon as mkdosfs =
bug is<br>
&gt; fixed<br>
&gt; +<br>
&gt; + =A0 =A0if [ -n &quot;${EFI}&quot; ]; then<br>
<br>
</div>OK, good.<br>
<div><br>
&gt; + =A0 =A0 =A0 =A0install -m 444 ${STAGING_LIBDIR}/grub/${GRUB_IMGNAME}=
 ${HDDDIR}/<br>
&gt; + =A0 =A0fi<br>
&gt; +<br>
&gt; =A0 =A0 =A0# Do a little math, bash style<br>
&gt; =A0 =A0 =A0#BLOCKS=3D`du -s ${HDDDIR} | cut -f 1`<br>
&gt; =A0 =A0 =A0BLOCKS=3D`du -bks ${HDDDIR} | cut -f 1`<br>
&gt; @@ -118,6 +137,11 @@ build_boot_bin() {<br>
&gt;<br>
&gt; =A0python do_bootimg() {<br>
&gt; =A0 =A0 =A0bb.build.exec_func(&#39;build_syslinux_cfg&#39;, d)<br>
&gt; +<br>
&gt; + =A0 =A0efi =3D bb.data.getVar(&#39;EFI&#39;, d, 1)<br>
&gt; + =A0 =A0if efi:<br>
&gt; + =A0 =A0 =A0 =A0bb.build.exec_func(&#39;build_grub_cfg&#39;, d)<br>
&gt; +<br>
&gt; =A0 =A0 =A0bb.build.exec_func(&#39;build_boot_bin&#39;, d)<br>
&gt; =A0}<br>
&gt;<br>
&gt; diff --git a/meta/classes/grub.bbclass b/meta/classes/grub.bbclass<br>
&gt; new file mode 100644<br>
&gt; index 0000000..b461fc5<br>
&gt; --- /dev/null<br>
&gt; +++ b/meta/classes/grub.bbclass<br>
<br>
</div>I&#39;ve been calling mine grub-efi to distinguish it from the PCBIOS=
 version.<br>
<div><div><br>
&gt; @@ -0,0 +1,73 @@<br>
&gt; +# grub.bbclass<br>
&gt; +# (based off syslinux.bbclass Copyright (C) 2004-2006, Advanced Micro=
<br>
&gt; Devices, Inc.)<br>
&gt; +<br>
&gt; +python build_grub_cfg () {<br>
&gt; + =A0 =A0import sys<br>
&gt; +<br>
&gt; + =A0 =A0workdir =3D bb.data.getVar(&#39;WORKDIR&#39;, d, 1)<br>
&gt; + =A0 =A0if not workdir:<br>
&gt; + =A0 =A0 =A0 =A0bb.error(&quot;WORKDIR not defined, unable to package=
&quot;)<br>
&gt; + =A0 =A0 =A0 =A0return<br>
&gt; +<br>
&gt; + =A0 =A0labels =3D bb.data.getVar(&#39;LABELS&#39;, d, 1)<br>
&gt; + =A0 =A0if not labels:<br>
&gt; + =A0 =A0 =A0 =A0bb.debug(1, &quot;LABELS not defined, nothing to do&q=
uot;)<br>
&gt; + =A0 =A0 =A0 =A0return<br>
&gt; +<br>
&gt; + =A0 =A0if labels =3D=3D []:<br>
&gt; + =A0 =A0 =A0 =A0bb.debug(1, &quot;No labels, nothing to do&quot;)<br>
&gt; + =A0 =A0 =A0 =A0return<br>
&gt; +<br>
&gt; + =A0 =A0cfile =3D bb.data.getVar(&#39;GRUBCFG&#39;, d, 1)<br>
&gt; + =A0 =A0if not cfile:<br>
&gt; + =A0 =A0 =A0 =A0raise bb.build.FuncFailed(&#39;Unable to read GRUBCFG=
&#39;)<br>
&gt; +<br>
&gt; + =A0 =A0bb.mkdirhier(os.path.dirname(cfile))<br>
&gt; +<br>
&gt; + =A0 =A0try:<br>
&gt; + =A0 =A0 =A0 =A0 cfgfile =3D file(cfile, &#39;w&#39;)<br>
&gt; + =A0 =A0except OSError:<br>
&gt; + =A0 =A0 =A0 =A0raise bb.build.funcFailed(&#39;Unable to open %s&#39;=
 % (cfile))<br>
&gt; +<br>
&gt; + =A0 =A0cfgfile.write(&#39;# Automatically created by OE\n&#39;)<br>
&gt; +<br>
&gt; + =A0 =A0opts =3D bb.data.getVar(&#39;GRUB_OPTS&#39;, d, 1)<br>
&gt; +<br>
&gt; + =A0 =A0if opts:<br>
&gt; + =A0 =A0 =A0 =A0for opt in opts.split(&#39;;&#39;):<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0cfgfile.write(&#39;%s\n&#39; % opt)<br>
&gt; +<br>
&gt; + =A0 =A0cfgfile.write(&#39;default=3D%s\n&#39; % (labels.split()[0]))=
<br>
&gt; +<br>
&gt; + =A0 =A0timeout =3D bb.data.getVar(&#39;GRUB_TIMEOUT&#39;, d, 1)<br>
&gt; + =A0 =A0if timeout:<br>
&gt; + =A0 =A0 =A0 =A0cfgfile.write(&#39;timeout=3D%s\n&#39; % timeout)<br>
&gt; + =A0 =A0else:<br>
&gt; + =A0 =A0 =A0 =A0cfgfile.write(&#39;timeout=3D50\n&#39;)<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0for label in labels.split():<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0localdata =3D bb.data.createCopy(d)<b=
r>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0overrides =3D bb.data.getVar(&#39;OVE=
RRIDES&#39;, localdata, True)<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if not overrides:<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0raise bb.build.FuncFa=
iled(&#39;OVERRIDES not defined&#39;)<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bb.data.setVar(&#39;OVERRIDES&#39;, l=
abel + &#39;:&#39; + overrides,<br>
&gt; localdata)<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bb.data.update_data(localdata)<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cfgfile.write(&#39;\nmenuentry \&#39;=
%s\&#39;{\n&#39; % (label))<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cfgfile.write(&#39;linux /vmlinuz &#3=
9;)<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0append =3D bb.data.getVar(&#39;GRUB_A=
PPEND&#39;, localdata, 1)<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0initrd =3D bb.data.getVar(&#39;INITRD=
&#39;, localdata, 1)<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if append:<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cfgfile.write(&#39;%s=
&#39; % (append))<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cfgfile.write(&#39;\n&#39;)<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if initrd:<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cfgfile.write(&#39;in=
itrd /initrd&#39;)<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cfgfile.write(&#39;\n}\n&#39;)<br>
&gt; +<br>
&gt; + =A0 =A0cfgfile.close()<br>
&gt; +}<br>
<br>
</div></div>I had not done this part yet, I can roll this into my series an=
d keep it<br>
attributed to you.<br>
<div><div><br>
&gt; diff --git a/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom<br=
>
&gt; b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom<br>
&gt; new file mode 100755<br>
&gt; index 0000000..0d80854<br>
&gt; --- /dev/null<br>
&gt; +++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom<br>
&gt; @@ -0,0 +1,9 @@<br>
&gt; +#!/bin/sh<br>
&gt; +exec tail -n +3 $0<br>
&gt; +# This file provides an easy way to add custom menu entries. =A0Simpl=
y<br>
&gt; type the<br>
&gt; +# menu entries you want to add after this comment. =A0Be careful not =
to<br>
&gt; change<br>
&gt; +# the &#39;exec tail&#39; line above.<br>
&gt; +menuentry &quot;Linux&quot; {<br>
&gt; + =A0 =A0set root=3D(hd0,1)<br>
&gt; + =A0 =A0linux /boot/vmlinuz root=3D__ROOTFS__ rw __VIDEO_MODE__ __VGA=
_MODE__<br>
&gt; quiet<br>
&gt; +}<br>
&gt; diff --git<br>
&gt; a/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch<b=
r>
&gt; b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch<b=
r>
&gt; new file mode 100644<br>
&gt; index 0000000..326951d<br>
&gt; --- /dev/null<br>
&gt; +++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.pat=
ch<br>
&gt; @@ -0,0 +1,20 @@<br>
&gt; +Upstream-Status: Inappropriate [embedded specific]<br>
&gt; +<br>
&gt; +Our use of grub-install doesn&#39;t require the -x option, so we shou=
ld be<br>
&gt; +be able make use of grep versions that don&#39;t support it.<br>
&gt; +<br>
&gt; +Signed-off-by: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.co=
m" target=3D"_blank">tom.zanussi@intel.com</a><br>
</div></div>&gt; &lt;mailto:<a href=3D"mailto:tom.zanussi@intel.com" target=
=3D"_blank">tom.zanussi@intel.com</a>&gt;&gt;<br>
&gt; +<br>
&gt; +Index: grub-1.99/util/<a href=3D"http://grub-install.in" target=3D"_b=
lank">grub-install.in</a> &lt;<a href=3D"http://grub-install.in" target=3D"=
_blank">http://grub-install.in</a>&gt;<br>
&gt; +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; +--- grub-1.99.orig/util/<a href=3D"http://grub-install.in" target=3D"=
_blank">grub-install.in</a> &lt;<a href=3D"http://grub-install.in" target=
=3D"_blank">http://grub-install.in</a>&gt;<br>
<div>&gt; 2011-09-09 22:37:20.093906679 -0500<br>
</div>&gt; ++++ grub-1.99/util/<a href=3D"http://grub-install.in" target=3D=
"_blank">grub-install.in</a> &lt;<a href=3D"http://grub-install.in" target=
=3D"_blank">http://grub-install.in</a>&gt;<br>
<div>&gt; 2011-09-09 22:37:30.854737882 -0500<br>
&gt; +@@ -510,7 +510,7 @@<br>
&gt; +<br>
&gt; + if [ &quot;x${devabstraction_module}&quot; =3D &quot;x&quot; ] ; the=
n<br>
&gt; + =A0 =A0 if [ x&quot;${install_device}&quot; !=3D x ]; then<br>
&gt; +- =A0 =A0 =A0if echo &quot;${install_device}&quot; | grep -qx &quot;(=
.*)&quot; ; then<br>
&gt; ++ =A0 =A0 =A0if echo &quot;${install_device}&quot; | grep -q &quot;(.=
*)&quot; ; then<br>
&gt; + =A0 =A0 =A0 =A0 install_drive=3D&quot;${install_device}&quot;<br>
&gt; + =A0 =A0 =A0 else<br>
&gt; + =A0 =A0 =A0 =A0 install_drive=3D&quot;`&quot;$grub_probe&quot; --dev=
ice-map=3D&quot;${device_map}&quot;<br>
&gt; --target=3Ddrive --device &quot;${install_device}&quot;`&quot; || exit=
 1<br>
&gt; diff --git a/meta/recipes-devtools/grub-efi/<a href=3D"http://grub-efi=
.bb" target=3D"_blank">grub-efi.bb</a><br>
</div>&gt; &lt;<a href=3D"http://grub-efi.bb" target=3D"_blank">http://grub=
-efi.bb</a>&gt; b/meta/recipes-devtools/grub-efi/<a href=3D"http://grub-efi=
.bb" target=3D"_blank">grub-efi.bb</a><br>
&gt; &lt;<a href=3D"http://grub-efi.bb" target=3D"_blank">http://grub-efi.b=
b</a>&gt;<br>
<div>&gt; new file mode 100644<br>
&gt; index 0000000..1310c75<br>
&gt; --- /dev/null<br>
</div>&gt; +++ b/meta/recipes-devtools/grub-efi/<a href=3D"http://grub-efi.=
bb" target=3D"_blank">grub-efi.bb</a> &lt;<a href=3D"http://grub-efi.bb" ta=
rget=3D"_blank">http://grub-efi.bb</a>&gt;<br>
<div>&gt; @@ -0,0 +1,79 @@<br>
&gt; +SUMMARY =3D &quot;GRUB2 is the next-generation GRand Unified Bootload=
er&quot;<br>
&gt; +<br>
&gt; +DESCRIPTION =3D &quot;GRUB2 is the next generaion of a GPLed bootload=
er \<br>
&gt; +intended to unify bootloading across x86 operating systems. In \<br>
&gt; +addition to loading the Linux kernel, it implements the Multiboot \<b=
r>
&gt; +standard, which allows for flexible loading of multiple boot images.&=
quot;<br>
&gt; +<br>
&gt; +HOMEPAGE =3D &quot;<a href=3D"http://www.gnu.org/software/grub/" targ=
et=3D"_blank">http://www.gnu.org/software/grub/</a>&quot;<br>
&gt; +SECTION =3D &quot;bootloaders&quot;<br>
&gt; +PRIORITY =3D &quot;optional&quot;<br>
&gt; +<br>
&gt; +LICENSE =3D &quot;GPLv3&quot;<br>
&gt; +LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e=
80d47fae504&quot;<br>
&gt; +<br>
&gt; +RDEPENDS_${PN} =3D &quot;diffutils freetype&quot;<br>
&gt; +PR =3D &quot;r1&quot;<br>
&gt; +PN =3D &quot;grub-efi&quot;<br>
&gt; +PV =3D &quot;1.99&quot;<br>
&gt; +<br>
&gt; +<br>
&gt; +SRC_URI =3D &quot;<a href=3D"ftp://ftp.gnu.org/gnu/grub/grub-$%7BPV%7=
D.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu/grub/grub-${PV}.tar.gz</a=
><br>
</div>&gt; &lt;<a href=3D"ftp://ftp.gnu.org/gnu/grub/grub-$%7BPV%7D.tar.gz"=
 target=3D"_blank">ftp://ftp.gnu.org/gnu/grub/grub-$%7BPV%7D.tar.gz</a>&gt;=
 \<br>
<div>&gt; + =A0 =A0 =A0 =A0 =A0file://grub-install.in.patch;apply=3Dyes \<b=
r>
&gt; + =A0 =A0 =A0 =A0 =A0file://40_custom&quot;<br>
&gt; +<br>
&gt; +inherit autotools<br>
&gt; +inherit gettext<br>
&gt; +<br>
&gt; +def set_grub_imgfmt(bb, d):<br>
&gt; + =A0 =A0import re<br>
&gt; + =A0 =A0host =3D bb.data.getVar(&#39;HOST_SYS&#39;, d, 1)<br>
<br>
</div>Same here, needs to be based on TARGET_ARCH<br>
<div><br>
&gt; + =A0 =A0if re.match(&#39;i.86.*-linux&#39;, host):<br>
&gt; + =A0 =A0 =A0 =A0return &quot;i386&quot;<br>
&gt; + =A0 =A0if re.match(&#39;x86.64.*-linux&#39;, host):<br>
&gt; + =A0 =A0 =A0 =A0return &quot;x86_64&quot;<br>
&gt; +<br>
&gt; +GRUB_IMGFMT =3D &quot;${@set_grub_imgfmt(bb, d)}&quot;<br>
&gt; +<br>
&gt; +EXTRA_OECONF =3D &quot;--target=3D${GRUB_IMGFMT} --with-platform=3Def=
i<br>
&gt; --enable-grub-mkfont=3Dno \<br>
&gt; + =A0 =A0 --disable-nls --enable-efiemu=3Dno --program-prefix=3D&quot;=
&quot;&quot;<br>
&gt; +<br>
&gt; +do_update_unpack_loc () {<br>
&gt; + =A0 =A0rm -rf grub-efi-1.99<br>
&gt; + =A0 =A0mv grub-1.99 grub-efi-1.99<br>
&gt; +}<br>
<br>
</div>This is better done by setting the S variable, see my branch linked a=
bove:<br>
<br>
S =3D ${WORKDIR}/grub-${PV}<br>
<div><br>
&gt; +<br>
&gt; +do_unpack_append () {<br>
&gt; + =A0 =A0bb.build.exec_func(&#39;do_update_unpack_loc&#39;, d)<br>
&gt; +}<br>
<br>
</div>drop<br>
<div><br>
&gt; +<br>
&gt; +do_configure() {<br>
&gt; + =A0 =A0oe_runconf<br>
&gt; +}<br>
&gt; +<br>
&gt; +python __anonymous () {<br>
&gt; + =A0 =A0import re<br>
&gt; + =A0 =A0host =3D bb.data.getVar(&#39;HOST_SYS&#39;, d, 1)<br>
&gt; + =A0 =A0if not re.match(&#39;x86.64.*-linux&#39;, host) and not<br>
&gt; re.match(&#39;i.86.*-linux&#39;, host):<br>
&gt; + =A0 =A0 =A0 =A0raise bb.parse.SkipPackage(&quot;incompatible with ho=
st %s&quot; % host)<br>
&gt; +}<br>
&gt; +<br>
&gt; +do_install_append () {<br>
&gt; + =A0 =A0install -m 0755 ${WORKDIR}/40_custom ${D}${sysconfdir}/grub.d=
/40_custom<br>
&gt; +<br>
&gt; + =A0 =A0if [ &quot;${GRUB_IMGFMT}&quot; =3D &quot;i386&quot; ]<br>
&gt; + =A0 =A0 =A0 =A0then GRUB_EFIARCH=3D&quot;ia32&quot;<br>
&gt; + =A0 =A0else GRUB_EFIARCH=3D&quot;x64&quot;<br>
&gt; + =A0 =A0fi<br>
&gt; +<br>
&gt; + =A0 =A0./grub-mkimage -p / -d ./grub-core/ -O ${GRUB_IMGFMT}-efi \<b=
r>
<br>
</div>And as we discussed (after you had sent this), we need to ensure<br>
grub-mkimage is a BUILDHOST_ARCH. See the oe-core thread I listed above<br>
some more context. It&#39;s a tough problem. I&#39;m currently leaning towa=
rds<br>
the building a -native package first. In fact, I&#39;m building native now.=
<br>
I just need to get access to the real TARGET_ARCH for the --target=3D<br>
configure argument and then it works.<br>
<div><br>
&gt; + =A0 =A0-o ./boot${GRUB_EFIARCH}.efi \<br>
&gt; + =A0 =A0boot linux fat serial part_msdos normal<br>
&gt; +<br>
&gt; + =A0 =A0install -d ${STAGING_LIBDIR}/grub/<br>
&gt; + =A0 =A0install -m 644 ${S}/boot${GRUB_EFIARCH}.efi ${STAGING_LIBDIR}=
/grub/<br>
&gt; +}<br>
&gt; +<br>
&gt; +FILES_${PN}-doc =3D &quot;${datadir}&quot;<br>
&gt; +FILES_${PN} =3D &quot;/usr /etc&quot;<br>
&gt; +<br>
&gt; --<br>
&gt; 1.7.2.5<br>
&gt;<br>
<br>
</div>Definitely some good bits in here Josef. Let&#39;s make sure we are i=
n sync<br>
so we don&#39;t duplicate too much effort here. I will push my changes to<b=
r>
the dvhart/efi branch linked above more frequently so you can have<br>
access to that.<br>
<br>
Do you have any objection if I lift your grub cfg generator for the<br>
grub-efi.bbclass? Maintaining your Signed-off-by of course.<br>
<span><font color=3D"#888888"><br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br>

--0016e65bb696564e0304b2771af9--
