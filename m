Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1156E013EE
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:37 -0700 (PDT)
Received: by mail-pz0-f41.google.com with SMTP id x4so1653838daj.28
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=y6CO0j6I+noNyJLdUTsOI1ek2cNmW2ia+pT6eQXOj98=;
	b=WwFxV8a2yYYITqop3+alnQ4wo9ayDzCi/8AFIgKkSSvK4DYHtNmuHoqKWxHi54VipI
	Lq7lJz0LIgsr7x9h0VVMs7zdJz3bgcCPnYrvic4Esl8doLo40Nh9ukmKuRxjMcHqXZ0z
	H40K2gWGULBO2B16mMqY/va0vpfG2Mp+OLudlbiln4jIO8eMbF5xpFvMtGg0vR6x/6Ss
	LHC3pHsDUhEFwa1fpEJlNlxfFp7ji1t9tKJHgWGrLY5COLvWeI/JD+H0Fn7+O8/gUdSo
	Ele1zb1UfKACo0CQhBV2RMrBa6Rdj1BcVETy77zbS5ZVVyAXiUGcKXOWhxx76Sg8KRZE
	KFYQ==
Received: by 10.68.233.102 with SMTP id tv6mr20702021pbc.12.1334166697620;
	Wed, 11 Apr 2012 10:51:37 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id y5sm3454237pbk.5.2012.04.11.10.51.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 Apr 2012 10:51:36 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, josh@linux.intel.com,
	josh@hipro.co.in
Date: Wed, 11 Apr 2012 10:51:15 -0700
Message-Id: <3433e345ad3acf7be2b4628c58f5cb156f3c7ba6.1334166452.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnWLYS69TSC+3vCPTpC12UlBwTPIa+KsnlQSugFVemihFRAI5bSfBGaL44vvF8tK60kIwA9
Subject: [PATCH 6/8] dosfstools: add Upstream-Status to patches
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
X-List-Received-Date: Wed, 11 Apr 2012 17:51:37 -0000

From: Scott Garman <scott.a.garman@intel.com>

(From OE-Core rev: 735a3e5d3399e29e4d6fa82dabbdd1687eaa29e9)

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../dosfstools/dosfstools/2.6.20-syscall.patch     |    7 +++++++
 .../dosfstools/dosfstools/alignment_hack.patch     |    4 ++++
 .../dosfstools/dosfstools-msdos_fs-types.patch     |    7 +++++++
 .../dosfstools/include-linux-types.patch           |    5 +++++
 .../dosfstools/dosfstools/mkdosfs-bootcode.patch   |    7 +++++++
 .../dosfstools/dosfstools/mkdosfs-dir.patch        |    7 +++++++
 .../dosfstools/msdos_fat12_undefined.patch         |    7 +++++++
 7 files changed, 44 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/dosfstools/dosfstools/2.6.20-syscall.patch b/meta/recipes-devtools/dosfstools/dosfstools/2.6.20-syscall.patch
index 7cf2662..4460f06 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools/2.6.20-syscall.patch
+++ b/meta/recipes-devtools/dosfstools/dosfstools/2.6.20-syscall.patch
@@ -1,3 +1,10 @@
+Only use the system's llseek().
+
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 Index: dosfstools-2.10/dosfsck/io.c
 ===================================================================
 --- dosfstools-2.10.orig/dosfsck/io.c	2007-06-07 16:15:52.000000000 +0200
diff --git a/meta/recipes-devtools/dosfstools/dosfstools/alignment_hack.patch b/meta/recipes-devtools/dosfstools/dosfstools/alignment_hack.patch
index e15060a..b46b2db 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools/alignment_hack.patch
+++ b/meta/recipes-devtools/dosfstools/dosfstools/alignment_hack.patch
@@ -8,6 +8,10 @@ memcpy into an 16bit aligned
 
     -zecke
 
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
 
 --- dosfstools/dosfsck/boot.c.orig	2003-05-15 19:32:23.000000000 +0200
 +++ dosfstools/dosfsck/boot.c	2003-06-13 17:44:25.000000000 +0200
diff --git a/meta/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch b/meta/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch
index e70a3ea..35abd1a 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch
+++ b/meta/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch
@@ -1,3 +1,10 @@
+Ensure the __s8 type is properly defined.
+
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 --- dosfstools-2.10/dosfsck/dosfsck.h.org	2006-02-21 08:36:14.000000000 -0700
 +++ dosfstools-2.10/dosfsck/dosfsck.h	2006-02-21 08:40:12.000000000 -0700
 @@ -22,6 +22,14 @@
diff --git a/meta/recipes-devtools/dosfstools/dosfstools/include-linux-types.patch b/meta/recipes-devtools/dosfstools/dosfstools/include-linux-types.patch
index 4bbd4e7..ab5c8cf 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools/include-linux-types.patch
+++ b/meta/recipes-devtools/dosfstools/dosfstools/include-linux-types.patch
@@ -5,6 +5,11 @@ include asm/types.h. To work around this patch mkdosfs.c to explicity
 include linux/types.h which will in turn pull in asm/types.h which
 defines these variables.
 
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 --- dosfstools-2.10/mkdosfs/mkdosfs.c~	2006-07-12 18:46:21.000000000 +1000
 +++ dosfstools-2.10/mkdosfs/mkdosfs.c	2006-07-12 18:46:21.000000000 +1000
 @@ -60,6 +60,7 @@
diff --git a/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch b/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch
index 52be862..dd5cc7f 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch
+++ b/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch
@@ -1,3 +1,10 @@
+Add option to read in bootcode from a file.
+
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN dosfstools-2.10.orig/mkdosfs/ChangeLog dosfstools-2.10/mkdosfs/ChangeLog
 --- dosfstools-2.10.orig/mkdosfs/ChangeLog	1997-06-18 03:09:38.000000000 -0700
 +++ dosfstools-2.10/mkdosfs/ChangeLog	2004-08-02 20:57:57.734939816 -0700
diff --git a/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch b/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch
index 8f753b0..7feee0f 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch
+++ b/meta/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch
@@ -1,3 +1,10 @@
+Add -s <directory> support to populate the image.
+
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN dosfstools-2.10.orig/mkdosfs/mkdosfs.c dosfstools-2.10/mkdosfs/mkdosfs.c
 --- dosfstools-2.10.orig/mkdosfs/mkdosfs.c	2004-08-02 20:48:45.000000000 -0700
 +++ dosfstools-2.10/mkdosfs/mkdosfs.c	2004-08-02 20:49:44.296953792 -0700
diff --git a/meta/recipes-devtools/dosfstools/dosfstools/msdos_fat12_undefined.patch b/meta/recipes-devtools/dosfstools/dosfstools/msdos_fat12_undefined.patch
index 4987aa3..11e8a75 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools/msdos_fat12_undefined.patch
+++ b/meta/recipes-devtools/dosfstools/dosfstools/msdos_fat12_undefined.patch
@@ -1,3 +1,10 @@
+Fix a compilation error due to undefined MSDOS_FAT12.
+
+Upstream-Status: Inappropriate [licensing]
+We're tracking an old release of dosfstools due to licensing issues.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 --- dosfstools-2.10/dosfsck/boot.c.orig	2004-10-15 08:51:42.394725176 -0600
 +++ dosfstools-2.10/dosfsck/boot.c	2004-10-15 08:49:16.776862456 -0600
 @@ -14,6 +14,9 @@
-- 
1.7.5.4


