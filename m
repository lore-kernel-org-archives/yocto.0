Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9301AE00E1E; Sat, 20 Aug 2016 11:06:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 023E7E00E11
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:06:12 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,551,1464678000"; 
   d="scan'208";a="101803"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Aug 2016 11:03:55 -0700
Message-Id: <1471716241-7010-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
References: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
Subject: [meta-mingw][PATCH 1/7] *-mingw32.conf: Upgrade for krogoth
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
X-List-Received-Date: Sat, 20 Aug 2016 18:06:16 -0000

Use explicit mingw32 override for

   PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial

to avoid multiple providers and consequently broken builds.

Allow building static libraries, disabled by default.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/machine-sdk/i686-mingw32.conf   | 7 ++++++-
 conf/machine-sdk/x86_64-mingw32.conf | 7 ++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-mingw32.conf
index 0bdedaa..d426fe3 100644
--- a/conf/machine-sdk/i686-mingw32.conf
+++ b/conf/machine-sdk/i686-mingw32.conf
@@ -3,7 +3,8 @@ SDK_OS = "mingw32"
 
 GCCTHREADS_mingw32 = "win32"
 
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
@@ -29,3 +30,7 @@ export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
 export RC = "${WINDRES}"
 
 BB_HASHBASE_WHITELIST_append = " WINDRES RC"
+
+# Needed to override no-static-libs.inc
+DISABLE_STATIC_mingw32 = ""
+
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64-mingw32.conf
index 5e80dfa..b9706f9 100644
--- a/conf/machine-sdk/x86_64-mingw32.conf
+++ b/conf/machine-sdk/x86_64-mingw32.conf
@@ -3,7 +3,8 @@ SDK_OS = "mingw32"
 
 GCCTHREADS_mingw32 = "win32"
 
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
@@ -29,3 +30,7 @@ export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
 export RC = "${WINDRES}"
 
 BB_HASHBASE_WHITELIST_append = " WINDRES RC"
+
+# Needed to override no-static-libs.inc
+DISABLE_STATIC_mingw32 = ""
+
-- 
2.7.4


