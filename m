Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E63094C80BD4
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 02:44:54 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn6 with SMTP id 6so1510699iwn.35
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 00:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=iKSUcu7Y5Z1qiGEMsD3rZx7hfJdQy7riBtSqcs5XRqc=;
	b=PcFY8Jqln7B00atF3lT8tizNIJu8bJHT9RIsNyf4/ArZ4COIApI6bB6AZ6mgjzkM7b
	iMjV6VatI4Z78cfJsXhRfMVIih+S6QBphAojQIkREFKr40z8nQu4N47SUBeBwmQHNtvc
	4loOiObgoNe5qG/pa18lmqm6+c7a9YXyDgByM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=SACSHuzx356ZMbjrR87a8gS4lEy4njKvTlP2xpHlkKkBuUmezeulfQ7qkmYsar/7B+
	R1ad9qH6CBb7BDvMspjKqISbyRbWPucdTxtv2u6URRmVN46wWz60eDhQ2QqwSymkKRMq
	l8IpR76xyg6aV/etdsOYbU9stl3E60s1YDqwk=
MIME-Version: 1.0
Received: by 10.42.178.133 with SMTP id bm5mr261764icb.134.1290156293850; Fri,
	19 Nov 2010 00:44:53 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Fri, 19 Nov 2010 00:44:53 -0800 (PST)
Date: Fri, 19 Nov 2010 09:44:53 +0100
Message-ID: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: inc files in recipes
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
X-List-Received-Date: Fri, 19 Nov 2010 08:44:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

Dear all,

Peeking at flex I was wondering whether we should try to avoid using
.inc files in recipes especially if there is only one recipe.

flex has:
frans@frans-desktop:~/yocto/poky-laverne-4.0$ ls meta/recipes-devtools/flex
flex_2.5.35.bb	flex.inc

Here the inc file could be merged into the bb file.
This has the advantage of having only a single file, so it is slightly
easier if you want to read or maintain the recipe.

For recipes with multiple versions (e.g. tar) it might be useful to
have inc files. It is really a tradeoff between easy access/reading
and maintainability here.

(and I think for some packages (e.g. gcc) the inc file is actually very useful!)

Frans

