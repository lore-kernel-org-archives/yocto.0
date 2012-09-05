Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B56EE01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100746"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:34:59 +0100
Message-Id: <68550f541a3dcbe3e8f20ba3f2a927cadb3d98b1.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 01/12] documentation/bsp-guide, dev-manual-bsp-appendix: remove references to task bbappend
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:17 -0000

The meta-intel BSPs and yocto-bsp tool no longer use a bbappend of
task-core-tools-profile to add systemtap, so these sections should be
removed.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/bsp-guide/bsp.xml                    |   24 ----------------
 .../dev-manual/dev-manual-bsp-appendix.xml         |   29 --------------------
 2 files changed, 53 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 0c7ead5..5bfa9fb 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -172,9 +172,6 @@
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
-     meta-crownbay/recipes-core/
-     meta-crownbay/recipes-core/tasks/
-     meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend
      meta-crownbay/recipes-graphics/
      meta-crownbay/recipes-graphics/xorg-xserver/
      meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -447,27 +444,6 @@
             </para></note>
             </section>
 
-            <section id='bsp-filelayout-core-recipes'>
-            <title>Core Recipe Files</title>
-            <para>
-                You can find these files in the BSP Layer at:
-                <literallayout class='monospaced'>
-     meta-&lt;bsp_name&gt;/recipes-core/*
-                </literallayout> 
-            </para>
-
-            <para>
-                This directory contains recipe files that are almost always necessary to build a 
-                useful, working Linux image.
-                Thus, the term "core" is used to group these recipes.
-                For example, in the Crown Bay BSP there is the 
-                <filename>task-core-tools-profile.bbappend</filename> file, which is an append file used 
-                to recommend that the 
-                <ulink url='http://sourceware.org/systemtap/wiki'>SystemTap</ulink>
-                package be included as a package when the image is built.
-            </para>
-            </section>
-
             <section id='bsp-filelayout-recipes-graphics'>
             <title>Display Support Files</title>
             <para>
diff --git a/documentation/dev-manual/dev-manual-bsp-appendix.xml b/documentation/dev-manual/dev-manual-bsp-appendix.xml
index 98ed837..50a0049 100644
--- a/documentation/dev-manual/dev-manual-bsp-appendix.xml
+++ b/documentation/dev-manual/dev-manual-bsp-appendix.xml
@@ -358,35 +358,6 @@
             </para>
         </section>
 
-        <section id='changing-recipes-core'>
-            <title>Changing&nbsp;&nbsp;<filename>recipes-core</filename></title>
-
-            <para>
-                Now let's look at changes in <filename>recipes-core</filename>.
-                The file <filename>task-core-tools.bbappend</filename> in 
-                <filename>recipes-core/tasks</filename> appends the similarly named recipe
-                located in the <link linkend='source-directory'>source directory</link> at 
-                <filename>meta/recipes-core/tasks</filename>.
-                The append file in our layer right now is Crown Bay-specific and supports 
-                EMGD and non-EMGD.
-                Here are the contents of the file:
-                <literallayout class='monospaced'>
-     RRECOMMENDS_task-core-tools-profile_append_crownbay = " systemtap"
-     RRECOMMENDS_task-core-tools-profile_append_crownbay-noemgd = " systemtap"
-                </literallayout>
-            </para>
-
-            <para>
-                The <filename>RRECOMMENDS</filename> statements list packages that 
-                extend usability.
-                The first <filename>RRECOMMENDS</filename> statement can be removed, while the 
-                second one can be changed to reflect <filename>meta-mymachine</filename>:
-                <literallayout class='monospaced'>
-     RRECOMMENDS_task-core-tools-profile_append_mymachine = " systemtap"
-                </literallayout>
-            </para>
-        </section>
-
         <section id='changing-recipes-kernel'>
             <title>Changing&nbsp;&nbsp;<filename>recipes-kernel</filename></title>
 
-- 
1.7.9.5


