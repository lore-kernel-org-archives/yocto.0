Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91C8DE0027D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 10:59:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Jul 2012 10:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="170274388"
Received: from wrk.jf.intel.com ([10.7.202.76])
	by orsmga001.jf.intel.com with ESMTP; 23 Jul 2012 10:59:11 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jul 2012 10:59:57 -0700
Message-Id: <1343066397-22369-1-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH] webmin: remove use of the rename command
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
X-List-Received-Date: Mon, 23 Jul 2012 17:59:38 -0000

Several webmin modules are left out of the build due to
misuse of the rename command. Acceptable use of the rename
command depends on the version being supplied. Without knowledge
of the version being used it is possible that any particular
use will result in syntax errors.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/webmin/webmin_1.570.bb |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-extended/webmin/webmin_1.570.bb b/recipes-extended/webmin/webmin_1.570.bb
index 63a1ed2..d7e14de 100644
--- a/recipes-extended/webmin/webmin_1.570.bb
+++ b/recipes-extended/webmin/webmin_1.570.bb
@@ -53,7 +53,11 @@ do_configure() {
     sed -i "s/netstd_nfs/nfsserver/" exports/config-generic-linux
 
     # Fix insane naming that causes problems at packaging time (must be done before deleting below)
-    find . -name "*\**" -exec rename \* ALL {} \;
+    find . -name "*\**" | while read from
+    do
+        to=`echo "$from" | sed "s/*/ALL/"`
+        mv "$from" "$to"
+    done
 
     # Remove some other files we don't need
     find . -name "config-*" -a \! -name "config-generic-linux" -a \! -name "config-ALL-linux" -a \! -name "*.pl" -delete
-- 
1.7.9.5


