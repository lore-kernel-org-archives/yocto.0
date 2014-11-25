Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C548E008FC; Tue, 25 Nov 2014 02:10:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	URIBL_BLACK autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC406E007C2
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 02:10:03 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 25 Nov 2014 02:02:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="421190121"
Received: from ksperera-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.204])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Nov 2014 02:00:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: peterengcomau001@adam.com.au
Date: Tue, 25 Nov 2014 10:09:47 +0000
Message-ID: <2765347.88ba3R8xYF@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <2df2d7aa3b39e3f653036d785fb7c24a779a7d2d@webmail.adam.com.au>
References: <2df2d7aa3b39e3f653036d785fb7c24a779a7d2d@webmail.adam.com.au>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: New error in 1.7
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
X-List-Received-Date: Tue, 25 Nov 2014 10:10:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi there,

On Tuesday 25 November 2014 19:27:13 peterengcomau001@adam.com.au wrote:
> thank you. i have fixed the curl problem but a new problem has occured
> with the build. This problem did not appear in v1.6.1. The problem is:
> 
> 	lachlan@lachlan-SVP13215PXB:~/poky/build-atmel$ bitbake
> atmel-qt5-demo-image -c populate_sdk
> 
> 	Loading cache: 100%
> 
> |###########################################################################
> |###########################################################################
> |#####|
> ETA: 00:00:00
> 
> 	Loaded 2108 entries from dependency cache.
> 
> 	NOTE: Resolving any missing task queue dependencies
> 
> 	Build Configuration:
> 
> 	BB_VERSION = "1.24.0"
> 
> 	BUILD_SYS = "x86_64-linux"
> 
> 	NATIVELSBSTRING = "Ubuntu-14.04"
> 
> 	TARGET_SYS = "arm-poky-linux-gnueabi"
> 
> 	MACHINE = "sama5d3xek"
> 
> 	DISTRO = "poky"
> 
> 	DISTRO_VERSION = "1.7"
> 
> 	TUNE_FEATURES = "arm armv7a vfp thumb callconvention-hard cortexa5"
> 
> 
> 	TARGET_FPU = "vfp"
> 
> 	meta-atmel = "my_branch:711809b0d91f816b10e70508986b3f43098000ba"
> 
> 	meta-qt5 = "my_branch:0732e184acef5e0200f46d7f95702774e5de1904"
> 
> 	meta
> 
> 	meta-yocto
> 
> 	meta-yocto-bsp = "dizzy:db7f4f31c915a59c502cac4be905d23df5246b3d"
> 
> 	meta-oe
> 
> 	meta-python
> 
> 	meta-networking
> 
> 	meta-ruby = "my_branch:9efaed99125b1c4324663d9a1b2d3319c74e7278"
> 
> 	NOTE: Preparing runqueue
> 
> 	NOTE: Executing SetScene Tasks
> 
> 	NOTE: Executing RunQueue Tasks
> 
> 	ERROR: Function failed: do_configure (log file is located at
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/temp/log.do_configure.5736)
> 
> 
> 	ERROR: Logfile of failure stored in:
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/temp/log.do_configure.5736
> 	Log data follows:
> 	| DEBUG: Executing python function sysroot_cleansstate
> 	| 
> 	| DEBUG: Python function sysroot_cleansstate finished
> 	| 
> 	| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
> 'common']
> 
> 	| DEBUG: Executing shell function autotools_preconfigure
> 	| 
> 	| DEBUG: Shell function autotools_preconfigure finished
> 	| 
> 	| DEBUG: Executing python function autotools_copy_aclocals
> 	| 
> 	| DEBUG: Python function autotools_copy_aclocals finished
> 	| 
> 	| DEBUG: Executing shell function do_configure
> 	| 
> 	| automake (GNU automake) 1.14.1
> 	| 
> 	| Copyright (C) 2013 Free Software Foundation, Inc.
> 	| 
> 	| License GPLv2+: GNU GPL version 2 or later
> 	| 
> 	| This is free software: you are free to change and redistribute it.
> 	| 
> 	| 
> 	| There is NO WARRANTY, to the extent permitted by law.
> 	| 
> 	| 
> 	| 
> 	| Written by Tom Tromey
> 	| 
> 	| and Alexandre Duret-Lutz .
> 	| 
> 	| AUTOV is 1.14
> 	| 
> 	| NOTE: Executing ACLOCAL="aclocal
> 
> --system-acdir=/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky
> -linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/aclocal-copy/
> --automake-acdir=/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/u
> sr/share/aclocal-1.14" autoreconf --verbose --install --force
> --exclude=autopoint -I
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/
> 	| autoreconf: Entering directory `'
> 	| 
> 	| autoreconf: configure.ac: not using Gettext
> 	| 
> 	| autoreconf: running: aclocal
> 
> --system-acdir=/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky
> -linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/aclocal-copy/
> --automake-acdir=/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/u
> sr/share/aclocal-1.14 -I
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/ -I
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/ --force -I m4 -I
> common/m4
> 
> 	| autoreconf: configure.ac: tracing
> 	| 
> 	| autoreconf: running: libtoolize --copy --force
> 	| 
> 	| libtoolize: putting auxiliary files in `.'.
> 	| 
> 	| libtoolize: copying file `./ltmain.sh'
> 	| 
> 	| libtoolize: putting macros in `m4'.
> 	| 
> 	| libtoolize: copying file `m4/libtool.m4'
> 	| 
> 	| libtoolize: copying file `m4/ltoptions.m4'
> 	| 
> 	| libtoolize: copying file `m4/ltsugar.m4'
> 	| 
> 	| libtoolize: copying file `m4/ltversion.m4'
> 	| 
> 	| libtoolize: copying file `m4/lt~obsolete.m4'
> 	| 
> 	| libtoolize: Remember to add `LT_INIT' to configure.ac.
> 	| 
> 	| libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to
> 
> configure.ac and
> 
> 	| libtoolize: rerunning libtoolize, to keep the correct libtool
> 
> macros in-tree
> 
> 	| autoreconf: running:
> /home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/bin/autoconf
> --include=/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linu
> x-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/ --force
> 
> 	| autoreconf: running:
> /home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/bin/autoheader
> --include=/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linu
> x-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/ --force
> 
> 	| autoreconf: running: automake --add-missing --copy --force-missing
> 	| 
> 	| 
> 	| Makefile.am: error: required file './AUTHORS' not found

This is likely a result of the --foreign option being removed - see:

  http://www.yoctoproject.org/docs/1.7/ref-manual/ref-manual.html#migration-1.7-autotools-class-changes

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

