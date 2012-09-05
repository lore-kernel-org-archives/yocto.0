Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24D3E014D1
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100832"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:08 +0100
Message-Id: <f800507d9ed39790b8237b55dab958893833cb8b.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 10/12] documentation/poky-ref-manual: update images reference section
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:25 -0000

* core-image-core was renamed to core-image-x11 and the editor and file
  manager were removed.
* core-image-basic's description has been updated to reflect its
  intended purpose
* core-image-lsb is intended to be standalone - should not be
  associated with core-image-basic.
* The Pimlico applications have been removed so they are no longer
  present in the Sato images.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-images.xml |   17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index d1ff6d0..186d688 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -40,9 +40,6 @@
     <itemizedlist>
         <listitem><para><emphasis><filename>core-image-base</filename>:</emphasis>
             A console-only image that fully supports the target device hardware.</para></listitem>
-        <listitem><para><emphasis><filename>core-image-core</filename>:</emphasis>
-            An X11 image with simple applications such as terminal, editor, and file manager.
-            </para></listitem>
         <listitem><para><emphasis><filename>core-image-minimal</filename>:</emphasis>
             A small image just capable of allowing a device to boot.</para></listitem>
         <listitem><para><emphasis><filename>core-image-minimal-dev</filename>:</emphasis>
@@ -61,12 +58,14 @@
             for the Minimal MTD Utilities, which let the user interact with the 
             MTD subsystem in the kernel to perform operations on flash devices.
             </para></listitem>
+        <listitem><para><emphasis><filename>core-image-x11</filename>:</emphasis>
+            A very basic X11 image with a terminal.
+            </para></listitem>
         <listitem><para><emphasis><filename>core-image-basic</filename>:</emphasis>
-            A foundational basic image without support for X that can be reasonably used for 
-            customization.</para></listitem>
+            A console-only image with more full-featured Linux system
+            functionality installed.</para></listitem>
         <listitem><para><emphasis><filename>core-image-lsb</filename>:</emphasis>
-            A <filename>core-image-basic</filename> image suitable for implementations 
-            that conform to Linux Standard Base (LSB).</para></listitem>
+            An image that conforms to the Linux Standard Base (LSB) specification.</para></listitem>
         <listitem><para><emphasis><filename>core-image-lsb-dev</filename>:</emphasis>
             A <filename>core-image-lsb</filename> image that is suitable for development work
             using the host.
@@ -83,8 +82,8 @@
         <listitem><para><emphasis><filename>core-image-sato</filename>:</emphasis>
             An image with Sato support, a mobile environment and visual style that works well 
             with mobile devices.
-            The image supports X11 with a Sato theme and Pimlico applications and also  
-            contains terminal, editor, and file manager.</para></listitem>
+            The image supports X11 with a Sato theme and applications such as
+            a terminal, editor, file manager, media player etc.</para></listitem>
         <listitem><para><emphasis><filename>core-image-sato-dev</filename>:</emphasis>
             A <filename>core-image-sato</filename> image suitable for development 
             using the host.
-- 
1.7.9.5


