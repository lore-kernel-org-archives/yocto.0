Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57B00E009FA; Thu,  8 Dec 2016 05:03:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2974E007E8
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 05:03:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2016 05:03:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,319,1477983600"; d="scan'208";a="15396876"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2016 05:03:00 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 9EC306A4080;
	Thu,  8 Dec 2016 05:02:13 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2016 15:01:46 +0200
Message-Id: <1481202106-13933-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Cc: scott.m.rifenbark@intel.com
Subject: [PATCH] dev-manual: describe creation of wic images by oe build system
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
X-List-Received-Date: Thu, 08 Dec 2016 13:03:07 -0000

Explained creation of wic partitioned images using oe
build system. This way is preferable as it's more natural and
easier to use and understand than currently documented way of
using wic as a stand-alone tool.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         | 1840 ++++++++++----------
 1 file changed, 932 insertions(+), 908 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 2c95ecb..6d0e018 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4366,1014 +4366,1038 @@
             Should your device require multiple partitions on an SD card, flash,
             or an HDD, you can use the OpenEmbedded Image Creator,
 	        <filename>wic</filename>, to create the properly partitioned image.
-        </para>
-
-        <para>
-            The <filename>wic</filename> command generates partitioned images
-            from existing OpenEmbedded build artifacts.
-            Image generation is driven by partitioning commands contained
-            in an Openembedded kickstart file (<filename>.wks</filename>)
-            specified either directly on the command line or as one of a
-            selection of canned <filename>.wks</filename> files as shown
-            with the <filename>wic list images</filename> command in the
-            "<link linkend='using-a-provided-kickstart_file'>Using an Existing Kickstart File</link>"
-            section.
-            When applied to a given set of build artifacts, the result is an
-            image or set of images that can be directly written onto media and
-            used on a particular system.
-        </para>
+       </para>
 
-        <para>
-	        The <filename>wic</filename> command and the infrastructure
-	        it is based on is by definition incomplete.
-            Its purpose is to allow the generation of customized images,
-            and as such was designed to be completely extensible through a
-            plug-in interface.
-            See the
-            "<link linkend='openembedded-kickstart-plugins'>Plug-ins</link>"
-            section for information on these plug-ins.
-	    </para>
-
-        <para>
-            This section provides some background information on
-            <filename>wic</filename>, describes what you need to have in
-            place to run the tool, provides instruction on how to use
-            <filename>wic</filename>, and provides several examples.
+       <para>
+            <filename>wic</filename> images can be generated two ways: by OpenEmbedded
+            build system and by running OpenEmbedded Image Creator <filename>wic</filename>
+            directly. Former way is preferable as it's easier to use and understand.
         </para>
 
-        <section id='wic-background'>
-            <title>Background</title>
-
+        <section id='creating-wic-images-oe'>
+            <title>Creating partitioned images by OpenEmbedded build system</title>
             <para>
-                This section provides some background on the
-                <filename>wic</filename> utility.
-                While none of this information is required to use
-                <filename>wic</filename>, you might find it interesting.
-                <itemizedlist>
-                    <listitem><para>
-                        The name "wic" is derived from OpenEmbedded
-                        Image Creator (oeic).
-                        The "oe" diphthong in "oeic" was promoted to the
-                        letter "w", because "oeic" is both difficult to remember and
-                        pronounce.</para></listitem>
-                    <listitem><para>
-                        <filename>wic</filename> is loosely based on the
-                        Meego Image Creator (<filename>mic</filename>)
-                        framework.
-                        The <filename>wic</filename> implementation has been
-                        heavily modified to make direct use of OpenEmbedded
-                        build artifacts instead of package installation and
-                        configuration, which are already incorporated within
-                        the OpenEmbedded artifacts.</para></listitem>
-                    <listitem><para>
-                        <filename>wic</filename> is a completely independent
-                        standalone utility that initially provides
-                        easier-to-use and more flexible replacements for a
-                        couple bits of existing functionality in OE Core's
-                        <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-image-live'><filename>image-live</filename></ulink>
-                        class and <filename>mkefidisk.sh</filename> script.
-                        The difference between
-                        <filename>wic</filename> and those examples is
-                        that with <filename>wic</filename> the
-                        functionality of those scripts is implemented
-                        by a general-purpose partitioning language, which is
-                        based on Redhat kickstart syntax.</para></listitem>
-                </itemizedlist>
+                OpenEmbedded build system can generate <filename>wic</filename> images the same way
+                as any other image type. To generate wic image 2 variables should be modified:
+                <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_FSTYPES'><filename>IMAGE_FSTYPES</filename></ulink>
+                should include 'wic' and
+                <ulink url='&YOCTO_DOCS_REF_URL;#var-WKS_FILE'><filename>WKS_FILE</filename></ulink>
+                variable should contain the name of
+                "<link linkend='openembedded-kickstart-wks-reference'>wic kickstart file</link>
+                file. Further steps to generate an image are the same as for other image types. They're
+                described in "<link linkend='building-images'>Building Images</link>" section.
             </para>
         </section>
 
-        <section id='wic-requirements'>
-            <title>Requirements</title>
-
-            <para>
-                In order to use the <filename>wic</filename> utility
-                with the OpenEmbedded Build system, your system needs
-                to meet the following requirements:
-                <itemizedlist>
-                    <listitem><para>The Linux distribution on your
-                        development host must support the Yocto Project.
-                        See the
-                        "<ulink url='&YOCTO_DOCS_REF_URL;#detailed-supported-distros'>Supported Linux Distributions</ulink>"
-                        section in the Yocto Project Reference Manual for this
-                        list of distributions.</para></listitem>
-                    <listitem><para>
-                        The standard system utilities, such as
-                        <filename>cp</filename>, must be installed on your
-                        development host system.
-                        </para></listitem>
-                    <listitem><para>
-                        You need to have the build artifacts already
-                        available, which typically means that you must
-                        have already created an image using the
-                        Openembedded build system (e.g.
-                        <filename>core-image-minimal</filename>).
-                        While it might seem redundant to generate an image in
-                        order to create an image using
-                        <filename>wic</filename>, the current version of
-                        <filename>wic</filename> requires the artifacts
-                        in the form generated by the build system.
-                        </para></listitem>
-                    <listitem><para>
-                        You must build several native tools, which are tools
-                        built to run on the build system:
-                        <literallayout class='monospaced'>
-     $ bitbake parted-native dosfstools-native mtools-native
-                        </literallayout>
-                        </para></listitem>
-                    <listitem><para>
-                        You must have sourced one of the build environment
-                        setup scripts (i.e.
-                        <ulink url='&YOCTO_DOCS_REF_URL;#structure-core-script'><filename>&OE_INIT_FILE;</filename></ulink>
-                        or
-                        <ulink url='&YOCTO_DOCS_REF_URL;#structure-memres-core-script'><filename>oe-init-build-env-memres</filename></ulink>)
-                        found in the
-                        <link linkend='build-directory'>Build Directory</link>.
-                        </para></listitem>
-                </itemizedlist>
-            </para>
-        </section>
-
-        <section id='wic-getting-help'>
-            <title>Getting Help</title>
-
-            <para>
-                You can get general help for the <filename>wic</filename>
-                by entering the <filename>wic</filename> command by itself
-                or by entering the command with a help argument as follows:
-                <literallayout class='monospaced'>
-     $ wic -h
-     $ wic --help
-                </literallayout>
-            </para>
-
-            <para>
-                Currently, <filename>wic</filename> supports two commands:
-                <filename>create</filename> and <filename>list</filename>.
-                You can get help for these commands as follows:
-                <literallayout class='monospaced'>
-     $ wic help <replaceable>command</replaceable>
-                </literallayout>
-            </para>
+        <section id='create-wic-images-wic'>
+            <title>Generating partitioned images by OpenEmbedded Image Creator <filename>wic</filename></title>
+                <para>
+                    The <filename>wic</filename> command generates partitioned images
+                    from existing OpenEmbedded build artifacts.
+                    Image generation is driven by partitioning commands contained
+                    in an Openembedded kickstart file (<filename>.wks</filename>)
+                    specified either directly on the command line or as one of a
+                    selection of canned <filename>.wks</filename> files as shown
+                    with the <filename>wic list images</filename> command in the
+                    "<link linkend='using-a-provided-kickstart_file'>Using an Existing Kickstart File</link>"
+                    section.
+                    When applied to a given set of build artifacts, the result is an
+                    image or set of images that can be directly written onto media and
+                    used on a particular system.
+                </para>
 
-            <para>
-                You can also get detailed help on a number of topics
-                from the help system.
-                The output of <filename>wic --help</filename>
-                displays a list of available help
-                topics under a "Help topics" heading.
-                You can have the help system display the help text for
-                a given topic by prefacing the topic with
-                <filename>wic help</filename>:
-                <literallayout class='monospaced'>
-     $ wic help <replaceable>help_topic</replaceable>
-                </literallayout>
-            </para>
+                <para>
+                    The <filename>wic</filename> command and the infrastructure
+                    it is based on is by definition incomplete.
+                    Its purpose is to allow the generation of customized images,
+                    and as such was designed to be completely extensible through a
+                    plug-in interface.
+                    See the
+                    "<link linkend='openembedded-kickstart-plugins'>Plug-ins</link>"
+                    section for information on these plug-ins.
+                </para>
 
-            <para>
-                You can find out more about the images
-                <filename>wic</filename> creates using the existing
-                kickstart files with the following form of the command:
-                <literallayout class='monospaced'>
-     $ wic list <replaceable>image</replaceable> help
-                </literallayout>
-                where <filename><replaceable>image</replaceable></filename> is either
-                <filename>directdisk</filename> or
-                <filename>mkefidisk</filename>.
-            </para>
-        </section>
+                <para>
+                    This section provides some background information on
+                    <filename>wic</filename>, describes what you need to have in
+                    place to run the tool, provides instruction on how to use
+                    <filename>wic</filename>, and provides several examples.
+                </para>
 
