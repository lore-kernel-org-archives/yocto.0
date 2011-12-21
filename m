Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CEA5E0030D
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 10:58:48 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2011 10:58:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="90091334"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2011 10:58:46 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com,
	elizabeth.flanagan@intel.com, martin.jansa@gmail.com,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed, 21 Dec 2011 10:58:11 -0800
Message-Id: <68cc8408aae568497f000d572b1d7e562c47f5ae.1324493490.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324493490.git.dvhart@linux.intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324493490.git.dvhart@linux.intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
Subject: [PATCH 3/9] eglibc: Only add eglibc-utils to PACKAGES if wchar is supported
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
X-List-Received-Date: Wed, 21 Dec 2011 18:58:48 -0000

eglibc-utils RDEPENDS on bash which requires gettext which requires
wchar support. If wchar support is not included in DISTRO_FEATURES,
gettext will fail to compile.

By removing eglibc-utils from the PACKAGES listing, bitbake doesn't
try to build the dependency chain.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-core/eglibc/eglibc-package.inc |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/eglibc/eglibc-package.inc b/meta/recipes-core/eglibc/eglibc-package.inc
index 020f558..ab62654 100644
--- a/meta/recipes-core/eglibc/eglibc-package.inc
+++ b/meta/recipes-core/eglibc/eglibc-package.inc
@@ -20,7 +20,11 @@ USE_LDCONFIG ?= "1"
 PKGSUFFIX = ""
 PKGSUFFIX_virtclass-nativesdk = "-nativesdk"
 
-PACKAGES = "${PN}-dbg ${PN} catchsegv${PKGSUFFIX} sln${PKGSUFFIX} nscd${PKGSUFFIX} ldd${PKGSUFFIX} ${PN}-utils eglibc-extra-nss${PKGSUFFIX} eglibc-thread-db${PKGSUFFIX} ${PN}-pic ${PN}-dev ${PN}-doc libcidn${PKGSUFFIX} libmemusage${PKGSUFFIX} libsegfault${PKGSUFFIX} ${PN}-pcprofile libsotruss${PKGSUFFIX}"
+PACKAGES = "${PN}-dbg ${PN} catchsegv${PKGSUFFIX} sln${PKGSUFFIX} nscd${PKGSUFFIX} ldd${PKGSUFFIX} eglibc-extra-nss${PKGSUFFIX} eglibc-thread-db${PKGSUFFIX} ${PN}-pic ${PN}-dev ${PN}-doc libcidn${PKGSUFFIX} libmemusage${PKGSUFFIX} libsegfault${PKGSUFFIX} ${PN}-pcprofile libsotruss${PKGSUFFIX}"
+
+# eglibc-utils rdepends on bash which depends on gettext which requires wchar
+# support. Only include it in the PACKAGES list if we can build the RDEPENDS.
+PACKAGES += ${@base_contains('DISTRO_FEATURES', 'libc-posix-clang-wchar', '${PN}-utils', '', d)}
 
 # The ld.so in this eglibc supports the GNU_HASH
 RPROVIDES_${PN} = "glibc${PKGSUFFIX} rtld(GNU_HASH)"
-- 
1.7.6.4


