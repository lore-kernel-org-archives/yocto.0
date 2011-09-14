Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1C86E004D1
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2011 16:15:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Sep 2011 16:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,383,1312182000"; d="scan'208";a="51492694"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by fmsmga001.fm.intel.com with ESMTP; 14 Sep 2011 16:15:54 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 18:15:39 -0500
Message-Id: <3890c613e6c0ba182648d76d3c190f551d31732b.1316041909.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1316041909.git.tom.zanussi@intel.com>
References: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1316041909.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316041909.git.tom.zanussi@intel.com>
References: <cover.1316041909.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4] meta-intel: update BSPs to use grub2
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
X-List-Received-Date: Thu, 15 Sep 2011 04:05:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

grub2 is now the default, so explicit preferred entries are
unnecessary.  It also needs to be installed in the rootfs, so we need
to add it as a dependency.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |    2 ++
 meta-crownbay/conf/machine/crownbay.conf         |    2 ++
 meta-emenlow/conf/machine/emenlow.conf           |    3 +++
 meta-fishriver/conf/machine/fishriver.conf       |    3 +++
 meta-fri2/conf/machine/fri2-noemgd.conf          |    2 ++
 meta-fri2/conf/machine/fri2.conf                 |    3 +++
 meta-jasperforest/conf/machine/jasperforest.conf |    1 -
 meta-n450/conf/machine/n450.conf                 |    3 +++
 meta-sugarbay/conf/machine/sugarbay.conf         |    2 --
 9 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 30c575a..c668f4a 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -34,3 +34,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 96dc784..457bdfc 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -38,3 +38,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index de6794e..39930a0 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -34,3 +34,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 0cee5d0..2fe78e8 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -34,3 +34,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+
diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index a871529..b02e037 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -34,3 +34,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 4b81fab..eab4b50 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -37,3 +37,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+
diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 3013fe4..9fdb968 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -36,5 +36,4 @@ GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
-PREFERRED_VERSION_grub ?= "1.98"
 
diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index c0ff0cf..79970d1 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -37,3 +37,6 @@ GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
 ROOTLESS_X = "1"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index ea8d98a..6277e20 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -38,5 +38,3 @@ GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
-
-PREFERRED_VERSION_grub ?= "1.98"
-- 
1.7.0.4


