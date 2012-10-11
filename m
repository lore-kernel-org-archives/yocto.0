Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BACE0027E
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 16:32:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Oct 2012 16:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="233777295"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 11 Oct 2012 16:32:14 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Thu, 11 Oct 2012 16:31:04 -0700
Message-Id: <6873afe354d16123146d2443834f0c36f55611a8.1349998086.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <0ee691e2e0857cd3f26fe535d67c214817062392.1349998086.git.nitin.a.kamble@intel.com>
References: <0ee691e2e0857cd3f26fe535d67c214817062392.1349998086.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1349998086.git.nitin.a.kamble@intel.com>
References: <cover.1349998086.git.nitin.a.kamble@intel.com>
Subject: [PATCHv4 7/8] emgd-driver-bin: note all the EMGD licenses
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
X-List-Received-Date: Thu, 11 Oct 2012 23:32:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

There are two files containing the custom license data for EMGD:
license: which holds INTEL SOFTWARE LICENSE AGREEMENT
readme.txt: which holds User Space Graphics Driver Binary License

checksum both these files to track any license changes in future.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xorg-driver/emgd-driver-bin_1.14.bb            |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
index 1f585f2..ddf874e 100644
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
@@ -5,7 +5,7 @@ tarball, and is what this recipe now uses.  Since it is a non-free license, \
 this recipe is marked as 'License_emgd-driver-bin_1.14' and you need to add \
 to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.14\" to your \
 local.conf in order to enable it in a build."
-LICENSE = "Intel-binary-only"
+LICENSE = "Intel-software-license-emgd-1.14 & Intel-user-space-graphics-driver-binary-license-emgd-1.14"
 LICENSE_FLAGS = "license_${PN}_${PV}"
 PR = "r2"
 
@@ -13,7 +13,8 @@ EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
 EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
 EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
 
-LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
+LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d \
+                    file://${WORKDIR}/${EMGD_LIC_DIR}/readme.txt;md5=73cbec7a0d2bc22faf567238e055bfc8"
 
 DEPENDS = "rpm-native xz-native"
 RDEPENDS = "libxcb-dri2"
-- 
1.7.3.4


