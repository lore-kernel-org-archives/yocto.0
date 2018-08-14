Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8456E00A39; Tue, 14 Aug 2018 04:50:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A555FE00A39
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:50:55 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id c14-v6so11969022wmb.4
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=80MTUEJjuQMaaxJAc9Rm+3hD57ls5XXLNQbF3tZQVSk=;
	b=J4w7O2dWTYBSIi4AE2ItFv0CcSRlL2DK70la1RyT9Q5VyolJ6rapGgCCFNI8kfBq2k
	dTjUUjRG/QU2w+pAeUYQXAC6a0Tk2vP3BGQxtP3BMqeXqZIqKaimHLm+5nJX4M7Iwe2k
	dna1c28SKM1JeTdGyQam8siix/UQIHcUSHUuaIQoGaYivt9Wwh7AFJxCnpjZkkAk1OLC
	F+hCYrm8dwhJTiL8b78dzvbuyhiwVpQc1rAIdGG+DT/Sun1gXeA6nELKpbCUOdnns6bJ
	61tCRx3WuoEJpbE8sTl+vGFVGOIT7qbJ9mh5xdMVezjP40WlM0PHu8eVwiJQL1n3622F
	UU5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=80MTUEJjuQMaaxJAc9Rm+3hD57ls5XXLNQbF3tZQVSk=;
	b=Z2POsQgWfPrZZFLFc6RSFqHTp7bokxFF6btugRh6VjjQsKvXZOfeF6KDZARkfVda50
	uMr0w+TJG/JqWB83x+/BEQd2U8kCUMDQnnjTP/ONIkAHoHzO4IS1UikkK7urq1y3Rifl
	vIfE8in85W0N5vb9CqQnxtoB89IP+XREc04jSF+vTweueBp00nYQQPh5F+y7mSLGokjn
	5ngjGJVo86aIkaJ4W4nmSmH+rfRWIYbmvcEbTgNXR5MFkZSgSgPYKLc7rwm76Li6lpzi
	kGvhGeFNwFEmAv9TPzHLxkCt4OEq+mbIqV+TxOJer0gjvajIyqNB2Xpx85KSeRdJN5Zk
	bYng==
X-Gm-Message-State: AOUpUlGQI895D/F+7ohHd22C1vkxvtXPEKZoby+z+aSOVUmolkRB0SP9
	zy0PjznhCNm1MIvdtb7BX/x5DMoy/Fc=
X-Google-Smtp-Source: AA+uWPysv/dl7y1vWaqBo19DU2xqJvQh1Gpnt9mN4pVBj/NLRu42rm/xfEOEjaLdIFRfKoQa66YHrw==
X-Received: by 2002:a1c:4d09:: with SMTP id
	o9-v6mr11586090wmh.111.1534247454233; 
	Tue, 14 Aug 2018 04:50:54 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	t198-v6sm22061171wmd.16.2018.08.14.04.50.52
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Aug 2018 04:50:53 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 12:50:45 +0100
Message-Id: <20180814115045.506-2-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180814115045.506-1-ross.burton@intel.com>
References: <20180814115045.506-1-ross.burton@intel.com>
Subject: [PATCH meta-gplv2 2/2] coreutils: remove obsolete patches
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
X-List-Received-Date: Tue, 14 Aug 2018 11:50:58 -0000

No point fixing small problems with the man pages build if we later disable them
entirely.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../coreutils-6.9/fix_for_manpage_building.patch   | 85 ----------------------
 .../coreutils/coreutils-6.9/man-touch.patch        | 24 ------
 recipes-core/coreutils/coreutils_6.9.bb            |  2 -
 3 files changed, 111 deletions(-)
 delete mode 100644 recipes-core/coreutils/coreutils-6.9/fix_for_manpage_building.patch
 delete mode 100644 recipes-core/coreutils/coreutils-6.9/man-touch.patch

