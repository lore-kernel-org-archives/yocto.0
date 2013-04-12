Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA225E014E4
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 15:50:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Apr 2013 15:48:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,465,1363158000"; d="scan'208";a="317487505"
Received: from wrk.jf.intel.com ([10.7.202.72])
	by orsmga002.jf.intel.com with ESMTP; 12 Apr 2013 15:50:41 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 12 Apr 2013 15:47:27 -0700
Message-Id: <49c94167a59a5c6821dc444c0b597b455c618d14.1365806190.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1365806190.git.kevin.strasser@linux.intel.com>
References: <cover.1365806190.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1365806190.git.kevin.strasser@linux.intel.com>
References: <cover.1365806190.git.kevin.strasser@linux.intel.com>
Subject: [yocto-docs][PATCH 1/1] ref-manual/ref-classes: update source archiver entry
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Apr 2013 22:50:42 -0000

The src_distribute*.bbclass files have been removed in favor of
archive*.bbclass. Update classes reference to reflect that change.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 documentation/ref-manual/ref-classes.xml |   40 +++++++++++-------------------
 1 file changed, 15 insertions(+), 25 deletions(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 69ca78c..51418b9 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -193,36 +193,26 @@
     </para>
 </section>
 
-<section id='ref-classes-src-distribute'>
-    <title>Distribution of Sources - <filename>src_distribute_local.bbclass</filename></title>
+<section id='ref-classes-archiver'>
+    <title>Archiving Sources - <filename>archive*.bbclass</filename></title>
 
     <para>
-        Many software licenses require that source files be provided along with the binaries.
-        To simplify this process, two classes were created:
-        <filename>src_distribute.bbclass</filename> and
-        <filename>src_distribute_local.bbclass</filename>.
-    </para>
-
-    <para>
-        The results of these classes are <filename>tmp/deploy/source/</filename>
-        subdirectories with sources sorted by
-        <filename><link linkend='var-LICENSE'>LICENSE</link></filename> field.
-        If recipes list few licenses (or have entries like "Bitstream Vera"),
-        the source archive is placed in each license directory.
+        Many software licenses require that source code and/or other materials be
+        released with the binaries. To help with that task the following classes
+        are provided:
+        <itemizedlist>
+            <listitem><filename>archive-original-sources.bbclass</filename></listitem>
+            <listitem><filename>archive-patched-sources.bbclass</filename></listitem>
+            <listitem><filename>archive-configured-sources.bbclass</filename></listitem>
+            <listitem><filename>archiver.bbclass</filename></listitem>
+        </itemizedlist>
     </para>
 
     <para>
-        This class operates using three modes:
-        <itemizedlist>
-            <listitem><para><emphasis>copy:</emphasis> Copies the files to the
-                distribution directory.</para></listitem>
-            <listitem><para><emphasis>symlink:</emphasis> Creates symbolic
-                links for the files to the distribution directory.
-                </para></listitem>
-            <listitem><para><emphasis>move+symlink:</emphasis> Moves the files
-                into the distribution directory and then creates symbolic
-                links back to where they originated.</para></listitem>
-        </itemizedlist>
+        For more details on the source archiver, see the
+        "<ulink url='&YOCTO_DOCS_DEV_URL;#maintaining-open-source-license-compliance-during-your-products-lifecycle'>
+        Maintaining Open Source License Compliance During Your Product's Lifecycle</ulink>"
+        section in the Yocto Project Development Manual.
     </para>
 </section>
 
-- 
1.7.9.5


