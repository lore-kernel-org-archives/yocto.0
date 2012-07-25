Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11C7EE01304
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 15:19:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Jul 2012 15:18:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="171453480"
Received: from wrk.jf.intel.com ([10.7.202.76])
	by orsmga001.jf.intel.com with ESMTP; 25 Jul 2012 15:18:56 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Jul 2012 15:19:43 -0700
Message-Id: <1343254783-2974-1-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH] webmin: fixed nfs exports configuration
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
X-List-Received-Date: Wed, 25 Jul 2012 22:19:00 -0000

No longer attempting to kill any rpc.nfsd processes. Also, fixed a
reference to the nfsserver init script.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/webmin/webmin_1.570.bb |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-extended/webmin/webmin_1.570.bb b/recipes-extended/webmin/webmin_1.570.bb
index d787324..c30b050 100644
--- a/recipes-extended/webmin/webmin_1.570.bb
+++ b/recipes-extended/webmin/webmin_1.570.bb
@@ -9,7 +9,7 @@ RDEPENDS_${PN} += "perl-module-warnings perl-module-warnings-register perl-modul
 RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
 RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
 
-PR = "r9"
+PR = "r10"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://setup.sh \
@@ -50,7 +50,8 @@ do_configure() {
     echo "excludefs=devpts,devtmpfs,usbdevfs,proc,tmpfs,sysfs" >> mount/config-generic-linux
 
     mv exports/config-debian-linux exports/config-generic-linux
-    sed -i "s/netstd_nfs/nfsserver/" exports/config-generic-linux
+    sed -i "s/killall -HUP rpc.nfsd && //" exports/config-generic-linux
+    sed -i "s/netstd_nfs/nfsserver/g" exports/config-generic-linux
 
     # Fix insane naming that causes problems at packaging time (must be done before deleting below)
     find . -name "*\**" | while read from
-- 
1.7.9.5


