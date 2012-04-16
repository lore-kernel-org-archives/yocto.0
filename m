Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3304EE01403
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 15:14:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Apr 2012 15:14:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="142479684"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by fmsmga001.fm.intel.com with ESMTP; 16 Apr 2012 15:14:01 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 15:14:01 -0700
Message-Id: <3137f47d1f99f6ea0b8b98839d0da72686a184aa.1334614375.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1334614375.git.nitin.a.kamble@intel.com>
References: <cover.1334614375.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] poky-tiny: fix eglibc configuration
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
X-List-Received-Date: Mon, 16 Apr 2012 22:14:02 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

eglibc needs libc-posix-regexp-glibc & libc-libm-big enabled in it's
configuration to avoid following eglibc build issue.

...
| In file included from xregex.c:634:0:
| xregex.c: In function 'byte_regex_compile':
| xregex.c:3395:8: error: too few arguments to function 'findidx'
| ../locale/weight.h:23:1: note: declared here
...

This fixes bug [YOCTO #2295]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 58d64ec..626b2d0 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -62,7 +62,7 @@ ASSUME_PROVIDED += "pkgconfig$"
 
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
-DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
+DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-libm-big libc-crypt"
 # for gettext
 DISTRO_FEATURES_LIBC_TINY += "libc-posix-clang-wchar"
 # for m4
@@ -71,7 +71,7 @@ DISTRO_FEATURES_LIBC_TINY += "libc-spawn libc-locale-code"
 DISTRO_FEATURES_LIBC_TINY += "libc-ftraverse"
 # Required for "who"
 DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
-DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
+DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp libc-posix-regexp-glibc"
 DISTRO_FEATURES_LIBC_NET = "libc-inet libc-nis"
 
 DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \
-- 
1.7.7


