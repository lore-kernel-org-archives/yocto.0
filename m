Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B974E013EB
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 06:50:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2012 06:50:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130750764"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.110])
	by orsmga002.jf.intel.com with ESMTP; 10 Apr 2012 06:50:05 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Apr 2012 21:44:14 +0800
Message-Id: <bffb0b638d931fb399fdc1d9d455c661a6c141ce.1334065030.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1334065030.git.lianhao.lu@intel.com>
References: <cover.1334065030.git.lianhao.lu@intel.com>
Subject: [PATCH 1/1] opkg-compare-versions: Adapted to the latest opkg upstream.
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
X-List-Received-Date: Tue, 10 Apr 2012 13:50:06 -0000

Adapted to the latest opkg upstream implemenation for comparing
versions.

This is part of the bug fixing [YOCTO #2233].

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 opkg-compare-versions.c |   55 +++++++++++++++++++++-------------------------
 1 files changed, 25 insertions(+), 30 deletions(-)

diff --git a/opkg-compare-versions.c b/opkg-compare-versions.c
index d5133fa..62851fa 100644
--- a/opkg-compare-versions.c
+++ b/opkg-compare-versions.c
@@ -31,43 +31,38 @@ struct versionrevision {
   const char *revision;
 };  
 
-static int verrevcmp(const char *val, const char *ref) 
-{
-  int vc, rc;
-  long vl, rl;
-  const char *vp, *rp;
-  const char *vsep, *rsep;
-
+/* assume ascii; warning: evaluates x multiple times! */
+#define order(x) ((x) == '~' ? -1 \
+		: isdigit((x)) ? 0 \
+		: !(x) ? 0 \
+		: isalpha((x)) ? (x) \
+		: (x) + 256)
+
+static int
+verrevcmp(const char *val, const char *ref) {
   if (!val) val= "";
   if (!ref) ref= "";
-  for (;;) {
-    vp= val;  while (*vp && !isdigit(*vp)) vp++;
-    rp= ref;  while (*rp && !isdigit(*rp)) rp++;
-    for (;;) {
-      vc= val == vp ? 0 : *val++;
-      rc= ref == rp ? 0 : *ref++;
-      if (!rc && !vc) break;
-      if (vc && !isalpha(vc)) vc += 256; /* assumes ASCII character set */
-      if (rc && !isalpha(rc)) rc += 256;
+
+  while (*val || *ref) {
+    int first_diff= 0;
+
+    while ( (*val && !isdigit(*val)) || (*ref && !isdigit(*ref)) ) {
+      int vc= order(*val), rc= order(*ref);
       if (vc != rc) return vc - rc;
+      val++; ref++;
     }
-    val= vp;
-    ref= rp;
-    vl=0;  if (isdigit(*vp)) vl= strtol(val,(char**)&val,10);
-    rl=0;  if (isdigit(*rp)) rl= strtol(ref,(char**)&ref,10);
-    if (vl != rl) return vl - rl;
-
-    vc = *val;
-    rc = *ref;
-    vsep = strchr(".-", vc);
-    rsep = strchr(".-", rc);
-    if (vsep && !rsep) return -1;
-    if (!vsep && rsep) return +1;
-
-    if (!*val && !*ref) return 0;
-    if (!*val) return -1;
-    if (!*ref) return +1;
+
+    while ( *val == '0' ) val++;
+    while ( *ref == '0' ) ref++;
+    while (isdigit(*val) && isdigit(*ref)) {
+      if (!first_diff) first_diff= *val - *ref;
+      val++; ref++;
+    }
+    if (isdigit(*val)) return 1;
+    if (isdigit(*ref)) return -1;
+    if (first_diff) return first_diff;
   }
+  return 0;
 }
 
 int versioncompare(const struct versionrevision *version,
-- 
1.7.0.4


