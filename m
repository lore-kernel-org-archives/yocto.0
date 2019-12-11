Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web09.6555.1576084344886486038
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 09:12:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
IronPort-SDR: N0clwLnP+VB+UYhRWzKlGygmWNhLidzvwjzYfnFeLYuMaN8kTSyXNzye2AMOxoG7or+EmpV/1L
 qXF+UobcfYu3jlw77ELF/FhRUuBV0UGLzamgIX09rQHhzrHfbVGQG7wTSZE9HcnlTwD9/ITmOV
 Aw07bdLJVHbk+KTpUW+qSTy/HMyMWiittNVZtJr0F0NtW8P9p3IMj4YOCi+AjG2XU7vAqNAWOP
 APScE2hijF/nUQ4RhtB7vx69QuRTZ5OLeKby/QuH6bxjMF1gQxEdXtD8U9iSyZBcD7Z36BBsXx
 aH0=
X-IronPort-AV: E=Sophos;i="5.69,302,1571695200"; 
   d="scan'208";a="3495885"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: yocto@lists.yoctoproject.org
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/2] ref-manual: Add missing/remove extraneous quotes
Date: Wed, 11 Dec 2019 18:12:16 +0100
Message-Id: <20191211171217.408-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Content-Transfer-Encoding: 8bit

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 documentation/ref-manual/migration.xml     |  4 ++--
 documentation/ref-manual/ref-variables.xml | 20 +++++++++-----------
 2 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/documentation/ref-manual/migration.xml b/documentation/ref-manual/migration.xml
index 8d50ab9133..2052188b6b 100644
--- a/documentation/ref-manual/migration.xml
+++ b/documentation/ref-manual/migration.xml
@@ -2110,7 +2110,7 @@
             such as the following:
             <literallayout class='monospaced'>
      inherit bluetooth
-     PACKAGECONFIG ??= "${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', '${BLUEZ}', '', d)}
+     PACKAGECONFIG ??= "${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', '${BLUEZ}', '', d)}"
      PACKAGECONFIG[bluez4] = "--enable-bluetooth,--disable-bluetooth,bluez4"
      PACKAGECONFIG[bluez5] = "--enable-bluez5,--disable-bluez5,bluez5"
             </literallayout>
@@ -3624,7 +3624,7 @@ $ runqemu qemux86-64 tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.
             image types, this part of the kernel image base name as been
             removed leaving only the following:
             <literallayout class='monospaced'>
-     KERNEL_IMAGE_BASE_NAME ?= "${PKGE}-${PKGV}-${PKGR}-${MACHINE}-${DATETIME}
+     KERNEL_IMAGE_BASE_NAME ?= "${PKGE}-${PKGV}-${PKGR}-${MACHINE}-${DATETIME}"
             </literallayout>
             If you have recipes or classes that use
             <filename>KERNEL_IMAGE_BASE_NAME</filename> directly, you might
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 02abc590cd..e6009926be 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -367,7 +367,7 @@
 
         <glossentry id='var-ASSUME_SHLIBS'><glossterm>ASSUME_SHLIBS</glossterm>
             <info>
-                ASSUME_SHLIBS[doc] = Provides additional shlibs provider mapping information, which adds to or overwrites the information provided automatically by the system."
+                ASSUME_SHLIBS[doc] = "Provides additional shlibs provider mapping information, which adds to or overwrites the information provided automatically by the system."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
@@ -1423,7 +1423,7 @@
                     Use the following format to export the variable to the
                     BitBake environment:
                     <literallayout class='monospaced'>
-     export BBSERVER=localhost:$port"
+     export BBSERVER=localhost:$port
                     </literallayout>
                 </para>
 
@@ -3786,7 +3786,7 @@
                     It is not intended to be user-configurable.
                     It is best to just reference the variable to see which distro features are
                     being backfilled for all distro configurations.
-                    See the <link linkend='ref-features-backfill'>Feature Backfilling</link> section for
+                    See the "<link linkend='ref-features-backfill'>Feature Backfilling</link>" section for
                     more information.
                 </para>
             </glossdef>
@@ -11054,7 +11054,7 @@
 
         <glossentry id='var-PN'><glossterm>PN</glossterm>
             <info>
-                PN[doc] = "PN refers to a recipe name in the context of a file used by the OpenEmbedded build system as input to create a package.
+                PN[doc] = "PN refers to a recipe name in the context of a file used by the OpenEmbedded build system as input to create a package."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
@@ -13383,8 +13383,7 @@
 
         <glossentry id='var-SKIP_FILEDEPS'><glossterm>SKIP_FILEDEPS</glossterm>
             <info>
-                SKIP_FILEDEPS[doc] = "Enables you to remove all files from
-                the "Provides" section of an RPM package."
+                SKIP_FILEDEPS[doc] = "Enables you to remove all files from the 'Provides' section of an RPM package."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
@@ -15331,7 +15330,7 @@
 
         <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
             <info>
-                TCLIBC[doc] = "Specifies GNU standard C library (libc) variant to use during the build process. You can select 'glibc', 'musl' or "newlib."
+                TCLIBC[doc] = "Specifies GNU standard C library (libc) variant to use during the build process. You can select 'glibc', 'musl' or 'newlib'."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
@@ -16473,7 +16472,7 @@
                     Appends a string to the name of the local version of the
                     U-Boot image.
                     For example, assuming the version of the U-Boot image
-                    built was "2013.10, the full version string reported by
+                    built was "2013.10", the full version string reported by
                     U-Boot would be "2013.10-yocto" given the following
                     statement:
                     <literallayout class='monospaced'>
@@ -17108,7 +17107,7 @@
                     "<ulink url='&YOCTO_DOCS_DEV_URL;#creating-partitioned-images-using-wic'>Creating Partitioned Images Using Wic</ulink>"
                     section in the Yocto Project Development Tasks Manual.
                     For details on the kickstart file format, see the
-                    "<link linkend='ref-kickstart'>OpenEmbedded Kickstart (<filename>.wks</filename>) Reference</link>
+                    "<link linkend='ref-kickstart'>OpenEmbedded Kickstart (<filename>.wks</filename>) Reference</link>"
                     Chapter.
                 </para>
             </glossdef>
@@ -17178,8 +17177,7 @@
 
         <glossentry id='var-XSERVER'><glossterm>XSERVER</glossterm>
             <info>
-               XSERVER[doc] = "Specifies the packages that should be installed
-               to provide an X server and drivers for the current machine."
+               XSERVER[doc] = "Specifies the packages that should be installed to provide an X server and drivers for the current machine."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
-- 
2.21.0

