Return-Path: <elliot.smith@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A6D3E00BEC; Fri, 11 Dec 2015 07:12:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A53EE007C9
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 07:12:53 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2015 07:12:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,414,1444719600"; d="scan'208";a="858854018"
Received: from cclanc2-mobl2.ger.corp.intel.com (HELO lp.ger.corp.intel.com)
	([10.252.16.100])
	by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2015 07:12:44 -0800
From: Elliot Smith <elliot.smith@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Dec 2015 15:12:14 +0000
Message-Id: <1449846734-25088-1-git-send-email-elliot.smith@intel.com>
X-Mailer: git-send-email 1.9.3
X-Mailman-Approved-At: Mon, 14 Dec 2015 07:36:37 -0800
Subject: [PATCH] toaster-manual: describe the way to start Toaster
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
X-List-Received-Date: Fri, 11 Dec 2015 15:12:59 -0000

From: Ed Bartosh <ed.bartosh@linux.intel.com>

Recently the way to start Toaster has been simplified.
The only way to start it now is to source toaster script.
Builds can be run either from command line or from Toaster
web interface.

Updated instructions to start toaster according to the
changes described above.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
Signed-off-by: Elliot Smith <elliot.smith@intel.com>
---
 .../toaster-manual-setup-and-use.xml               | 67 +++-------------------
 1 file changed, 8 insertions(+), 59 deletions(-)

diff --git a/documentation/toaster-manual/toaster-manual-setup-and-use.xml b/documentation/toaster-manual/toaster-manual-setup-and-use.xml
index 74c00c4..75aaea8 100644
--- a/documentation/toaster-manual/toaster-manual-setup-and-use.xml
+++ b/documentation/toaster-manual/toaster-manual-setup-and-use.xml
@@ -17,32 +17,12 @@
         </para>
 
         <para>
-            If you want to configure and start your builds using the
-            Toaster web interface
-            (i.e. "<link linkend='toaster-build-mode'>Build Mode</link>"),
-            navigate to the root of your
+            Navigate to the root of your
             <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>
             (e.g. <filename>poky</filename>):
             <literallayout class='monospaced'>
      $ cd poky
             </literallayout>
-            Next, start Toaster:
-            <literallayout class='monospaced'>
-     $ bitbake/bin/toaster
-            </literallayout>
-            Open your favourite browser and enter the following:
-            <literallayout class='monospaced'>
-     http://127.0.0.1:8000
-            </literallayout>
-            If you would rather configure and start your builds
-            using the command line
-            (i.e. <link linkend='toaster-analysis-mode'>Analysis Mode</link>),
-            you can get Toaster to "listen"
-            to your builds and collect information about them.
-            To do that, navigate to the root of your Source Directory:
-            <literallayout class='monospaced'>
-     $ cd poky
-            </literallayout>
             Once in that directory, source the build environment script:
             <literallayout class='monospaced'>
      $ source oe-init-build-env
@@ -72,12 +52,7 @@
             By default, Toaster starts on port 8000.
             You can use the <filename>WEBPORT</filename> parameter to
             set a different port.
-            For example, either of the following commands sets the
-            port to "8400":
-            <literallayout class='monospaced'>
-     $ bitbake/bin/toaster webport=8400
-            </literallayout>
-            or
+            For example, the following command sets the port to "8400":
             <literallayout class='monospaced'>
      $ source ../bitbake/bin/toaster webport=8400
             </literallayout>
@@ -88,18 +63,10 @@
         <title>The Directory for Cloning Layers</title>
 
         <para>
-            If you are running Toaster in
-            <link linkend='toaster-build-mode'>Build Mode</link>,
             Toaster creates a <filename>_toaster_clones</filename>
             directory inside your Source Directory
-            (i.e. <filename>poky</filename>).
-            For example, suppose you use this command to start Toaster:
-            <literallayout class='monospaced'>
-     poky/bitbake/bin/toaster
-            </literallayout>
-            In this example, Toaster creates and uses the
-            <filename>poky/_toaster_clones</filename>
-            directory to clone any layers needed for your builds.
+            (i.e. <filename>poky</filename>) to clone any layers
+            needed for your builds.
         </para>
 
         <para>
@@ -117,17 +84,9 @@
         <title>The Build Directory</title>
 
         <para>
-            If you are running Toaster in
-            <link linkend='toaster-build-mode'>Build Mode</link>,
             Toaster creates a build directory within your Source
-            Directory (e.g. <filename>poky</filename>).
-            For example, suppose you use this command to start Toaster:
-            <literallayout class='monospaced'>
-     poky/bitbake/bin/toaster
-            </literallayout>
-            In this example, Toaster creates and uses the
-            <filename>poky/build</filename>
-            directory to execute the builds.
+            Directory (e.g. <filename>poky</filename>) to execute
+            the builds.
         </para>
 
         <para>
@@ -136,7 +95,7 @@
             the <filename>TOASTER_DIR</filename> environment variable,
             which takes precedence over your current working directory.
             Setting this environment variable causes Toaster to use
-            <filename>$TOASTER_DIR./build</filename> as the build directory.
+            <filename>$TOASTER_DIR/build</filename> as the build directory.
         </para>
     </section>
 
@@ -217,10 +176,7 @@
             The production instance is also the setup that can cope with
             heavier loads on the web service.
             Use the instructions in the following sections to set up
-            Toaster in
-            <link linkend='toaster-build-mode'>Build Mode</link>
-            where builds and projects are run,
-            viewed, and defined through the Toaster web interface.
+            Toaster to run builds through the Toaster web interface.
         </para>
 
         <section id='toaster-production-instance-requirements'>
@@ -333,13 +289,6 @@
      STATIC_ROOT = '/var/www/toaster/static_files/'
                                 </literallayout>
                                 </para></listitem>
-                            <listitem><para>
-                                Enable Build Mode by adding the following
-                                line to <filename>settings.py</filename>:
-                                <literallayout class='monospaced'>
-     BUILD_MODE=True
-                                </literallayout>
-                                </para></listitem>
                         </itemizedlist>
                         </para></listitem>
                     <listitem><para>
-- 
1.9.3

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


