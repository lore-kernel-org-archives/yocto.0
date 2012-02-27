Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB42E0074A
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2012 21:04:49 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Feb 2012 21:04:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111109445"
Received: from unknown (HELO localhost) ([10.255.15.44])
	by azsmga001.ch.intel.com with ESMTP; 26 Feb 2012 21:04:49 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Sun, 26 Feb 2012 21:04:05 -0800
Message-Id: <e43a5b93817dc1a4ed2c526e3e9ea825347bf212.1330319008.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330319008.git.dvhart@linux.intel.com>
References: <cover.1330319008.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330319008.git.dvhart@linux.intel.com>
References: <cover.1330319008.git.dvhart@linux.intel.com>
Subject: [PATCH 1/1] linux-yocto-tiny: Bump SRCREV and PV to 3.0.18
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
X-List-Received-Date: Mon, 27 Feb 2012 05:04:50 -0000

Bring linux-yocto-tiny inline with the other 3.0 linux-yocto-* recipes.
Built and booted for qemux86.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
index 061476c..fe4033b 100644
--- a/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
@@ -5,10 +5,10 @@ require recipes-kernel/linux/linux-yocto.inc
 KMACHINE = "yocto/standard/base"
 KBRANCH = "${KMACHINE}"
 
-LINUX_VERSION ?= "3.0.12"
+LINUX_VERSION ?= "3.0.18"
 
-SRCREV_machine ?= "f389d310965a56091f688b28ea8be6d9cbb7fbbe"
-SRCREV_meta ?= "04a52a32cbdf0972033b97b83eaa83eb275dfdc9"
+SRCREV_machine ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
+SRCREV_meta ?= "b78a519841bd8b477cad599af8d38df6760445c1"
 
 PR = "r1"
 PV = "${LINUX_VERSION}+git${SRCPV}"
-- 
1.7.6.5


