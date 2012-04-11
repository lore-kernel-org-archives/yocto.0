Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 476D8E01414
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:42 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id jt11so1947961pbb.35
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=d66uHcO66fNqwcDNnvweT/NQHKorZfe/GVhTJHt6QbE=;
	b=gNUt8hwQIT+lpwuJBE580K9C1MCiNKYHvvC4q5tA4HcP+gyYA1SMepCGqthMp4TZ/c
	DBC7cnN62gLpzzzrCfKtqBEp3l4mEtSsqJbqy9ekaEJ2ZbTMdVCk2yYnsk8lp6GwwqfQ
	HoUTyP0cseV2SZWGzvibJYpkHF/m8MCihSCFaA2tjGXkU5LY4mLXOzqZJUR4MxkSNbxp
	RlV4rJ1W/0CqpTI3CqLFgKnWBm3pXicpARKcsNEHqnwMSyy2+qTec1zVioP/eSECV9FO
	bT/wH3FA0oSqZW7B6Tt1j4aQOgwPKg6Mig8ylhGJDHcikExdRV6fq+LRu6RTBBuvP31U
	6PWA==
Received: by 10.68.194.1 with SMTP id hs1mr39979997pbc.6.1334166702055;
	Wed, 11 Apr 2012 10:51:42 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id pj1sm3441202pbc.44.2012.04.11.10.51.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 Apr 2012 10:51:41 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, josh@linux.intel.com,
	josh@hipro.co.in
Date: Wed, 11 Apr 2012 10:51:17 -0700
Message-Id: <b2f50eb25e5a6febdbb4ffade1cb535eff4edaa4.1334166452.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmprSKRJAtijU7yGkr7UvozA64RWIwqB7PcxZy+WwdWbXoZ/WL1OORcq6cbJ26wlC+5BNuP
Subject: [PATCH 8/8] dosfstools: Add patch to disable fat32 autoselection and behave as 2.10
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
X-List-Received-Date: Wed, 11 Apr 2012 17:51:42 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

It appears msdos image population and fat32 images are incompatible.
This reverts to the 2.10 behaviour of defaulting to fat16 instead of
using fat32 for large images, allowing image generation to work
correctly. This is a workaround and a proper fix is really needed.

(From OE-Core rev: c2de8d41236cf1293db9e6c69d69e8d14f55ffd1)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../dosfstools/dosfstools/nofat32_autoselect.patch |   27 ++++++++++++++++++++
 .../recipes-devtools/dosfstools/dosfstools_2.11.bb |    5 ++-
 2 files changed, 30 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/dosfstools/dosfstools/nofat32_autoselect.patch

diff --git a/meta/recipes-devtools/dosfstools/dosfstools/nofat32_autoselect.patch b/meta/recipes-devtools/dosfstools/dosfstools/nofat32_autoselect.patch
new file mode 100644
index 0000000..21ebc10
--- /dev/null
+++ b/meta/recipes-devtools/dosfstools/dosfstools/nofat32_autoselect.patch
@@ -0,0 +1,27 @@
+FAT32 appears to be broken when used with the -d option to populate the msdos
+image. This disables the FAT32 autoselection code which means we don't get
+broken images with the -d option. It can still be enabled on the commandline
+at the users own risk. This changes us back to the 2.10 version's behaviour
+which was known to work well even with large images.
+
+Upstream Status: Inapprioriate [depends on other patches we apply]
+
+RP 2011/12/13
+
+Index: dosfstools-2.11/mkdosfs/mkdosfs.c
+===================================================================
+--- dosfstools-2.11.orig/mkdosfs/mkdosfs.c	2011-12-13 13:54:37.538509391 +0000
++++ dosfstools-2.11/mkdosfs/mkdosfs.c	2011-12-13 13:55:10.258508631 +0000
+@@ -808,10 +808,12 @@
+       bs.media = (char) 0xf8; /* Set up the media descriptor for a hard drive */
+       bs.dir_entries[0] = (char) 0;	/* Default to 512 entries */
+       bs.dir_entries[1] = (char) 2;
++/*
+       if (!size_fat && blocks*SECTORS_PER_BLOCK > 1064960) {
+ 	  if (verbose) printf("Auto-selecting FAT32 for large filesystem\n");
+ 	  size_fat = 32;
+       }
++*/
+       if (size_fat == 32) {
+ 	  /* For FAT32, try to do the same as M$'s format command:
+ 	   * fs size < 256M: 0.5k clusters
diff --git a/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb b/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
index 7d0080c..66eeb7c 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
+++ b/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
@@ -7,7 +7,7 @@ DESCRIPTION = "DOS FAT Filesystem Utilities"
 SECTION = "base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://mkdosfs/COPYING;md5=cbe67f08d6883bff587f615f0cc81aa8"
-PR = "r1"
+PR = "r3"
 
 SRC_URI = "ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-${PV}.src.tar.gz \
            file://mkdosfs-bootcode.patch \
@@ -15,7 +15,8 @@ SRC_URI = "ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-${PV}
            file://alignment_hack.patch \
            file://msdos_fat12_undefined.patch \
            file://dosfstools-msdos_fs-types.patch \
-           file://include-linux-types.patch"
+           file://include-linux-types.patch \
+           file://nofat32_autoselect.patch "
 
 SRC_URI[md5sum] = "407d405ade410f7597d364ab5dc8c9f6"
 SRC_URI[sha256sum] = "0eac6d12388b3d9ed78684529c1b0d9346fa2abbe406c4d4a3eb5a023c98a484"
-- 
1.7.5.4


