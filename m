Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA55E01385
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:39:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286199"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:08 +0100
Message-Id: <416864013b0b18eddf23ad683447d09e60f9d12e.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 02/11] documentation: poky-ref-manual: correct LICENSE_DIR -> LICENSE_PATH
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
X-List-Received-Date: Mon, 08 Oct 2012 15:40:19 -0000

LICENSE_PATH is the correct variable to use for 1.3 - see:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3118

Fixes documentation for [YOCTO #3118].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index fd04017..62c2596 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1327,15 +1327,15 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
-        <glossentry id='var-LICENSE_DIR'><glossterm>LICENSE_DIR</glossterm>
+        <glossentry id='var-LICENSE_PATH'><glossterm>LICENSE_PATH</glossterm>
             <glossdef>
                 <para>Path to additional licenses used during the build.
                     By default, the OpenEmbedded build system uses <filename>COMMON_LICENSE_DIR</filename>  
                     to define the directory that holds common license text used during the build. 
-                    The <filename>LICENSE_DIR</filename> variable allows you to extend that
+                    The <filename>LICENSE_PATH</filename> variable allows you to extend that
                     location to other areas that have additional licenses: 
                     <literallayout class='monospaced'>
-  LICENSE_DIR += "/path/to/additional/common/licenses"
+  LICENSE_PATH += "/path/to/additional/common/licenses"
                     </literallayout></para>
             </glossdef>
         </glossentry>
-- 
1.7.9.5


