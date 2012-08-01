Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF929E01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 14:24:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Aug 2012 14:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="174295424"
Received: from wrk.jf.intel.com ([10.7.202.71])
	by orsmga001.jf.intel.com with ESMTP; 01 Aug 2012 14:24:38 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2012 14:25:01 -0700
Message-Id: <1343856302-23468-1-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 1/2] webmin: include webmin-module-acl
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
X-List-Received-Date: Wed, 01 Aug 2012 21:24:40 -0000

Webmin's logging module depends on webmin-module-acl.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/images/baryon-image.bb |    1 +
 recipes-extended/webmin/webmin_1.570.bb |    2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-extended/images/baryon-image.bb b/recipes-extended/images/baryon-image.bb
index dc6b197..56b160c 100644
--- a/recipes-extended/images/baryon-image.bb
+++ b/recipes-extended/images/baryon-image.bb
@@ -22,6 +22,7 @@ IMAGE_INSTALL += "samba procps mdadm e2fsprogs-mke2fs util-linux \
                      webmin-module-webmincron \
                      webmin-module-mediatomb \
                      webmin-notice \
+                     webmin-module-acl \
                      mediatomb \
                      proftpd"
 
diff --git a/recipes-extended/webmin/webmin_1.570.bb b/recipes-extended/webmin/webmin_1.570.bb
index c30b050..b6c4965 100644
--- a/recipes-extended/webmin/webmin_1.570.bb
+++ b/recipes-extended/webmin/webmin_1.570.bb
@@ -9,7 +9,7 @@ RDEPENDS_${PN} += "perl-module-warnings perl-module-warnings-register perl-modul
 RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
 RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
 
-PR = "r10"
+PR = "r11"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://setup.sh \
-- 
1.7.9.5