-        <section id='operational-modes'>
-            <title>Operational Modes</title>
+                <section id='wic-background'>
+                    <title>Background</title>
 
-            <para>
-	            You can use <filename>wic</filename> in two different
-	            modes, depending on how much control you need for
-	            specifying the Openembedded build artifacts that are
-                used for creating the image: Raw and Cooked:
-                <itemizedlist>
-                    <listitem><para><emphasis>Raw Mode:</emphasis>
-                        You explicitly specify build artifacts through
-                        command-line arguments.</para></listitem>
-                    <listitem><para><emphasis>Cooked Mode:</emphasis>
-                        The current
-                        <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
-                        setting and image name are used to automatically locate
-                        and provide the build artifacts.</para></listitem>
-                </itemizedlist>
-            </para>
+                    <para>
+                        This section provides some background on the
+                        <filename>wic</filename> utility.
+                        While none of this information is required to use
+                        <filename>wic</filename>, you might find it interesting.
+                        <itemizedlist>
+                            <listitem><para>
+                                The name "wic" is derived from OpenEmbedded
+                                Image Creator (oeic).
+                                The "oe" diphthong in "oeic" was promoted to the
+                                letter "w", because "oeic" is both difficult to remember and
+                                pronounce.</para></listitem>
+                            <listitem><para>
+                                <filename>wic</filename> is loosely based on the
+                                Meego Image Creator (<filename>mic</filename>)
+                                framework.
+                                The <filename>wic</filename> implementation has been
+                                heavily modified to make direct use of OpenEmbedded
+                                build artifacts instead of package installation and
+                                configuration, which are already incorporated within
+                                the OpenEmbedded artifacts.</para></listitem>
+                            <listitem><para>
+                                <filename>wic</filename> is a completely independent
+                                standalone utility that initially provides
+                                easier-to-use and more flexible replacements for a
+                                couple bits of existing functionality in OE Core's
+                                <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-image-live'><filename>image-live</filename></ulink>
+                                class and <filename>mkefidisk.sh</filename> script.
+                                The difference between
+                                <filename>wic</filename> and those examples is
+                                that with <filename>wic</filename> the
+                                functionality of those scripts is implemented
+                                by a general-purpose partitioning language, which is
+                                based on Redhat kickstart syntax.</para></listitem>
+                        </itemizedlist>
+                    </para>
+                </section>
 
-            <para>
-                Regardless of the mode you use, you need to have the build
-                artifacts ready and available.
-                Additionally, the environment must be set up using the
-                <ulink url='&YOCTO_DOCS_REF_URL;#structure-core-script'><filename>&OE_INIT_FILE;</filename></ulink>
-                or
-                <ulink url='&YOCTO_DOCS_REF_URL;#structure-memres-core-script'><filename>oe-init-build-env-memres</filename></ulink>
-                script found in the
-                <link linkend='build-directory'>Build Directory</link>.
-            </para>
+                <section id='wic-requirements'>
+                    <title>Requirements</title>
 
-            <section id='raw-mode'>
-                <title>Raw Mode</title>
+                    <para>
+                        In order to use the <filename>wic</filename> utility
+                        with the OpenEmbedded Build system, your system needs
+                        to meet the following requirements:
+                        <itemizedlist>
+                            <listitem><para>The Linux distribution on your
+                                development host must support the Yocto Project.
+                                See the
+                                "<ulink url='&YOCTO_DOCS_REF_URL;#detailed-supported-distros'>Supported Linux Distributions</ulink>"
+                                section in the Yocto Project Reference Manual for this
+                                list of distributions.</para></listitem>
+                            <listitem><para>
+                                The standard system utilities, such as
+                                <filename>cp</filename>, must be installed on your
+                                development host system.
+                                </para></listitem>
+                            <listitem><para>
+                                You need to have the build artifacts already
+                                available, which typically means that you must
+                                have already created an image using the
+                                Openembedded build system (e.g.
+                                <filename>core-image-minimal</filename>).
+                                While it might seem redundant to generate an image in
+                                order to create an image using
+                                <filename>wic</filename>, the current version of
+                                <filename>wic</filename> requires the artifacts
+                                in the form generated by the build system.
+                                </para></listitem>
+                            <listitem><para>
+                                You must build several native tools, which are tools
+                                built to run on the build system:
+                                <literallayout class='monospaced'>
+             $ bitbake parted-native dosfstools-native mtools-native
+                                </literallayout>
+                                </para></listitem>
+                            <listitem><para>
+                                You must have sourced one of the build environment
+                                setup scripts (i.e.
+                                <ulink url='&YOCTO_DOCS_REF_URL;#structure-core-script'><filename>&OE_INIT_FILE;</filename></ulink>
+                                or
+                                <ulink url='&YOCTO_DOCS_REF_URL;#structure-memres-core-script'><filename>oe-init-build-env-memres</filename></ulink>)
+                                found in the
+                                <link linkend='build-directory'>Build Directory</link>.
+                                </para></listitem>
+                        </itemizedlist>
+                    </para>
+                </section>
 
-                <para>
-                    The general form of the 'wic' command in raw mode is:
-                    <literallayout class='monospaced'>
-     $ wic create <replaceable>image_name</replaceable>.wks [<replaceable>options</replaceable>] [...]
+                <section id='wic-getting-help'>
+                    <title>Getting Help</title>
 
-         Where:
+                    <para>
+                        You can get general help for the <filename>wic</filename>
+                        by entering the <filename>wic</filename> command by itself
+                        or by entering the command with a help argument as follows:
+                        <literallayout class='monospaced'>
+             $ wic -h
+             $ wic --help
+                        </literallayout>
+                    </para>
 
-             <replaceable>image_name</replaceable>.wks
-                               An OpenEmbedded kickstart file.  You can provide
-                               your own custom file or use a file from a set of
-                               existing files as described by further options.
+                    <para>
+                        Currently, <filename>wic</filename> supports two commands:
+                        <filename>create</filename> and <filename>list</filename>.
+                        You can get help for these commands as follows:
+                        <literallayout class='monospaced'>
+             $ wic help <replaceable>command</replaceable>
+                        </literallayout>
+                    </para>
 
-             -o <replaceable>OUTDIR</replaceable>, --outdir=<replaceable>OUTDIR</replaceable>
-                               The name of a directory in which to create image.
+                    <para>
+                        You can also get detailed help on a number of topics
+                        from the help system.
+                        The output of <filename>wic --help</filename>
+                        displays a list of available help
+                        topics under a "Help topics" heading.
+                        You can have the help system display the help text for
+                        a given topic by prefacing the topic with
+                        <filename>wic help</filename>:
+                        <literallayout class='monospaced'>
+             $ wic help <replaceable>help_topic</replaceable>
+                        </literallayout>
+                    </para>
 
-             -i <replaceable>PROPERTIES_FILE</replaceable>, --infile=<replaceable>PROPERTIES_FILE</replaceable>
-                               The name of a file containing the values for image
-                               properties as a JSON file.
+                    <para>
+                        You can find out more about the images
+                        <filename>wic</filename> creates using the existing
+                        kickstart files with the following form of the command:
+                        <literallayout class='monospaced'>
+             $ wic list <replaceable>image</replaceable> help
+                        </literallayout>
+                        where <filename><replaceable>image</replaceable></filename> is either
+                        <filename>directdisk</filename> or
+                        <filename>mkefidisk</filename>.
+                    </para>
+                </section>
 
-             -e <replaceable>IMAGE_NAME</replaceable>, --image-name=<replaceable>IMAGE_NAME</replaceable>
-                               The name of the image from which to use the artifacts
-                               (e.g. <filename>core-image-sato</filename>).
+                <section id='operational-modes'>
+                    <title>Operational Modes</title>
 
-             -r <replaceable>ROOTFS_DIR</replaceable>, --rootfs-dir=<replaceable>ROOTFS_DIR</replaceable>
-                               The path to the <filename>/rootfs</filename> directory to use as the
-                               <filename>.wks</filename> rootfs source.
+                    <para>
+                        You can use <filename>wic</filename> in two different
+                        modes, depending on how much control you need for
+                        specifying the Openembedded build artifacts that are
+                        used for creating the image: Raw and Cooked:
+                        <itemizedlist>
+                            <listitem><para><emphasis>Raw Mode:</emphasis>
+                                You explicitly specify build artifacts through
+                                command-line arguments.</para></listitem>
+                            <listitem><para><emphasis>Cooked Mode:</emphasis>
+                                The current
+                                <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
+                                setting and image name are used to automatically locate
+                                and provide the build artifacts.</para></listitem>
+                        </itemizedlist>
+                    </para>
 
-             -b <replaceable>BOOTIMG_DIR</replaceable>, --bootimg-dir=<replaceable>BOOTIMG_DIR</replaceable>
-                               The path to the directory containing the boot artifacts
-                               (e.g. <filename>/EFI</filename> or <filename>/syslinux</filename>) to use as the <filename>.wks</filename> bootimg
-                               source.
+                    <para>
+                        Regardless of the mode you use, you need to have the build
+                        artifacts ready and available.
+                        Additionally, the environment must be set up using the
+                        <ulink url='&YOCTO_DOCS_REF_URL;#structure-core-script'><filename>&OE_INIT_FILE;</filename></ulink>
+                        or
+                        <ulink url='&YOCTO_DOCS_REF_URL;#structure-memres-core-script'><filename>oe-init-build-env-memres</filename></ulink>
+                        script found in the
+                        <link linkend='build-directory'>Build Directory</link>.
+                    </para>
 
-             -k <replaceable>KERNEL_DIR</replaceable>, --kernel-dir=<replaceable>KERNEL_DIR</replaceable>
-                               The path to the directory containing the kernel to use
-                               in the <filename>.wks</filename> boot image.
+                    <section id='raw-mode'>
+                        <title>Raw Mode</title>
 
