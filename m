Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C221CE007E2
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 10:01:10 -0800 (PST)
Received: by mail-la0-f51.google.com with SMTP id c6so1706402lan.38
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 10:01:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=LA6FXwN8aOvkGjdW6xCIZCYHUX34aejEDbJ1SXkal98=;
	b=VOhgKZtqqxOY9dMnGuSduF8+3nc3d/x5+ZM/zY+uN8Z2Bz/yqKLH8WxW0nwCqhwvYF
	FJpHGxmJWT8h0kKSynJMnWioQnZ1s71sQBZz8FDzot4uP2sUzPm9mhG7214oojF3lA3C
	C31QGHYn2JhqMVY7UNvGfDebY6xM2Vze70roW5U9/rIzRWBqIbUgi/PCXvRFcLBwqLwb
	uyZ6oJPXASLKzd0laXs6LnwG9IB12CiIOM4Xip8S/SMp+fspay2lUMNu4kVFr9MFaSSO
	BeQI7XYMKrDmQFYa1/DFHq2/rxZI3bmxkvUp29uad9XndmVzIA+sa9v+TQqzNF6AncpK
	j/0g==
X-Gm-Message-State: ALoCoQn/YcElIn1ytQpwaqXGLab5tXxHZjpoIIcvtWgMRHzo3QdvXaGeGOlMoNugoTFN9VQN/F7Y
MIME-Version: 1.0
X-Received: by 10.112.73.180 with SMTP id m20mr582215lbv.68.1389808867376;
	Wed, 15 Jan 2014 10:01:07 -0800 (PST)
Received: by 10.152.4.70 with HTTP; Wed, 15 Jan 2014 10:01:07 -0800 (PST)
Date: Wed, 15 Jan 2014 18:01:07 +0000
Message-ID: <CAPhnLPD4X-nisj3VZZfUWskGZuHE-jF28CYFXpd2gagFJWTwUA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 1.5.1 "Dora" Released.
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
X-List-Received-Date: Wed, 15 Jan 2014 18:01:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We are pleased to announce the first point release of the Yocto
Project's 1.5.1 "Dora" Release.

This release is available at:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/poky-dora-10.0.1.tar.bz2
or at the kernel.org mirror:
    http://mirrors.kernel.org/yocto/yocto/yocto-1.5.1/poky-dora-10.0.1.tar.bz2


Release Name: poky-dora-10.0.1
Branch: dora
Tag: dora-10.0.1
Hash: 8e410e9e46e3335458a7747cdd32e05f5c19ccbb
md5: dbfa615870e54471c74516a9ac404080
Download Locations:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/poky-dora-10.0.1.tar.bz2

Release Name: meta-qt3-dora-10.0.1
Branch: dora
Tag: dora-10.0.1
Hash: 4772424ab69908d4e3b9d6d4717ca889468e6acd
md5: 7a354613f778d67479941fdd436cd2b2
Download Locations:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/meta-qt3-dora-10.0.1.tar.bz2

Release Name: eclipse-poky-juno-dora-10.0.1
Branch: dora
Tag: dora-10.0.1
Hash: 79cd3c6ff119526f3f85567253450d2e857afed0
md5: d95b844dc0d3d06dda98ee09adfd1cbf
Download Locations:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/eclipse-poky-juno-dora-10.0.1.tar.bz2

Release Name: eclipse-poky-kepler-dora-10.0.1
Branch: dora
Tag: dora-10.0.1
Hash: e842d41f05066df1533a2788e650f0be213ad5b5
md5: 8da7fa568c261d6a5c16190c68cb204d
Download Locations:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/eclipse-poky-kepler-dora-10.0.1.tar.bz2



* Major fixes:
- Updated manual
- Updated linux-yocto from 3.10.11 to 3.10.17, the later one is the
stable version
- wic fixes
- Recipe dependencies fixes

* Security fixes:
- libtiff: CVE-2013-4243
- libtiff: CVE-2013-4232
- libtiff: fix CVE-2013-1960
- gst-ffmpeg: fix CVE-2013-3674

* Known Issues:
- 5669 - runqemu can't locate core-image-directfb. It has been fixed
on master, and will be fixed in 1.5.2.
- It works with Ubuntu 13.10 and Fedora 20, but still outputs the
warning which says it has not been validated, will fix it 1.5.2.

* Bug Fixes:
2519 image-mklibs: ensure sysroot is correctly set when calling gcc
5549 license.bbclass: fix missing of license files on ubuntu build host
5329 flex: fix m4 issue on target
5244 sysvinit: unmount the psplash lazyily
5416 kernel.bbclass: Delay rm_work to run after do_bundle_initramfs
5273 bootlogd: create log file if not present
5391 eglibc_2.18.bb: accept make versions 4.0 and greater
5447 mdadm: Disable the RUN_DIR check
5420. zisofs-tools-native: add missing DEPENDS on zlib-native
5401 e2fsprogs: Escape filenames in populate-extfs.sh
5354 cross-canadian: Handle powerpc linux verses linux-gnuspe
5356 debugedit: fix segment fault while file's bss offset have a large number
5339 meta-toolchain-qt: put QT_CONF_PATH in environment script
5339 nativesdk-qt4-tools: create qt.conf file
5364 runqemu-extract-sdk: add --numeric-owner option to tar command
5141 midori: exclude from self-hosted for mips64
5333 cross-canadian: Fix SHLIBSDIR when using multilib
5380 bitbake: perforce: Fix path subdirectory issues
5440 poky.ent: Added gcc-multilib as an essential package
5133 gcc: Fix strange C++ repo issues
5340 toolchain-scripts: Fix TARGET_SYS reference

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

