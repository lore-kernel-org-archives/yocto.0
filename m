Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D530E006D9
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 02:54:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Jul 2012 02:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187435176"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.227])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2012 02:54:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Jul 2012 10:54:20 +0100
Message-Id: <f9c41faea89d83a6d0bd4de8564b6150bd6f07e0.1341222778.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs] [PATCH 1/5] poky-ref-manual: update mailing list info in ref manual
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
X-List-Received-Date: Mon, 02 Jul 2012 09:54:28 -0000

We need to include the OpenEmbedded and BitBake mailing lists here as
they are an integral part of the community especially for patch
submission.

Note that this supersedes the information about mailing lists in the dev
manual (which should be replaced with a link to this section).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/resources.xml |   30 ++++++++++++++++-----------
 documentation/poky.ent                      |    1 +
 2 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index 5dc6153..49fbac4 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -29,19 +29,25 @@
     <title>Mailing lists</title>
 
     <para>
-        To subscribe to the Yocto Project mailing lists, click on the following URLs and follow the instructions:
+        There are a number of mailing lists maintained by the Yocto Project as well as
+        related OpenEmbedded mailing lists for discussion, patch submission and announcements.
+        To subscribe to one of the following mailing lists, click on the appropriate URL
+        in the following list and follow the instructions:
         <itemizedlist>
-            <listitem><para><emphasis>
-                <ulink url='&YOCTO_LISTS_URL;/listinfo/yocto-announce'></ulink></emphasis>:
-                Use this list to receive offical Yocto Project announcements for developments and 
-                to learn about Yocto Project milestones.</para></listitem>
-            <listitem><para><emphasis><ulink url='&YOCTO_LISTS_URL;/listinfo/yocto'></ulink></emphasis>:
-                Use this list to monitor Yocto Project development discussions, ask questions, and 
-                get help.</para></listitem>
-            <listitem><para><emphasis><ulink url='&YOCTO_LISTS_URL;/listinfo/poky'></ulink></emphasis>:
-                Use this list to monitor discussions about the Yocto Project build system Poky, 
-                ask questions, and get help.</para></listitem>
-        </itemizedlist>
+            <listitem><para><ulink url='&YOCTO_LISTS_URL;/listinfo/yocto'></ulink> -
+                General Yocto Project discussion mailing list. </para></listitem>
+            <listitem><para><ulink url='&OE_LISTS_URL;/listinfo/openembedded-core'></ulink> -
+                Discussion mailing list about OpenEmbedded-Core (the core metadata).</para></listitem>
+            <listitem><para><ulink url='&OE_LISTS_URL;/listinfo/openembedded-devel'></ulink> -
+                Discussion mailing list about OpenEmbedded.</para></listitem>
+            <listitem><para><ulink url='&OE_LISTS_URL;/listinfo/bitbake-devel'></ulink> -
+                Discussion mailing list about the BitBake build tool.</para></listitem>
+            <listitem><para><ulink url='&YOCTO_LISTS_URL;/listinfo/poky'></ulink> -
+                Discussion mailing list about Poky.</para></listitem>
+            <listitem><para><ulink url='&YOCTO_LISTS_URL;/listinfo/yocto-announce'></ulink> -
+                Mailing list to receive official Yocto Project release and milestone
+                announcements.</para></listitem>
+        </itemizedlist></para></listitem>
     </para>
 </section>
 
diff --git a/documentation/poky.ent b/documentation/poky.ent
index acbda7f..cf14798 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -13,6 +13,7 @@
 <!ENTITY YOCTO_GIT_URL "http://git.yoctoproject.org">
 <!ENTITY YOCTO_ADTREPO_URL "http://adtrepo.yoctoproject.org">
 <!ENTITY OE_HOME_URL "http://www.openembedded.org">
+<!ENTITY OE_LISTS_URL "http://lists.linuxtogo.org/cgi-bin/mailman">
 <!ENTITY OE_DOCS_URL "http://docs.openembedded.org">
 <!ENTITY OH_HOME_URL "http://o-hand.com">
 <!ENTITY BITBAKE_HOME_URL "http://developer.berlios.de/projects/bitbake/">
-- 
1.7.9.5