-             -n <replaceable>NATIVE_SYSROOT</replaceable>, --native-sysroot=<replaceable>NATIVE_SYSROOT</replaceable>
-                               The path to the native sysroot containing the tools to use
-                               to build the image.
+                        <para>
+                            The general form of the 'wic' command in raw mode is:
+                            <literallayout class='monospaced'>
+             $ wic create <replaceable>image_name</replaceable>.wks [<replaceable>options</replaceable>] [...]
 
-             -s, --skip-build-check
-                               Skips the build check.
+                 Where:
 
-             -D, --debug
-                               Output debug information.
-                    </literallayout>
-                    <note>
-                        You do not need root privileges to run
-                        <filename>wic</filename>.
-                        In fact, you should not run as root when using the
-                        utility.
-                    </note>
-                </para>
-            </section>
+                     <replaceable>image_name</replaceable>.wks
+                                       An OpenEmbedded kickstart file.  You can provide
+                                       your own custom file or use a file from a set of
+                                       existing files as described by further options.
 
-            <section id='cooked-mode'>
-                <title>Cooked Mode</title>
+                     -o <replaceable>OUTDIR</replaceable>, --outdir=<replaceable>OUTDIR</replaceable>
+                                       The name of a directory in which to create image.
 
-                <para>
-                    The general form of the <filename>wic</filename> command
-                    using Cooked Mode is:
-                    <literallayout class='monospaced'>
-     $ wic create <replaceable>kickstart_file</replaceable> -e <replaceable>image_name</replaceable>
+                     -i <replaceable>PROPERTIES_FILE</replaceable>, --infile=<replaceable>PROPERTIES_FILE</replaceable>
+                                       The name of a file containing the values for image
+                                       properties as a JSON file.
 
-         Where:
+                     -e <replaceable>IMAGE_NAME</replaceable>, --image-name=<replaceable>IMAGE_NAME</replaceable>
+                                       The name of the image from which to use the artifacts
+                                       (e.g. <filename>core-image-sato</filename>).
 
-             <replaceable>kickstart_file</replaceable>
-                               An OpenEmbedded kickstart file. You can provide your own
-                               custom file or supplied file.
+                     -r <replaceable>ROOTFS_DIR</replaceable>, --rootfs-dir=<replaceable>ROOTFS_DIR</replaceable>
+                                       The path to the <filename>/rootfs</filename> directory to use as the
+                                       <filename>.wks</filename> rootfs source.
 
-             <replaceable>image_name</replaceable>
-                               Specifies the image built using the OpenEmbedded build
-                               system.
-                    </literallayout>
-                    This form is the simplest and most user-friendly, as it
-                    does not require specifying all individual parameters.
-                    All you need to provide is your own
-                    <filename>.wks</filename> file or one provided with the
-                    release.
-                </para>
-            </section>
-        </section>
+                     -b <replaceable>BOOTIMG_DIR</replaceable>, --bootimg-dir=<replaceable>BOOTIMG_DIR</replaceable>
+                                       The path to the directory containing the boot artifacts
+                                       (e.g. <filename>/EFI</filename> or <filename>/syslinux</filename>) to use as the <filename>.wks</filename> bootimg
+                                       source.
 
-        <section id='using-a-provided-kickstart_file'>
-            <title>Using an Existing Kickstart File</title>
+                     -k <replaceable>KERNEL_DIR</replaceable>, --kernel-dir=<replaceable>KERNEL_DIR</replaceable>
+                                       The path to the directory containing the kernel to use
+                                       in the <filename>.wks</filename> boot image.
 
-            <para>
-                If you do not want to create your own
-                <filename>.wks</filename> file, you can use an existing
-                file provided by the <filename>wic</filename> installation.
-                Use the following command to list the available files:
-                <literallayout class='monospaced'>
-     $ wic list images
-     directdisk Create a 'pcbios' direct disk image
-     mkefidisk Create an EFI disk image
-                 </literallayout>
-                 When you use an existing file, you do not have to use the
-                 <filename>.wks</filename> extension.
-                 Here is an example in Raw Mode that uses the
-                 <filename>directdisk</filename> file:
-                 <literallayout class='monospaced'>
-     $ wic create directdisk -r <replaceable>rootfs_dir</replaceable> -b <replaceable>bootimg_dir</replaceable> \
-           -k <replaceable>kernel_dir</replaceable> -n <replaceable>native_sysroot</replaceable>
-                </literallayout>
-            </para>
+                     -n <replaceable>NATIVE_SYSROOT</replaceable>, --native-sysroot=<replaceable>NATIVE_SYSROOT</replaceable>
+                                       The path to the native sysroot containing the tools to use
+                                       to build the image.
 
-            <para>
-                Here are the actual partition language commands
-                used in the <filename>mkefidisk.wks</filename> file to generate
-                an image:
-                <literallayout class='monospaced'>
-     # short-description: Create an EFI disk image
-     # long-description: Creates a partitioned EFI disk image that the user
-     # can directly dd to boot media.
+                     -s, --skip-build-check
+                                       Skips the build check.
 
-     part /boot --source bootimg-efi --ondisk sda --label msdos --active --align 1024
+                     -D, --debug
+                                       Output debug information.
+                            </literallayout>
+                            <note>
+                                You do not need root privileges to run
+                                <filename>wic</filename>.
+                                In fact, you should not run as root when using the
+                                utility.
+                            </note>
+                        </para>
+                    </section>
 
-     part / --source rootfs --ondisk sda --fstype=ext3 --label platform --align 1024
+                    <section id='cooked-mode'>
+                        <title>Cooked Mode</title>
 
-     part swap --ondisk sda --size 44 --label swap1 --fstype=swap
+                        <para>
+                            The general form of the <filename>wic</filename> command
+                            using Cooked Mode is:
+                            <literallayout class='monospaced'>
+             $ wic create <replaceable>kickstart_file</replaceable> -e <replaceable>image_name</replaceable>
 
-     bootloader  --timeout=10  --append="rootwait rootfstype=ext3 console=ttyPCH0,115200 console=tty0 vmalloc=256MB snd-hda-intel.enable_msi=0"
-                </literallayout>
-            </para>
-        </section>
+                 Where:
 
-        <section id='wic-usage-examples'>
-            <title>Examples</title>
+                     <replaceable>kickstart_file</replaceable>
+                                       An OpenEmbedded kickstart file. You can provide your own
+                                       custom file or supplied file.
 
-            <para>
-                This section provides several examples that show how to use
-                the <filename>wic</filename> utility.
-                All the examples assume the list of requirements in the
-                "<link linkend='wic-requirements'>Requirements</link>" section
-                have been met.
-                The examples assume the previously generated image is
-                <filename>core-image-minimal</filename>.
-            </para>
+                     <replaceable>image_name</replaceable>
+                                       Specifies the image built using the OpenEmbedded build
+                                       system.
+                            </literallayout>
+                            This form is the simplest and most user-friendly, as it
+                            does not require specifying all individual parameters.
+                            All you need to provide is your own
+                            <filename>.wks</filename> file or one provided with the
+                            release.
+                        </para>
+                    </section>
+                </section>
 
-            <section id='generate-an-image-using-a-provided-kickstart-file'>
-                <title>Generate an Image using an Existing Kickstart File</title>
+                <section id='using-a-provided-kickstart_file'>
+                    <title>Using an Existing Kickstart File</title>
 
-                <para>
-                    This example runs in Cooked Mode and uses the
-                    <filename>mkefidisk</filename> kickstart file:
-                    <literallayout class='monospaced'>
-     $ wic create mkefidisk -e core-image-minimal
-     Checking basic build environment...
-     Done.
+                    <para>
+                        If you do not want to create your own
+                        <filename>.wks</filename> file, you can use an existing
+                        file provided by the <filename>wic</filename> installation.
+                        Use the following command to list the available files:
+                        <literallayout class='monospaced'>
+             $ wic list images
+             directdisk Create a 'pcbios' direct disk image
+             mkefidisk Create an EFI disk image
+                         </literallayout>
+                         When you use an existing file, you do not have to use the
+                         <filename>.wks</filename> extension.
+                         Here is an example in Raw Mode that uses the
+                         <filename>directdisk</filename> file:
+                         <literallayout class='monospaced'>
+             $ wic create directdisk -r <replaceable>rootfs_dir</replaceable> -b <replaceable>bootimg_dir</replaceable> \
+                   -k <replaceable>kernel_dir</replaceable> -n <replaceable>native_sysroot</replaceable>
+                        </literallayout>
+                    </para>
 
-     Creating image(s)...
+                    <para>
+                        Here are the actual partition language commands
+                        used in the <filename>mkefidisk.wks</filename> file to generate
+                        an image:
+                        <literallayout class='monospaced'>
+             # short-description: Create an EFI disk image
+             # long-description: Creates a partitioned EFI disk image that the user
+             # can directly dd to boot media.
 
-     Info: The new image(s) can be found here:
-      /var/tmp/wic/build/mkefidisk-201310230946-sda.direct
+             part /boot --source bootimg-efi --ondisk sda --label msdos --active --align 1024
 
-     The following build artifacts were used to create the image(s):
-      ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/minnow-poky-linux/core-image-minimal/1.0-r0/rootfs
-      BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/work/minnow-poky-linux/core-image-minimal/1.0-r0/core-image-minimal-1.0/hddimg
-      KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/minnow/usr/src/kernel
-      NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/x86_64-linux
+             part / --source rootfs --ondisk sda --fstype=ext3 --label platform --align 1024
 
+             part swap --ondisk sda --size 44 --label swap1 --fstype=swap
 
