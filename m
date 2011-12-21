Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9991FE00748
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 01:03:58 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Dec 2011 01:03:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="98705056"
Received: from unknown (HELO localhost) ([10.255.12.104])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2011 01:03:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, elizabeth.flanagan@intel.com
Date: Wed, 21 Dec 2011 01:02:49 -0800
Message-Id: <68cc8408aae568497f000d572b1d7e562c47f5ae.1324456294.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
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
X-List-Received-Date: Wed, 21 Dec 2011 09:03:58 -0000

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


