Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E66DE01231
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313402"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:37 +0100
Message-Id: <1f3fd05e53be76f9ea248d78911d4424b4a878c9.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 04/14] documentation: typo, spelling & minor grammar fixes
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/bsp-guide/bsp.xml                 |    4 ++--
 documentation/poky-ref-manual/development.xml   |    2 +-
 documentation/poky-ref-manual/faq.xml           |   10 +++++-----
 documentation/poky-ref-manual/introduction.xml  |    2 +-
 documentation/poky-ref-manual/ref-bitbake.xml   |    4 ++--
 documentation/poky-ref-manual/ref-classes.xml   |    6 +++---
 documentation/poky-ref-manual/ref-features.xml  |    2 +-
 documentation/poky-ref-manual/ref-images.xml    |    4 ++--
 documentation/poky-ref-manual/ref-structure.xml |    8 ++++----
 documentation/poky-ref-manual/ref-variables.xml |   16 ++++++++--------
 documentation/poky-ref-manual/resources.xml     |    2 +-
 documentation/poky-ref-manual/usingpoky.xml     |    2 +-
 12 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index c7f9f87..be92a47 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -125,7 +125,7 @@ meta-crownbay/conf/layer.conf
 meta-crownbay/conf/machine/crownbay.conf
 meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
 meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
-meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xcorg.conf
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
@@ -327,7 +327,7 @@ meta-&lt;bsp_name&gt;/recipes-graphics/*
                 All files that are needed for the BSP to support a display are kept here. 
                 For example, in the crownbay BSP several display support files exist:
                 <programlisting>
-meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xcorg.conf
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index 0639774..c37b481 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -581,7 +581,7 @@
             It is worth remembering that inside "devshell" you need to use the full
             compiler name such as <filename>arm-poky-linux-gnueabi-gcc</filename> 
             instead of just <filename>gcc</filename>.
-            The same applies to other applications such as gcc, bintuils, libtool and so forth.
+            The same applies to other applications such as gcc, binutils, libtool and so forth.
             Poky will have setup environmental variables such as CC to assist applications, such as make,
             find the correct tools.
         </para>
diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 0982d9d..6a1f741 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -124,7 +124,7 @@
         </question>
         <answer>
             <para>
-                The <ulink url='http://vernier.com/labquest/'>Vernier Labquest</ulink> is using Poky (for more about the Labquest see the case study at OpenedHand). There are a number of pre-production devices using Poky and we will announce those as soon as they are released.
+                The <ulink url='http://vernier.com/labquest/'>Vernier LabQuest</ulink> is using Poky (for more about the LabQuest see the case study at OpenedHand). There are a number of pre-production devices using Poky and we will announce those as soon as they are released.
             </para>
         </answer>
     </qandaentry>
@@ -299,7 +299,7 @@
     <qandaentry>
         <question>
             <para>
-                I'm using Ubuntu Intrepid and am seeing build failures. Whats wrong?
+                I'm using Ubuntu Intrepid and am seeing build failures. What’s wrong?
             </para>
         </question>
         <answer>
@@ -315,7 +315,7 @@
     <qandaentry>
         <question>
             <para>
-                Whats the difference between foo and foo-native?
+                What’s the difference between foo and foo-native?
             </para>
         </question>
         <answer>
@@ -473,7 +473,7 @@
         <answer>
             <para>
                 The way Poky obtains source code is highly configurable.
-                You can setup Poky to get source code in most environmnents if 
+                You can setup Poky to get source code in most environments if
                 HTTP transport is available.
             </para>
             <para>
@@ -501,7 +501,7 @@
             <para>
                 These changes cause Poky to intercept GIT, FTP, HTTP, and HTTPS
                 requests and direct them to the <filename>http://</filename> sources mirror.
-                You can use <filename>file://</filename> urls to point to local directories 
+                You can use <filename>file://</filename> URLs to point to local directories 
                 or network shares as well.
             </para>
             <para>
diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index 7314b04..1a9b53e 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -103,7 +103,7 @@
         (Ubuntu 10.04 or newer) as the host system for Poky, nothing in Poky is
         distribution-specific.  Consequently, other distributions should work as long 
         as the appropriate prerequisites are installed.  For example, we know of Poky being used 
-        successfully on Redhat, SUSE, Gentoo and Slackware host systems.
+        successfully on Red Hat, SUSE, Gentoo and Slackware host systems.
         For information on what you need to develop images using Yocto Project and Poky, 
         you should see the Yocto Project Quick Start on the <ulink url="http://www.yoctoproject.org">
         Yocto Project website</ulink>.
diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 8fdce3f..5dc4369 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -68,7 +68,7 @@
             The <filename>base.bbclass</filename> file is always included.
             Other classes that are specified in the configuration using the 
             <glossterm><link linkend='var-INHERIT'>INHERIT</link></glossterm>
-            variable are also inculded. 
+            variable are also included.
             Class files are searched for in a classes subdirectory 
             under the paths in <filename>BBPATH</filename> in the same way as
             configuration files.
@@ -124,7 +124,7 @@
         <para>
             Sometimes a target might have multiple providers.
             A common example is "virtual/kernel", which is provided by each kernel package. 
-            Each machine often elects the best kernel provider by using a line similar to the 
+            Each machine often selects the best kernel provider by using a line similar to the
             following in the machine configuration file:
         </para>
 
diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index 8eb94c2..f44b9df 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -93,7 +93,7 @@
     <title>Alternatives - <filename>update-alternatives.bbclass</filename></title>
 
     <para>
-        Several programs can fulfill the same or similar function and
+        Several programs can fulfil the same or similar function and
         be installed with the same name. 
         For example, the <filename>ar</filename> 
         command is available from the "busybox", "binutils" and "elfutils" packages. 
@@ -218,7 +218,7 @@
     <para>
         Recipes for Perl modules are simple - usually needs only
         pointing to source archive and inheriting of proper bbclass.
-        Building is split into two methods dependly on method used by
+        Building is split into two methods depending on the method used by
         module authors.
     </para>
     
@@ -362,7 +362,7 @@
         Since this isn't possible in general when cross compiling, siteinfo is
         used to provide cached test results so these tests can be skipped over but
         the correct values used. The <link linkend='structure-meta-site'>meta/site directory</link>
-        contains test results sorted into different categories like architecture, endianess and
+        contains test results sorted into different categories like architecture, endianness and
         the libc used. Siteinfo provides a list of files containing data relevant to 
         the current build in the <glossterm><link linkend='var-CONFIG_SITE'>CONFIG_SITE
         </link></glossterm> variable which autotools will automatically pick up.
diff --git a/documentation/poky-ref-manual/ref-features.xml b/documentation/poky-ref-manual/ref-features.xml
index b9288bc..e644913 100644
--- a/documentation/poky-ref-manual/ref-features.xml
+++ b/documentation/poky-ref-manual/ref-features.xml
@@ -216,7 +216,7 @@
             IMAGE_FEATURES</link></glossterm> variable and the in local.conf and the 
             <glossterm linkend='var-EXTRA_IMAGE_FEATURES'><link linkend='var-EXTRA_IMAGE_FEATURES'>
             EXTRA_IMAGE_FEATURES</link></glossterm> that you typically configure in your image recipes.
-            Through these varibales you can add several different
+            Through these variables you can add several different
             predefined packages such as development utilities or packages with debug
             information needed to investigate application problems or profile applications.
         </para>
diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index 646e441..f8c888d 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -131,7 +131,7 @@
             <listitem>
                 <para>
                     <emphasis><filename>core-image-lsb-sdk-live</filename></emphasis> - A 
-                    <filename>core-image-lsb-sdk</filename> image with the ability to run the image
+<!--                     <filename>core-image-lsb-sdk</filename> image with the ability to run the image -->
                     from a USB device or CD as is.
                 </para>
             </listitem>
@@ -140,7 +140,7 @@
                     <emphasis><filename>core-image-clutter</filename></emphasis> - An image with 
                     support for 
                     the Open GL-based toolkit Clutter, which enables development of rich and animated
-                    graphical user interaces.
+                    graphical user interfaces.
                 </para>
             </listitem>
             <listitem>
diff --git a/documentation/poky-ref-manual/ref-structure.xml b/documentation/poky-ref-manual/ref-structure.xml
index 9f8a1c2..bdfd1c9 100644
--- a/documentation/poky-ref-manual/ref-structure.xml
+++ b/documentation/poky-ref-manual/ref-structure.xml
@@ -195,7 +195,7 @@
         <title><filename>build/pseudodone</filename></title>
 
         <para>
-            This tag file indicates that the intitial pseudo binar was created. 
+            This tag file indicates that the initial pseudo binary was created.
             The first time BitBake is invoked this file is built. 
         </para>
     </section>
@@ -484,7 +484,7 @@
             Any distribution-specific configuration is controlled from this directory. 
             Poky only contains the Poky distribution so <filename>poky.conf</filename>
             is the main file here.  
-            This directory includes the versions and SRCDATES for applications that are configured here. 
+            This directory includes the versions and SRCDATEs for applications that are configured here. 
             An example of an alternative configuration is <filename>poky-bleeding.conf</filename>
             although this file mainly inherits its configuration from Poky itself.
         </para>
@@ -495,7 +495,7 @@
 
         <para>
             This directory contains anything linking to specific hardware or hardware configuration information
-            such as "uboot" and "grub".
+            such as "u-boot" and "grub".
         </para>
     </section>
 
@@ -591,7 +591,7 @@
 
         <para>
             This directory contains recipes that used by other recipes, but that are not directly 
-            included in images (i.e. depenendies of other recipes).
+            included in images (i.e. dependencies of other recipes).
         </para>
     </section>
 
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 3601c97..8726b7f 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -73,7 +73,7 @@
         <glossentry id='var-BBFILE_COLLECTIONS'><glossterm>BBFILE_COLLECTIONS</glossterm>
             <glossdef>
                 <para>Identifies layer-specific bbfiles, which contain recipes used by BitBake to build software.
-                    The Variable is appended with a layer name.</para>
+                    The variable is appended with a layer name.</para>
             </glossdef>
         </glossentry>
 
@@ -307,7 +307,7 @@
                     variable generally configured in image recipes.
                     You can use the EXTRA_IMAGE_FEATURES variable to add more features
                     in addition to those.
-                    Here are some exmaples of features you can add:</para>
+                    Here are some examples of features you can add:</para>
                     <literallayout class='monospaced'>
 "dbg-pkgs" - Adds -dbg packages for all installed packages
              including symbol information for debugging and 
@@ -581,7 +581,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
             </glossdef>
          </glossentry>
 
-         <glossentry id='var-MACHINE_EXTRA_RRECOMMENDS'><glossterm>MACHINE_EXTRA_RRECOMMNEDS</glossterm>
+         <glossentry id='var-MACHINE_EXTRA_RRECOMMENDS'><glossterm>MACHINE_EXTRA_RRECOMMENDS</glossterm>
             <glossdef>
                 <para>List of packages useful to use device (for example
                     additional kernel modules)</para>
@@ -625,7 +625,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
 
         <glossentry id='var-PACKAGE_DESCRIPTION'><glossterm>PACKAGE_DESCRIPTION</glossterm>
             <glossdef>
-                <para>Long form description of binary package for packaging sytems such as ipkg, rpm or debian, inherits DESCRIPTION by default</para>
+                <para>Long form description of binary package for packaging systems such as ipkg, rpm or debian, inherits DESCRIPTION by default</para>
             </glossdef>
         </glossentry>
 
@@ -640,7 +640,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
 
         <glossentry id='var-PACKAGE_SUMMARY'><glossterm>PACKAGE_SUMMARY</glossterm>
             <glossdef>
-                <para>Short (72 char suggested) Summary of binary package for packaging sytems such as ipkg, rpm or debian, inherits DESCRIPTION by default</para>
+                <para>Short (72 char suggested) Summary of binary package for packaging systems such as ipkg, rpm or debian, inherits DESCRIPTION by default</para>
             </glossdef>
         </glossentry>
 
@@ -821,7 +821,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
             <glossdef>
                 <para>Speed and device for serial port used to attach
                     serial console. This is given to kernel as "console"
-                    param and after boot getty is started on that port
+                    parameter and after boot getty is started on that port
                     so remote login is possible.</para>
             </glossdef>
         </glossentry>
@@ -945,7 +945,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
         <glossentry id='var-TARGET_FPU'><glossterm>TARGET_FPU</glossterm>
             <glossdef>
                 <para>Method of handling FPU code. For FPU-less targets
-                (most of ARM cpus) it has to be set to "soft" otherwise
+                (most of ARM CPUs) it has to be set to "soft" otherwise
                 kernel emulation will get used which will result in
                 performance penalty.</para>
             </glossdef>
@@ -963,7 +963,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
         <glossentry id='var-TERMCMD'><glossterm>TERMCMD</glossterm>
             <glossdef>
                 <para>
-                    This command is used by bitbake to lauch a terminal window with a 
+                    This command is used by BitBake to launch a terminal window with a
                     shell. The shell is unspecified so the user's default shell is used. 
                     By default it is set to <command>gnome-terminal</command> but it can 
                     be any X11 terminal application or terminal multiplexers like screen.
diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index fbad871..6df9ed2 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -72,7 +72,7 @@
     <itemizedlist>
         <listitem><para>
             <ulink url='http://yoctoproject.org'>The Yocto Project website</ulink> - The home site
-            for Yocto Project.
+            for the Yocto Project.
         </para></listitem>
 <!--        <listitem><para>
             <ulink url='http://pokylinux.org'>The Poky website</ulink> - The home site
diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index 6b3289a..0eb9928 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -332,7 +332,7 @@
         <title>Other Tips</title>
         <tip>
         <para>
-            When adding new packages it is worth watching for undesireable items making their way
+            When adding new packages it is worth watching for undesirable items making their way
             into compiler command lines.
             For example, you do not want references to local system files like 
             <filename>/usr/lib/</filename> or <filename>/usr/include/</filename>.
-- 
1.7.4.1


