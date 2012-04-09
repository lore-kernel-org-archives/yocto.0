Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B910EE0059A
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:27:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Apr 2012 15:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151641390"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2012 15:27:52 -0700
From: nitin.a.kamble@intel.com
To: openembedded-core@lists.openembedded.org,
	yocto@yoctoproject.org
Date: Mon,  9 Apr 2012 15:27:50 -0700
Message-Id: <7ad20802c01b5cea250e0fc9d31f603674c4b4fa.1334010389.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1334010389.git.nitin.a.kamble@intel.com>
References: <cover.1334010389.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/2] tclibc-eglibc.inc: make locale packages dependency conditional
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
X-List-Received-Date: Mon, 09 Apr 2012 22:27:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Only add locale package dependencies if the eglibc is configured
with locale support.
  This avoids dependencies issues for distros such as poky-tiny

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/conf/distro/include/tclibc-eglibc.inc |   23 ++++++++++++++++-------
 1 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/meta/conf/distro/include/tclibc-eglibc.inc b/meta/conf/distro/include/tclibc-eglibc.inc
index 8b8a214..aed82d1 100644
--- a/meta/conf/distro/include/tclibc-eglibc.inc
+++ b/meta/conf/distro/include/tclibc-eglibc.inc
@@ -23,10 +23,19 @@ LIBC_DEPENDENCIES = "libsegfault \
     		     eglibc-dev \
     		     eglibc-utils \
     		     eglibc-thread-db \
-    		     eglibc-localedata-i18n \
-    		     eglibc-gconv-ibm850 \
-    		     eglibc-gconv-cp1252 \
-    		     eglibc-gconv-iso8859-1 \
-    		     eglibc-gconv-iso8859-15 \
-    		     locale-base-en-us \
-    		     locale-base-en-gb "
+		     ${@get_libc_locales_dependencies(d)}"
+
+LIBC_LOCALE_DEPENDENCIES = "\
+	eglibc-localedata-i18n \
+	eglibc-gconv-ibm850 \
+	eglibc-gconv-cp1252 \
+	eglibc-gconv-iso8859-1 \
+	eglibc-gconv-iso8859-15 \
+	locale-base-en-us \
+	locale-base-en-gb"
+
+def get_libc_locales_dependencies(d):
+    if 'libc-locales' in (d.getVar('DISTRO_FEATURES', True) or '').split() :
+        return d.getVar('LIBC_LOCALE_DEPENDENCIES', True) or ''
+    else:
+        return ''
-- 
1.7.7


