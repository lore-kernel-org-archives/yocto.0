Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE0BE013A6
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303575"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:30 +0100
Message-Id: <7a54546a95adf2325926cf01e580eb2c3131a640.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 11/11] documentation/poky-ref-manual: update FAQ for Poky
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:47 -0000

Ensure that this section correctly and accurately describes how Poky and
OE relate to eachother currently.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/faq.xml |   16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index ad8fc7a..ab36f42 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -13,14 +13,14 @@
         </question>
         <answer>
             <para>
-                The term "Poky" is sometimes used to refer to the build system that the 
-                Yocto Project uses.  
-                The build system used in the Yocto project is referred to as the 
-                OpenEmbedded build system because "Poky" was derived from <ulink 
-                url='&OE_HOME_URL;'>OpenEmbedded</ulink>.
-                Poky is a stable, smaller subset focused on the mobile environment. 
-                Development in the Yocto Project using Poky is closely tied to OpenEmbedded with 
-                features being merged regularly between the two for mutual benefit.
+                The term "Poky" refers to the specific reference build system that
+                the Yocto Project provides; Poky is based upon 
+                <ulink url='&YOCTO_DOCS_DEV_URL;#oe-core'>OE-Core</ulink>
+                and BitBake and thus the generic term used here for the build system is
+                the OpenEmbedded build system.
+                Development in the Yocto Project using Poky is closely tied to OpenEmbedded, with 
+                changes always being merged to OE-Core or BitBake first before being pulled back
+                into Poky, benefiting both projects immediately.
                 For a fuller description of the term "Poky", see the 
                 <ulink url='&YOCTO_DOCS_DEV_URL;#poky'>poky</ulink> term in the Yocto Project
                 Development Manual.
-- 
1.7.9.5


