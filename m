Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88AFDE00344
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:38 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303488"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:23 +0100
Message-Id: <230a52bb1fe6295bb40635b8229d7936a3d6fb6c.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 04/11] documentation/poky-ref-manual: minor improvements
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

Adjust a few sentences so that they make sense.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |   17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 49bed9c..af1a194 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -797,12 +797,13 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
 
         <glossentry id='var-IMAGE_FEATURES'><glossterm>IMAGE_FEATURES</glossterm>
             <glossdef>
-                <para>The list of features present in images.
-                Typically, you configure this variable in image recipes.
-                Note that you can add extra features to the image by using the
+                <para>The list of features to include in an images.
+                Typically, you configure this variable in an image recipe.
+                Note that you can also add extra features to the image by using the
                 <filename><link linkend='var-EXTRA_IMAGE_FEATURES'>EXTRA_IMAGE_FEATURES</link></filename> variable.
                 See the "<link linkend="ref-features-image">Images</link>" section for the 
-                list of features present in images built by the OpenEmbedded build system.</para>
+                full list of features which can be included in images built by the
+                OpenEmbedded build system.</para>
             </glossdef>
         </glossentry>
 
@@ -1880,8 +1881,8 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
 
         <glossentry id='var-SECTION'><glossterm>SECTION</glossterm>
             <glossdef>
-                <para>The section where package should be put.
-                    Package managers use this variable.</para>
+                <para>The section in which packages should be categorised.
+                    Package management utilities may make use of this variable.</para>
             </glossdef>
         </glossentry>
 
@@ -1918,7 +1919,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             <glossdef>
                 <para>
                     Specifies the endian byte order of the target system. 
-                    The variable is either "le" for little-endian or "be" for big-endian.
+                    The value should be either "le" for little-endian or "be" for big-endian.
                 </para>
             </glossdef>
         </glossentry>
@@ -1927,7 +1928,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             <glossdef>
                 <para>
                     Specifies the number of bits for the target system CPU.
-                    The variable is either "32" or "64".
+                    The value should be either "32" or "64".
                 </para>
             </glossdef>
         </glossentry>
-- 
1.7.9.5


