Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15FE6E0084D; Tue, 29 Jul 2014 12:34:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B78ECE0080D
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 12:34:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jul 2014 12:34:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,759,1400050800"; d="scan'208";a="577274725"
Received: from unknown (HELO localhost) ([10.255.12.245])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jul 2014 12:34:10 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 14:33:57 -0500
Message-Id: <871c55626d857b0883019c7264941756d0ad8431.1406662265.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
References: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1406662265.git.tom.zanussi@linux.intel.com>
References: <cover.1406662265.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 5/5] dev-manual: Various minor fixes for 'Creating Partitioned Images' section
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
X-List-Received-Date: Tue, 29 Jul 2014 19:34:16 -0000

This is a set of fixes for miscellaneous dev-manual updates noticed
while transcribing wic help for the dev manual.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         | 94 +++++++++++++---------
 1 file changed, 54 insertions(+), 40 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index e72e983..8189247 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -3354,14 +3354,14 @@
         <para>
             Creating an image for a particular hardware target using the
             OpenEmbedded build system does not necessarily mean you can boot
-            that image as is on your device.
+            that image as-is on your device.
             Physical devices accept and boot images in various ways depending
             on the specifics of the device.
             Usually, information about the hardware can tell you what image
             format the device requires.
             Should your device require multiple partitions on an SD card, flash,
-            or an HDD, you can use the OpenEmbedded Image Creator
-            to create the properly partitioned image.
+            or an HDD, you can use the OpenEmbedded Image Creator,
+	    <filename>wic</filename>, to create the properly partitioned image.
         </para>
 
         <para>
@@ -3372,7 +3372,7 @@
             specified either directly on the command-line or as one of a
             selection of canned <filename>.wks</filename> files as shown
             with the <filename>wic list images</filename> command in the
-            "<link linkend='using-a-provided-kickstart_file'>Using a Provided Kickstart File</link>"
+            "<link linkend='using-a-provided-kickstart_file'>Using an Existing Kickstart File</link>"
             section.
             When applied to a given set of build artifacts, the result is an
             image or set of images that can be directly written onto media and
@@ -3440,9 +3440,9 @@
             <title>Requirements</title>
 
             <para>
-                In order to use the <filename>wic</filename> utility with the
-                OpenEmbedded Build system, you need to meet the following
-                requirements:
+                In order to use the <filename>wic</filename> utility
+                with the OpenEmbedded Build system, your system needs
+                to meet the following requirements:
                 <itemizedlist>
                     <listitem><para>The Linux distribution on your
                         development host must support the Yocto Project.
@@ -3462,14 +3462,17 @@
                         system.
                         </para></listitem>
                     <listitem><para>
