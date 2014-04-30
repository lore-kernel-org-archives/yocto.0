Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03463E004EB; Wed, 30 Apr 2014 02:28:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Apr 2014 02:28:02 PDT
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF34E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 02:28:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Apr 2014 02:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,957,1389772800"; d="scan'208";a="425818378"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.50])
	by azsmga001.ch.intel.com with ESMTP; 30 Apr 2014 02:26:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Neuer User <auslands-kv@gmx.de>
Date: Wed, 30 Apr 2014 10:26:52 +0100
Message-ID: <3168751.XnymYhvUcQ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <ljlr38$lu5$1@ger.gmane.org>
References: <ljlr38$lu5$1@ger.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libav without X ?
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
X-List-Received-Date: Wed, 30 Apr 2014 09:28:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Monday 28 April 2014 17:11:36 Neuer User wrote:
> I want to include the package sox_14.4.0.bb in my distro. Should be
> straight forward, I thought. But I am having problems as the package
> always wants GL as a requirement, which my distro does not have (without X).
> 
> the sox recipe looks like this:
> 
> DESCRIPTION="SoX is the Swiss Army knife of sound processing tools. \
> It converts audio files among various standard audio file formats \
> and can apply different effects and filters to the audio data."
> HOMEPAGE = "http://sox.sourceforge.net"
> SECTION = "audio"
> 
> DEPENDS = "libpng libav libsndfile1"
> 
> PR = "r2"
> 
> PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'pulseaudio',
> 'pulseaudio', '', d)} \
>                    ${@base_contains('DISTRO_FEATURES', 'alsa', 'alsa',
> '', d)} \
>                    magic \
> "
> PACKAGECONFIG[pulseaudio] =
> "--with-pulseaudio=dyn,--with-pulseaudio=no,pulseaudio,"
> PACKAGECONFIG[alsa] = "--with-alsa=dyn,--with-alsa=no,alsa-lib,"
> PACKAGECONFIG[wavpack] = "--with-wavpack=dyn,--with-wavpack=no,wavpack,"
> PACKAGECONFIG[magic] = "--with-magic,--without-magic,file,"
> PACKAGECONFIG[mad] = "--with-mad,--without-mad,libmad,"
> PACKAGECONFIG[id3tag] = "--with-id3tag,--without-id3tag,libid3tag,"
> PACKAGECONFIG[lame] = "--with-lame,--without-lame,lame,"
> 
> LICENSE = "GPLv2 & LGPLv2.1"
> LIC_FILES_CHKSUM =
> "file://LICENSE.GPL;md5=751419260aa954499f7abaabaa882bbe \
> 
> file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24"
> 
> SRC_URI = "${SOURCEFORGE_MIRROR}/sox/sox-${PV}.tar.gz"
> SRC_URI[md5sum] = "b0c15cff7a4ba0ec17fdc74e6a1f9cf1"
> SRC_URI[sha256sum] =
> "3ee34b14dd267de378e8a117aae81ec4cae330772342e6a55bbf6520a0a88aa3"
> 
> inherit autotools
> 
> BBCLASSEXTEND = "native"
> 
> 
> So,it depends on libav. Libav.inc looks like this (just the important part):
> 
> DEPENDS = "virtual/libsdl zlib libogg libvorbis libtheora yasm-native"
> 
> INC_PR = "r8"
> 
> inherit autotools pkgconfig
> 
> B = "${S}/build.${HOST_SYS}.${TARGET_SYS}"
> 
> FULL_OPTIMIZATION_armv7a = "-fexpensive-optimizations
> -fomit-frame-pointer -O4 -ffast-math"
> BUILD_OPTIMIZATION = "${FULL_OPTIMIZATION}"
> 
> EXTRA_FFCONF_armv7a = "--cpu=cortex-a8"
> EXTRA_FFCONF ?= ""
> 
> PACKAGECONFIG ??= "bzip2 x264 ${@base_contains('DISTRO_FEATURES', 'x11',
> 'x11', '', d)}"
> PACKAGECONFIG[jack] = "--enable-indev=jack,--disable-indev=jack,jack"
> PACKAGECONFIG[bzip2] = "--enable-bzlib,--disable-bzlib,bzip2"
> PACKAGECONFIG[schroedinger] =
> "--enable-libschroedinger,--disable-libschroedinger,schroedinger"
> PACKAGECONFIG[gsm] = "--enable-libgsm,--disable-libgsm,libgsm"
> PACKAGECONFIG[x264] = "--enable-libx264,--disable-libx264,x264"
> PACKAGECONFIG[vpx] = "--enable-libvpx,--disable-libvpx,libvpx"
> PACKAGECONFIG[mp3lame] = "--enable-libmp3lame,--disable-libmp3lame,lame"
> PACKAGECONFIG[faac] = "--enable-libfaac,--disable-libfaac,faac"
> PACKAGECONFIG[x11] = "--enable-x11grab,--disable-x11grab,virtual/libx11
> libxfixes libxext xproto"
> 
> 
> My local.conf has:
> 
> DISTRO_FEATURES_remove = "x11 wayland"
> 
> 
> So, I don't understand why it always wants to build
> recipe libglu-2_9.0.0-0: task do_configure: Started
> 
> Which fails, of course:
> | checking for GL/gl.h... no
> | configure: error: GL not found
> | Configure failed. The contents of all config.log files follows to aid
> debugging
> | ERROR: oe_runconf failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> 
> /home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-gnueabi
> /libglu/2_9.0.0-0/temp/log.do_configure.13955) NOTE: recipe
> libglu-2_9.0.0-0: task do_configure: Failed
> 
> 
> I seem to be missing something. Can anybody help me how I can build sox
> without x11 dependency (which it shouldn't have)?

The problem here is not that it's requiring X, but that it's requiring OpenGL, 
since you almost certainly still have opengl in DISTRO_FEATURES. The 
dependency chain is:

libav -> virtual/sdl (libsdl) -> libglu [if opengl is in DISTRO_FEATURES]

Just add opengl to your DISTRO_FEATURES_remove value and it should build 
without trying to build libglu.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

