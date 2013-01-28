Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 466B4E0072E
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 15:08:06 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2013 15:08:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,555,1355126400"; d="scan'208";a="277693379"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2013 15:08:05 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Jan 2013 15:06:49 -0800
Message-Id: <0301e122e348ccd40a7627be35c230dc5bc20a77.1359414197.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1359414197.git.kevin.strasser@linux.intel.com>
References: <cover.1359414197.git.kevin.strasser@linux.intel.com>
Subject: [yocto-docs][PATCH 1/3] dev-manual: use path independent bblayers.conf example
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
X-List-Received-Date: Mon, 28 Jan 2013 23:08:06 -0000

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 425b05a..e7d5d02 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -3060,15 +3060,15 @@
      BBFILES ?= ""
 
      BBLAYERS ?= " \
-       $HOME/poky/meta \
-       $HOME/poky/meta-yocto \
-       $HOME/poky/meta-yocto-bsp \
-       $HOME/poky/meta-mylayer \
+       ##COREBASE##/meta \
+       ##COREBASE##/meta-yocto \
+       ##COREBASE##/meta-yocto-bsp \
+       ##COREBASE##/meta-mylayer \
        "
 
      BBLAYERS_NON_REMOVABLE ?= " \
-       $HOME/poky/meta \
-       $HOME/poky/meta-yocto \
+       ##COREBASE##/meta \
+       ##COREBASE##/meta-yocto \
        "
                 </literallayout>
                 Creating and providing an archive of the metadata layers
-- 
1.7.9.5


