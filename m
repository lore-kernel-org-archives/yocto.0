Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9ED1E0070C
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 14:14:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2012 14:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="136757631"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.198.59])
	by orsmga002.jf.intel.com with ESMTP; 25 Apr 2012 14:14:13 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Apr 2012 14:14:11 -0700
Message-Id: <1335388451-4697-1-git-send-email-josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [meta-baryon][PATCH] webmin: add SRC_URI checksums
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
X-List-Received-Date: Wed, 25 Apr 2012 21:14:13 -0000

Without checksums do_fetch fails, add the md5 and sha256 checksums
reported by BitBake to the recipe.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 recipes-extended/webmin/webmin_1.570.bb |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-extended/webmin/webmin_1.570.bb b/recipes-extended/webmin/webmin_1.570.bb
index 1d10507..150d920 100644
--- a/recipes-extended/webmin/webmin_1.570.bb
+++ b/recipes-extended/webmin/webmin_1.570.bb
@@ -25,6 +25,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://net-lib.pl.patch \
           file://media-tomb.patch"
 
+SRC_URI[md5sum] = "20b4f488637366c39458b9b93162eff3"
+SRC_URI[sha256sum] = "3b8ad51dee0e61e330c8137b3d8cff91a00cf31d710b68e272fe02db25baaf54"
+
 inherit allarch perlnative update-rc.d
 
 do_configure() {
-- 
1.7.9.5


