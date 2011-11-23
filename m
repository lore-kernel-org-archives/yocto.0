Return-Path: <josefahmad1@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6593E006BA
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 02:39:52 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenl9 with SMTP id l9so1271821yen.35
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 02:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=LfXlsNx1dwSYvrxart4RlthStovDbssluoDcyW87MDs=;
	b=OjUBhksoPa+sNITuX5VRdE3AxM6qjuZXig7JnBcDr+K5Z4oyJ5K/OaFEhRqTh6akEN
	ajS3BpOX/uoqIZIDVpdPNiHyKFFJX2JxORLKhNjQSOmxnlTt1kufE1T9Cd4TgT1L2SXq
	UEoAEHTLcV3o3rHYsA7FO/VR79sqQUzv23Xmg=
MIME-Version: 1.0
Received: by 10.14.0.202 with SMTP id 50mr1444129eeb.235.1322044789753; Wed,
	23 Nov 2011 02:39:49 -0800 (PST)
Sender: josefahmad1@gmail.com
Received: by 10.213.19.194 with HTTP; Wed, 23 Nov 2011 02:39:49 -0800 (PST)
Date: Wed, 23 Nov 2011 10:39:49 +0000
X-Google-Sender-Auth: cePOEihzbqyezf7LWqtnW7AkNNw
Message-ID: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
From: Josef Ahmad <josef.ahmad@intel.com>
To: yocto@yoctoproject.org
Subject: [PATCH] EFI support for IA
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
X-List-Received-Date: Wed, 23 Nov 2011 10:39:53 -0000
Content-Type: multipart/alternative; boundary=001636c5c20012086104b2648ac1

--001636c5c20012086104b2648ac1
Content-Type: text/plain; charset=ISO-8859-1

Hi all

I've been in contact with Darren Hart, who has opened an RFC re: including
support for EFI into Yocto.
Meanwhile, due to time constraints of my own project, I worked out a patch
to enable EFI on IA-based BSPs.

The patch makes it possible to deploy a system image that adds EFI boot
feature along with the legacy bios boot mode. Hence it does not replace the
legacy booting, which is still available on the built image.
This solution appears to me conservative enough test without breaking
existing features, and makes the following introduction of an EFI/PCBIOS
switch relatively straightforward.

To check out the feature, it's sufficient to add the following lines to
either your local.conf or layer.conf:

   # Ensure you build an hddimg
   IMAGE_FSTYPES += "live"
   # Enable EFI mode
   EFI = "1"
   MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub-efi"
   # Target-specific boot options (e.g. headless mode)
   GRUB_OPTS = "serial --unit=0 --speed=115200 --word=8 --parity=no
--stop=1"
   GRUB_APPEND = "console=uart8250,io,0x3f8,115200n8 ro"
   GRUB_TIMEOUT = "10"

This will produce a system image containing the EFI Grub bootloader + boot
configuration file.

Currently, the patch applies to the meta layer and therefore has global
visibility. However, I see from yesterday's meeting minutes that meta-intel
has been added as a layer itself. Which comes in handy, as we can narrow
the scope of the patch to the Intel targets, which are the only supported
machines at the moment.

Feedbacks are keenly appreciated. I'm still in ramp-up phase with Yocto, so
I might be doing incorrect assumptions, or not complying with common
practices.

- Josef

-----------------------------------

From d04ffad92107572f70c06e5692083f285d767c01 Mon Sep 17 00:00:00 2001
From: Josef Ahmad <josef.ahmad@intel.com>
Date: Thu, 17 Nov 2011 14:57:20 +0000
Subject: [PATCH] Add UEFI support to Edison
 Add UEFI GRUB support into bootimg.bbclass

Add grub-efi recipe

Added UEFI GRUB support for system image generation

Add switch for EFI mode + automated boot conf generation

Fix typo in grub.bbclass comment header

x86_64-efi now supported
---
 meta/classes/bootimg.bbclass                       |   24 ++++++
 meta/classes/grub.bbclass                          |   73
++++++++++++++++++
 .../grub-efi/grub-efi-1.99/40_custom               |    9 ++
 .../grub-efi/grub-efi-1.99/grub-install.in.patch   |   20 +++++
 meta/recipes-devtools/grub-efi/grub-efi.bb         |   79
++++++++++++++++++++
 5 files changed, 205 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/grub.bbclass
 create mode 100755 meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
 create mode 100644
meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
 create mode 100644 meta/recipes-devtools/grub-efi/grub-efi.bb

diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
index 49ee85e..00c70d4 100644
--- a/meta/classes/bootimg.bbclass
+++ b/meta/classes/bootimg.bbclass
@@ -45,7 +45,20 @@ BOOTIMG_EXTRA_SPACE ?= "512"
 SYSLINUXCFG  = "${HDDDIR}/syslinux.cfg"
 SYSLINUXMENU = "${HDDDIR}/menu"

+GRUBCFG = "${HDDDIR}/grub.cfg"
+
 inherit syslinux
+inherit grub
+
+def get_grub_imgname(bb, d):
+    import re
+    host = bb.data.getVar('HOST_SYS', d, 1)
+    if re.match('i.86.*-linux', host):
+        return "bootia32.efi"
+    if re.match('x86.64.*-linux', host):
+        return "bootx64.efi"
+
+GRUB_IMGNAME = "${@get_grub_imgname(bb, d)}"

 build_boot_bin() {
     install -d ${HDDDIR}
@@ -62,6 +75,12 @@ build_boot_bin() {

     install -m 444 ${STAGING_LIBDIR}/syslinux/ldlinux.sys
${HDDDIR}/ldlinux.sys

+    # TODO locate bootloader under /EFI/boot/ as soon as mkdosfs bug is
fixed
+
+    if [ -n "${EFI}" ]; then
+        install -m 444 ${STAGING_LIBDIR}/grub/${GRUB_IMGNAME} ${HDDDIR}/
+    fi
+
     # Do a little math, bash style
     #BLOCKS=`du -s ${HDDDIR} | cut -f 1`
     BLOCKS=`du -bks ${HDDDIR} | cut -f 1`
@@ -118,6 +137,11 @@ build_boot_bin() {

 python do_bootimg() {
     bb.build.exec_func('build_syslinux_cfg', d)
+
+    efi = bb.data.getVar('EFI', d, 1)
+    if efi:
+        bb.build.exec_func('build_grub_cfg', d)
+
     bb.build.exec_func('build_boot_bin', d)
 }

diff --git a/meta/classes/grub.bbclass b/meta/classes/grub.bbclass
new file mode 100644
index 0000000..b461fc5
--- /dev/null
+++ b/meta/classes/grub.bbclass
@@ -0,0 +1,73 @@
+# grub.bbclass
+# (based off syslinux.bbclass Copyright (C) 2004-2006, Advanced Micro
Devices, Inc.)
+
+python build_grub_cfg () {
+    import sys
+
+    workdir = bb.data.getVar('WORKDIR', d, 1)
+    if not workdir:
+        bb.error("WORKDIR not defined, unable to package")
+        return
+
+    labels = bb.data.getVar('LABELS', d, 1)
+    if not labels:
+        bb.debug(1, "LABELS not defined, nothing to do")
+        return
+
+    if labels == []:
+        bb.debug(1, "No labels, nothing to do")
+        return
+
+    cfile = bb.data.getVar('GRUBCFG', d, 1)
+    if not cfile:
+        raise bb.build.FuncFailed('Unable to read GRUBCFG')
+
+    bb.mkdirhier(os.path.dirname(cfile))
+
+    try:
+         cfgfile = file(cfile, 'w')
+    except OSError:
+        raise bb.build.funcFailed('Unable to open %s' % (cfile))
+
+    cfgfile.write('# Automatically created by OE\n')
+
+    opts = bb.data.getVar('GRUB_OPTS', d, 1)
+
+    if opts:
+        for opt in opts.split(';'):
+            cfgfile.write('%s\n' % opt)
+
+    cfgfile.write('default=%s\n' % (labels.split()[0]))
+
+    timeout = bb.data.getVar('GRUB_TIMEOUT', d, 1)
+    if timeout:
+        cfgfile.write('timeout=%s\n' % timeout)
+    else:
+        cfgfile.write('timeout=50\n')
+
+        for label in labels.split():
+                localdata = bb.data.createCopy(d)
+
+                overrides = bb.data.getVar('OVERRIDES', localdata, True)
+                if not overrides:
+                        raise bb.build.FuncFailed('OVERRIDES not defined')
+
+                bb.data.setVar('OVERRIDES', label + ':' + overrides,
localdata)
+                bb.data.update_data(localdata)
+
+                cfgfile.write('\nmenuentry \'%s\'{\n' % (label))
+                cfgfile.write('linux /vmlinuz ')
+
+                append = bb.data.getVar('GRUB_APPEND', localdata, 1)
+                initrd = bb.data.getVar('INITRD', localdata, 1)
+
+                if append:
+                        cfgfile.write('%s' % (append))
+                cfgfile.write('\n')
+
+                if initrd:
+                        cfgfile.write('initrd /initrd')
+                cfgfile.write('\n}\n')
+
+    cfgfile.close()
+}
diff --git a/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
new file mode 100755
index 0000000..0d80854
--- /dev/null
+++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom
@@ -0,0 +1,9 @@
+#!/bin/sh
+exec tail -n +3 $0
+# This file provides an easy way to add custom menu entries.  Simply type
the
+# menu entries you want to add after this comment.  Be careful not to
change
+# the 'exec tail' line above.
+menuentry "Linux" {
+    set root=(hd0,1)
+    linux /boot/vmlinuz root=__ROOTFS__ rw __VIDEO_MODE__ __VGA_MODE__
quiet
+}
diff --git
a/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
new file mode 100644
index 0000000..326951d
--- /dev/null
+++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch
@@ -0,0 +1,20 @@
+Upstream-Status: Inappropriate [embedded specific]
+
+Our use of grub-install doesn't require the -x option, so we should be
+be able make use of grep versions that don't support it.
+
+Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
+
+Index: grub-1.99/util/grub-install.in
+===================================================================
+--- grub-1.99.orig/util/grub-install.in    2011-09-09 22:37:20.093906679
-0500
++++ grub-1.99/util/grub-install.in    2011-09-09 22:37:30.854737882 -0500
+@@ -510,7 +510,7 @@
+
+ if [ "x${devabstraction_module}" = "x" ] ; then
+     if [ x"${install_device}" != x ]; then
+-      if echo "${install_device}" | grep -qx "(.*)" ; then
++      if echo "${install_device}" | grep -q "(.*)" ; then
+         install_drive="${install_device}"
+       else
+         install_drive="`"$grub_probe" --device-map="${device_map}"
--target=drive --device "${install_device}"`" || exit 1
diff --git a/meta/recipes-devtools/grub-efi/grub-efi.bbb/meta/recipes-devtools/grub-efi/
grub-efi.bb
new file mode 100644
index 0000000..1310c75
--- /dev/null
+++ b/meta/recipes-devtools/grub-efi/grub-efi.bb
@@ -0,0 +1,79 @@
+SUMMARY = "GRUB2 is the next-generation GRand Unified Bootloader"
+
+DESCRIPTION = "GRUB2 is the next generaion of a GPLed bootloader \
+intended to unify bootloading across x86 operating systems. In \
+addition to loading the Linux kernel, it implements the Multiboot \
+standard, which allows for flexible loading of multiple boot images."
+
+HOMEPAGE = "http://www.gnu.org/software/grub/"
+SECTION = "bootloaders"
+PRIORITY = "optional"
+
+LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+RDEPENDS_${PN} = "diffutils freetype"
+PR = "r1"
+PN = "grub-efi"
+PV = "1.99"
+
+
+SRC_URI = "ftp://ftp.gnu.org/gnu/grub/grub-${PV}.tar.gz \
+          file://grub-install.in.patch;apply=yes \
+          file://40_custom"
+
+inherit autotools
+inherit gettext
+
+def set_grub_imgfmt(bb, d):
+    import re
+    host = bb.data.getVar('HOST_SYS', d, 1)
+    if re.match('i.86.*-linux', host):
+        return "i386"
+    if re.match('x86.64.*-linux', host):
+        return "x86_64"
+
+GRUB_IMGFMT = "${@set_grub_imgfmt(bb, d)}"
+
+EXTRA_OECONF = "--target=${GRUB_IMGFMT} --with-platform=efi
--enable-grub-mkfont=no \
+     --disable-nls --enable-efiemu=no --program-prefix="""
+
+do_update_unpack_loc () {
+    rm -rf grub-efi-1.99
+    mv grub-1.99 grub-efi-1.99
+}
+
+do_unpack_append () {
+    bb.build.exec_func('do_update_unpack_loc', d)
+}
+
+do_configure() {
+    oe_runconf
+}
+
+python __anonymous () {
+    import re
+    host = bb.data.getVar('HOST_SYS', d, 1)
+    if not re.match('x86.64.*-linux', host) and not
re.match('i.86.*-linux', host):
+        raise bb.parse.SkipPackage("incompatible with host %s" % host)
+}
+
+do_install_append () {
+    install -m 0755 ${WORKDIR}/40_custom ${D}${sysconfdir}/grub.d/40_custom
+
+    if [ "${GRUB_IMGFMT}" = "i386" ]
+        then GRUB_EFIARCH="ia32"
+    else GRUB_EFIARCH="x64"
+    fi
+
+    ./grub-mkimage -p / -d ./grub-core/ -O ${GRUB_IMGFMT}-efi \
+    -o ./boot${GRUB_EFIARCH}.efi \
+    boot linux fat serial part_msdos normal
+
+    install -d ${STAGING_LIBDIR}/grub/
+    install -m 644 ${S}/boot${GRUB_EFIARCH}.efi ${STAGING_LIBDIR}/grub/
+}
+
+FILES_${PN}-doc = "${datadir}"
+FILES_${PN} = "/usr /etc"
+
-- 
1.7.2.5

--001636c5c20012086104b2648ac1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all<br><br>I&#39;ve been in contact with Darren Hart, who has opened an =
RFC re: including support for EFI into Yocto.<br>Meanwhile, due to time con=
straints of my own project, I worked out a patch to enable EFI on IA-based =
BSPs.<br>





<br>The patch makes it possible to deploy a system image that adds EFI boot=
 feature along with the legacy bios boot mode. Hence it does not replace th=
e legacy booting, which is still available on the built image. <br>

This solution appears to me conservative enough test without breaking exist=
ing features, and makes the following introduction of an EFI/PCBIOS switch =
relatively straightforward.<br><br>To check out the feature, it&#39;s suffi=
cient to add the following lines to either your local.conf or layer.conf:<b=
r>


<br>=A0=A0 # Ensure you build an hddimg<br>=A0=A0 IMAGE_FSTYPES +=3D &quot;=
live&quot;<br>=A0=A0 # Enable EFI mode<br>=A0=A0 EFI =3D &quot;1&quot; <br>=
=A0=A0 MACHINE_ESSENTIAL_EXTRA_RDEPENDS +=3D &quot;grub-efi&quot;<br>=A0=A0=
 # Target-specific boot options (e.g. headless mode)<br>


=A0=A0 GRUB_OPTS =3D &quot;serial --unit=3D0 --speed=3D115200 --word=3D8 --=
parity=3Dno --stop=3D1&quot;<br>=A0=A0 GRUB_APPEND =3D &quot;console=3Duart=
8250,io,0x3f8,115200n8 ro&quot;<br>=A0=A0 GRUB_TIMEOUT =3D &quot;10&quot;<b=
r><br>This will produce a system image containing the EFI Grub bootloader +=
 boot configuration file.<br>


<br>Currently, the patch applies to the meta layer and therefore has global=
 visibility. However, I see from yesterday&#39;s meeting minutes that meta-=
intel has been added as a layer itself. Which comes in handy, as we can nar=
row the scope of the patch to the Intel targets, which are the only support=
ed machines at the moment.<br>





<br>Feedbacks are keenly appreciated. I&#39;m still in ramp-up phase with Y=
octo, so I might be doing incorrect assumptions, or not complying with comm=
on practices.<br><br>- Josef<br><br>-----------------------------------<br>

<br>From d04ffad92107572f70c06e5692083f285d767c01 Mon Sep 17 00:00:00 2001<=
br>From: Josef Ahmad &lt;<a href=3D"mailto:josef.ahmad@intel.com" target=3D=
"_blank">josef.ahmad@intel.com</a>&gt;<br>Date: Thu, 17 Nov 2011 14:57:20 +=
0000<br>
Subject: [PATCH] Add UEFI support to Edison<br>
=A0Add UEFI GRUB support into bootimg.bbclass<br><br>Add grub-efi recipe<br=
><br>Added UEFI GRUB support for system image generation<br><br>Add switch =
for EFI mode + automated boot conf generation<br><br>Fix typo in grub.bbcla=
ss comment header<br>

<br>x86_64-efi now supported<br>---<br>=A0meta/classes/bootimg.bbclass=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 24 =
++++++<br>=A0meta/classes/grub.bbclass=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 73 ++++++++++++++++++<br>=
=A0.../grub-efi/grub-efi-1.99/40_custom=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0=A0=A0 9 ++<br>

=A0.../grub-efi/grub-efi-1.99/grub-install.in.patch=A0=A0 |=A0=A0 20 +++++<=
br>=A0meta/recipes-devtools/grub-efi/<a href=3D"http://grub-efi.bb" target=
=3D"_blank">grub-efi.bb</a>=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 79 ++++++++++++=
++++++++<br>=A05 files changed, 205 insertions(+), 0 deletions(-)<br>

=A0create mode 100644 meta/classes/grub.bbclass<br>=A0create mode 100755 me=
ta/recipes-devtools/grub-efi/grub-efi-1.99/40_custom<br>=A0create mode 1006=
44 meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch<br>=
=A0create mode 100644 meta/recipes-devtools/grub-efi/<a href=3D"http://grub=
-efi.bb" target=3D"_blank">grub-efi.bb</a><br>

<br>diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclas=
s<br>index 49ee85e..00c70d4 100644<br>--- a/meta/classes/bootimg.bbclass<br=
>+++ b/meta/classes/bootimg.bbclass<br>@@ -45,7 +45,20 @@ BOOTIMG_EXTRA_SPA=
CE ?=3D &quot;512&quot;<br>

=A0SYSLINUXCFG=A0 =3D &quot;${HDDDIR}/syslinux.cfg&quot;<br>=A0SYSLINUXMENU=
 =3D &quot;${HDDDIR}/menu&quot;<br>=A0<br>+GRUBCFG =3D &quot;${HDDDIR}/grub=
.cfg&quot;<br>+<br>=A0inherit syslinux<br>+inherit grub<br>+<br>+def get_gr=
ub_imgname(bb, d):<br>

+=A0=A0=A0 import re<br>+=A0=A0=A0 host =3D bb.data.getVar(&#39;HOST_SYS&#3=
9;, d, 1)<br>+=A0=A0=A0 if re.match(&#39;i.86.*-linux&#39;, host):<br>+=A0=
=A0=A0=A0=A0=A0=A0 return &quot;bootia32.efi&quot;<br>+=A0=A0=A0 if re.matc=
h(&#39;x86.64.*-linux&#39;, host):<br>

+=A0=A0=A0=A0=A0=A0=A0 return &quot;bootx64.efi&quot;<br>+<br>+GRUB_IMGNAME=
 =3D &quot;${@get_grub_imgname(bb, d)}&quot;<br>=A0=A0=A0=A0 =A0=A0=A0 <br>=
=A0build_boot_bin() {<br>=A0=A0=A0=A0 install -d ${HDDDIR}<br>@@ -62,6 +75,=
12 @@ build_boot_bin() {<br>=A0<br>=A0=A0=A0=A0 install -m 444 ${STAGING_LI=
BDIR}/syslinux/ldlinux.sys ${HDDDIR}/ldlinux.sys<br>

=A0<br>+=A0=A0=A0 # TODO locate bootloader under /EFI/boot/ as soon as mkdo=
sfs bug is fixed<br>+<br>+=A0=A0=A0 if [ -n &quot;${EFI}&quot; ]; then<br>+=
=A0=A0=A0 =A0=A0=A0 install -m 444 ${STAGING_LIBDIR}/grub/${GRUB_IMGNAME} $=
{HDDDIR}/<br>+=A0=A0=A0 fi<br>

+=A0=A0=A0 <br>=A0=A0=A0=A0 # Do a little math, bash style<br>=A0=A0=A0=A0 =
#BLOCKS=3D`du -s ${HDDDIR} | cut -f 1`<br>=A0=A0=A0=A0 BLOCKS=3D`du -bks ${=
HDDDIR} | cut -f 1`<br>@@ -118,6 +137,11 @@ build_boot_bin() {<br>=A0<br>=
=A0python do_bootimg() {<br>=A0=A0=A0=A0 bb.build.exec_func(&#39;build_sysl=
inux_cfg&#39;, d)<br>

+<br>+=A0=A0=A0 efi =3D bb.data.getVar(&#39;EFI&#39;, d, 1)<br>+=A0=A0=A0 i=
f efi:<br>+=A0=A0=A0 =A0=A0=A0 bb.build.exec_func(&#39;build_grub_cfg&#39;,=
 d)<br>+<br>=A0=A0=A0=A0 bb.build.exec_func(&#39;build_boot_bin&#39;, d)<br=
>=A0}<br>=A0<br>diff --git a/meta/classes/grub.bbclass b/meta/classes/grub.=
bbclass<br>

new file mode 100644<br>index 0000000..b461fc5<br>--- /dev/null<br>+++ b/me=
ta/classes/grub.bbclass<br>@@ -0,0 +1,73 @@<br>+# grub.bbclass<br>+# (based=
 off syslinux.bbclass Copyright (C) 2004-2006, Advanced Micro Devices, Inc.=
)<br>

+<br>+python build_grub_cfg () {<br>+=A0=A0=A0 import sys<br>+<br>+=A0=A0=
=A0 workdir =3D bb.data.getVar(&#39;WORKDIR&#39;, d, 1)<br>+=A0=A0=A0 if no=
t workdir:<br>+=A0=A0=A0 =A0=A0=A0 bb.error(&quot;WORKDIR not defined, unab=
le to package&quot;)<br>+=A0=A0=A0 =A0=A0=A0 return<br>

+=A0=A0=A0 =A0=A0=A0 <br>+=A0=A0=A0 labels =3D bb.data.getVar(&#39;LABELS&#=
39;, d, 1)<br>+=A0=A0=A0 if not labels:<br>+=A0=A0=A0 =A0=A0=A0 bb.debug(1,=
 &quot;LABELS not defined, nothing to do&quot;)<br>+=A0=A0=A0 =A0=A0=A0 ret=
urn<br>+=A0=A0=A0 <br>+=A0=A0=A0 if labels =3D=3D []:<br>+=A0=A0=A0 =A0=A0=
=A0 bb.debug(1, &quot;No labels, nothing to do&quot;)<br>

+=A0=A0=A0 =A0=A0=A0 return<br>+<br>+=A0=A0=A0 cfile =3D bb.data.getVar(&#3=
9;GRUBCFG&#39;, d, 1)<br>+=A0=A0=A0 if not cfile:<br>+=A0=A0=A0 =A0=A0=A0 r=
aise bb.build.FuncFailed(&#39;Unable to read GRUBCFG&#39;)<br>+<br>+=A0=A0=
=A0 bb.mkdirhier(os.path.dirname(cfile))<br>

+<br>+=A0=A0=A0 try:<br>+ =A0=A0=A0 =A0=A0=A0 cfgfile =3D file(cfile, &#39;=
w&#39;)<br>+=A0=A0=A0 except OSError:<br>+=A0=A0=A0 =A0=A0=A0 raise bb.buil=
d.funcFailed(&#39;Unable to open %s&#39; % (cfile))<br>+<br>+=A0=A0=A0 cfgf=
ile.write(&#39;# Automatically created by OE\n&#39;)<br>

+<br>+=A0=A0=A0 opts =3D bb.data.getVar(&#39;GRUB_OPTS&#39;, d, 1)<br>+<br>=
+=A0=A0=A0 if opts:<br>+=A0=A0=A0 =A0=A0=A0 for opt in opts.split(&#39;;&#3=
9;):<br>+=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 cfgfile.write(&#39;%s\n&#39; % opt)<=
br>+<br>+=A0=A0=A0 cfgfile.write(&#39;default=3D%s\n&#39; % (labels.split()=
[0]))<br>

+<br>+=A0=A0=A0 timeout =3D bb.data.getVar(&#39;GRUB_TIMEOUT&#39;, d, 1)<br=
>+=A0=A0=A0 if timeout:<br>+=A0=A0=A0 =A0=A0=A0 cfgfile.write(&#39;timeout=
=3D%s\n&#39; % timeout)<br>+=A0=A0=A0 else:<br>+=A0=A0=A0 =A0=A0=A0 cfgfile=
.write(&#39;timeout=3D50\n&#39;)<br>+<br>+=A0=A0=A0=A0=A0=A0=A0 for label i=
n labels.split():<br>

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 localdata =3D bb.data.create=
Copy(d)<br>+<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 overrides =
=3D bb.data.getVar(&#39;OVERRIDES&#39;, localdata, True)<br>+=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if not overrides:<br>+=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 raise bb.build.FuncFail=
ed(&#39;OVERRIDES not defined&#39;)<br>

+<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bb.data.setVar(&#39;OVE=
RRIDES&#39;, label + &#39;:&#39; + overrides, localdata)<br>+=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bb.data.update_data(localdata)<br>+<br>+=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cfgfile.write(&#39;\nmenuentr=
y \&#39;%s\&#39;{\n&#39; % (label))<br>

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cfgfile.write(&#39;linux /vm=
linuz &#39;)<br>+<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 append =
=3D bb.data.getVar(&#39;GRUB_APPEND&#39;, localdata, 1)<br>+=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 initrd =3D bb.data.getVar(&#39;INITRD&#39;, =
localdata, 1)<br>

+<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if append:<br>+=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cfgfile.wri=
te(&#39;%s&#39; % (append))<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 cfgfile.write(&#39;\n&#39;)<br>+=A0=A0=A0 <br>+=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 if initrd:<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cfgfile.write(&#39;initrd /initrd&#39;)<b=
r>

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cfgfile.write(&#39;\n}\n&#39=
;)<br>+<br>+=A0=A0=A0 cfgfile.close()<br>+}<br>diff --git a/meta/recipes-de=
vtools/grub-efi/grub-efi-1.99/40_custom b/meta/recipes-devtools/grub-efi/gr=
ub-efi-1.99/40_custom<br>new file mode 100755<br>

index 0000000..0d80854<br>--- /dev/null<br>+++ b/meta/recipes-devtools/grub=
-efi/grub-efi-1.99/40_custom<br>@@ -0,0 +1,9 @@<br>+#!/bin/sh<br>+exec tail=
 -n +3 $0<br>+# This file provides an easy way to add custom menu entries.=
=A0 Simply type the<br>

+# menu entries you want to add after this comment.=A0 Be careful not to ch=
ange<br>+# the &#39;exec tail&#39; line above.<br>+menuentry &quot;Linux&qu=
ot; {<br>+=A0=A0=A0 set root=3D(hd0,1)<br>+=A0=A0=A0 linux /boot/vmlinuz ro=
ot=3D__ROOTFS__ rw __VIDEO_MODE__ __VGA_MODE__ quiet<br>

+}<br>diff --git a/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-instal=
l.in.patch b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.p=
atch<br>new file mode 100644<br>index 0000000..326951d<br>--- /dev/null<br>

+++ b/meta/recipes-devtools/grub-efi/grub-efi-1.99/grub-install.in.patch<br=
>@@ -0,0 +1,20 @@<br>+Upstream-Status: Inappropriate [embedded specific]<br=
>+<br>+Our use of grub-install doesn&#39;t require the -x option, so we sho=
uld be<br>

+be able make use of grep versions that don&#39;t support it.<br>+<br>+Sign=
ed-off-by: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com" target=
=3D"_blank">tom.zanussi@intel.com</a>&gt;<br>+<br>+Index: grub-1.99/util/<a=
 href=3D"http://grub-install.in" target=3D"_blank">grub-install.in</a><br>

+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>+--- grub-1.99.or=
ig/util/<a href=3D"http://grub-install.in" target=3D"_blank">grub-install.i=
n</a>=A0=A0=A0 2011-09-09 22:37:20.093906679 -0500<br>++++ grub-1.99/util/<=
a href=3D"http://grub-install.in" target=3D"_blank">grub-install.in</a>=A0=
=A0=A0 2011-09-09 22:37:30.854737882 -0500<br>

+@@ -510,7 +510,7 @@<br>+ <br>+ if [ &quot;x${devabstraction_module}&quot; =
=3D &quot;x&quot; ] ; then<br>+=A0=A0=A0=A0 if [ x&quot;${install_device}&q=
uot; !=3D x ]; then<br>+-=A0=A0=A0=A0=A0 if echo &quot;${install_device}&qu=
ot; | grep -qx &quot;(.*)&quot; ; then<br>

++=A0=A0=A0=A0=A0 if echo &quot;${install_device}&quot; | grep -q &quot;(.*=
)&quot; ; then<br>+=A0=A0=A0=A0=A0=A0=A0=A0 install_drive=3D&quot;${install=
_device}&quot;<br>+=A0=A0=A0=A0=A0=A0 else<br>+=A0=A0=A0=A0=A0=A0=A0=A0 ins=
tall_drive=3D&quot;`&quot;$grub_probe&quot; --device-map=3D&quot;${device_m=
ap}&quot; --target=3Ddrive --device &quot;${install_device}&quot;`&quot; ||=
 exit 1<br>

diff --git a/meta/recipes-devtools/grub-efi/<a href=3D"http://grub-efi.bb" =
target=3D"_blank">grub-efi.bb</a> b/meta/recipes-devtools/grub-efi/<a href=
=3D"http://grub-efi.bb" target=3D"_blank">grub-efi.bb</a><br>new file mode =
100644<br>
index 0000000..1310c75<br>--- /dev/null<br>
+++ b/meta/recipes-devtools/grub-efi/<a href=3D"http://grub-efi.bb" target=
=3D"_blank">grub-efi.bb</a><br>@@ -0,0 +1,79 @@<br>+SUMMARY =3D &quot;GRUB2=
 is the next-generation GRand Unified Bootloader&quot;<br>+<br>+DESCRIPTION=
 =3D &quot;GRUB2 is the next generaion of a GPLed bootloader \<br>

+intended to unify bootloading across x86 operating systems. In \<br>+addit=
ion to loading the Linux kernel, it implements the Multiboot \<br>+standard=
, which allows for flexible loading of multiple boot images.&quot;<br>
+<br>
+HOMEPAGE =3D &quot;<a href=3D"http://www.gnu.org/software/grub/" target=3D=
"_blank">http://www.gnu.org/software/grub/</a>&quot;<br>+SECTION =3D &quot;=
bootloaders&quot;<br>+PRIORITY =3D &quot;optional&quot;<br>+<br>+LICENSE =
=3D &quot;GPLv3&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e80d47=
fae504&quot;<br>
+<br>+RDEPENDS_${PN} =3D &quot;diffutils freetype&quot;<br>+PR =3D &quot;r1=
&quot;<br>+PN =3D &quot;grub-efi&quot;<br>+PV =3D &quot;1.99&quot;<br>+<br>=
+<br>+SRC_URI =3D &quot;<a href=3D"ftp://ftp.gnu.org/gnu/grub/grub-$%7BPV%7=
D.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu/grub/grub-${PV}.tar.gz</a=
> \<br>

+=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://grub-install.in.patch;apply=3Dyes \<br>=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://40_custom&quot;<br>+<br>+inherit autoto=
ols<br>+inherit gettext<br>+<br>+def set_grub_imgfmt(bb, d):<br>+=A0=A0=A0 =
import re<br>+=A0=A0=A0 host =3D bb.data.getVar(&#39;HOST_SYS&#39;, d, 1)=
=A0=A0=A0 <br>

+=A0=A0=A0 if re.match(&#39;i.86.*-linux&#39;, host):<br>+=A0=A0=A0=A0=A0=
=A0=A0 return &quot;i386&quot;<br>+=A0=A0=A0 if re.match(&#39;x86.64.*-linu=
x&#39;, host):<br>+=A0=A0=A0=A0=A0=A0=A0 return &quot;x86_64&quot;<br>+<br>=
+GRUB_IMGFMT =3D &quot;${@set_grub_imgfmt(bb, d)}&quot;<br>

+<br>+EXTRA_OECONF =3D &quot;--target=3D${GRUB_IMGFMT} --with-platform=3Def=
i --enable-grub-mkfont=3Dno \<br>+=A0=A0=A0 =A0--disable-nls --enable-efiem=
u=3Dno --program-prefix=3D&quot;&quot;&quot;<br>+<br>+do_update_unpack_loc =
() {<br>+=A0=A0=A0 rm -rf grub-efi-1.99<br>

+=A0=A0=A0 mv grub-1.99 grub-efi-1.99<br>+}<br>+<br>+do_unpack_append () {<=
br>+=A0=A0=A0 bb.build.exec_func(&#39;do_update_unpack_loc&#39;, d)<br>+}<b=
r>+<br>+do_configure() {<br>+=A0=A0=A0 oe_runconf<br>+}<br>+<br>+python __a=
nonymous () {<br>

+=A0=A0=A0 import re<br>+=A0=A0=A0 host =3D bb.data.getVar(&#39;HOST_SYS&#3=
9;, d, 1)<br>+=A0=A0=A0 if not re.match(&#39;x86.64.*-linux&#39;, host) and=
 not re.match(&#39;i.86.*-linux&#39;, host):<br>+=A0=A0=A0=A0=A0=A0=A0 rais=
e bb.parse.SkipPackage(&quot;incompatible with host %s&quot; % host)<br>

+}<br>+<br>+do_install_append () {<br>+=A0=A0=A0 install -m 0755 ${WORKDIR}=
/40_custom ${D}${sysconfdir}/grub.d/40_custom<br>+<br>+=A0=A0=A0 if [ &quot=
;${GRUB_IMGFMT}&quot; =3D &quot;i386&quot; ] <br>+=A0=A0=A0 =A0=A0=A0 then =
GRUB_EFIARCH=3D&quot;ia32&quot; <br>

+=A0=A0=A0 else GRUB_EFIARCH=3D&quot;x64&quot;<br>+=A0=A0=A0 fi<br>+<br>+=
=A0=A0=A0 ./grub-mkimage -p / -d ./grub-core/ -O ${GRUB_IMGFMT}-efi \<br>+=
=A0=A0=A0 -o ./boot${GRUB_EFIARCH}.efi \<br>+=A0=A0=A0 boot linux fat seria=
l part_msdos normal<br>+=A0=A0=A0 <br>

+=A0=A0=A0 install -d ${STAGING_LIBDIR}/grub/<br>+=A0=A0=A0 install -m 644 =
${S}/boot${GRUB_EFIARCH}.efi ${STAGING_LIBDIR}/grub/<br>+}<br>+<br>+FILES_$=
{PN}-doc =3D &quot;${datadir}&quot;<br>+FILES_${PN} =3D &quot;/usr /etc&quo=
t;<br>+<br>
-- <br>
1.7.2.5<br><br><br>

--001636c5c20012086104b2648ac1--
