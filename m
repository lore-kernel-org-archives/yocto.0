Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACBE1E00B77; Thu, 15 Jun 2017 03:35:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FBDFE00B18
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 03:35:14 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jun 2017 03:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,343,1493708400"; d="scan'208";a="99782384"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2017 03:35:13 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.84])
	by linux.intel.com (Postfix) with ESMTP id 9186F580363;
	Thu, 15 Jun 2017 03:35:12 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Jun 2017 13:34:57 +0300
Message-Id: <1497522897-33548-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Cc: srifenbark@gmail.com
Subject: [PATCH v2] documentation: updates to static library support in SDK
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
X-List-Received-Date: Thu, 15 Jun 2017 10:35:16 -0000

For development purposes, static libraries need to be
present only in the SDK. We do not need those static
libraries in the image for most scenarios. So, replace
IMAGE_INSTALL with TOOLCHAIN_TARGET_TASK in the documentation.

Suggested-by: Anders Darander <anders@chargestorm.se>
Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 documentation/adt-manual/adt-prepare.xml         | 8 ++++----
 documentation/sdk-manual/sdk-appendix-obtain.xml | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 65df1d0..29d41c5 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -684,16 +684,16 @@
         <note>
             By default, this toolchain does not build static binaries.
             If you want to use the toolchain to build these types of libraries,
-            you need to be sure your image has the appropriate static
+            you need to be sure your SDK has the appropriate static
             development libraries.
             Use the
-            <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></ulink>
+            <ulink url='&YOCTO_DOCS_REF_URL;#var-TOOLCHAIN_TARGET_TASK'><filename>TOOLCHAIN_TARGET_TASK</filename></ulink>
             variable inside your <filename>local.conf</filename> file to
-            install the appropriate library packages.
+            include the appropriate library packages in SDK.
             Following is an example using <filename>glibc</filename> static
             development libraries:
             <literallayout class='monospaced'>
-     IMAGE_INSTALL_append = " glibc-staticdev"
+     TOOLCHAIN_TARGET_TASK_append = " libc-staticdev"
             </literallayout>
         </note>
     </para>
diff --git a/documentation/sdk-manual/sdk-appendix-obtain.xml b/documentation/sdk-manual/sdk-appendix-obtain.xml
index 3156f77..99ea49d 100644
--- a/documentation/sdk-manual/sdk-appendix-obtain.xml
+++ b/documentation/sdk-manual/sdk-appendix-obtain.xml
@@ -96,16 +96,16 @@
                 <listitem><para>
                     By default, this toolchain does not build static binaries.
                     If you want to use the toolchain to build these types of
-                    libraries, you need to be sure your image has the
+                    libraries, you need to be sure your SDK has the
                     appropriate static development libraries.
                     Use the
-                    <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></ulink>
+                    <ulink url='&YOCTO_DOCS_REF_URL;#var-TOOLCHAIN_TARGET_TASK'><filename>TOOLCHAIN_TARGET_TASK</filename></ulink>
                     variable inside your <filename>local.conf</filename> file
-                    to install the appropriate library packages.
+                    to install the appropriate library packages in SDK.
                     Following is an example using <filename>glibc</filename>
                     static development libraries:
                     <literallayout class='monospaced'>
-     IMAGE_INSTALL_append = " glibc-staticdev"
+     TOOLCHAIN_TARGET_TASK_append = " libc-staticdev"
                     </literallayout>
                     </para></listitem>
                 <listitem><para>
-- 
2.4.0


