Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4B80E0123C
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313476"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:44 +0100
Message-Id: <fecab94bcd7a10d979cc73d18956c30cef1cc06f.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 11/14] documentation: update BBFILE_* variable documentation
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

* Add documentation of LAYERVERSION, LAYERDEPENDS and new layer priority
  behaviour
* Improve some wording

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |   46 +++++++++++++++++++---
 1 files changed, 39 insertions(+), 7 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index eab3bda..b6bf97a 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -72,22 +72,24 @@
 
         <glossentry id='var-BBFILE_COLLECTIONS'><glossterm>BBFILE_COLLECTIONS</glossterm>
             <glossdef>
-                <para>Identifies layer-specific bbfiles, which contain recipes used by BitBake to build software.
-                    The variable is appended with a layer name.</para>
+                <para>Lists the names of configured layers. These names are used to find the other BBFILE_*
+                    variables. Typically each layer will append its name to this variable in its
+                    <filename>conf/layer.conf</filename> file.
+                </para>
             </glossdef>
         </glossentry>
 
         <glossentry id='var-BBFILE_PATTERN'><glossterm>BBFILE_PATTERN</glossterm>
             <glossdef>
                 <para>Variable that expands to match files from BBFILES in a particular layer.  BBFILE_PATTERN 
-                    is used in the <filename>conf/layer.conf</filename> file and must contain the name of the 
-                    specific layer (e.g. BBFILE_PATTERN_emenlow).</para>
+                    is used in the <filename>conf/layer.conf</filename> file and must be suffixed with the name
+                    of the specific layer (e.g. BBFILE_PATTERN_emenlow).</para>
             </glossdef>
         </glossentry>
 
         <glossentry id='var-BBFILE_PRIORITY'><glossterm>BBFILE_PRIORITY</glossterm>
             <glossdef>
-                <para>Assigns different priorities to recipe files in different layers.</para>
+                <para>Assigns the priority for recipe files in each layer.</para>
                 <para>This variable is useful in situations where the same package appears in
                     more than one layer. 
                     Setting BBFILE_PRIORITY allows you to prioritize a
@@ -102,13 +104,20 @@
                     precedence. 
                     For example, the value 6 has a higher precedence than the
                     value 5. 
-                    By default, the BBFILE_PRIORITY variable is set to the value 5.</para>
+                    If not specified, the BBFILE_PRIORITY variable is set based on layer
+                    dependencies (see LAYERDEPENDS below). Tdefault priority if unspecified
+                    for a layer with no dependencies is the lowest defined priority + 1
+                    (or 1 if no priorities are defined).</para>
+                <tip>
+                    You can use the command "bitbake-layers show_layers" to list
+                    all configured layers along with their priorities.
+                </tip>
             </glossdef>
         </glossentry>
 
         <glossentry id='var-BBFILES'><glossterm>BBFILES</glossterm>
             <glossdef>
-                <para>List of recipes used by BitBake to build software</para>
+                <para>List of recipe files used by BitBake to build software</para>
             </glossdef>
         </glossentry>
 
@@ -520,6 +529,19 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
 
     <glossdiv id='var-glossary-l'><title>L</title>
 
+        <glossentry id='var-LAYERDEPENDS'><glossterm>LAYERDEPENDS</glossterm>
+            <glossdef>
+                <para>Lists the layers that this recipe depends upon, separated by spaces.
+                    Optionally a specific layer version may be specified for a dependency
+                    by adding it to the end of the layer name with a colon, e.g. "anotherlayer:3"
+                    (to be compared against LAYERVERSION_anotherlayer in this example).
+                    An error will be produced if any dependency is missing or
+                    the version numbers do not match exactly (if specified).
+                    This variable is used in the <filename>conf/layer.conf</filename> file 
+                    and must be suffixed with the name of the specific layer (e.g. 
+                    LAYERDEPENDS_mylayer).</para>
+            </glossdef>
+        </glossentry>
         <glossentry id='var-LAYERDIR'><glossterm>LAYERDIR</glossterm>
             <glossdef>
                 <para>When used inside a layer.conf gives the path of the
@@ -529,6 +551,16 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
                 giving the wrong value.</para>
             </glossdef>
         </glossentry>
+        <glossentry id='var-LAYERVERSION'><glossterm>LAYERVERSION</glossterm>
+            <glossdef>
+                <para>Optionally specifies the version of a layer as a single number.
+                    This may be used within LAYERDEPENDS for another layer in order to
+                    depend on a specific version of the layer.
+                    This variable is used in the <filename>conf/layer.conf</filename> file 
+                    and must be suffixed with the name of the specific layer (e.g.
+                    LAYERVERSION_mylayer).</para>
+            </glossdef>
+        </glossentry>
         <glossentry id='var-LICENSE'><glossterm>LICENSE</glossterm>
             <glossdef>
                 <para>List of package source licenses.</para>
-- 
1.7.4.1