-     The image(s) were created using OE kickstart file:
-      /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/mkefidisk.wks
-                    </literallayout>
-                    This example shows the easiest way to create an image
-                    by running in Cooked Mode and using the
-                    <filename>-e</filename> option with an existing kickstart
-                    file.
-                    All that is necessary is to specify the image used to
-                    generate the artifacts.
-                    Your <filename>local.conf</filename> needs to have the
-                    <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
-                    variable set to the machine you are using, which is
-                    "minnow" in this example.
-                </para>
+             bootloader  --timeout=10  --append="rootwait rootfstype=ext3 console=ttyPCH0,115200 console=tty0 vmalloc=256MB snd-hda-intel.enable_msi=0"
+                        </literallayout>
+                    </para>
+                </section>
 
-                <para>
-                    The output specifies the exact image created as well as
-                    where it was created.
-                    The output also names the artifacts used and the exact
-                    <filename>.wks</filename> script that was used to generate
-                    the image.
-                    <note>
-                        You should always verify the details provided in the
-                        output to make sure that the image was indeed created
-                        exactly as expected.
-                    </note>
-                </para>
+                <section id='wic-usage-examples'>
+                    <title>Examples</title>
 
-                <para>
-                    Continuing with the example, you can now directly
-                    <filename>dd</filename> the image to a USB stick, or
-                    whatever media for which you built your image,
-                    and boot the resulting media:
-                    <literallayout class='monospaced'>
-     $ sudo dd if=/var/tmp/wic/build/mkefidisk-201310230946-sda.direct of=/dev/sdb
-     [sudo] password for trz:
-     182274+0 records in
-     182274+0 records out
-     93324288 bytes (93 MB) copied, 14.4777 s, 6.4 MB/s
-     [trz@empanada ~]$ sudo eject /dev/sdb
-                    </literallayout>
-                </para>
-            </section>
+                    <para>
+                        This section provides several examples that show how to use
+                        the <filename>wic</filename> utility.
+                        All the examples assume the list of requirements in the
+                        "<link linkend='wic-requirements'>Requirements</link>" section
+                        have been met.
+                        The examples assume the previously generated image is
+                        <filename>core-image-minimal</filename>.
+                    </para>
 
-            <section id='using-a-modified-kickstart-file'>
-                <title>Using a Modified Kickstart File</title>
+                    <section id='generate-an-image-using-a-provided-kickstart-file'>
+                        <title>Generate an Image using an Existing Kickstart File</title>
 
-                <para>
-                    Because <filename>wic</filename> image creation is driven
-                    by the kickstart file, it is easy to affect image creation
-                    by changing the parameters in the file.
-                    This next example demonstrates that through modification
-                    of the <filename>directdisk</filename> kickstart file.
-                </para>
+                        <para>
+                            This example runs in Cooked Mode and uses the
+                            <filename>mkefidisk</filename> kickstart file:
+                            <literallayout class='monospaced'>
+             $ wic create mkefidisk -e core-image-minimal
+             Checking basic build environment...
+             Done.
 
-                <para>
-                    As mentioned earlier, you can use the command
-                    <filename>wic list images</filename> to show the list
-                    of existing kickstart files.
-                    The directory in which these files reside is
-                    <filename>scripts/lib/image/canned-wks/</filename>
-                    located in the
-                    <link linkend='source-directory'>Source Directory</link>.
-                    Because the available files reside in this directory, you
-                    can create and add your own custom files to the directory.
-                    Subsequent use of the <filename>wic list images</filename>
-                    command would then include your kickstart files.
-                </para>
+             Creating image(s)...
 
-                <para>
-                    In this example, the existing
-                    <filename>directdisk</filename> file already does most
-                    of what is needed.
-                    However, for the hardware in this example, the image will
-                    need to boot from <filename>sdb</filename> instead of
-                    <filename>sda</filename>, which is what the
-                    <filename>directdisk</filename> kickstart file uses.
-                </para>
+             Info: The new image(s) can be found here:
+              /var/tmp/wic/build/mkefidisk-201310230946-sda.direct
 
-                <para>
-                    The example begins by making a copy of the
-                    <filename>directdisk.wks</filename> file in the
-                    <filename>scripts/lib/image/canned-wks</filename>
-                    directory and then changing the lines that specify the
-                    target disk from which to boot.
-                    <literallayout class='monospaced'>
-     $ cp /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisk.wks \
-          /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisksdb.wks
-                    </literallayout>
-                    Next, the example modifies the
-                    <filename>directdisksdb.wks</filename> file and changes all
-                    instances of "<filename>--ondisk sda</filename>"
-                    to "<filename>--ondisk sdb</filename>".
-                    The example changes the following two lines and leaves the
-                    remaining lines untouched:
-                    <literallayout class='monospaced'>
-     part /boot --source bootimg-pcbios --ondisk sdb --label boot --active --align 1024
-     part / --source rootfs --ondisk sdb --fstype=ext3 --label platform --align 1024
-                    </literallayout>
-                    Once the lines are changed, the example generates the
-                    <filename>directdisksdb</filename> image.
-                    The command points the process at the
-                    <filename>core-image-minimal</filename> artifacts for the
-                    Next Unit of Computing (nuc)
-                    <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
-                    the <filename>local.conf</filename>.
-                    <literallayout class='monospaced'>
-     $ wic create directdisksdb -e core-image-minimal
-     Checking basic build environment...
-     Done.
+             The following build artifacts were used to create the image(s):
+              ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/minnow-poky-linux/core-image-minimal/1.0-r0/rootfs
+              BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/work/minnow-poky-linux/core-image-minimal/1.0-r0/core-image-minimal-1.0/hddimg
+              KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/minnow/usr/src/kernel
+              NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/x86_64-linux
 
-     Creating image(s)...
 
-     Info: The new image(s) can be found here:
-      /var/tmp/wic/build/directdisksdb-201310231131-sdb.direct
+             The image(s) were created using OE kickstart file:
+              /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/mkefidisk.wks
+                            </literallayout>
+                            This example shows the easiest way to create an image
+                            by running in Cooked Mode and using the
+                            <filename>-e</filename> option with an existing kickstart
+                            file.
+                            All that is necessary is to specify the image used to
+                            generate the artifacts.
+                            Your <filename>local.conf</filename> needs to have the
+                            <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
+                            variable set to the machine you are using, which is
+                            "minnow" in this example.
+                        </para>
 
-     The following build artifacts were used to create the image(s):
-      ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/nuc-poky-linux/core-image-minimal/1.0-r0/rootfs
-      BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/nuc/usr/share
-      KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/nuc/usr/src/kernel
-      NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/x86_64-linux
+                        <para>
+                            The output specifies the exact image created as well as
+                            where it was created.
+                            The output also names the artifacts used and the exact
+                            <filename>.wks</filename> script that was used to generate
+                            the image.
+                            <note>
+                                You should always verify the details provided in the
+                                output to make sure that the image was indeed created
+                                exactly as expected.
+                            </note>
+                        </para>
 
+                        <para>
+                            Continuing with the example, you can now directly
+                            <filename>dd</filename> the image to a USB stick, or
+                            whatever media for which you built your image,
+                            and boot the resulting media:
+                            <literallayout class='monospaced'>
+             $ sudo dd if=/var/tmp/wic/build/mkefidisk-201310230946-sda.direct of=/dev/sdb
+             [sudo] password for trz:
+             182274+0 records in
+             182274+0 records out
+             93324288 bytes (93 MB) copied, 14.4777 s, 6.4 MB/s
+             [trz@empanada ~]$ sudo eject /dev/sdb
+                            </literallayout>
+                        </para>
+                    </section>
 
-     The image(s) were created using OE kickstart file:
-      /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisksdb.wks
-                    </literallayout>
-                    Continuing with the example, you can now directly
-                    <filename>dd</filename> the image to a USB stick, or
-                    whatever media for which you built your image,
-                    and boot the resulting media:
-                    <literallayout class='monospaced'>
-     $ sudo dd if=/var/tmp/wic/build/directdisksdb-201310231131-sdb.direct of=/dev/sdb
-     86018+0 records in
-     86018+0 records out
-     44041216 bytes (44 MB) copied, 13.0734 s, 3.4 MB/s
-     [trz@empanada tmp]$ sudo eject /dev/sdb
-                    </literallayout>
-                </para>
-            </section>
+                    <section id='using-a-modified-kickstart-file'>
+                        <title>Using a Modified Kickstart File</title>
 
-            <section id='creating-an-image-based-on-core-image-minimal-and-crownbay-noemgd'>
-                <title>Creating an Image Based on <filename>core-image-minimal</filename> and <filename>crownbay-noemgd</filename></title>
+                        <para>
+                            Because <filename>wic</filename> image creation is driven
+                            by the kickstart file, it is easy to affect image creation
+                            by changing the parameters in the file.
+                            This next example demonstrates that through modification
+                            of the <filename>directdisk</filename> kickstart file.
+                        </para>
 
-                <para>
-                    This example creates an image based on
-                    <filename>core-image-minimal</filename> and a
-                    <filename>crownbay-noemgd</filename>
-                    <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
-                    that works right out of the box.
-                    <literallayout class='monospaced'>
-     $ wic create directdisk -e core-image-minimal
+                        <para>
+                            As mentioned earlier, you can use the command
+                            <filename>wic list images</filename> to show the list
+                            of existing kickstart files.
+                            The directory in which these files reside is
+                            <filename>scripts/lib/image/canned-wks/</filename>
+                            located in the
+                            <link linkend='source-directory'>Source Directory</link>.
+                            Because the available files reside in this directory, you
+                            can create and add your own custom files to the directory.
+                            Subsequent use of the <filename>wic list images</filename>
+                            command would then include your kickstart files.
+                        </para>
 
-     Checking basic build environment...
-     Done.
+                        <para>
+                            In this example, the existing
+                            <filename>directdisk</filename> file already does most
+                            of what is needed.
+                            However, for the hardware in this example, the image will
+                            need to boot from <filename>sdb</filename> instead of
+                            <filename>sda</filename>, which is what the
+                            <filename>directdisk</filename> kickstart file uses.
+                        </para>
 
