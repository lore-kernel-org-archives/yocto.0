Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66EB7E012B7
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 12:27:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Sep 2011 12:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,351,1312182000"; d="scan'208";a="50687142"
Received: from unknown (HELO localhost) ([10.255.14.214])
	by fmsmga002.fm.intel.com with ESMTP; 08 Sep 2011 12:27:51 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  8 Sep 2011 14:27:44 -0500
Message-Id: <ac3380df7880a734ff78978134dd7533974e9f27.1315509303.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <be9fcfde6bd96aab43de9e29f36e28a6423d7d4a.1315509303.git.tom.zanussi@intel.com>
References: <be9fcfde6bd96aab43de9e29f36e28a6423d7d4a.1315509303.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1315509303.git.tom.zanussi@intel.com>
References: <cover.1315509303.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-intel/common: remove initramfs-live-install 1.0 bbappend
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
X-List-Received-Date: Thu, 08 Sep 2011 19:27:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We can no longer use the 1.0 version of initramfs-live-install, so
remove the corresponding .bbappend.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../initramfs-live-install_1.0.bbappend            |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)
 delete mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend

diff --git a/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend b/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
deleted file mode 100644
index d3420e0..0000000
--- a/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-- 
1.7.0.4