-                        Have the build artifacts already available.
-                        You must already have created an image using the
+                        You need to have the build artifacts already
+                        available, which typically means that you must
+                        have already created an image using the
                         Openembedded build system (e.g.
-                        <filename>core-image-minimal</filename>.
-                        It might seem redundant to generate an image in order
-                        to create an image using <filename>wic</filename>,
-                        but the artifacts are needed and they are generated
-                        with the build system.</para></listitem>
+                        <filename>core-image-minimal</filename>.  It
+                        might seem redundant to generate an image in
+                        order to create an image using
+                        <filename>wic</filename>, but in the current
+                        version the artifacts are needed in the form
+                        generated by the build
+                        system.</para></listitem>
                     <listitem><para>
                         You must have sourced one of the build environment
                         setup scripts (i.e.
@@ -3519,8 +3522,8 @@
             </para>
 
             <para>
-                You can find more out about the images
-                <filename>wic</filename> creates using the provided
+                You can find out more about the images
+                <filename>wic</filename> creates using the existing
                 kickstart files with the following form of the command:
                 <literallayout class='monospaced'>
      $ wic list &lt;image&gt; help
@@ -3552,7 +3555,7 @@
             </para>
 
             <para>
-                Regardless of the mode you use, you need to have the build
+                Regardless of which mode you use, you need to have the build
                 artifacts ready and available.
                 Additionally, the environment must be set up using the
                 <ulink url='&YOCTO_DOCS_REF_URL;#structure-core-script'><filename>&OE_INIT_FILE;</filename></ulink>
@@ -3575,7 +3578,7 @@
              <replaceable>image_name</replaceable>.wks
                                An an OpenEmbedded kickstart file.  You can provide
                                your own custom file or use a file from a set of
-                               provided files as described by further options.
+                               existing files as described by further options.
 
              -o <replaceable>OUTDIR</replaceable>, --outdir=<replaceable>OUTDIR</replaceable>
                                The name of a directory in which to create image.
@@ -3649,19 +3652,19 @@
         </section>
 
         <section id='using-a-provided-kickstart_file'>
-            <title>Using a Provided Kickstart File</title>
+            <title>Using an Existing Kickstart File</title>
 
             <para>
                 If you do not want to create your own
-                <filename>.wks</filename> file, you can use a provided
-                file.
+                <filename>.wks</filename> file, you can use an existing
+                file provided by the <filename>wic</filename> installation.
                 Use the following command to list the available files:
                 <literallayout class='monospaced'>
      $ wic list images
      directdisk Create a 'pcbios' direct disk image
      mkefidisk Create an EFI disk image
                  </literallayout>
-                 When you use a provided file, you do not have to use the
+                 When you use an existing file, you do not have to use the
                  <filename>.wks</filename> extension.
                  Here is an example in Raw Mode that uses the
                  <filename>directdisk</filename> file:
@@ -3705,7 +3708,7 @@
             </para>
 
             <section id='generate-an-image-using-a-provided-kickstart-file'>
-                <title>Generate an Image using a Provided Kickstart File</title>
+                <title>Generate an Image using an Existing Kickstart File</title>
 
                 <para>
                     This example runs in Cooked Mode and uses the
@@ -3732,7 +3735,7 @@
                     </literallayout>
                     This example shows the easiest way to create an image
                     by running in Cooked Mode and using the
-                    <filename>-e</filename> option with a provided kickstart
+                    <filename>-e</filename> option with an existing kickstart
                     file.
                     All that is necessary is to specify the image used to
                     generate the artifacts.
@@ -3785,7 +3788,7 @@
                 <para>
                     As mentioned earlier, you can use the command
                     <filename>wic list images</filename> to show the list
-                    of provided kickstart files.
+                    of existing kickstart files.
                     The directory in which these files reside is
                     <filename>scripts/lib/image/canned-wks/</filename>
                     located in the
@@ -4110,15 +4113,25 @@
             </para>
 
             <para>
-                Following is a listing of the commands, their syntax, and
-                meanings.
-                The commands are based on the Fedora kickstart documentation
-                but with modifications to reflect <filename>wic</filename>
-                capabilities.
-                <literallayout class='monospaced'>
+                The following is a list of the commands, their syntax,
+                and meanings.  The commands are based on the Fedora
+                kickstart documentation but with modifications to
+                reflect <filename>wic</filename> capabilities.  You
+                can see the original documentation for those commands
+                at the following links, in case you're interested:
+
+                    <itemizedlist>
+                        <listitem>
+     <ulink url='http://fedoraproject.org/wiki/Anaconda/Kickstart#part_or_partition'>
      http://fedoraproject.org/wiki/Anaconda/Kickstart#part_or_partition
+     </ulink>
+			</listitem>
+                        <listitem>
+     <ulink url='http://fedoraproject.org/wiki/Anaconda/Kickstart#bootloader'>
      http://fedoraproject.org/wiki/Anaconda/Kickstart#bootloader
-                </literallayout>
+     </ulink>
+			</listitem>
+                    </itemizedlist>
             </para>
 
             <section id='command-part-or-partition'>
@@ -4234,9 +4247,10 @@
                         <listitem><para><emphasis><filename>--active</filename>:</emphasis>
                             Marks the partition as active.</para></listitem>
                         <listitem><para><emphasis><filename>--align (in KBytes)</filename>:</emphasis>
-                            This option is specific to the Meego Image
-                            Creator (mic) that says to start a partition on an
-                            x KBytes boundary.</para></listitem>
+                            This option is a
+                            <filename>wic</filename>-specific option
+                            that says to start a partition on an x
+                            KBytes boundary.</para></listitem>
                     </itemizedlist>
                 </para>
             </section>
@@ -4246,7 +4260,7 @@
 
                 <para>
                     This command specifies how the boot loader should be
-                    and supports the following options:
+                    configured and supports the following options:
                     <itemizedlist>
                         <listitem><para><emphasis><filename>--timeout</filename>:</emphasis>
                             Specifies the number of seconds before the
@@ -4266,14 +4280,14 @@
 			      functionality; the bootloader command
 			      essentially provides a means of
 			      modifying bootloader configuration.
-                            </para>
-                            <para>Future updates will implement more options.
-                            If you use anything that is not specifically
-                            supported, results can be unpredictable.
                             </para></listitem>
                     </itemizedlist>
                 </para>
             </section>
+            <para>Future updates will implement more options.
+            If you use anything that is not specifically
+            supported, results can be unpredictable.
+            </para>
         </section>
     </section>
 
-- 
1.8.3.1


