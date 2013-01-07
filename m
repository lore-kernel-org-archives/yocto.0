Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 385D6E01458
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 13:06:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 13:06:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,425,1355126400"; d="scan'208";a="243146064"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 13:06:56 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Jan 2013 13:05:54 -0800
Message-Id: <d338f699db0852d8a314bc4375466af58e717796.1357591796.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1888ecc22ef3c39d03cb3a133516443c6f0e81cf.1357591796.git.kevin.strasser@linux.intel.com>
References: <1888ecc22ef3c39d03cb3a133516443c6f0e81cf.1357591796.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1357591796.git.kevin.strasser@linux.intel.com>
References: <cover.1357591796.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 3/4] baryon-image: use parted instead of util-linux
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
X-List-Received-Date: Mon, 07 Jan 2013 21:06:57 -0000

util-linux replaces the 'reset' command provided by busybox with
a script that uses 'tset', which fails because it isn't installed.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/images/baryon-image.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/images/baryon-image.bb b/recipes-extended/images/baryon-image.bb
index 56b160c..656fdba 100644
--- a/recipes-extended/images/baryon-image.bb
+++ b/recipes-extended/images/baryon-image.bb
@@ -2,7 +2,7 @@ IMAGE_FEATURES = "nfs-server package-management ssh-server-dropbear debug-tweaks
 
 inherit core-image
 
-IMAGE_INSTALL += "samba procps mdadm e2fsprogs-mke2fs util-linux \
+IMAGE_INSTALL += "samba procps mdadm e2fsprogs-mke2fs parted \
                      webmin \
                      webmin-module-status \
                      webmin-module-proc \
-- 
1.7.9.5


