Return-Path: <predivan@mts.rs>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43E74E00D68; Sun,  5 Jun 2016 11:37:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.200.12.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Sun, 05 Jun 2016 11:37:20 PDT
Received: from e11mailgw05.open.telekom.rs (e11mailgw05.open.telekom.rs
	[212.200.12.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 425BCE00D35
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 11:37:20 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2AiGQD0b1RX/69sV11cgzqBDLkahAkShXoEgR9NAQEBAQEBZidBAQEBAgEGBoQzHBc5DxMhKhCIWphAh2COJYsAhieOZwWIAocWiTCOHAqBaYRQiGVFjkpLVIE2gQOBNzqCdII4gwOCNQEBAQ
X-IPAS-Result: A2AiGQD0b1RX/69sV11cgzqBDLkahAkShXoEgR9NAQEBAQEBZidBAQEBAgEGBoQzHBc5DxMhKhCIWphAh2COJYsAhieOZwWIAocWiTCOHAqBaYRQiGVFjkpLVIE2gQOBNzqCdII4gwOCNQEBAQ
X-IronPort-AV: E=Sophos;i="5.26,423,1459807200"; d="scan'208";a="74084881"
Received: from 93-87-108-175.dynamic.isp.telekom.rs (HELO deus.skynet)
	([93.87.108.175])
	by e12mailgw05.open.telekom.rs with ESMTP; 05 Jun 2016 20:36:11 +0200
Date: Sun, 5 Jun 2016 20:36:11 +0200
From: Predrag Ivanovic <predivan@mts.rs>
To: yocto@yoctoproject.org
Message-ID: <20160605203611.1e1db65d@deus.skynet>
Organization: Skynet Redux
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-unknown-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 06 Jun 2016 07:18:26 -0700
Subject: [Poky][krogoth]ERROR: glibc-2.23-r0 do_package: Fatal QA errors found, failing task.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yocto@yoctoproject.org, Predrag Ivanovic <predivan@mts.rs>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 05 Jun 2016 18:37:24 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit


Hi.
As an learning experiment, I've tried to build RPi2 image, but the build fails on, what I presume, is one of the Poky core elements.
Since it's mentioned in the meta-raspberrypi/README that it relies on Poky master branch, I tried that,  but I get the same error.
I realize that I am trying to build on the unsupported distribution, but the only complaint I got from bitbake, before touching conf/sanity.conf, 
was that the diffstat and makeinfo are missing.
But, I've searched the ML and the bugtracker, and couldn't found any mention of this behaviour (nobody else complained), so I must've
broken something.
If that's the case, I apologize.

Build log:
---
biitbake rpi-basic-image
<snip>
Build Configuration:
BB_VERSION        = "1.30.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Crux-3.2"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "poky"
DISTRO_VERSION    = "2.1"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "krogoth:8f51f6153a09f8048fb4c4ce9cf4a19655240de4"
meta-raspberrypi  = "master:69840c0bbe03c2e61601e2377c8e2adc264e0478"
<snip>
WARNING: quilt-native-0.64-r0 do_fetch: Couldn't load checksums from donestamp /home/pedja/stuff/lab/yocto/poky/rpi2-build/downloads/quilt-0.64.tar.gz.done: ValueError (msg: unsupported pickle protocol: 4)
<snip>
ERROR: glibc-2.23-r0 do_package: QA Issue: glibc: Files/directories were installed but not shipped in any package:
  /usr/share
Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
glibc: 1 installed and not shipped files. [installed-vs-shipped]
ERROR: glibc-2.23-r0 do_package: Fatal QA errors found, failing task.
ERROR: glibc-2.23-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in: /home/pedja/stuff/lab/yocto/poky/rpi2-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/glibc/2.23-r0/temp/log.do_package.7423
ERROR: Task 519 (/home/pedja/stuff/lab/yocto/poky/meta/recipes-core/glibc/glibc_2.23.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 513 tasks of which 0 didn't need to be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/pedja/stuff/lab/yocto/poky/meta/recipes-core/glibc/glibc_2.23.bb, do_package
Summary: There were 31 WARNING messages shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
---

Configuration diff (mine and default):
---
diff -Naur conf.default/bblayers.conf conf.rpi2/bblayers.conf
--- conf.default/bblayers.conf	2016-04-30 21:35:23.000000000 +0200
+++ conf.rpi2/bblayers.conf	2016-06-04 21:30:09.000000000 +0200
@@ -6,7 +6,8 @@
 BBFILES ?= ""

 BBLAYERS ?= " \
-  /home/pedja/stuff/lab/yocto/poky/meta \
-  /home/pedja/stuff/lab/yocto/poky/meta-poky \
-  /home/pedja/stuff/lab/yocto/poky/meta-yocto-bsp \
-  "
+  /home/pedja/stuff/lab/yocto/poky/meta \
+  /home/pedja/stuff/lab/yocto/poky/meta-poky \
+  /home/pedja/stuff/lab/yocto/poky/meta-yocto-bsp \
+  /home/pedja/stuff/lab/yocto/poky/meta-raspberrypi \
+"
diff -Naur conf.default/local.conf conf.rpi2/local.conf
--- conf.default/local.conf	2016-04-30 21:35:23.000000000 +0200
+++ conf.rpi2/local.conf	2016-06-05 18:20:47.000000000 +0200
@@ -34,8 +34,15 @@
 #MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "edgerouter"
 #
+#  From meta-raspberrypi
+#
+#MACHINE ?= "raspberrypi"
+#MACHINE ?= "raspberrypi0"
+MACHINE ?= "raspberrypi2"
+#MACHINE ?= "raspberrypi3"

 #
 # Where to place downloads
@@ -105,7 +112,7 @@
 #  - 'package_rpm' for rpm style packages
 # E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
 # We default to rpm:
-PACKAGE_CLASSES ?= "package_rpm"
+PACKAGE_CLASSES ?= "package_ipk"

 #
 # SDK target architecture
@@ -178,7 +185,7 @@
 # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x only), none
 # Note: currently, Konsole support only works for KDE 3.x due to the way
 # newer Konsole versions behave
-#OE_TERMINAL = "auto"
+OE_TERMINAL = "xfce"
 # By default disable interactive patch resolution (tasks will just fail instead):
 PATCHRESOLVE = "noop"
----

Pedja

