Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA263E00A13
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 08:11:54 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WenDh-0005iQ-JH
	for yocto@yoctoproject.org; Mon, 28 Apr 2014 17:11:49 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 17:11:49 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 17:11:49 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 28 Apr 2014 17:11:36 +0200
Message-ID: <ljlr38$lu5$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
Subject: libav without X ?
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
X-List-Received-Date: Mon, 28 Apr 2014 15:11:57 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

Hi

I want to include the package sox_14.4.0.bb in my distro. Should be
straight forward, I thought. But I am having problems as the package
always wants GL as a requirement, which my distro does not have (without X).

the sox recipe looks like this:

DESCRIPTION="SoX is the Swiss Army knife of sound processing tools. \
It converts audio files among various standard audio file formats \
and can apply different effects and filters to the audio data."
HOMEPAGE = "http://sox.sourceforge.net"
SECTION = "audio"

DEPENDS = "libpng libav libsndfile1"

PR = "r2"

PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'pulseaudio',
'pulseaudio', '', d)} \
                   ${@base_contains('DISTRO_FEATURES', 'alsa', 'alsa',
'', d)} \
                   magic \
"
PACKAGECONFIG[pulseaudio] =
"--with-pulseaudio=dyn,--with-pulseaudio=no,pulseaudio,"
PACKAGECONFIG[alsa] = "--with-alsa=dyn,--with-alsa=no,alsa-lib,"
PACKAGECONFIG[wavpack] = "--with-wavpack=dyn,--with-wavpack=no,wavpack,"
PACKAGECONFIG[magic] = "--with-magic,--without-magic,file,"
PACKAGECONFIG[mad] = "--with-mad,--without-mad,libmad,"
PACKAGECONFIG[id3tag] = "--with-id3tag,--without-id3tag,libid3tag,"
PACKAGECONFIG[lame] = "--with-lame,--without-lame,lame,"

LICENSE = "GPLv2 & LGPLv2.1"
LIC_FILES_CHKSUM =
"file://LICENSE.GPL;md5=751419260aa954499f7abaabaa882bbe \

file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24"

SRC_URI = "${SOURCEFORGE_MIRROR}/sox/sox-${PV}.tar.gz"
SRC_URI[md5sum] = "b0c15cff7a4ba0ec17fdc74e6a1f9cf1"
SRC_URI[sha256sum] =
"3ee34b14dd267de378e8a117aae81ec4cae330772342e6a55bbf6520a0a88aa3"

inherit autotools

BBCLASSEXTEND = "native"


So,it depends on libav. Libav.inc looks like this (just the important part):

DEPENDS = "virtual/libsdl zlib libogg libvorbis libtheora yasm-native"

INC_PR = "r8"

inherit autotools pkgconfig

B = "${S}/build.${HOST_SYS}.${TARGET_SYS}"

FULL_OPTIMIZATION_armv7a = "-fexpensive-optimizations
-fomit-frame-pointer -O4 -ffast-math"
BUILD_OPTIMIZATION = "${FULL_OPTIMIZATION}"

EXTRA_FFCONF_armv7a = "--cpu=cortex-a8"
EXTRA_FFCONF ?= ""

PACKAGECONFIG ??= "bzip2 x264 ${@base_contains('DISTRO_FEATURES', 'x11',
'x11', '', d)}"
PACKAGECONFIG[jack] = "--enable-indev=jack,--disable-indev=jack,jack"
PACKAGECONFIG[bzip2] = "--enable-bzlib,--disable-bzlib,bzip2"
PACKAGECONFIG[schroedinger] =
"--enable-libschroedinger,--disable-libschroedinger,schroedinger"
PACKAGECONFIG[gsm] = "--enable-libgsm,--disable-libgsm,libgsm"
PACKAGECONFIG[x264] = "--enable-libx264,--disable-libx264,x264"
PACKAGECONFIG[vpx] = "--enable-libvpx,--disable-libvpx,libvpx"
PACKAGECONFIG[mp3lame] = "--enable-libmp3lame,--disable-libmp3lame,lame"
PACKAGECONFIG[faac] = "--enable-libfaac,--disable-libfaac,faac"
PACKAGECONFIG[x11] = "--enable-x11grab,--disable-x11grab,virtual/libx11
libxfixes libxext xproto"


My local.conf has:

DISTRO_FEATURES_remove = "x11 wayland"


So, I don't understand why it always wants to build
recipe libglu-2_9.0.0-0: task do_configure: Started

Which fails, of course:
| checking for GL/gl.h... no
| configure: error: GL not found
| Configure failed. The contents of all config.log files follows to aid
debugging
| ERROR: oe_runconf failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-gnueabi/libglu/2_9.0.0-0/temp/log.do_configure.13955)
NOTE: recipe libglu-2_9.0.0-0: task do_configure: Failed


I seem to be missing something. Can anybody help me how I can build sox
without x11 dependency (which it shouldn't have)?

Thanks

Michael


