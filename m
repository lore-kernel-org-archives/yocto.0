Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D497E006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 11:56:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2011 11:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84429893"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 11:56:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 19:56:46 +0000
Message-Id: <1d56dbbd7cd308454f24fc54463e0f0cd536ea07.1323374147.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323374147.git.paul.eggleton@linux.intel.com>
References: <cover.1323374147.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323374147.git.paul.eggleton@linux.intel.com>
References: <cover.1323374147.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 2/3] qt-x11-free(-native): remove PRIORITY
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
X-List-Received-Date: Thu, 08 Dec 2011 19:56:55 -0000

PRIORITY is no longer used.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-common.inc      |    1 -
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    1 -
 2 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index 1e00138..3bd4e4a 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -1,6 +1,5 @@
 DESCRIPTION = "Qt/X11 Version ${PV} is a full fledged cross-platform application framework"
 SECTION = "x11/libs"
-PRIORITY = "optional"
 LICENSE = "GPL | QPL"
 HOMEPAGE = "http://www.trolltech.com"
 INC_PR = "r4"
diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index 7dd9a34..48fc3a0 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -1,6 +1,5 @@
 DESCRIPTION = "Qt/X11 Version ${PV}"
 SECTION = "libs"
-PRIORITY = "optional"
 LICENSE = "GPL | QPL"
 DEPENDS = "xmu-native"
 HOMEPAGE = "http://www.trolltech.com"
-- 
1.7.5.4


