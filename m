Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 283F3E00CD0; Thu, 14 Sep 2017 05:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (max.oss.09[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D7F9E00CB4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 05:10:22 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id i131so3103626wma.1
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 05:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=t2xxkHbDvDiQ+TTpogMgNF4aVywQL3FDD9BBQW6Mbbg=;
	b=HWjZxkZpCIDQBZ86boCVD0rDU/tXfHcel0UPdAnmpr5epq31E0xth8s57VJElPz8eJ
	/LTiWNzsz1BukMyUNYg/BFOt2zdzw3aa1C2zOLWfaPIashIaFbJVEaqhClvmap4E09vY
	yFc3SlwcfzBdCd8OY/G5Qa1fxeVaAOmC3GhDM3VjKiLRUAeWPF36mCvV3VsjsQpFSAbK
	fCkPuzkBhSiK8CmyXoaQFwulF7l0OfbN+bDCEfs/Su830WzEL+mIkzhi86jT6ftxT4UT
	6FukOKUMP9LWfW8TyArsCAEM7xNz4sy+5KXUjZ/xg+iDo6FNNzJ7vvV7wVB3PSnwxBHp
	sH5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=t2xxkHbDvDiQ+TTpogMgNF4aVywQL3FDD9BBQW6Mbbg=;
	b=cyyXyvJSq1aqeHFmcOGE6y7PRuY1+xASqgxAG/Q3kQx54f6SdCDaDop5PtRVClJZQy
	v4SRQTPCrCRAzUz99W4NOQiO3qsNpc9zHEW/pSXX0z0zaIveBSMYk7H2wrm6O7P/Esat
	WhhWVxVd++S5IEujYKePqfgKVzcPqEi2UhBiv79kSytKefuQ/K4HRK8GZe/VVaydLOX5
	KODgzMHP/1t/Q8YKhk5Q0hFh7Znoc318TJhruKB3WO0fMALmHRyBeP0QebttYa+UjkfL
	icpfIkkbP52kpE9dgTXdMO1OHtumP4qzSqipdNzeSIrCJiX6t/+TVqqZShN1VfTHETNo
	XPLg==
X-Gm-Message-State: AHPjjUjX35QGxYHUFaPnfkNtmsMblOxlPlplIkZFzl+r95gy4Z8gHHaZ
	YmkJsr11DvraLK9s
X-Google-Smtp-Source: AOwi7QAnJYHDpMbtEBPGgusUMYNBB67hs4DJ5Ngy2pcZLLuMYgkMYx6UGnXhFD0EEYc67lVFVt0VCQ==
X-Received: by 10.28.11.195 with SMTP id 186mr1642839wml.41.1505391021187;
	Thu, 14 Sep 2017 05:10:21 -0700 (PDT)
Received: from linuxdev.toradex.int ([46.140.72.82])
	by smtp.gmail.com with ESMTPSA id
	55sm23308523wrw.60.2017.09.14.05.10.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Sep 2017 05:10:20 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Sep 2017 14:09:24 +0200
Message-Id: <20170914120924.1935-2-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.9.4
In-Reply-To: <20170914120924.1935-1-max.krummenacher@toradex.com>
References: <20170914120924.1935-1-max.krummenacher@toradex.com>
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [meta-qt4][PATCH 2/2] qt4: Add patch to allow builds of webkit with gcc v7++
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
X-List-Received-Date: Thu, 14 Sep 2017 12:10:23 -0000

Change configure logic, so that only gcc 3.3 and older does
not build webkit and gcc 3.2 and older additionally not
build QtXmlPatterns.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc                       |  2 +-
 .../qt4-4.8.7/{gcc-6.patch => gcc-version.patch}    | 21 ++++++++++++++++++---
 recipes-qt4/qt4/qt4-native.inc                      |  2 +-
 3 files changed, 20 insertions(+), 5 deletions(-)
 rename recipes-qt4/qt4/qt4-4.8.7/{gcc-6.patch => gcc-version.patch} (62%)

diff --git a/recipes-qt4/qt4/qt4-4.8.7.inc b/recipes-qt4/qt4/qt4-4.8.7.inc
index 7720463..40558aa 100644
--- a/recipes-qt4/qt4/qt4-4.8.7.inc
+++ b/recipes-qt4/qt4/qt4-4.8.7.inc
@@ -27,7 +27,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://0034-Fix-kmap2qmap-build-with-clang.patch \
            file://0035-Add-nios2-support.patch \
            file://0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch \
-           file://gcc-6.patch \
+           file://gcc-version.patch \
            file://Fix-QWSLock-invalid-argument-logs.patch \
            file://add_check_for_aarch64_32.patch \
            file://0001-QWS-fix-24-bit-RGB-BGR-handling.patch \
diff --git a/recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch b/recipes-qt4/qt4/qt4-4.8.7/gcc-version.patch
similarity index 62%
rename from recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch
rename to recipes-qt4/qt4/qt4-4.8.7/gcc-version.patch
index b0ce9cd..9c5dd48 100644
--- a/recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch
+++ b/recipes-qt4/qt4/qt4-4.8.7/gcc-version.patch
@@ -6,14 +6,29 @@ RP 2016/5/26
 
 Index: qt-everywhere-opensource-src-4.8.7/configure
 ===================================================================
+
+Amend this and change the logic to assume all compilers are suitable
+exept 3.3x resp. 3.2x and older ones.
+Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
+
 --- qt-everywhere-opensource-src-4.8.7.orig/configure
 +++ qt-everywhere-opensource-src-4.8.7/configure
-@@ -7756,7 +7756,7 @@ case "$XPLATFORM" in
+@@ -7757,15 +7757,15 @@
      *-g++*)
  	# Check gcc's version
  	case "$(${QMAKE_CONF_COMPILER} -dumpversion)" in
 -	    5*|4*|3.4*)
-+	    6*|5*|4*|3.4*)
- 		;;
+-		;;
              3.3*)
                  canBuildWebKit="no"
+                 ;;
+-	    *)
++	    3.2*|3.1*|3.0*|2*)
+ 		canBuildWebKit="no"
+ 		canBuildQtXmlPatterns="no"
+ 		;;
++	    *)
++		;;
+ 	esac
+ 	;;
+     solaris-cc*)
diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index c0d6b3c..08aa61d 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -18,7 +18,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
 	   file://0015-configure-add-nostrip-for-debug-packages.patch  \
            file://0021-configure-make-qt4-native-work-with-long-building-pa.patch \
 	   file://0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch \
-	   file://gcc-6.patch \
+	   file://gcc-version.patch \
            file://g++.conf \
            file://linux.conf \
 	   file://qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch \
-- 
2.9.4


