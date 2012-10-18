Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E163E011AF
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 17:40:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Oct 2012 17:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,603,1344236400"; d="scan'208";a="228992512"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by orsmga002.jf.intel.com with ESMTP; 17 Oct 2012 17:40:26 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Wed, 17 Oct 2012 17:28:03 -0700
Message-Id: <eb8e569d055ddfd14425ec7472be8f9eb7b075fc.1350519099.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1350519099.git.rahul.saxena@intel.com>
References: <cover.1350519099.git.rahul.saxena@intel.com>
MIME-Version: 1.0
Subject: [PATCH 1/3] meta-cedartrail: Update README with product name and state Gfx acceleration support
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
X-List-Received-Date: Thu, 18 Oct 2012 00:40:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rahul Saxena <rahul.saxena@intel.com>

Add CPU and Chipset product names. Explicitly state support for Gfx & Media
acceleration.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 meta-cedartrail/README |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 81a1260..bd00d19 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -2,6 +2,13 @@ This README file contains information on building the meta-cedartrail
 BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
+The 'Cedar Trail' platform consists of the Cedarview (Intel® Atom™
+N2600, N2800 and D2550) processor, plus the Tiger Point
+(Intel® NM10 Express) Chipset. 
+
+It also supports on-chip SGX545 graphics and media accelerator
+via the Cedar Trail Power VR (PVR) graphics driver.
+
 Dependencies
 ============
 
-- 
1.7.4.1