-     Creating image(s)...
+                        <para>
+                            The example begins by making a copy of the
+                            <filename>directdisk.wks</filename> file in the
+                            <filename>scripts/lib/image/canned-wks</filename>
+                            directory and then changing the lines that specify the
+                            target disk from which to boot.
+                            <literallayout class='monospaced'>
+             $ cp /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisk.wks \
+                  /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisksdb.wks
+                            </literallayout>
+                            Next, the example modifies the
+                            <filename>directdisksdb.wks</filename> file and changes all
+                            instances of "<filename>--ondisk sda</filename>"
+                            to "<filename>--ondisk sdb</filename>".
+                            The example changes the following two lines and leaves the
+                            remaining lines untouched:
+                            <literallayout class='monospaced'>
+             part /boot --source bootimg-pcbios --ondisk sdb --label boot --active --align 1024
+             part / --source rootfs --ondisk sdb --fstype=ext3 --label platform --align 1024
+                            </literallayout>
+                            Once the lines are changed, the example generates the
+                            <filename>directdisksdb</filename> image.
+                            The command points the process at the
+                            <filename>core-image-minimal</filename> artifacts for the
+                            Next Unit of Computing (nuc)
+                            <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
+                            the <filename>local.conf</filename>.
+                            <literallayout class='monospaced'>
+             $ wic create directdisksdb -e core-image-minimal
+             Checking basic build environment...
+             Done.
 
-     Info: The new image(s) can be found here:
-      /var/tmp/wic/build/directdisk-201309252350-sda.direct
+             Creating image(s)...
 
-     The following build artifacts were used to create the image(s):
+             Info: The new image(s) can be found here:
+              /var/tmp/wic/build/directdisksdb-201310231131-sdb.direct
 
-     ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/crownbay_noemgd-poky-linux/core-image-minimal/1.0-r0/rootfs
-     BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/share
-     KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
-     NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
+             The following build artifacts were used to create the image(s):
+              ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/nuc-poky-linux/core-image-minimal/1.0-r0/rootfs
+              BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/nuc/usr/share
+              KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/nuc/usr/src/kernel
+              NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/x86_64-linux
 
-     The image(s) were created using OE kickstart file:
-      /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisk.wks
-                    </literallayout>
-                </para>
-            </section>
 
-            <section id='using-a-modified-kickstart-file-and-running-in-raw-mode'>
-                <title>Using a Modified Kickstart File and Running in Raw Mode</title>
+             The image(s) were created using OE kickstart file:
+              /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisksdb.wks
+                            </literallayout>
+                            Continuing with the example, you can now directly
+                            <filename>dd</filename> the image to a USB stick, or
+                            whatever media for which you built your image,
+                            and boot the resulting media:
+                            <literallayout class='monospaced'>
+             $ sudo dd if=/var/tmp/wic/build/directdisksdb-201310231131-sdb.direct of=/dev/sdb
+             86018+0 records in
+             86018+0 records out
+             44041216 bytes (44 MB) copied, 13.0734 s, 3.4 MB/s
+             [trz@empanada tmp]$ sudo eject /dev/sdb
+                            </literallayout>
+                        </para>
+                    </section>
 
-                <para>
-                    This next example manually specifies each build artifact
-                    (runs in Raw Mode) and uses a modified kickstart file.
-                    The example also uses the <filename>-o</filename> option
-                    to cause <filename>wic</filename> to create the output
-                    somewhere other than the default
-                    <filename>/var/tmp/wic</filename> directory:
-                    <literallayout class='monospaced'>
-     $ wic create ~/test.wks -o /home/trz/testwic --rootfs-dir \
-          /home/trz/yocto/yocto-image/build/tmp/work/crownbay_noemgd-poky-linux/core-image-minimal/1.0-r0/rootfs \
-          --bootimg-dir /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/share \
-          --kernel-dir /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel \
-          --native-sysroot /home/trz/yocto/yocto-image/build/tmp/sysroots/x86_64-linux
+                    <section id='creating-an-image-based-on-core-image-minimal-and-crownbay-noemgd'>
+                        <title>Creating an Image Based on <filename>core-image-minimal</filename> and <filename>crownbay-noemgd</filename></title>
 
-     Creating image(s)...
+                        <para>
+                            This example creates an image based on
+                            <filename>core-image-minimal</filename> and a
+                            <filename>crownbay-noemgd</filename>
+                            <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
+                            that works right out of the box.
+                            <literallayout class='monospaced'>
+             $ wic create directdisk -e core-image-minimal
 
-     Info: The new image(s) can be found here:
-      /home/trz/testwic/build/test-201309260032-sda.direct
+             Checking basic build environment...
+             Done.
 
-     The following build artifacts were used to create the image(s):
+             Creating image(s)...
 
-     ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/crownbay_noemgd-poky-linux/core-image-minimal/1.0-r0/rootfs
-     BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/share
-     KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
-     NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
+             Info: The new image(s) can be found here:
+              /var/tmp/wic/build/directdisk-201309252350-sda.direct
 
-     The image(s) were created using OE kickstart file:
-      /home/trz/test.wks
-                    </literallayout>
-                    For this example,
-                    <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
-                    did not have to be specified in the
-                    <filename>local.conf</filename> file since the artifact is
-                    manually specified.
-                </para>
-            </section>
-        </section>
+             The following build artifacts were used to create the image(s):
 
-        <section id='openembedded-kickstart-plugins'>
-            <title>Plug-ins</title>
+             ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/crownbay_noemgd-poky-linux/core-image-minimal/1.0-r0/rootfs
+             BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/share
+             KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
+             NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
 
-            <para>
-	            Plug-ins allow <filename>wic</filename> functionality to
-	            be extended and specialized by users.
-                This section documents the plugin interface, which is
-                currently restricted to source plug ins.
-            </para>
+             The image(s) were created using OE kickstart file:
+              /home/trz/yocto/yocto-image/scripts/lib/image/canned-wks/directdisk.wks
+                            </literallayout>
+                        </para>
+                    </section>
 
-            <para>
-	            Source plug ins provide a mechanism to customize
-	            various aspects of the image generation process in
-	            <filename>wic</filename>, mainly the contents of
-	            partitions.
-	            The plug ins provide a mechanism for mapping values
-	            specified in <filename>.wks</filename> files using the
-	            <filename>--source</filename> keyword to a
-                particular plugin implementation that populates a
-                corresponding partition.
-            </para>
+                    <section id='using-a-modified-kickstart-file-and-running-in-raw-mode'>
+                        <title>Using a Modified Kickstart File and Running in Raw Mode</title>
 
-            <para>
-	            A source plugin is created as a subclass of
-	            <filename>SourcePlugin</filename>.
-                The plugin file containing it is added to
-	            <filename>scripts/lib/wic/plugins/source/</filename> to
-	            make the plugin implementation available to the
-	            <filename>wic</filename> implementation.
-                For more information, see
-	            <filename>scripts/lib/wic/pluginbase.py</filename>.
-            </para>
+                        <para>
+                            This next example manually specifies each build artifact
+                            (runs in Raw Mode) and uses a modified kickstart file.
+                            The example also uses the <filename>-o</filename> option
+                            to cause <filename>wic</filename> to create the output
+                            somewhere other than the default
+                            <filename>/var/tmp/wic</filename> directory:
+                            <literallayout class='monospaced'>
+             $ wic create ~/test.wks -o /home/trz/testwic --rootfs-dir \
+                  /home/trz/yocto/yocto-image/build/tmp/work/crownbay_noemgd-poky-linux/core-image-minimal/1.0-r0/rootfs \
+                  --bootimg-dir /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/share \
+                  --kernel-dir /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel \
+                  --native-sysroot /home/trz/yocto/yocto-image/build/tmp/sysroots/x86_64-linux
 
-            <para>
-	            Source plugins can also be implemented and added by
-	            external layers.
-                As such, any plugins found in a
-	            <filename>scripts/lib/wic/plugins/source/</filename>
-	            directory in an external layer are also made
-	            available.
-            </para>
+             Creating image(s)...
 
-            <para>
-	            When the <filename>wic</filename> implementation needs
-	            to invoke a partition-specific implementation, it looks
-	            for the plugin that has the same name as the
-	            <filename>--source</filename> parameter given to
-                that partition.
-                For example, if the partition is set up as follows:
-                <literallayout class='monospaced'>
-     part /boot --source bootimg-pcbios   ...
-                </literallayout>
-	            The methods defined as class members of the plugin
-	            having the matching <filename>bootimg-pcbios.name</filename>
-                class member are used.
-            </para>
+             Info: The new image(s) can be found here:
+              /home/trz/testwic/build/test-201309260032-sda.direct
 
-            <para>
-	            To be more concrete, here is the plugin definition that
-	            matches a
-                <filename>--source bootimg-pcbios</filename> usage,
-                along with an example
-	            method called by the <filename>wic</filename> implementation
-                when it needs to invoke an implementation-specific
-	            partition-preparation function:
-                <literallayout class='monospaced'>
-    class BootimgPcbiosPlugin(SourcePlugin):
-        name = 'bootimg-pcbios'
+             The following build artifacts were used to create the image(s):
 
-    @classmethod
-        def do_prepare_partition(self, part, ...)
-                </literallayout>
-	            If the subclass itself does not implement a function, a
-	            default version in a superclass is located and
-	            used, which is why all plugins must be derived from
-	            <filename>SourcePlugin</filename>.
-            </para>
+             ROOTFS_DIR: /home/trz/yocto/yocto-image/build/tmp/work/crownbay_noemgd-poky-linux/core-image-minimal/1.0-r0/rootfs
+             BOOTIMG_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/share
+             KERNEL_DIR: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
+             NATIVE_SYSROOT: /home/trz/yocto/yocto-image/build/tmp/sysroots/crownbay-noemgd/usr/src/kernel
 