diff --git a/recipes-core/coreutils/coreutils-6.9/fix_for_manpage_building.patch b/recipes-core/coreutils/coreutils-6.9/fix_for_manpage_building.patch
deleted file mode 100644
index e0d600a..0000000
--- a/recipes-core/coreutils/coreutils-6.9/fix_for_manpage_building.patch
+++ /dev/null
@@ -1,85 +0,0 @@
-Upstream-Status: Inappropriate [legacy version]
-
-Use native coreutils binaries to build manpages in cross environment.
-This avoids man page build issues like this:
-
-| Making all in man
-| make[1]: Entering directory `/build_disk/poky_build/build1/tmp/work/i586-poky-linux/coreutils-6.9-r0/coreutils-6.9/man'
-| Updating man page cut.1
-| Updating man page dir.1
-| Updating man page expand.1
-| Updating man page fold.1
-| Updating man page install.1
-| Updating man page join.1
-| Updating man page pr.1
-| Updating man page ls.1
-| Updating man page sort.1
-| Updating man page unexpand.1
-| Updating man page uniq.1
-| Updating man page who.1
-| Updating man page vdir.1
-| help2man: can't get `--help' info from dir.td/dir
-| help2man: can't get `--help' info from cut.td/cut
-| make[1]: *** [dir.1] Error 126
-| make[1]: *** Waiting for unfinished jobs....
-| help2man: can't get `--help' info from fold.td/fold
-| help2man: can't get `--help' info from install.td/install
-| help2man: can't get `--help' info from expand.td/expand
-| help2man: can't get `--help' info from join.td/join
-| make[1]: *** [cut.1] Error 126
-| make[1]: *** [fold.1] Error 126
-| make[1]: *** [install.1] Error 126
-| help2man: can't get `--help' info from sort.td/sort
-| make[1]: *** [expand.1] Error 126
-| help2man: can't get `--help' info from pr.td/pr
-| make[1]: *** [join.1] Error 126
-| help2man: can't get `--help' info from ls.td/ls
-| help2man: can't get `--help' info from unexpand.td/unexpand
-| help2man: can't get `--help' info from uniq.td/uniq
-| help2man: can't get `--help' info from who.td/who
-| make[1]: *** [sort.1] Error 126
-| make[1]: *** [pr.1] Error 126
-| help2man: can't get `--help' info from vdir.td/vdir
-| make[1]: *** [ls.1] Error 126
-| make[1]: *** [uniq.1] Error 126
-| make[1]: *** [unexpand.1] Error 126
-| make[1]: *** [who.1] Error 126
-| make[1]: *** [vdir.1] Error 126
-| make[1]: Leaving directory `/build_disk/poky_build/build1/tmp/work/i586-poky-linux/coreutils-6.9-r0/coreutils-6.9/man'
-| make: *** [all-recursive] Error 1
-| FATAL: oe_runmake failed
-| ERROR: Function 'do_compile' failed (see /build_disk/poky_build/build1/tmp/work/i586-poky-linux/coreutils-6.9-r0/temp/log.do_compile.12780 for further information)
-NOTE: package coreutils-6.9-r0: task do_compile: Failed
-ERROR: Task 8 (/home/nitin/prj/poky.git/meta/recipes-core/coreutils/coreutils_6.9.bb, do_compile) failed with exit code '1'
-
-
-This patch is made for gplv2 coreutils the recipe
-Nitin A Kamble <nitin.a.kamble@intel.com>
-2011/03/17
-
-Index: man/Makefile.am
-===================================================================
---- a/man.orig/Makefile.am
-+++ b/man/Makefile.am
-@@ -167,7 +167,7 @@ mapped_name = `echo $*|sed 's/install/gi
- 	            $(PERL) -- $(srcdir)/help2man		\
- 	             --source='$(PACKAGE_STRING)'		\
- 	             --include=$(srcdir)/$*.x			\
--	             --output=$t/$@ $t/$*;			\
-+	             --output=$t/$@ $*;			\
- 	       }						\
- 	    && sed 's|$*\.td/||g' $t/$@ > $@			\
- 	    && chmod a-w $@					\
-Index: man/Makefile.in
-===================================================================
---- a/man.orig/Makefile.in
-+++ b/man/Makefile.in
-@@ -865,7 +865,7 @@ yes.1:		$(common_dep)	$(srcdir)/yes.x		.
- 	            $(PERL) -- $(srcdir)/help2man		\
- 	             --source='$(PACKAGE_STRING)'		\
- 	             --include=$(srcdir)/$*.x			\
--	             --output=$t/$@ $t/$*;			\
-+	             --output=$t/$@ $*;			\
- 	       }						\
- 	    && sed 's|$*\.td/||g' $t/$@ > $@			\
- 	    && chmod a-w $@					\
diff --git a/recipes-core/coreutils/coreutils-6.9/man-touch.patch b/recipes-core/coreutils/coreutils-6.9/man-touch.patch
deleted file mode 100644
index 59a4fe0..0000000
--- a/recipes-core/coreutils/coreutils-6.9/man-touch.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Upstream-Status: Inappropriate [legacy version]
-
-# man page for 'touch' is generated differently from others. All other utilities
-# are provided static man source files, while for 'touch' it requires help2man
-# to invoke "touch --help" and then convert the output into the manual. Since touch
-# is with target format which can't be invoked on build system, disable building
-# 'touch' man page here.
-#
-# Signed-off-by: Kevin Tian <kevin.tian@intel.com>, 2010-08-18
-# (this patch is licensed under GPLv2)
-
-diff --git a/man/Makefile.am b/man/Makefile.am
-index 32df9d1..37b09e3 100644
---- a/man/Makefile.am
-+++ b/man/Makefile.am
-@@ -27,7 +27,7 @@ dist_man_MANS = \
-   paste.1 pathchk.1 pr.1 printenv.1 printf.1 ptx.1 pwd.1 readlink.1 \
-   rm.1 rmdir.1 seq.1 sha1sum.1 sha224sum.1 sha256sum.1 sha384sum.1 sha512sum.1 \
-   shred.1 shuf.1 sleep.1 sort.1 split.1 stat.1 \
--  su.1 sum.1 sync.1 tac.1 tail.1 tee.1 test.1 touch.1 tr.1 true.1 tsort.1 \
-+  su.1 sum.1 sync.1 tac.1 tail.1 tee.1 test.1 tr.1 true.1 tsort.1 \
-   tty.1 unexpand.1 uniq.1 unlink.1 vdir.1 wc.1 \
-   whoami.1 yes.1 $(MAN)
- optional_mans = \
diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index ae941fd..906bc4a 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -21,10 +21,8 @@ SRC_URI = "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
            file://coreutils-i18n.patch \
            file://coreutils-overflow.patch \
            file://coreutils-fix-install.patch \
-           file://man-touch.patch \
            file://coreutils_fix_for_automake-1.12.patch \
            file://coreutils-fix-texinfo.patch \
-           file://fix_for_manpage_building.patch \
            file://loadavg.patch \
            file://no-man.patch \
            file://build-don-t-need-charset.alias-when-building-for-mus.patch \
-- 
2.11.0


