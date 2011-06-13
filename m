Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5705D4C800B3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 09:35:47 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2011 07:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="15638862"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2011 07:35:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2011 09:35:52 -0500
Message-Id: <77c13548a6438c7c14f84206b5285890e7401d2b.1307938815.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1307938815.git.tom.zanussi@intel.com>
References: <cover.1307938815.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-emenlow: add systemtap bbappend
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
X-List-Received-Date: Mon, 13 Jun 2011 14:35:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

To configure this is a compatible machine for systemtap.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../systemtap/systemtap_git.bbappend               |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/systemtap/systemtap_git.bbappend

diff --git a/meta-emenlow/recipes-kernel/systemtap/systemtap_git.bbappend b/meta-emenlow/recipes-kernel/systemtap/systemtap_git.bbappend
new file mode 100644
index 0000000..41c2ff2
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/systemtap/systemtap_git.bbappend
@@ -0,0 +1 @@
+COMPATIBLE_MACHINE = ${MACHINE}
-- 
1.7.0.4