-            <para>
-	            The <filename>SourcePlugin</filename> class defines the
-	            following methods, which is the current set of methods
-	            that can be implemented or overridden by
-	            <filename>--source</filename> plugins.
-                Any methods not implemented by a
-                <filename>SourcePlugin</filename> subclass inherit the
-                implementations present in the
-	            <filename>SourcePlugin</filename> class.
-                For more information, see the
-	            <filename>SourcePlugin</filename> source for details:
-            </para>
+             The image(s) were created using OE kickstart file:
+              /home/trz/test.wks
+                            </literallayout>
+                            For this example,
+                            <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
+                            did not have to be specified in the
+                            <filename>local.conf</filename> file since the artifact is
+                            manually specified.
+                        </para>
+                    </section>
+                </section>
 
-            <para>
-                <itemizedlist>
-                    <listitem><para><emphasis><filename>do_prepare_partition()</filename>:</emphasis>
-                        Called to do the actual content population for a
-                        partition.
-                        In other words, the method prepares the final
-                        partition image that is incorporated into the
-                        disk image.
-                        </para></listitem>
-                    <listitem><para><emphasis><filename>do_configure_partition()</filename>:</emphasis>
-                        Called before
-                        <filename>do_prepare_partition()</filename>.
-                        This method is typically used to create custom
-                        configuration files for a partition (e.g. syslinux or
-                        grub configuration files).
-                        </para></listitem>
-                    <listitem><para><emphasis><filename>do_install_disk()</filename>:</emphasis>
-                        Called after all partitions have been prepared and
-                        assembled into a disk image.
-                        This method provides a hook to allow finalization of a
-                        disk image, (e.g. writing an MBR).
-                        </para></listitem>
-                    <listitem><para><emphasis><filename>do_stage_partition()</filename>:</emphasis>
-                        Special content-staging hook called before
-                        <filename>do_prepare_partition()</filename>.
-                        This method is normally empty.</para>
-                        <para>Typically, a partition just uses the passed-in
-                        parameters (e.g. the unmodified value of
-		                <filename>bootimg_dir</filename>).
-                        However, in some cases things might need to be
-                        more tailored.
-                        As an example, certain files might additionally
-                        need to be taken from
-                        <filename>bootimg_dir + /boot</filename>.
-		                This hook allows those files to be staged in a
-		                customized fashion.
-                        <note>
-                            <filename>get_bitbake_var()</filename>
-                            allows you to access non-standard variables
-                            that you might want to use for this.
-                        </note>
-                        </para></listitem>
-                </itemizedlist>
-            </para>
+                <section id='openembedded-kickstart-plugins'>
+                    <title>Plug-ins</title>
 
-            <para>
-                This scheme is extensible.
-                Adding more hooks is a simple matter of adding more
-                plugin methods to <filename>SourcePlugin</filename> and
-                derived classes.
-                The code that then needs to call the plugin methods uses
-                <filename>plugin.get_source_plugin_methods()</filename>
-                to find the method or methods needed by the call.
-                Retrieval of those methods is accomplished
-                by filling up a dict with keys
-                containing the method names of interest.
-                On success, these will be filled in with the actual
-                methods.
-                Please see the <filename>wic</filename>
-                implementation for examples and details.
-            </para>
-        </section>
+                    <para>
+                        Plug-ins allow <filename>wic</filename> functionality to
+                        be extended and specialized by users.
+                        This section documents the plugin interface, which is
+                        currently restricted to source plug ins.
+                    </para>
 
-        <section id='openembedded-kickstart-wks-reference'>
-            <title>OpenEmbedded Kickstart (.wks) Reference</title>
+                    <para>
+                        Source plug ins provide a mechanism to customize
+                        various aspects of the image generation process in
+                        <filename>wic</filename>, mainly the contents of
+                        partitions.
+                        The plug ins provide a mechanism for mapping values
+                        specified in <filename>.wks</filename> files using the
+                        <filename>--source</filename> keyword to a
+                        particular plugin implementation that populates a
+                        corresponding partition.
+                    </para>
 
-            <para>
-                The current <filename>wic</filename> implementation supports
-                only the basic kickstart partitioning commands:
-                <filename>partition</filename> (or <filename>part</filename>
-                for short) and <filename>bootloader</filename>.
-                <note>
-                    Future updates will implement more commands and options.
-                    If you use anything that is not specifically
-                    supported, results can be unpredictable.
-                </note>
-            </para>
+                    <para>
+                        A source plugin is created as a subclass of
+                        <filename>SourcePlugin</filename>.
+                        The plugin file containing it is added to
+                        <filename>scripts/lib/wic/plugins/source/</filename> to
+                        make the plugin implementation available to the
+                        <filename>wic</filename> implementation.
+                        For more information, see
+                        <filename>scripts/lib/wic/pluginbase.py</filename>.
+                    </para>
 
-            <para>
-                The following is a list of the commands, their syntax,
-                and meanings.
-                The commands are based on the Fedora
-                kickstart versions but with modifications to
-                reflect <filename>wic</filename> capabilities.
-                You can see the original documentation for those commands
-                at the following links:
-                <itemizedlist>
-                    <listitem><para>
-                        <ulink url='http://fedoraproject.org/wiki/Anaconda/Kickstart#part_or_partition'>http://fedoraproject.org/wiki/Anaconda/Kickstart#part_or_partition</ulink>
-			            </para></listitem>
-                    <listitem><para>
-                        <ulink url='http://fedoraproject.org/wiki/Anaconda/Kickstart#bootloader'>http://fedoraproject.org/wiki/Anaconda/Kickstart#bootloader</ulink>
-			            </para></listitem>
-                </itemizedlist>
-            </para>
+                    <para>
+                        Source plugins can also be implemented and added by
+                        external layers.
+                        As such, any plugins found in a
+                        <filename>scripts/lib/wic/plugins/source/</filename>
+                        directory in an external layer are also made
+                        available.
+                    </para>
 
-            <section id='command-part-or-partition'>
-                <title>Command: part or partition</title>
+                    <para>
+                        When the <filename>wic</filename> implementation needs
+                        to invoke a partition-specific implementation, it looks
+                        for the plugin that has the same name as the
+                        <filename>--source</filename> parameter given to
+                        that partition.
+                        For example, if the partition is set up as follows:
+                        <literallayout class='monospaced'>
+             part /boot --source bootimg-pcbios   ...
+                        </literallayout>
+                        The methods defined as class members of the plugin
+                        having the matching <filename>bootimg-pcbios.name</filename>
+                        class member are used.
+                    </para>
 
-                <para>
-                Either of these commands create a partition on the system
-                and uses the following syntax:
-                    <literallayout class='monospaced'>
-     part [<replaceable>mntpoint</replaceable>]
-     partition [<replaceable>mntpoint</replaceable>]
-                    </literallayout>
-                    If you do not provide
-                    <replaceable>mntpoint</replaceable>, wic creates a partition
-                    but does not mount it.
-                </para>
+                    <para>
+                        To be more concrete, here is the plugin definition that
+                        matches a
+                        <filename>--source bootimg-pcbios</filename> usage,
+                        along with an example
+                        method called by the <filename>wic</filename> implementation
+                        when it needs to invoke an implementation-specific
+                        partition-preparation function:
+                        <literallayout class='monospaced'>
+            class BootimgPcbiosPlugin(SourcePlugin):
+                name = 'bootimg-pcbios'
 
-                <para>
-                    The <filename><replaceable>mntpoint</replaceable></filename>
-                    is where the
-                    partition will be mounted and must be of one of the
-                    following forms:
-                    <itemizedlist>
-                        <listitem><para><filename>/<replaceable>path</replaceable></filename>:
-                            For example, <filename>/</filename>,
-                            <filename>/usr</filename>, or
-                            <filename>/home</filename></para></listitem>
-                        <listitem><para><filename>swap</filename>:
-                            The created partition is used as swap space.
-                            </para></listitem>
-                    </itemizedlist>
-                </para>
+            @classmethod
+                def do_prepare_partition(self, part, ...)
+                        </literallayout>
+                        If the subclass itself does not implement a function, a
+                        default version in a superclass is located and
+                        used, which is why all plugins must be derived from
+                        <filename>SourcePlugin</filename>.
+                    </para>
 
-                <para>
-                    Specifying a <replaceable>mntpoint</replaceable> causes
-                    the partition to automatically be mounted.
-                    Wic achieves this by adding entries to the filesystem
-                    table (fstab) during image generation.
-                    In order for wic to generate a valid fstab, you must
-                    also provide one of the <filename>--ondrive</filename>,
-                    <filename>--ondisk</filename>, or
-                    <filename>--use-uuid</filename> partition options as part
-                    of the command.
-                    Here is an example using "/" as the mountpoint.
-                    The command uses "--ondisk" to force the partition onto
-                    the <filename>sdb</filename> disk:
-                    <literallayout class='monospaced'>
-     part / --source rootfs --ondisk sdb --fstype=ext3 --label platform --align 1024
-                    </literallayout>
-                </para>
+                    <para>
+                        The <filename>SourcePlugin</filename> class defines the
+                        following methods, which is the current set of methods
+                        that can be implemented or overridden by
+                        <filename>--source</filename> plugins.
+                        Any methods not implemented by a
+                        <filename>SourcePlugin</filename> subclass inherit the
+                        implementations present in the
+                        <filename>SourcePlugin</filename> class.
+                        For more information, see the
+                        <filename>SourcePlugin</filename> source for details:
+                    </para>
 
