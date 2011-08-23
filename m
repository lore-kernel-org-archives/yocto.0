Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17505E01235
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313472"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:43 +0100
Message-Id: <dce61980f3263d7aee4224e877e7941194fd9ab0.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 10/14] documentation: update for directdisk/live image changes
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

-live and -directdisk image have been removed; add a tip about using the
live option in IMAGE_FSTYPES to build any image as a live image.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-images.xml |   62 +++-----------------------
 1 files changed, 7 insertions(+), 55 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index f8c888d..3ace353 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -64,13 +64,6 @@
             </listitem>
             <listitem>
                 <para>
-                    <emphasis><filename>core-image-minimal-directdisk</filename></emphasis> – A 
-                    <filename>core-image-minimal</filename>  image that you can 
-                    copy directly to the disk of the target device.
-                </para>
-            </listitem>
-            <listitem>
-                <para>
                     <emphasis><filename>core-image-minimal-initramfs</filename></emphasis> – 
                     A <filename>core-image-minimal</filename> image that has the Minimal RAM-based 
                     Initial Root Filesystem (<filename>initramfs</filename>) as part of the kernel, 
@@ -79,13 +72,6 @@
             </listitem>
             <listitem>
                 <para>
-                    <emphasis><filename>core-image-minimal-live</filename></emphasis> – A 
-                    <filename>core-image-minimal</filename> image you can run from a 
-                    USB device or CD as is.
-                </para>
-            </listitem>
-            <listitem>
-                <para>
                     <emphasis><filename>core-image-minimal-mtdutils</filename></emphasis> – A 
                     <filename>core-image-minimal</filename> image that has support 
                     for the Minimal MTD Utilities, which let the user interact with the 
@@ -114,12 +100,6 @@
             </listitem>
             <listitem>
                 <para>
-                    <emphasis><filename>core-image-lsb-live</filename></emphasis> - A
-                    <filename>core-image-lsb</filename> image that you run from a USB device or CD as is.
-                </para>
-            </listitem>
-            <listitem>
-                <para>
                     <emphasis><filename>core-image-lsb-sdk</filename></emphasis> - A
                     <filename>core-image-lsb</filename> that includes everything in meta-toolchain 
                     but also includes development 
@@ -130,13 +110,6 @@
             </listitem>
             <listitem>
                 <para>
-                    <emphasis><filename>core-image-lsb-sdk-live</filename></emphasis> - A 
-<!--                     <filename>core-image-lsb-sdk</filename> image with the ability to run the image -->
-                    from a USB device or CD as is.
-                </para>
-            </listitem>
-            <listitem>
-                <para>
                     <emphasis><filename>core-image-clutter</filename></emphasis> - An image with 
                     support for 
                     the Open GL-based toolkit Clutter, which enables development of rich and animated
@@ -163,20 +136,6 @@
             </listitem>
             <listitem>
                 <para>
-                    <emphasis><filename>core-image-sato-directdisk</filename></emphasis> - A
-                    <filename>core-image-sato</filename> image that can be copied directly to the 
-                    disk of the target device.
-                </para>
-            </listitem>
-            <listitem>
-                <para>
-                    <emphasis><filename>core-image-sato-live</filename></emphasis> - A
-                    <filename>core-image-sato</filename> image with the ability to run 
-                    from a USB device or CD as is.
-                </para>
-            </listitem>
-            <listitem>
-                <para>
                     <emphasis><filename>core-image-sato-sdk</filename></emphasis> - A
                     <filename>core-image-sato</filename> image that includes everything in meta-toolchain. 
                     The image also includes development headers and libraries to form a complete standalone SDK. 
@@ -184,21 +143,14 @@
                     External Development Using the Poky SDK</link> section for more information..
                 </para>
             </listitem>
-            <listitem>
-                <para>
-                    <emphasis><filename>core-image-sato-sdk-directdisk</filename></emphasis> - A
-                    <filename>core-image-sato-sdk</filename> image that can be copied directly to the 
-                    disk of the target device.
-                </para>
-            </listitem>
-            <listitem>
-                <para>
-                    <emphasis><filename>core-image-sato-sdk-live</filename></emphasis> - A
-                    <filename>core-image-sato-sdk</filename> image that you can run  
-                    from a USB device or CD as is.
-                </para>
-            </listitem>
     </itemizedlist>
+
+    <tip>
+        From Yocto release 1.1 onwards, -live and -directdisk images have been replaced by a "live"
+        option in IMAGE_FSTYPES that will work with any image. To build a live image, simply add
+        "live" to IMAGE_FSTYPES within local.conf or whereever appropriate and then build the desired
+        image as normal.
+    </tip>
 </appendix>
 <!-- 
 vim: expandtab tw=80 ts=4 
-- 
1.7.4.1


