Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DBFE00320
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313364"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:34 +0100
Message-Id: <a1cfe9655c41bf18155ac75ab7af2dc57be991c4.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 01/14] documentation: correct QT to Qt
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:02 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-structure.xml |    2 +-
 meta/recipes.txt                                |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-structure.xml b/documentation/poky-ref-manual/ref-structure.xml
index 6b5e646..9f8a1c2 100644
--- a/documentation/poky-ref-manual/ref-structure.xml
+++ b/documentation/poky-ref-manual/ref-structure.xml
@@ -573,7 +573,7 @@
         <title><filename class="directory">meta/recipes-qt/</filename></title>
 
         <para>
-            This directory contains all things related to the QT application framework.
+            This directory contains all things related to the Qt application framework.
         </para>
     </section>
 
diff --git a/meta/recipes.txt b/meta/recipes.txt
index 51bb746..bf7f19e 100644
--- a/meta/recipes.txt
+++ b/meta/recipes.txt
@@ -8,6 +8,6 @@ recipes-gnome        - All things related to the GTK+ application framework
 recipes-graphics     - X and other graphically related system libraries  
 recipes-kernel       - The kernel and generic applications/libraries with strong kernel dependencies
 recipes-multimedia   - Codecs and support utilties for audio, images and video
-recipes-qt           - All things related to the QT application framework
+recipes-qt           - All things related to the Qt application framework
 recipes-sato         - The Sato demo/reference UI/UX, its associated apps and configuration 
 
-- 
1.7.4.1