-                <para>
-                    Here is a list that describes other supported options you
-                    can use with the <filename>part</filename> and
-                    <filename>partition</filename> commands:
-                    <itemizedlist>
-                        <listitem><para><emphasis><filename>--size</filename>:</emphasis>
-                            The minimum partition size in MBytes.
-                            Specify an integer value such as 500.
-                            Do not append the number with "MB".
-                            You do not need this option if you use
-                            <filename>--source</filename>.</para></listitem>
-                        <listitem><para><emphasis><filename>--source</filename>:</emphasis>
-                            This option is a
-                            <filename>wic</filename>-specific option that
-                            names the source of the data that populates
-                            the partition.
-                            The most common value for this option is
-                            "rootfs", but you can use any value that maps to
-                            a valid source plugin.
-                            For information on the source plugins, see the
-                            "<link linkend='openembedded-kickstart-plugins'>Plugins</link>"
-                            section.</para>
-                            <para>If you use
-                            <filename>--source rootfs</filename>,
-                            <filename>wic</filename> creates a partition as
-                            large as needed and to fill it with the contents of
-			                the root filesystem pointed to by the
-			                <filename>-r</filename> command-line option
-			                or the equivalent rootfs derived from the
-			                <filename>-e</filename> command-line
-			                option.
-                            The filesystem type used to create the
-                            partition is driven by the value of the
-			                <filename>--fstype</filename> option
-			                specified for the partition.
-                            See the entry on
-                            <filename>--fstype</filename> that
-                            follows for more information.
-			                </para>
-                            <para>If you use
-                            <filename>--source <replaceable>plugin-name</replaceable></filename>,
-                            <filename>wic</filename> creates a partition as
-                            large as needed and fills it with the contents of
-                            the partition that is generated by the
-                            specified plugin name using the data pointed
-                            to by the <filename>-r</filename> command-line
-                            option or the equivalent rootfs derived from the
-			                <filename>-e</filename> command-line
-			                option.
-                            Exactly what those contents and filesystem type end
-                            up being are dependent on the given plugin
-                            implementation.
-                            </para>
-                            <para>If you do not use the
-                            <filename>--source</filename> option, the
-                            <filename>wic</filename> command creates an empty
-                            partition.
-                            Consequently, you must use the
-                            <filename>--size</filename> option to specify the
-                            size of the empty partition.
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--ondisk</filename> or <filename>--ondrive</filename>:</emphasis>
-                            Forces the partition to be created on a particular
-                            disk.</para></listitem>
-                        <listitem><para><emphasis><filename>--fstype</filename>:</emphasis>
-                            Sets the file system type for the partition.
-                            Valid values are:
-                            <itemizedlist>
-                                <listitem><para><filename>ext4</filename>
+                    <para>
+                        <itemizedlist>
+                            <listitem><para><emphasis><filename>do_prepare_partition()</filename>:</emphasis>
+                                Called to do the actual content population for a
+                                partition.
+                                In other words, the method prepares the final
+                                partition image that is incorporated into the
+                                disk image.
                                 </para></listitem>
-                                <listitem><para><filename>ext3</filename>
+                            <listitem><para><emphasis><filename>do_configure_partition()</filename>:</emphasis>
+                                Called before
+                                <filename>do_prepare_partition()</filename>.
+                                This method is typically used to create custom
+                                configuration files for a partition (e.g. syslinux or
+                                grub configuration files).
                                 </para></listitem>
-                                <listitem><para><filename>ext2</filename>
+                            <listitem><para><emphasis><filename>do_install_disk()</filename>:</emphasis>
+                                Called after all partitions have been prepared and
+                                assembled into a disk image.
+                                This method provides a hook to allow finalization of a
+                                disk image, (e.g. writing an MBR).
                                 </para></listitem>
-                                <listitem><para><filename>btrfs</filename>
+                            <listitem><para><emphasis><filename>do_stage_partition()</filename>:</emphasis>
+                                Special content-staging hook called before
+                                <filename>do_prepare_partition()</filename>.
+                                This method is normally empty.</para>
+                                <para>Typically, a partition just uses the passed-in
+                                parameters (e.g. the unmodified value of
+                                <filename>bootimg_dir</filename>).
+                                However, in some cases things might need to be
+                                more tailored.
+                                As an example, certain files might additionally
+                                need to be taken from
+                                <filename>bootimg_dir + /boot</filename>.
+                                This hook allows those files to be staged in a
+                                customized fashion.
+                                <note>
+                                    <filename>get_bitbake_var()</filename>
+                                    allows you to access non-standard variables
+                                    that you might want to use for this.
+                                </note>
                                 </para></listitem>
-                                <listitem><para><filename>squashfs</filename>
+                        </itemizedlist>
+                    </para>
+
+                    <para>
+                        This scheme is extensible.
+                        Adding more hooks is a simple matter of adding more
+                        plugin methods to <filename>SourcePlugin</filename> and
+                        derived classes.
+                        The code that then needs to call the plugin methods uses
+                        <filename>plugin.get_source_plugin_methods()</filename>
+                        to find the method or methods needed by the call.
+                        Retrieval of those methods is accomplished
+                        by filling up a dict with keys
+                        containing the method names of interest.
+                        On success, these will be filled in with the actual
+                        methods.
+                        Please see the <filename>wic</filename>
+                        implementation for examples and details.
+                    </para>
+                </section>
+
+                <section id='openembedded-kickstart-wks-reference'>
+                    <title>OpenEmbedded Kickstart (.wks) Reference</title>
+
+                    <para>
+                        The current <filename>wic</filename> implementation supports
+                        only the basic kickstart partitioning commands:
+                        <filename>partition</filename> (or <filename>part</filename>
+                        for short) and <filename>bootloader</filename>.
+                        <note>
+                            Future updates will implement more commands and options.
+                            If you use anything that is not specifically
+                            supported, results can be unpredictable.
+                        </note>
+                    </para>
+
+                    <para>
+                        The following is a list of the commands, their syntax,
+                        and meanings.
+                        The commands are based on the Fedora
+                        kickstart versions but with modifications to
+                        reflect <filename>wic</filename> capabilities.
+                        You can see the original documentation for those commands
+                        at the following links:
+                        <itemizedlist>
+                            <listitem><para>
+                                <ulink url='http://fedoraproject.org/wiki/Anaconda/Kickstart#part_or_partition'>http://fedoraproject.org/wiki/Anaconda/Kickstart#part_or_partition</ulink>
                                 </para></listitem>
-                                <listitem><para><filename>swap</filename>
+                            <listitem><para>
+                                <ulink url='http://fedoraproject.org/wiki/Anaconda/Kickstart#bootloader'>http://fedoraproject.org/wiki/Anaconda/Kickstart#bootloader</ulink>
                                 </para></listitem>
-                            </itemizedlist></para></listitem>
-                        <listitem><para><emphasis><filename>--fsoptions</filename>:</emphasis>
-                            Specifies a free-form string of options to be
-                            used when mounting the filesystem.
-                            This string will be copied into the
-                            <filename>/etc/fstab</filename> file of the
-                            installed system and should be enclosed in
-                            quotes.
-                            If not specified, the default string
-                            is "defaults".
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--label label</filename>:</emphasis>
-                            Specifies the label to give to the filesystem to
-                            be made on the partition.
-                            If the given label is already in use by another
-                            filesystem, a new label is created for the
-                            partition.</para></listitem>
-                        <listitem><para><emphasis><filename>--active</filename>:</emphasis>
-                            Marks the partition as active.</para></listitem>
-                        <listitem><para><emphasis><filename>--align (in KBytes)</filename>:</emphasis>
-                            This option is a <filename>wic</filename>-specific
-                            option that says to start a partition on an
-                            x KBytes boundary.</para></listitem>
-                        <listitem><para><emphasis><filename>--no-table</filename>:</emphasis>
-                            This option is a <filename>wic</filename>-specific
-                            option.
-                            Using the option reserves space for the partition
-                            and causes it to become populated.
-                            However, the partition is not added to the
-                            partition table.
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--extra-space</filename>:</emphasis>
-                            This option is a <filename>wic</filename>-specific
-                            option that adds extra space after the space
-                            filled by the content of the partition.
-                            The final size can go beyond the size specified
-                            by the <filename>--size</filename> option.
-                            The default value is 10 Mbytes.
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--overhead-factor</filename>:</emphasis>
-                            This option is a <filename>wic</filename>-specific
-                            option that multiplies the size of the partition by
-                            the option's value.
-                            You must supply a value greater than or equal to
-                            "1".
-                            The default value is "1.3".
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--part-type</filename>:</emphasis>
-                            This option is a <filename>wic</filename>-specific
-                            option that specifies the partition type globally
-                            unique identifier (GUID) for GPT partitions.
-                            You can find the list of partition type GUIDs
-                            at
-                            <ulink url='http://en.wikipedia.org/wiki/GUID_Partition_Table#Partition_type_GUIDs'></ulink>.
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--use-uuid</filename>:</emphasis>
-                            This option is a <filename>wic</filename>-specific
-                            option that causes <filename>wic</filename> to
-                            generate a random GUID for the partition.
-                            The generated identifier is used in the bootloader
-                            configuration to specify the root partition.
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--uuid</filename>:</emphasis>
-                            This option is a <filename>wic</filename>-specific
-                            option that specifies the partition UUID.
-                            </para></listitem>
-                    </itemizedlist>
-                </para>
-            </section>
+                        </itemizedlist>
+                    </para>
 
-            <section id='command-bootloader'>
-                <title>Command: bootloader</title>
+                    <section id='command-part-or-partition'>
+                        <title>Command: part or partition</title>
 
