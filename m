Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27A6DE01374
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 11:45:31 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Mar 2012 11:45:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="73842429"
Received: from unknown (HELO localhost) ([10.255.15.97])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Mar 2012 11:45:30 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2012 13:45:18 -0600
Message-Id: <2ad5101cc1d5e582706ce0867d747000c324297b.1330975070.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
References: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1330975070.git.tom.zanussi@linux.intel.com>
References: <cover.1330975070.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 4/5] meta-emenlow: add SRC_URI checksums to psb-firmware
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
X-List-Received-Date: Mon, 05 Mar 2012 19:45:31 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Add md5 and sha256 checksums to the recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../psb-firmware/psb-firmware_0.30.bb              |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb b/meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
index 164ea66..2984f2e 100644
--- a/meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
+++ b/meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
@@ -5,6 +5,9 @@ PR = "r0"
 
 SRC_URI = "https://launchpad.net/~gma500/+archive/ppa/+files/psb-firmware_0.30-0ubuntu1netbook1ubuntu1.tar.gz"
 
+SRC_URI[md5sum] = "760005739edc64387240e56f6916e825"
+SRC_URI[sha256sum] = "714bc9162409b172caaabdaff5a942bc9d104a9b3a47a165754f7090803ba4b3"
+
 do_install() {
         install -d ${D}${base_libdir}/firmware/
 	install -m 0644 ${WORKDIR}/psb-firmware-0.30/msvdx_fw.bin ${D}${base_libdir}/firmware/
-- 
1.7.1


