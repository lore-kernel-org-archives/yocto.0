Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2910FE00344
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:38 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303476"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:22 +0100
Message-Id: <4b7f4ea6c4bbe42ce70015debb87f7a0c34cd01a.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 03/11] documentation/poky-ref-manual: add SDKIMAGE_FEATURES
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:38 -0000

Add new SDKIMAGE_FEATURES to variable reference.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 2ea1122..49bed9c 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1868,6 +1868,16 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-SDKIMAGE_FEATURES'><glossterm>SDKIMAGE_FEATURES</glossterm>
+            <glossdef>
+                <para>Equivalent to 
+                <filename><link linkend='var-IMAGE_FEATURES'>IMAGE_FEATURES</link></filename>
+                except it applies to the SDK generated from an image (using 
+                <filename>bitbake -c populate_sdk imagename</filename>).
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-SECTION'><glossterm>SECTION</glossterm>
             <glossdef>
                 <para>The section where package should be put.
-- 
1.7.9.5


