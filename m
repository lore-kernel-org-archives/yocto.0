Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3DB7E0049F
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 12:20:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2012 12:20:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,280,1352102400"; d="scan'208";a="244486549"
Received: from wrk.jf.intel.com ([10.7.202.54])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2012 12:20:59 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2012 12:20:29 -0800
Message-Id: <402d60d77de168c85d5c54fa3b7d02601d970e11.1353354792.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <0a89eef85ff8ed361ac5a3e2f8fca6869670d74c.1353354792.git.kevin.strasser@linux.intel.com>
References: <0a89eef85ff8ed361ac5a3e2f8fca6869670d74c.1353354792.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1353354792.git.kevin.strasser@linux.intel.com>
References: <cover.1353354792.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 3/3] baryon-image: change IMAGE_FEATURES assignment to "+="
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
X-List-Received-Date: Mon, 19 Nov 2012 20:21:00 -0000

this will allow EXTRA_IMAGE_FEATURES to have an affect on the image.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/images/baryon-image.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/images/baryon-image.bb b/recipes-extended/images/baryon-image.bb
index 656fdba..d5fd8a5 100644
--- a/recipes-extended/images/baryon-image.bb
+++ b/recipes-extended/images/baryon-image.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES = "nfs-server package-management ssh-server-dropbear debug-tweaks"
+IMAGE_FEATURES += "nfs-server package-management ssh-server-dropbear"
 
 inherit core-image
 
-- 
1.7.9.5