PS: laverne seems to have 255 inc files:
frans@frans-desktop:~/yocto/poky-laverne-4.0$ find meta* | grep \.inc\$
meta/recipes-core/glib-2.0/glib-2.0.inc
meta/recipes-core/glib-2.0/glib.inc
meta/recipes-core/udev/udev.inc
meta/recipes-core/udev/udev-new.inc
meta/recipes-core/glibc/glibc.inc
meta/recipes-core/glibc/glibc-package.inc
meta/recipes-core/glibc/glibc-initial.inc
meta/recipes-core/glibc/glibc-stage.inc
meta/recipes-core/busybox/busybox.inc
meta/recipes-core/readline/readline.inc
meta/recipes-core/dbus/dbus-glib.inc
meta/recipes-core/dbus/dbus.inc
meta/recipes-core/uclibc/uclibc.inc
meta/recipes-core/ncurses/ncurses.inc
meta/recipes-core/dropbear/dropbear.inc
meta/recipes-core/eglibc/eglibc-package.inc
meta/recipes-core/eglibc/eglibc.inc
meta/recipes-core/eglibc/eglibc-initial.inc
meta/recipes-core/expat/expat.inc
meta/recipes-core/images/poky-image-live.inc
meta/recipes-core/images/poky-image-directdisk.inc
meta/recipes-core/util-linux/util-linux.inc
meta/recipes-core/libxml/libxml2.inc
meta/recipes-bsp/pcmciautils/pcmciautils.inc
meta/recipes-bsp/uboot/u-boot.inc
meta/recipes-bsp/hostap/hostap-utils.inc
meta/recipes-bsp/acpid/acpid.inc
meta/recipes-bsp/x-load/x-load.inc
meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato.inc
meta/recipes-sato/gtk-engines/gtk-sato-engine.inc
meta/recipes-sato/sato-icon-theme/sato-icon-theme.inc
meta/recipes-sato/pimlico/dates.inc
meta/recipes-sato/pimlico/contacts.inc
meta/recipes-sato/pimlico/tasks.inc
meta/recipes-sato/claws-mail/claws-mail.inc
meta/classes/ccache.inc
meta/recipes-multimedia/gstreamer/gst-fluendo.inc
meta/recipes-multimedia/gstreamer/gst-plugins.inc
meta/recipes-multimedia/alsa/alsa-fpu.inc
meta/recipes-extended/cpio/cpio_v2.inc
meta/recipes-extended/byacc/byacc.inc
meta/recipes-extended/findutils/findutils.inc
meta/recipes-extended/zip/zip.inc
meta/recipes-extended/augeas/augeas.inc
meta/recipes-extended/sysstat/sysstat.inc
meta/recipes-extended/psmisc/psmisc.inc
meta/recipes-extended/shadow/shadow.inc
meta/recipes-extended/sudo/sudo.inc
meta/recipes-extended/procps/procps.inc
meta/recipes-extended/tar/tar.inc
meta/recipes-extended/sysklogd/sysklogd.inc
meta/recipes-extended/time/time.inc
meta/recipes-extended/bash/bash.inc
meta/recipes-extended/gzip/gzip.inc
meta/recipes-extended/gperf/gperf.inc
meta/recipes-tbd/pulseaudio/pulseaudio.inc
meta/recipes-tbd/poppler/poppler.inc
meta/recipes-tbd/poppler/poppler-fpu.inc
meta/conf/machine/include/tune-c3.inc
meta/conf/machine/include/tune-sh3.inc
meta/conf/machine/include/tune-ppce500.inc
meta/conf/machine/include/tune-cortexr4.inc
meta/conf/machine/include/tune-strongarm1100.inc
meta/conf/machine/include/zaurus-2.6.inc
meta/conf/machine/include/tune-xscale.inc
meta/conf/machine/include/tune-ppce300c2.inc
meta/conf/machine/include/tune-armv7.inc
meta/conf/machine/include/qemu.inc
meta/conf/machine/include/tune-supersparc.inc
meta/conf/machine/include/tune-cortexa8.inc
meta/conf/machine/include/tune-iwmmxt.inc
meta/conf/machine/include/tune-cortexm1.inc
meta/conf/machine/include/tune-cortexm3.inc
meta/conf/machine/include/tune-ppc603e.inc
meta/conf/machine/include/tune-ep9312.inc
meta/conf/machine/include/tune-arm9tdmi.inc
meta/conf/machine/include/tune-atom.inc
meta/conf/machine/include/tune-thumb.inc
meta/conf/machine/include/zaurus-clamshell.inc
meta/conf/machine/include/tune-arm920t.inc
meta/conf/machine/include/tune-sh4.inc
meta/conf/machine/include/tune-arm926ejs.inc
meta/conf/machine/include/tune-mips32.inc
meta/conf/machine/include/tune-arm1136jf-s.inc
meta/conf/distro/include/poky-uclibc.inc
meta/conf/distro/include/poky-external-csl2007q3.inc
meta/conf/distro/include/preferred-xorg-versions.inc
meta/conf/distro/include/poky-default.inc
meta/conf/distro/include/poky-glibc.inc
meta/conf/distro/include/poky-eglibc.inc
meta/conf/distro/include/as-needed.inc
meta/conf/distro/include/distro_tracking_fields.inc
meta/conf/distro/include/poky-default-revisions.inc
meta/conf/distro/include/poky-external.inc
meta/conf/distro/include/world-broken.inc
meta/conf/distro/include/poky-eabi-csl2005q3-2.inc
meta/conf/distro/include/poky-oabi.inc
meta/conf/distro/include/poky-fixed-revisions.inc
meta/conf/distro/include/poky-external-oabi.inc
meta/conf/distro/include/poky-floating-revisions.inc
meta/conf/distro/include/poky-external-default.inc
meta/conf/distro/include/poky-external-csl2008q3.inc
meta/conf/distro/include/poky-external-csl2006q3.inc
meta/recipes-gnome/gnome/gnome-doc-utils.inc
meta/recipes-gnome/gnome/gnome-desktop.inc
meta/recipes-gnome/abiword/abiword.inc
meta/recipes-gnome/abiword/abiword-2.5.inc
meta/recipes-gnome/gtk+/gtk+.inc
meta/recipes-gnome/tasks/task-sdk-gmae.inc
meta/recipes-kernel/fuse/fuse.inc
meta/recipes-kernel/dtc/dtc_git.inc
meta/recipes-kernel/dtc/dtc.inc
meta/recipes-kernel/dtc/dtc-native.inc
meta/recipes-kernel/module-init-tools/module-init-tools.inc
meta/recipes-kernel/oprofile/oprofileui.inc
meta/recipes-kernel/oprofile/oprofileui-svn.inc
meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc
meta/recipes-kernel/linux/linux.inc
meta/recipes-kernel/linux/linux-zylonite.inc
meta/recipes-kernel/linux/linux-netbook.inc
meta/recipes-kernel/linux/linux-mx31.inc
meta/recipes-kernel/linux/linux-omap.inc
meta/recipes-kernel/linux/linux-simtec.inc
meta/recipes-kernel/linux/linux-omap2.inc
meta/recipes-kernel/linux/linux-rp.inc
meta/recipes-kernel/kexec/kexec-tools.inc
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.inc
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
meta/recipes-connectivity/opensync/libopensync-plugin_0.36.inc
meta/recipes-connectivity/gypsy/gypsy.inc
meta/recipes-connectivity/dhcp/dhcp3.inc
meta/recipes-connectivity/dhcp/dhcp4.inc
meta/recipes-connectivity/libpcap/libpcap.inc
meta/recipes-connectivity/avahi/avahi.inc
meta/recipes-connectivity/ofono/ofono.inc
meta/recipes-connectivity/portmap/portmap.inc
meta/recipes-connectivity/openssl/openssl.inc
meta/recipes-connectivity/gsm/gsmd.inc
meta/recipes-connectivity/connman/connman.inc
meta/recipes-connectivity/iproute2/iproute2.inc
meta/recipes-support/mpfr/mpfr.inc
meta/recipes-support/vte/vte.inc
meta/recipes-support/gmp/gmp.inc
meta/recipes-support/hal/hal-info.inc
meta/recipes-support/hal/hal.inc
meta/recipes-support/shared-mime-info/shared-mime-info.inc
meta/recipes-support/boost/boost-36.inc
meta/recipes-support/boost/boost-jam-native.inc
meta/recipes-support/libmpc/libmpc.inc
meta/recipes-support/sqlite/sqlite3.inc
meta/recipes-support/libcap/libcap.inc
meta/recipes-support/atk/atk.inc
meta/recipes-support/libgcrypt/libgcrypt.inc
meta/recipes-support/attr/attr.inc
meta/recipes-support/attr/acl.inc
meta/recipes-support/attr/ea-acl.inc
meta/recipes-support/gnutls/gnutls.inc
meta/recipes-support/icu/icu-3.6.inc
meta/recipes-qt/qt4/qt-4.6.3.inc
meta/recipes-qt/qt4/qt4.inc
meta/recipes-qt/qt4/qt4-tools-native.inc
meta/recipes-qt/qt4/qt4-x11-free.inc
meta/recipes-graphics/pango/pango.inc
meta/recipes-graphics/cairo/cairo-fpu.inc
meta/recipes-graphics/cairo/cairo.inc
meta/recipes-graphics/xorg-proto/xorg-proto-common.inc
meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
meta/recipes-graphics/xorg-lib/libx11.inc
meta/recipes-graphics/xorg-lib/libx11_git.inc
meta/recipes-graphics/xorg-util/xorg-util-common.inc
meta/recipes-graphics/xorg-font/xorg-font-common.inc
meta/recipes-graphics/libmatchbox/libmatchbox.inc
meta/recipes-graphics/mutter/mutter.inc
meta/recipes-graphics/drm/libdrm.inc
meta/recipes-graphics/xorg-driver/xf86-input-common.inc
meta/recipes-graphics/xorg-driver/xf86-driver-common.inc
meta/recipes-graphics/xorg-driver/xf86-video-common.inc
meta/recipes-graphics/xorg-xserver/xserver-xf86-lite.inc
meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc
meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
meta/recipes-graphics/xorg-xserver/xserver-kdrive.inc
meta/recipes-graphics/xcb/libxcb.inc
meta/recipes-graphics/xcb/xcb-proto.inc
meta/recipes-graphics/xcb/xcb-util.inc
meta/recipes-graphics/clutter/clutter-gst.inc
meta/recipes-graphics/clutter/clutter-gtk.inc
meta/recipes-graphics/clutter/aaina.inc
meta/recipes-graphics/clutter/clutter.inc
meta/recipes-graphics/clutter/clutter-package.inc
meta/recipes-graphics/clutter/clutter-fpu.inc
meta/recipes-graphics/clutter/table.inc
meta/recipes-graphics/clutter/clutter-cairo.inc
meta/recipes-graphics/clutter/clutter-box2d.inc
meta/recipes-graphics/clutter/tidy.inc
meta/recipes-graphics/mesa/mesa-common.inc
meta/recipes-graphics/xorg-app/xorg-app-common.inc
meta/recipes-devtools/quilt/quilt.inc
meta/recipes-devtools/quilt/quilt-native.inc
meta/recipes-devtools/exmap-console/exmap-console.inc
meta/recipes-devtools/opkg/opkg.inc
meta/recipes-devtools/automake/automake.inc
meta/recipes-devtools/gcc/gcc-configure-sdk.inc
meta/recipes-devtools/gcc/gcc-package-sdk.inc
meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
meta/recipes-devtools/gcc/gcc-configure-target.inc
meta/recipes-devtools/gcc/gcc-cross4.inc
meta/recipes-devtools/gcc/gcc-cross-initial.inc
meta/recipes-devtools/gcc/gcc-crosssdk.inc
meta/recipes-devtools/gcc/gcc-package-target.inc
meta/recipes-devtools/gcc/gcc-package-runtime.inc
meta/recipes-devtools/gcc/gcc-4.5.0.inc
meta/recipes-devtools/gcc/gcc-4.3.3.inc
meta/recipes-devtools/gcc/gcc-common.inc
meta/recipes-devtools/gcc/gcc-cross.inc
meta/recipes-devtools/gcc/gcc-cross-kernel.inc
meta/recipes-devtools/gcc/gcc-cross-canadian.inc
meta/recipes-devtools/gcc/gcc-configure-common.inc
meta/recipes-devtools/gcc/gcc-crosssdk-intermediate.inc
meta/recipes-devtools/gcc/gcc-csl-arm-2005q3.inc
meta/recipes-devtools/gcc/gcc-configure-cross.inc
meta/recipes-devtools/gcc/gcc-crosssdk-initial.inc
meta/recipes-devtools/gcc/gcc-package-cross.inc
meta/recipes-devtools/gcc/gcc-configure-runtime.inc
meta/recipes-devtools/gcc/gcc-csl-arm-2008q1.inc
meta/recipes-devtools/dpkg/dpkg.inc
meta/recipes-devtools/cmake/cmake.inc
meta/recipes-devtools/apt/apt-package.inc
meta/recipes-devtools/apt/apt-native.inc
meta/recipes-devtools/apt/apt.inc
meta/recipes-devtools/make/make.inc
meta/recipes-devtools/patch/patch.inc
meta/recipes-devtools/pkgconfig/pkgconfig.inc
meta/recipes-devtools/yaffs2/yaffs2-utils.inc
meta/recipes-devtools/e2fsprogs/e2fsprogs.inc
meta/recipes-devtools/rsync/rsync.inc
meta/recipes-devtools/update-alternatives/update-alternatives-dpkg.inc
meta/recipes-devtools/intltool/intltool.inc
meta/recipes-devtools/autoconf/autoconf.inc
meta/recipes-devtools/flex/flex.inc
meta/recipes-devtools/qemu/qemu.inc
meta/recipes-devtools/shasum/shasum.inc
meta/recipes-devtools/perl/perl-rprovides.inc
meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc
meta/recipes-devtools/git/git.inc
meta/recipes-devtools/binutils/binutils-cross.inc
meta/recipes-devtools/binutils/binutils.inc
meta/recipes-devtools/binutils/binutils-cross-canadian.inc
meta/recipes-devtools/genext2fs/genext2fs.inc
meta/recipes-devtools/gdb/gdb-cross.inc
meta/recipes-devtools/gdb/gdb.inc
meta/recipes-devtools/gdb/gdb-common.inc
meta/recipes-devtools/libtool/libtool.inc
meta/recipes-devtools/python/python.inc
meta/recipes-devtools/python/python-2.6-manifest.inc
meta/recipes-devtools/python/fix-path.inc

