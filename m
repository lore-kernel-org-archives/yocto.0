Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7527E01363
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:27:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Apr 2012 15:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151641391"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2012 15:27:52 -0700
From: nitin.a.kamble@intel.com
To: openembedded-core@lists.openembedded.org,
	yocto@yoctoproject.org
Date: Mon,  9 Apr 2012 15:27:51 -0700
Message-Id: <dffbfe0da60f19e326c17005e557d1f0535610fd.1334010389.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <7ad20802c01b5cea250e0fc9d31f603674c4b4fa.1334010389.git.nitin.a.kamble@intel.com>
References: <7ad20802c01b5cea250e0fc9d31f603674c4b4fa.1334010389.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1334010389.git.nitin.a.kamble@intel.com>
References: <cover.1334010389.git.nitin.a.kamble@intel.com>
Subject: [PATCH 2/2] poky-tiny.conf: adjust eglibc options for poky-tiny
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
X-List-Received-Date: Mon, 09 Apr 2012 22:27:53 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Avoid errors for building meta-toolchain for poky-tiny

This Fixes Bug: [YOCTO #2259]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 395c6fb..58d64ec 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -63,6 +63,12 @@ ASSUME_PROVIDED += "pkgconfig$"
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
 DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
+# for gettext
+DISTRO_FEATURES_LIBC_TINY += "libc-posix-clang-wchar"
+# for m4
+DISTRO_FEATURES_LIBC_TINY += "libc-spawn libc-locale-code"
+# for elfutils
+DISTRO_FEATURES_LIBC_TINY += "libc-ftraverse"
 # Required for "who"
 DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
 DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
-- 
1.7.7


