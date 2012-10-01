Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3753FE012FE
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303548"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:28 +0100
Message-Id: <1dd3d19df125b034cf957109c982f57b85db39c7.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 09/11] documentation/poky-ref-manual: update FAQ on stability
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:44 -0000

* Explain that we test with a set of reference hardware rather than only
  supporting hardware that we have (avoiding any implication that the
  build system can't support other devices).
* Adjust the language so that it is OE-Core friendly, with a link to
  the Development Manual for the definition of OE-Core.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/dev-manual/dev-manual-newbie.xml |    2 +-
 documentation/poky-ref-manual/faq.xml          |   14 ++++++++------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 50ef624..ccd29e2 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -304,7 +304,7 @@
             <listitem><para id='metadata'><emphasis>Metadata:</emphasis> The files that BitBake parses when 
                 building an image. 
                 Metadata includes recipes, classes, and configuration files.</para></listitem>
-            <listitem><para><emphasis>OE-Core:</emphasis> A core set of metadata originating 
+            <listitem><para id='oe-core'><emphasis>OE-Core:</emphasis> A core set of metadata originating 
                 with OpenEmbedded (OE) that is shared between OE and the Yocto Project.
                 This metadata is found in the <filename>meta</filename> directory of the source
                 directory.</para></listitem>
diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index d31691e..5da820b 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -63,7 +63,7 @@
     <qandaentry>
         <question>
             <para>
-                How can you claim Poky is stable?
+                How can you claim Poky / OpenEmbedded-Core is stable?
             </para>
         </question>
         <answer>
@@ -71,11 +71,13 @@
                 There are three areas that help with stability;
                 <itemizedlist>
                     <listitem><para>The Yocto Project team keeps 
-                        <ulink url='&YOCTO_DOCS_DEV_URL;#poky'>Poky</ulink> small and focused.
-                        It contains around 650 packages as compared to over 5000 for full 
-                        OpenEmbedded.</para></listitem>
-                    <listitem><para>The Yocto Project only supports hardware that the 
-                        team has access to for testing.</para></listitem>
+                        <ulink url='&YOCTO_DOCS_DEV_URL;#oe-core'>OE-Core</ulink> small
+                        and focused, containing around 830 recipes as opposed to the thousands
+                        available in other OpenEmbedded community layers; this makes it easy to
+                        test and maintain.</para></listitem>
+                    <listitem><para>The Yocto Project team runs manual and automated tests 
+                        using a small, fixed set of reference hardware as well as emulated
+                        targets.</para></listitem>
                     <listitem><para>The Yocto Project uses an an autobuilder,
                         which provides continuous build and integration tests.</para></listitem>
                 </itemizedlist>
-- 
1.7.9.5


