Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 809C2E00B0A
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 08:31:11 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Feb 2012 08:31:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="111811043"
Received: from unknown (HELO localhost) ([10.255.15.123])
	by orsmga001.jf.intel.com with ESMTP; 25 Feb 2012 08:30:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sat, 25 Feb 2012 08:29:30 -0800
Message-Id: <a371d1ec41d49cc346eaca4b28ee854a145c1a73.1330187370.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] poky-tiny: Assume pkgconfig is provided
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
X-List-Received-Date: Sat, 25 Feb 2012 16:31:11 -0000

-dev packages require pkgconfig, but it pulls in glib->dbus->shadow
which breaks with tiny's minimal libc.

-dev packages are not currently supported on poky-tiny.

Proposed-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 411347a..6fa4c90 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -55,6 +55,11 @@ ENABLE_WIDEC="false"
 # eglibc->bash->gettext->libc-posix-clang-wchar dependency.
 USE_NLS="no"
 
+# -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
+# which breaks with tiny's minimal libc.
+# -dev packages are not currently supported on poky-tiny.
+ASSUME_PROVIDED += "pkgconfig$"
+
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
 DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
-- 
1.7.6.5


