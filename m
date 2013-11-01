Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3B51E016E3
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 15:02:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2013 14:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="402364571"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.12])
	by orsmga001.jf.intel.com with ESMTP; 01 Nov 2013 15:02:35 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	flihp@twobit.us
Date: Fri,  1 Nov 2013 15:02:31 -0700
Message-Id: <1383343353-23232-6-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
References: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
Subject: [meta-measured][PATCH 5/7] pcr-calc: Use site-packages instead of dist-packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Nov 2013 22:02:36 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-txt/pcr-calc/pcr-calc_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-txt/pcr-calc/pcr-calc_git.bb b/recipes-txt/pcr-calc/pcr-calc_git.bb
index 60d6e7f..44c5765 100644
--- a/recipes-txt/pcr-calc/pcr-calc_git.bb
+++ b/recipes-txt/pcr-calc/pcr-calc_git.bb
@@ -13,6 +13,6 @@ SRC_URI += " \
     git://github.com/flihp/pcr-calc.git \
 "
 SRCREV = "master"
-FILES_${PN} += "${libdir}/python${PYTHON_BASEVERSION}/dist-packages/pcr-calc"
+FILES_${PN} += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/pcr-calc"
 
 inherit autotools
-- 
1.8.3.1


