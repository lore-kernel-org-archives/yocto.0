Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDE0E003FA
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 06:57:36 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V7Qic-0005Px-8G
	for yocto@yoctoproject.org; Thu, 08 Aug 2013 15:57:34 +0200
Received: from 213.249.12.88 ([213.249.12.88])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 15:57:34 +0200
Received: from gmane by 213.249.12.88 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 15:57:34 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 08 Aug 2013 16:57:20 +0300
Message-ID: <ku083q$oa8$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.88
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
Subject: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Thu, 08 Aug 2013 13:57:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I tried to build to build bitbake core-image-minimal-dev on some nfs
mounted NAS.

Pseudo is not present but is required, building this first before the
main build
Parsing recipes: 100%
|###################################################################################################################################|
Time: 00:00:20
Parsing of 819 .bb files complete (0 cached, 819 parsed). 1126 targets,
47 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagle-xm-ml"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    =
"beagleboard_dylan-9.0.1_LOCAL:73f103bf9b2cdf985464dc53bf4f1cfd71d4531f"

It fails pretty soon with:

ERROR: Error executing a python function in
/yoctotmp/manual-build/poky/meta/recipes-devtools/quilt/quilt-native_0.60.bb:
CalledProcessError: Command 'cp -al
/yoctotmp/manual-build/poky/beagle-xm/tmp/work/x86_64-linux/quilt-native/0.60-r0/sysroot-destdir/yoctotmp/manual-build/poky/beagle-xm/tmp/sysroots/x86_64-linux/*
/yoctotmp/manual-build/poky/beagle-xm/tmp/work/x86_64-linux/quilt-native/0.60-r0/sstate-build-populate-sysroot/x86_64-linux'
returned non-zero
 exit status 1 with output cp: cannot create hard link
`/yoctotmp/manual-build/poky/beagle-xm/tmp/work/x86_64-linux/quilt-native/0.60-r0/sstate-build-populate-sysroot/x86
_64-linux/usr/share/quilt/compat/awk' to
`/yoctotmp/manual-build/poky/beagle-xm/tmp/work/x86_64-linux/quilt-native/0.60-r0/sysroot-destdir/yoctotmp/manual-build/poky/beag
le-xm/tmp/sysroots/x86_64-linux/usr/share/quilt/compat/awk': Unknown
error 524

A bit of further digging reveals that underneath
/yoctotmp/manual-build/poky/beagle-xm/tmp/work/x86_64-linux/quilt-native/0.60-r0/sysroot-destdir/yoctotmp/manual-build/poky/beagle-xm/tmp/sysroots/x86_64-linux/*
we have a symbolic link to
/yoctotmp/manual-build/poky/beagle-xm/tmp/work/x86_64-linux/quilt-native/0.60-r0/sysroot-destdir/yoctotmp/manual-build/poky/beagle-xm/tmp/sysroots/x86_64-linux/usr/share/quilt/compat/awk
-> /usr/bin/gawk

Since hard links can not be made between different file systems (local
ext4 and nfs) the cp -al fails.

Is it like this by design, or should I file a bug in bugzilla?

Previous experiments (only SSTATE and DL from NFS/NAS) seem to work and
I guess that's also your autobuilder cluster setup.

Regards,

Robert
...Under a government which imprisons any unjustly, the true place for a
just man is also a prison. -- Henry David Thoreau

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



