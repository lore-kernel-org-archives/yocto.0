Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3FAAE01374
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 11:45:21 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Mar 2012 11:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="133803324"
Received: from unknown (HELO localhost) ([10.255.15.97])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2012 11:45:21 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2012 13:45:15 -0600
Message-Id: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1330975070.git.tom.zanussi@linux.intel.com>
References: <cover.1330975070.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 1/5] meta-emenlow: add SRC_URI checksums to xpsb-glx
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
X-List-Received-Date: Mon, 05 Mar 2012 19:45:22 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Add md5 and sha256 checksums to the recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
index 0773a7c..03c0258 100644
--- a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
+++ b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
@@ -15,6 +15,9 @@ SRC_URI="https://launchpad.net/~gma500/+archive/ppa/+files/xpsb-glx_0.18-0ubuntu
          file://libdrmname.patch \
          file://native-matypes.patch"
 
+SRC_URI[md5sum] = "50423a9e861ccff5814eb95a32494952"
+SRC_URI[sha256sum] = "03c958defef56ae0ec051c6f67620fa90733649925386824b7bf029f40bd7905"
+
 do_configure () {
 	chmod +x autogen.sh && ./autogen.sh ${CONFIGUREOPTS} && make realclean
 	cd ${S}/src/mesa/x86/
-- 
1.7.1


