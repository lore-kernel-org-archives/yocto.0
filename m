Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B26F1E0034D
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:52:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2012 10:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191364492"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.253])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2012 10:52:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 18:52:00 +0100
Message-Id: <726d107359a835914b2221659c8f9cf4c7d3f75d.1342029029.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon] [PATCH 4/4] baryon-image: use IMAGE_INSTALL instead of CORE_IMAGE_EXTRA_INSTALL
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
X-List-Received-Date: Wed, 11 Jul 2012 17:52:08 -0000

CORE_IMAGE_EXTRA_INSTALL is really intended to be used from local.conf
and not in custom image recipes, so we should not be using it here. As a
bonus, adding to IMAGE_INSTALL instead allows the image recipe to be
compatible with the edison release.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-extended/images/baryon-image.bb |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-extended/images/baryon-image.bb b/recipes-extended/images/baryon-image.bb
index 663c80d..dc6b197 100644
--- a/recipes-extended/images/baryon-image.bb
+++ b/recipes-extended/images/baryon-image.bb
@@ -1,6 +1,8 @@
 IMAGE_FEATURES = "nfs-server package-management ssh-server-dropbear debug-tweaks"
 
-CORE_IMAGE_EXTRA_INSTALL = "samba procps mdadm e2fsprogs-mke2fs util-linux \
+inherit core-image
+
+IMAGE_INSTALL += "samba procps mdadm e2fsprogs-mke2fs util-linux \
                      webmin \
                      webmin-module-status \
                      webmin-module-proc \
@@ -23,4 +25,3 @@ CORE_IMAGE_EXTRA_INSTALL = "samba procps mdadm e2fsprogs-mke2fs util-linux \
                      mediatomb \
                      proftpd"
 
-inherit core-image
-- 
1.7.9.5


