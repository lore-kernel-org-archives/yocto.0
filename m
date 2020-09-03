Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.7720.1599113128045554893
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2020 23:05:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 08365Bbf022802
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 2 Sep 2020 23:05:11 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Wed, 2 Sep 2020 23:04:58 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>, <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH] pacemaker: Fix build with -fno-common
Date: Thu, 3 Sep 2020 13:59:12 +0800
Message-ID: <20200903055912.3422968-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

Starting with GCC >= 10.x, -fno-common is used as default
instead of -fcommon.

Make the function definiton extern to fix the build failure.

Set the default OCF_ROOT_DIR to $libdir/ocf to make the
resource agents components more compatible.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 .../0001-Mark-declaration-with-extern.patch   | 46 +++++++++++++++++++
 ...maker-set-OCF_ROOT_DIR-to-libdir-ocf.patch | 32 +++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_2.0.3.bb  |  2 +
 3 files changed, 80 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
new file mode 100644
index 0000000..5729447
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
@@ -0,0 +1,46 @@
+From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:00 2001
+From: Mingli Yu <mingli.yu@windriver.com>
+Date: Thu, 3 Sep 2020 04:44:09 +0000
+Subject: [PATCH] Mark declaration with extern
+
+Fixes build with gcc 10+
+
+Upstream-Status: Pending
+
+Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
+---
+ daemons/attrd/pacemaker-attrd.h | 4 ++--
+ daemons/execd/pacemaker-execd.h | 2 +-
+ 2 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/daemons/attrd/pacemaker-attrd.h b/daemons/attrd/pacemaker-attrd.h
+index cc8e29ee1..76778915e 100644
+--- a/daemons/attrd/pacemaker-attrd.h
++++ b/daemons/attrd/pacemaker-attrd.h
+@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
+         gboolean seen;
+ } attribute_value_t;
+ 
+-crm_cluster_t *attrd_cluster;
+-GHashTable *attributes;
++extern crm_cluster_t *attrd_cluster;
++extern GHashTable *attributes;
+ 
+ #define attrd_send_ack(client, id, flags) \
+     crm_ipcs_send_ack((client), (id), (flags), "ack", __FUNCTION__, __LINE__)
+diff --git a/daemons/execd/pacemaker-execd.h b/daemons/execd/pacemaker-execd.h
+index 4a52d9183..dab3ccdbe 100644
+--- a/daemons/execd/pacemaker-execd.h
++++ b/daemons/execd/pacemaker-execd.h
+@@ -20,7 +20,7 @@
+ #    include <gnutls/gnutls.h>
+ #  endif
+ 
+-GHashTable *rsc_list;
++extern GHashTable *rsc_list;
+ 
+ typedef struct lrmd_rsc_s {
+     char *rsc_id;
+-- 
+2.26.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch
new file mode 100644
index 0000000..1ff9c7d
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch
@@ -0,0 +1,32 @@
+From 3ca78a6441eefc26f18211375b18205ed6fc28c6 Mon Sep 17 00:00:00 2001
+From: Mingli Yu <mingli.yu@windriver.com>
+Date: Thu, 3 Sep 2020 05:26:36 +0000
+Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
+
+* Set the default OCF_ROOT_DIR to $libdir/ocf
+  to make the resource agents components more
+  compatible
+
+Upstream-Status: Pending
+
+Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
+---
+ configure.ac | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index 58d39cdc0..eb4275560 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -315,7 +315,7 @@ dnl This defaults to /usr/lib rather than libdir because it's determined by the
+ dnl OCF project and not pacemaker. Even if a user wants to install pacemaker to
+ dnl /usr/local or such, the OCF agents will be expected in their usual
+ dnl location. However, we do give the user the option to override it.
+-OCF_ROOT_DIR="/usr/lib/ocf"
++OCF_ROOT_DIR="$libdir/ocf"
+ AC_ARG_WITH([ocfdir],
+     [AS_HELP_STRING([--with-ocfdir=DIR],
+         [OCF resource agent root directory (advanced option: changing this may break other cluster components unless similarly configured) @<:@/usr/lib/ocf@:>@])],
+-- 
+2.26.2
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
index 9b63acd..56f3bc4 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
@@ -16,6 +16,8 @@ DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python3-native"
 SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
            file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch \
            file://0001-Fix-python3-usage.patch \
+           file://0001-Mark-declaration-with-extern.patch \
+           file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://volatiles \
            file://tmpfiles \
           "
-- 
2.26.2

