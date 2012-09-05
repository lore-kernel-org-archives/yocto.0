Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D07E014D6
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Sep 2012 07:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100820"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:06 +0100
Message-Id: <6b31687c2b5051b90b55db6a1f86dbb57d9da8a4.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 08/12] documentation/poky-ref-manual: add packagegroup.bbclass to classes
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

Add a short section about packagegroup.bbclass.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |   22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index c06e362..b836e2c 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -262,6 +262,27 @@
     </para>
 </section>
 
+<section id='ref-classes-packagegroup'>
+    <title>Package Groups - <filename>packagegroup.bbclass</filename></title>
+
+    <para>
+        This class sets default values appropriate for package group recipes (such as 
+        <filename><link linkend='var-PACKAGES'>PACKAGES</link></filename>, 
+        <filename><link linkend='var-PACKAGE_ARCH'>PACKAGE_ARCH</link></filename>, 
+        <filename><link linkend='var-ALLOW_EMPTY'>ALLOW_EMPTY</link></filename>, 
+        etc.). It is highly recommended that all package group recipes inherit this class.
+    </para>
+    <para>
+        For information on how to use this class, see the 
+        "<ulink url='&YOCTO_DOCS_DEV_URL;#usingpoky-extend-customimage-customtasks'>Customizing Images Using Custom Package Groups</ulink>" 
+        section in the Yocto Project Development Manual.
+    </para>
+    <para>
+        Previously this class was named task.bbclass.
+    </para>
+</section>
+
+
 <section id='ref-classes-package'>
     <title>Packaging - <filename>package*.bbclass</filename></title>
 
@@ -659,7 +680,6 @@
         sstate.bbclass
         staging.bbclass
         syslinux.bbclass
-        task.bbclass
         terminal.bbclass
         tinderclient.bbclass
         toolchain-scripts.bbclass
-- 
1.7.9.5


