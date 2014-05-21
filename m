Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 002CFE00B85; Wed, 21 May 2014 11:25:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f178.google.com (unknown [209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0F66E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 11:25:51 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id rl12so2419633iec.9
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 11:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=vAdQ4oRDo2oO5rd3z+bQ87sh4+KCUHjGEsmPervVECk=;
	b=OVDsCqpUrvHmfkKFl+Q2D71VHVEOsrECskZlpmtnFuRcwSvxF24E3L5blGmHEjtEWE
	djSBneTXBOX/zmKOHp8cmYIUfFqUULbgQ5UxAVLmVm1LTbJG+cJrhQ7aQ96ziQCdQTzH
	KcmIBlaQh1/sLEmvJRxRVSRFDFrhmACH/RUyF0dOky5XXBbI2ZEKJC10FhFYblLrAqw7
	A/6+l1HgEBXjhOQeQsJjxFE9NW/JPOODsjHJsFt5xC13iKOpZTH7K8zvZUfYCq7YMoZh
	6TzbPVUX/KvyVObmtko4HxDiQqPlG2lswFVEXgjzuoSBZc+N/KXEGcVLjEwF0UpNVp21
	vwrQ==
X-Received: by 10.50.92.42 with SMTP id cj10mr15959488igb.34.1400696750673;
	Wed, 21 May 2014 11:25:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Wed, 21 May 2014 11:25:30 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 21 May 2014 14:25:30 -0400
Message-ID: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	ajlennon@dynamicdevices.co.uk, autif.mlist@gmail.com
Subject: meta-mono core-image-mono failing
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
X-List-Received-Date: Wed, 21 May 2014 18:25:55 -0000
Content-Type: text/plain; charset=UTF-8

Hello.

I'm trying to build core-image-mono for the bbb. Layers configuration:

Build Configuration:
BB_VERSION        = "1.23.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-20"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6+snapshot-20140521"
TUNE_FEATURES     = "arm armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta              = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
meta-bbb          = "master:8318556523a747b7e9c97326bef14922a154e8a2"
common-bsp        =
"(detachedfrome7dc54e):e7dc54e66f4b5c2982a30bef5c67d734e9c759f5"
meta-yocto
meta-yocto-bsp    = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
meta-mono         = "master:e2d2b8a518403a255822022c9e15f116c91b5dd1"

This is basically master of Poky and meta-mono.


| DEBUG: Executing shell function do_configure
| grep: configure.in: No such file or directory
| /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
line 125: mono/mini/Makefile.am: No such file or directory
| /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
line 126: mono/metadata/Makefile.am: No such file or directory
| Running aclocal -I m4 -I .  ...
| aclocal: error: 'configure.ac' is required
|
| **Error**: aclocal failed. This may mean that you have not
| installed all of the packages you need, or you may need to
| set ACLOCAL_FLAGS to include "-I $prefix/share/aclocal"
| for the prefix where you installed the packages whose
| macros were not found
| NOTE: mono-native failed to autogen.sh
| sed: can't read acinclude.m4: No such file or directory
| WARNING: /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/run.do_configure.24402:1
exit 2 from
|   sed -e "s|slash\}libtool|slash\}x86_64-linux-libtool|" -i acinclude.m4
| ERROR: Function failed: do_configure (log file is located at
/home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/log.do_configure.24402)
ERROR: Task 687
(/home/cmorgan/projects/yocto_poky/meta-mono/recipes-mono/mono/mono-native_3.4.0.bb,
do_configure) failed with exit code '1'


It looks like the issue is due to autogen.sh assuming several files
are located in the current working directory, for instance on lines
102, 129 and 130 of autogen.sh there is no use of the $srcdir variable
before files like configure.in or mono/metadata/Makefile.am.in etc.

Not sure if something has changed on the yocto side to change this
assumption about where autogen.sh is being run from.

Chris

