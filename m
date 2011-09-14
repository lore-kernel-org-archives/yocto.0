Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DDE9E006DA
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 22:41:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Sep 2011 22:41:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,378,1312182000"; d="scan'208";a="51048063"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2011 22:41:26 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 00:41:07 -0500
Message-Id: <36fc52f1a209b2c1813ab3ffad0be24fb367b6a5.1315977970.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1315977970.git.tom.zanussi@intel.com>
References: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1315977970.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1315977969.git.tom.zanussi@intel.com>
References: <cover.1315977969.git.tom.zanussi@intel.com>
Subject: [PATCH 3/5] meta-intel: make 32-bit BSPs use grub2
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch all the 32-bit BSPs from legacy (0.97) grub to grub 1.99.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    3 +++
 meta-crownbay/conf/machine/crownbay.conf        |    3 +++
 meta-emenlow/conf/machine/emenlow.conf          |    3 +++
 meta-fishriver/conf/machine/fishriver.conf      |    3 +++
 meta-fri2/conf/machine/fri2.conf                |    3 +++
 meta-n450/conf/machine/n450.conf                |    3 +++
 6 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 30c575a..64a911c 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -34,3 +34,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+PREFERRED_VERSION_grub ?= "1.99"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 96dc784..bde08da 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -38,3 +38,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+PREFERRED_VERSION_grub ?= "1.99"
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index de6794e..9892a11 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -34,3 +34,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+PREFERRED_VERSION_grub ?= "1.99"
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 0cee5d0..5bd01be 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -34,3 +34,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+PREFERRED_VERSION_grub ?= "1.99"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 4b81fab..587948a 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -37,3 +37,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+PREFERRED_VERSION_grub ?= "1.99"
diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index c0ff0cf..431db32 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -37,3 +37,6 @@ GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
 ROOTLESS_X = "1"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+PREFERRED_VERSION_grub ?= "1.99"
-- 
1.7.0.4


