Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87629E014C7
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100774"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:01 +0100
Message-Id: <8d94ad96951a845bfa117a3dde41ada5ebaf959c.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 03/12] documentation/dev-manual: fix for package group changes
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:20 -0000

Task has been renamed to package group, and there are some minor changes
in how package group recipes should be constructed - in particular the
inherit of packagegroup.bbclass is now highly recommended as it will set
appropriate defaults and automatically add complementary -dev and -dbg
packages.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         |   48 ++++++++++----------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index bdf59de..5e9f5e7 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -465,7 +465,7 @@
                 One way to get additional software into an image is to create a custom image. 
                 The following example shows the form for the two lines you need:
                 <literallayout class='monospaced'>
-     IMAGE_INSTALL = "task-core-x11-base package1 package2"
+     IMAGE_INSTALL = "packagegroup-core-x11-base package1 package2"
 
      inherit core-image
                 </literallayout>
@@ -494,58 +494,58 @@
         </section>
 
         <section id='usingpoky-extend-customimage-customtasks'>
-            <title>Customizing Images Using Custom Tasks</title>
+            <title>Customizing Images Using Custom Package Groups</title>
 
             <para>
-                For complex custom images, the best approach is to create a custom task package
+                For complex custom images, the best approach is to create a custom package group recipe
                 that is used to build the image or images. 
-                A good example of a tasks package is 
-                <filename>meta/recipes-core/tasks/task-core-boot.bb</filename>
+                A good example of a package group recipe is 
+                <filename>meta/recipes-core/packagegroups/packagegroup-core-boot.bb</filename>.
                 The 
                 <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGES'>PACKAGES</ulink></filename> 
-                variable lists the task packages to build along with the complementary
-                <filename>-dbg</filename> and <filename>-dev</filename> packages. 
-                For each package added, you can use 
+                variable lists the package group packages you wish to produce. <filename>inherit packagegroup</filename>
+                sets appropriate default values and automatically adds -dev and -dbg complementary
+                packages for every package specified in <filename>PACKAGES</filename>. Note that the inherit line should be towards
+                the top of the recipe, certainly before you set <filename>PACKAGES</filename>.
+                For each package you specify in <filename>PACKAGES</filename>, you can use 
                 <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-RDEPENDS'>RDEPENDS</ulink></filename>
                 and 
                 <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-RRECOMMENDS'>RRECOMMENDS</ulink></filename> 
                 entries to provide a list of packages the parent task package should contain. 
                 Following is an example:
                 <literallayout class='monospaced'>
-     DESCRIPTION = "My Custom Tasks"
+     DESCRIPTION = "My Custom Package Groups"
+
+     inherit packagegroup
 
      PACKAGES = "\
-         task-custom-apps \
-         task-custom-apps-dbg \
-         task-custom-apps-dev \
-         task-custom-tools \
-         task-custom-tools-dbg \
-         task-custom-tools-dev \
+         packagegroup-custom-apps \
+         packagegroup-custom-tools \
          "
 
-     RDEPENDS_task-custom-apps = "\
+     RDEPENDS_packagegroup-custom-apps = "\
          dropbear \
          portmap \
          psplash"
 
-     RDEPENDS_task-custom-tools = "\
+     RDEPENDS_packagegroup-custom-tools = "\
          oprofile \
          oprofileui-server \
          lttng-control \
          lttng-viewer"
 
-     RRECOMMENDS_task-custom-tools = "\
+     RRECOMMENDS_packagegroup-custom-tools = "\
          kernel-module-oprofile"
                 </literallayout>
             </para>
 
             <para>
-                In the previous example, two task packages are created with their dependencies and their
-                recommended package dependencies listed: <filename>task-custom-apps</filename>, and 
-                <filename>task-custom-tools</filename>. 
-                To build an image using these task packages, you need to add 
-                <filename>task-custom-apps</filename> and/or 
-                <filename>task-custom-tools</filename> to 
+                In the previous example, two package group packages are created with their dependencies and their
+                recommended package dependencies listed: <filename>packagegroup-custom-apps</filename>, and 
+                <filename>packagegroup-custom-tools</filename>. 
+                To build an image using these packagegroup packages, you need to add 
+                <filename>packagegroup-custom-apps</filename> and/or 
+                <filename>packagegroup-custom-tools</filename> to 
                 <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'>IMAGE_INSTALL</ulink></filename>.
                 For other forms of image dependencies see the other areas of this section.
             </para>
-- 
1.7.9.5


