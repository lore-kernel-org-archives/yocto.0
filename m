Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 118DDE014D5
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Sep 2012 07:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100815"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:05 +0100
Message-Id: <e71e754b67d420fb01648cf8340decfb1281c93b.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 07/12] documentation/poky-ref-manual: variable reference clarifications and fixes
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:27 -0000

* For PE/PV/PR/PN these pertain to a recipe ("package" was used here
  historically).
* References to variables should not be prefixed with $ in the text
* Add text about suffixing RCONFLICTS as per other package variables
* Make ALLOW_EMPTY example complete
* Clarify and add example for AUTOREV

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |   49 +++++++++++++++--------
 1 file changed, 32 insertions(+), 17 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 531ee8a..5165bf1 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -61,7 +61,7 @@
                    conjunction with a package name override.
                    Here is an example:
                    <literallayout class='monospaced'>
-     ALLOW_EMPTY_${PN}
+     ALLOW_EMPTY_${PN} = "1"
                    </literallayout>
                 </para>
             </glossdef>
@@ -76,9 +76,13 @@
 
         <glossentry id='var-AUTOREV'><glossterm>AUTOREV</glossterm>
             <glossdef>
-                <para>Specifies to use the current (newest) source revision.
-                    This variable is with the <filename><link linkend='var-SRCREV'>SRCREV</link></filename>
-                    variable.</para>
+                <para>When <filename><link linkend='var-SRCREV'>SRCREV</link></filename>
+                    is set to the value of this variable, it specifies that the latest
+                    source revision in the repository should be used. Here is an example:
+                    <literallayout class='monospaced'>
+     SRCREV = "${AUTOREV}"
+                    </literallayout>
+                </para>
             </glossdef>
         </glossentry>
 
@@ -1478,7 +1482,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
 
         <glossentry id='var-PACKAGE_ARCH'><glossterm>PACKAGE_ARCH</glossterm>
             <glossdef>
-                <para>The architecture of the resulting package.</para>
+                <para>The architecture of the resulting package(s).</para>
             </glossdef>
         </glossentry>
 
@@ -1536,14 +1540,17 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
 
         <glossentry id='var-PN'><glossterm>PN</glossterm>
             <glossdef>
-                <para>The name of the package.
+                <para>The name of the recipe. The name is normally extracted from the recipe file name.
+                    For example, if the recipe is named 
+                    <filename>expat_2.0.1.bb</filename>, then the default value of <filename>PN</filename>
+                    will be "expat". 
                     </para>
             </glossdef>
         </glossentry>
 
         <glossentry id='var-PR'><glossterm>PR</glossterm>
             <glossdef>
-                <para>The revision of the package. 
+                <para>The revision of the recipe. 
                     The default value for this variable is "r0".
                     </para>
             </glossdef>
@@ -1551,13 +1558,13 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
 
         <glossentry id='var-PV'><glossterm>PV</glossterm>
             <glossdef>
-                <para>The version of the package.
-                    The version is normally extracted from the recipe name.
+                <para>The version of the recipe.
+                    The version is normally extracted from the recipe file name.
                     For example, if the recipe is named 
-                    <filename>expat_2.0.1.bb</filename>, then <filename>PV</filename>
-                    will be <filename>2.0.1</filename>. 
+                    <filename>expat_2.0.1.bb</filename>, then the default value of <filename>PV</filename> 
+                    will be "2.0.1". 
                     <filename>PV</filename> is generally not overridden within 
-                    a recipe unless it is building an unstable version from a source code repository 
+                    a recipe unless it is building an unstable/development version from a source code repository 
                     (e.g. Git or Subversion).
                  </para>
             </glossdef>
@@ -1566,7 +1573,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
         <glossentry id='var-PE'><glossterm>PE</glossterm>
             <glossdef>
                 <para>
-                    the epoch of the package. 
+                    the epoch of the recipe. 
                     The default value is "0". 
                     The field is used to make upgrades possible when the versioning scheme changes in 
                     some backwards incompatible way.
@@ -1581,7 +1588,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
                     determines which recipe should be given preference. 
                     The variable must always be suffixed with the name of the 
                     provided item, and should be set to the 
-                    <filename>$PN</filename> of the recipe 
+                    <filename>PN</filename> of the recipe 
                     to which you want to give precedence.
                     Here is an example:
                     <literallayout class='monospaced'>
@@ -1596,9 +1603,9 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
                 <para>
                     If there are multiple versions of recipes available, this
                     variable determines which recipe should be given preference.
-                    The variable must always be suffixed with the <filename>$PN</filename> 
+                    The variable must always be suffixed with the <filename>PN</filename> 
                     for which to select, and should be set to the 
-                    <filename>$PV</filename> to which you want to give precedence.
+                    <filename>PV</filename> to which you want to give precedence.
                     You can use the "<filename>%</filename>" character as a wildcard
                     to match any number of characters, which can be useful when 
                     specifying versions that contain long revision number that could 
@@ -1621,9 +1628,17 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
 
         <glossentry id='var-RCONFLICTS'><glossterm>RCONFLICTS</glossterm>
             <glossdef>
-                <para>The list of packages that conflict with this package.
+                <para>The list of packages that conflict with a package.
                     Note that the package will not be installed if the conflicting packages are not
                     first removed.</para>
+                <para>
+                   Like all package-controlling variables, you must always use them in 
+                   conjunction with a package name override.
+                   Here is an example:
+                   <literallayout class='monospaced'>
+     RCONFLICTS_${PN} = "another-conflicting-package-name"
+                   </literallayout>
+                </para>
             </glossdef>
         </glossentry>
 
-- 
1.7.9.5


