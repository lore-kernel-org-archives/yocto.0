Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92077E013DE
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 15:10:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Mar 2012 15:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123104365"
Received: from unknown (HELO localhost) ([10.255.12.49])
	by azsmga001.ch.intel.com with ESMTP; 25 Mar 2012 15:10:26 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com, rpjday@crashcourse.ca, yocto@yoctoproject.org
Date: Sun, 25 Mar 2012 17:10:40 -0500
Message-Id: <5634443f66affd9550383b9d28bbc20371627fa1.1332712914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1332712914.git.tom.zanussi@intel.com>
References: <cover.1332712914.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] documentation/bsp-guide/bsp.xml: remove mention of specific BSPs
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
X-List-Received-Date: Sun, 25 Mar 2012 22:10:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some of these aren't even BSP layers, but nonetheless remove the
mention of specific layers as examples in this section, which should
be a more generic section.

Also add a note that additional layers may be needed by certain BSPs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/bsp-guide/bsp.xml |   38 ++++++++++++--------------------------
 1 files changed, 12 insertions(+), 26 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index f088f30..0b32acc 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -76,32 +76,6 @@
             </para>
 
             <para>
-                The Yocto Project organizes BSP Layers within the Yocto Metadata Layers area 
-                of the Yocto Project Source Repositories at 
-                <ulink url='&YOCTO_GIT_URL;/cgit.cgi'></ulink>.
-                If you examine the source repositories, you will find many BSP Layers.
-                Here are a few:
-                <literallayout class='monospaced'>
-     meta-baryon
-     meta-fsl-ppc
-     meta-intel
-     meta-selinux
-     meta-ti
-                </literallayout>
-                It is worth noting that the <filename>meta-intel</filename> BSP Layer contains 
-                within itself several other BSP Layers, which makes it sort of a "super" BSP layer.
-                Following is a sampling of the BSP Layers that the <filename>meta-intel</filename> 
-                BSP Layer contains:
-                <literallayout class='monospaced'>
-     meta-cedartrail
-     meta-crownbay
-     meta-emenlow
-     meta-fishriver
-     meta-fri2
-                </literallayout>
-            </para>
-
-            <para>
                 The layer's base directory (<filename>meta-&lt;bsp_name&gt;</filename>) is the root 
                 of the BSP Layer.
                 This root is what you add to the <filename>BBLAYERS</filename>
@@ -120,6 +94,18 @@
             </para>
 
             <para>
+                Note that some BSPs may require additional layers on
+                top of the BSP's root layer in order to be functional.
+                Those layers would also need to be added to the
+                BBLAYERS variable in order to build the BSP.  Any
+                requirements for additional layers must be specified
+                in the 'Dependencies' section of the BSP's README
+                file, and preferably also mentioned explicitly in any
+                build instructions that might be contained elsewhere
+                in the README file.
+            </para>
+
+            <para>
                 For more detailed information on layers, see the 
                 "<ulink url='&YOCTO_DOCS_DEV_URL;#understanding-and-creating-layers'>Understanding and Creating Layers</ulink>" 
                 section of the Yocto Project Development Manual.
-- 
1.7.0.4