-                <para>
-                    This command specifies how the boot loader should be
-                    configured and supports the following options:
-                    <note>
-                        Bootloader functionality and boot partitions are
-                        implemented by the various
-                        <filename>--source</filename>
-			            plugins that implement bootloader functionality.
-                        The bootloader command essentially provides a means of
-                        modifying bootloader configuration.
-                    </note>
-                    <itemizedlist>
-                        <listitem><para><emphasis><filename>--timeout</filename>:</emphasis>
-                            Specifies the number of seconds before the
-                            bootloader times out and boots the default option.
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--append</filename>:</emphasis>
-                            Specifies kernel parameters.
-                            These parameters will be added to the syslinux
-                            <filename>APPEND</filename> or
-                            <filename>grub</filename> kernel command line.
-                            </para></listitem>
-                        <listitem><para><emphasis><filename>--configfile</filename>:</emphasis>
-                            Specifies a user-defined configuration file for
-                            the bootloader.
-                            You can provide a full pathname for the file or
-                            a file that exists in the
-                            <filename>canned-wks</filename> folder.
-                            This option overrides all other bootloader options.
-                            </para></listitem>
-                    </itemizedlist>
-                </para>
-            </section>
+                        <para>
+                        Either of these commands create a partition on the system
+                        and uses the following syntax:
+                            <literallayout class='monospaced'>
+             part [<replaceable>mntpoint</replaceable>]
+             partition [<replaceable>mntpoint</replaceable>]
+                            </literallayout>
+                            If you do not provide
+                            <replaceable>mntpoint</replaceable>, wic creates a partition
+                            but does not mount it.
+                        </para>
+
+                        <para>
+                            The <filename><replaceable>mntpoint</replaceable></filename>
+                            is where the
+                            partition will be mounted and must be of one of the
+                            following forms:
+                            <itemizedlist>
+                                <listitem><para><filename>/<replaceable>path</replaceable></filename>:
+                                    For example, <filename>/</filename>,
+                                    <filename>/usr</filename>, or
+                                    <filename>/home</filename></para></listitem>
+                                <listitem><para><filename>swap</filename>:
+                                    The created partition is used as swap space.
+                                    </para></listitem>
+                            </itemizedlist>
+                        </para>
+
+                        <para>
+                            Specifying a <replaceable>mntpoint</replaceable> causes
+                            the partition to automatically be mounted.
+                            Wic achieves this by adding entries to the filesystem
+                            table (fstab) during image generation.
+                            In order for wic to generate a valid fstab, you must
+                            also provide one of the <filename>--ondrive</filename>,
+                            <filename>--ondisk</filename>, or
+                            <filename>--use-uuid</filename> partition options as part
+                            of the command.
+                            Here is an example using "/" as the mountpoint.
+                            The command uses "--ondisk" to force the partition onto
+                            the <filename>sdb</filename> disk:
+                            <literallayout class='monospaced'>
+             part / --source rootfs --ondisk sdb --fstype=ext3 --label platform --align 1024
+                            </literallayout>
+                        </para>
+
+                        <para>
+                            Here is a list that describes other supported options you
+                            can use with the <filename>part</filename> and
+                            <filename>partition</filename> commands:
+                            <itemizedlist>
+                                <listitem><para><emphasis><filename>--size</filename>:</emphasis>
+                                    The minimum partition size in MBytes.
+                                    Specify an integer value such as 500.
+                                    Do not append the number with "MB".
+                                    You do not need this option if you use
+                                    <filename>--source</filename>.</para></listitem>
+                                <listitem><para><emphasis><filename>--source</filename>:</emphasis>
+                                    This option is a
+                                    <filename>wic</filename>-specific option that
+                                    names the source of the data that populates
+                                    the partition.
+                                    The most common value for this option is
+                                    "rootfs", but you can use any value that maps to
+                                    a valid source plugin.
+                                    For information on the source plugins, see the
+                                    "<link linkend='openembedded-kickstart-plugins'>Plugins</link>"
+                                    section.</para>
+                                    <para>If you use
+                                    <filename>--source rootfs</filename>,
+                                    <filename>wic</filename> creates a partition as
+                                    large as needed and to fill it with the contents of
+                                    the root filesystem pointed to by the
+                                    <filename>-r</filename> command-line option
+                                    or the equivalent rootfs derived from the
+                                    <filename>-e</filename> command-line
+                                    option.
+                                    The filesystem type used to create the
+                                    partition is driven by the value of the
+                                    <filename>--fstype</filename> option
+                                    specified for the partition.
+                                    See the entry on
+                                    <filename>--fstype</filename> that
+                                    follows for more information.
+                                    </para>
+                                    <para>If you use
+                                    <filename>--source <replaceable>plugin-name</replaceable></filename>,
+                                    <filename>wic</filename> creates a partition as
+                                    large as needed and fills it with the contents of
+                                    the partition that is generated by the
+                                    specified plugin name using the data pointed
+                                    to by the <filename>-r</filename> command-line
+                                    option or the equivalent rootfs derived from the
+                                    <filename>-e</filename> command-line
+                                    option.
+                                    Exactly what those contents and filesystem type end
+                                    up being are dependent on the given plugin
+                                    implementation.
+                                    </para>
+                                    <para>If you do not use the
+                                    <filename>--source</filename> option, the
+                                    <filename>wic</filename> command creates an empty
+                                    partition.
+                                    Consequently, you must use the
+                                    <filename>--size</filename> option to specify the
+                                    size of the empty partition.
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--ondisk</filename> or <filename>--ondrive</filename>:</emphasis>
+                                    Forces the partition to be created on a particular
+                                    disk.</para></listitem>
+                                <listitem><para><emphasis><filename>--fstype</filename>:</emphasis>
+                                    Sets the file system type for the partition.
+                                    Valid values are:
+                                    <itemizedlist>
+                                        <listitem><para><filename>ext4</filename>
+                                        </para></listitem>
+                                        <listitem><para><filename>ext3</filename>
+                                        </para></listitem>
+                                        <listitem><para><filename>ext2</filename>
+                                        </para></listitem>
+                                        <listitem><para><filename>btrfs</filename>
+                                        </para></listitem>
+                                        <listitem><para><filename>squashfs</filename>
+                                        </para></listitem>
+                                        <listitem><para><filename>swap</filename>
+                                        </para></listitem>
+                                    </itemizedlist></para></listitem>
+                                <listitem><para><emphasis><filename>--fsoptions</filename>:</emphasis>
+                                    Specifies a free-form string of options to be
+                                    used when mounting the filesystem.
+                                    This string will be copied into the
+                                    <filename>/etc/fstab</filename> file of the
+                                    installed system and should be enclosed in
+                                    quotes.
+                                    If not specified, the default string
+                                    is "defaults".
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--label label</filename>:</emphasis>
+                                    Specifies the label to give to the filesystem to
+                                    be made on the partition.
+                                    If the given label is already in use by another
+                                    filesystem, a new label is created for the
+                                    partition.</para></listitem>
+                                <listitem><para><emphasis><filename>--active</filename>:</emphasis>
+                                    Marks the partition as active.</para></listitem>
+                                <listitem><para><emphasis><filename>--align (in KBytes)</filename>:</emphasis>
+                                    This option is a <filename>wic</filename>-specific
+                                    option that says to start a partition on an
+                                    x KBytes boundary.</para></listitem>
+                                <listitem><para><emphasis><filename>--no-table</filename>:</emphasis>
+                                    This option is a <filename>wic</filename>-specific
+                                    option.
+                                    Using the option reserves space for the partition
+                                    and causes it to become populated.
+                                    However, the partition is not added to the
+                                    partition table.
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--extra-space</filename>:</emphasis>
+                                    This option is a <filename>wic</filename>-specific
+                                    option that adds extra space after the space
+                                    filled by the content of the partition.
+                                    The final size can go beyond the size specified
+                                    by the <filename>--size</filename> option.
+                                    The default value is 10 Mbytes.
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--overhead-factor</filename>:</emphasis>
+                                    This option is a <filename>wic</filename>-specific
+                                    option that multiplies the size of the partition by
+                                    the option's value.
+                                    You must supply a value greater than or equal to
+                                    "1".
+                                    The default value is "1.3".
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--part-type</filename>:</emphasis>
+                                    This option is a <filename>wic</filename>-specific
+                                    option that specifies the partition type globally
+                                    unique identifier (GUID) for GPT partitions.
+                                    You can find the list of partition type GUIDs
+                                    at
+                                    <ulink url='http://en.wikipedia.org/wiki/GUID_Partition_Table#Partition_type_GUIDs'></ulink>.
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--use-uuid</filename>:</emphasis>
+                                    This option is a <filename>wic</filename>-specific
+                                    option that causes <filename>wic</filename> to
+                                    generate a random GUID for the partition.
+                                    The generated identifier is used in the bootloader
+                                    configuration to specify the root partition.
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--uuid</filename>:</emphasis>
+                                    This option is a <filename>wic</filename>-specific
+                                    option that specifies the partition UUID.
+                                    </para></listitem>
+                            </itemizedlist>
+                        </para>
+                    </section>
+
+                    <section id='command-bootloader'>
+                        <title>Command: bootloader</title>
+
+                        <para>
+                            This command specifies how the boot loader should be
+                            configured and supports the following options:
+                            <note>
+                                Bootloader functionality and boot partitions are
+                                implemented by the various
+                                <filename>--source</filename>
+                                plugins that implement bootloader functionality.
+                                The bootloader command essentially provides a means of
+                                modifying bootloader configuration.
+                            </note>
+                            <itemizedlist>
+                                <listitem><para><emphasis><filename>--timeout</filename>:</emphasis>
+                                    Specifies the number of seconds before the
+                                    bootloader times out and boots the default option.
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--append</filename>:</emphasis>
+                                    Specifies kernel parameters.
+                                    These parameters will be added to the syslinux
+                                    <filename>APPEND</filename> or
+                                    <filename>grub</filename> kernel command line.
+                                    </para></listitem>
+                                <listitem><para><emphasis><filename>--configfile</filename>:</emphasis>
+                                    Specifies a user-defined configuration file for
+                                    the bootloader.
+                                    You can provide a full pathname for the file or
+                                    a file that exists in the
+                                    <filename>canned-wks</filename> folder.
+                                    This option overrides all other bootloader options.
+                                    </para></listitem>
+                            </itemizedlist>
+                        </para>
+                    </section>
+                </section>
         </section>
     </section>
 
-- 
2.1.4


