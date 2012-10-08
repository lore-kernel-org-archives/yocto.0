Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A6BAE0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:41:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286266"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:17 +0100
Message-Id: <e65f4d3fb2cf94487f9b5486e1904f73eeb40543.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 11/11] documentation: poky-ref-manual: update directory structure information
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
X-List-Received-Date: Mon, 08 Oct 2012 15:41:29 -0000

* Add meta-yocto, meta-yocto-bsp and meta-hob
* Remove meta-rt - this was merged into OE-Core (meta)
* Remove meta-demoapps - this was dropped

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-structure.xml |   30 ++++++++++++++++-------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-structure.xml b/documentation/poky-ref-manual/ref-structure.xml
index fcdf7b1..75bc2eb 100644
--- a/documentation/poky-ref-manual/ref-structure.xml
+++ b/documentation/poky-ref-manual/ref-structure.xml
@@ -93,25 +93,37 @@
 
         <para>
             This directory contains the OpenEmbedded Core metadata. 
-            The directory holds machine definitions, the Yocto Project distribution, 
-            and the packages that make up a given system.
+            The directory holds recipes, common classes, and machine
+            configuration for emulated targets (qemux86, qemuarm,
+            and so on.)
         </para>
     </section>
 
-    <section id='structure-core-meta-demoapps'>
-        <title><filename>meta-demoapps/</filename></title>
+    <section id='structure-core-meta-yocto'>
+        <title><filename>meta-yocto/</filename></title>
 
         <para>
-            This directory contains recipes for applications and demos that are not part of the 
-            OpenEmbedded core.
+            This directory contains the configuration for the Poky
+            reference distribution.
         </para>
     </section>
 
-    <section id='structure-core-meta-rt'>
-        <title><filename>meta-rt/</filename></title>
+    <section id='structure-core-meta-yocto-bsp'>
+        <title><filename>meta-yocto-bsp/</filename></title>
 
         <para>
-            This directory contains recipes for real-time kernels. 
+            This directory contains the Yocto Project reference
+            hardware BSPs.
+        </para>
+    </section>
+
+    <section id='structure-meta-hob'>
+        <title><filename>meta-hob/</filename></title>
+
+        <para>
+            This directory contains template recipes used by the
+            <ulink url='&YOCTO_HOME_URL;/projects/hob'>Hob</ulink>
+            build UI.
         </para>
     </section>
 
-- 
1.7.9.5


