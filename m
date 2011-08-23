Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD0F6E0123F
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313487"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:45 +0100
Message-Id: <3f97f91d13168cb5bb4a7d1aaaec396557a22403.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 12/14] documentation: set titles for all documents
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:10 -0000

These documents do not have titles when showing up on the website; set
the title tag value so that they do.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/adt-manual/adt-manual.xml           |    2 +-
 documentation/bsp-guide/bsp-guide.xml             |    2 +-
 documentation/dev-manual/dev-manual.xml           |    2 +-
 documentation/poky-ref-manual/poky-ref-manual.xml |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index 34ccf6f..7fef091 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -15,7 +15,7 @@
             </imageobject>    
         </mediaobject>
 
-        <title></title> 
+        <title>Yocto Application Development Tookit (ADT) User's Guide</title> 
 
         <authorgroup>
             <author>
diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index 75fa7fe..08feb5d 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -15,7 +15,7 @@
             </imageobject>    
         </mediaobject>
 
-        <title></title> 
+        <title>Yocto Board Support Package (BSP) Development Guide</title> 
 
         <authorgroup>
             <author>
diff --git a/documentation/dev-manual/dev-manual.xml b/documentation/dev-manual/dev-manual.xml
index baddc1c..1be8e20 100644
--- a/documentation/dev-manual/dev-manual.xml
+++ b/documentation/dev-manual/dev-manual.xml
@@ -15,7 +15,7 @@
             </imageobject> 
         </mediaobject>
 
-        <title></title> 
+        <title>Yocto Project Development Manual</title> 
 
         <authorgroup>
             <author>
diff --git a/documentation/poky-ref-manual/poky-ref-manual.xml b/documentation/poky-ref-manual/poky-ref-manual.xml
index a954367..8f861a7 100644
--- a/documentation/poky-ref-manual/poky-ref-manual.xml
+++ b/documentation/poky-ref-manual/poky-ref-manual.xml
@@ -15,7 +15,7 @@
             </imageobject>    
         </mediaobject>
 
-        <title></title>
+        <title>Poky Reference Manual</title>
 
         <authorgroup>
             <author>
-- 
1.7.4.1


