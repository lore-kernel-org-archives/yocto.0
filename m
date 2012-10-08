Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA95E0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 09:51:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Oct 2012 09:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,555,1344236400"; d="scan'208";a="232072866"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga002.fm.intel.com with ESMTP; 08 Oct 2012 09:51:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 17:51:05 +0100
Message-Id: <16e87065eff6c3783ce9cc242a8ab70812aec979.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 10/11] documentation: poky-ref-manual: replace "package" with "recipe" where appropriate
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
X-List-Received-Date: Mon, 08 Oct 2012 16:54:16 -0000

We have to take care when using "package" to avoid confusion, even when
referring to variables with a historical package association (PV, PN
etc.).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |   25 ++++++++++++-----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index dd858d3..7153731 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -200,14 +200,14 @@
         <glossentry id='var-BBFILE_PRIORITY'><glossterm>BBFILE_PRIORITY</glossterm>
             <glossdef>
                 <para>Assigns the priority for recipe files in each layer.</para>
-                <para>This variable is useful in situations where the same package appears in
+                <para>This variable is useful in situations where the same recipe appears in
                     more than one layer. 
                     Setting this variable allows you to prioritize a
-                    layer against other layers that contain the same package - effectively
+                    layer against other layers that contain the same recipe - effectively
                     letting you control the precedence for the multiple layers. 
                     The precedence established through this variable stands regardless of a
-                    layer's package version (<filename>PV</filename> variable). 
-                    For example, a layer that has a package with a higher <filename>PV</filename> value but for 
+                    recipe's version (<filename>PV</filename> variable). 
+                    For example, a layer that has a recipe with a higher <filename>PV</filename> value but for 
                     which the <filename>BBFILE_PRIORITY</filename> is set to have a lower precedence still has a 
                     lower precedence.</para>
                 <para>A larger value for the <filename>BBFILE_PRIORITY</filename> variable results in a higher
@@ -269,7 +269,7 @@
         <glossentry id='var-BP'><glossterm>BP</glossterm>
             <glossdef>
                 <para>The base recipe name and version but without any special 
-                    package name suffix (i.e. <filename>-native</filename>, <filename>lib64-</filename>,
+                    recipe name suffix (i.e. <filename>-native</filename>, <filename>lib64-</filename>,
                     and so forth).
                     <filename>BP</filename> is comprised of the following:
                     <literallayout class="monospaced">
@@ -280,7 +280,7 @@
 
         <glossentry id='var-BPN'><glossterm>BPN</glossterm>
             <glossdef>
-                <para>Bare name of package with any suffixes like -cross -native removed.</para>
+                <para>Bare name of recipe with any suffixes like -cross -native removed.</para>
             </glossdef>
         </glossentry>
 
@@ -825,7 +825,8 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
 
         <glossentry id='var-HOMEPAGE'><glossterm>HOMEPAGE</glossterm>
             <glossdef>
-                <para>Website where more info about package can be found</para>
+                <para>Website where more information about the software the recipe is building
+                    can be found.</para>
             </glossdef>
         </glossentry>
 
@@ -2356,7 +2357,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             <glossdef>
                 <para>
                     The pathname of the working directory in which the OpenEmbedded build system  
-                    builds packages.
+                    builds a recipe.
                     This directory is located within the
                     <link linkend='var-TMPDIR'><filename>TMPDIR</filename></link> directory structure and changes
                     as different packages are built.
@@ -2369,9 +2370,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                         <listitem>The package architecture - <link linkend='var-PACKAGE_ARCH'><filename>PACKAGE_ARCH</filename></link></listitem>
                         <listitem>The target machine - <link linkend='var-MACHINE'><filename>MACHINE</filename></link></listitem>
                         <listitem>The target operating system - <link linkend='var-TARGET_OS'><filename>TARGET_OS</filename></link></listitem>
-                        <listitem>The package name - <link linkend='var-PN'><filename>PN</filename></link></listitem>
-                        <listitem>The package version - <link linkend='var-PV'><filename>PV</filename></link></listitem>
-                        <listitem>The package revision - <link linkend='var-PR'><filename>PR</filename></link></listitem>
+                        <listitem>The recipe name - <link linkend='var-PN'><filename>PN</filename></link></listitem>
+                        <listitem>The recipe version - <link linkend='var-PV'><filename>PV</filename></link></listitem>
+                        <listitem>The recipe revision - <link linkend='var-PR'><filename>PR</filename></link></listitem>
                     </itemizedlist>
                 </para>
 
@@ -2403,7 +2404,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     named <filename>poky</filename> and a default build directory 
                     at <filename>poky/build</filename>.
                     In this case, the working directory the build system uses to build
-                    the <filename>acl</filename> package, which is dependent on a 
+                    the <filename>acl</filename> recipe, which is being built for a 
                     MIPS-based device, is the following:
                     <literallayout class='monospaced'>
      ~/poky/build/tmp/work/mips-poky-linux/acl-2.2.51-r2
-- 
1.7.9.5


