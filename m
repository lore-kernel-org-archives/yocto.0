Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C37CE01779
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 03:32:23 -0800 (PST)
Received: from [173.34.6.101] (port=33165 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vdert-0002sc-MK; Tue, 05 Nov 2013 06:32:21 -0500
Date: Tue, 5 Nov 2013 06:32:15 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311050629480.10829@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] Documentation: A number of minor tweaks to ref manual ch 3, closer-look.xml
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
X-List-Received-Date: Tue, 05 Nov 2013 11:32:25 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/ref-manual/closer-look.xml b/documentation/ref-manual/closer-look.xml
index 25c03e0..4883981 100644
--- a/documentation/ref-manual/closer-look.xml
+++ b/documentation/ref-manual/closer-look.xml
@@ -267,7 +267,7 @@

         <para>
             The previous section described the user configurations that
-            define the BitBake's global behavior.
+            define BitBake's global behavior.
             This section takes a closer look at the layers the build system
             uses to further control the build.
             These layers provide Metadata for the software, machine, and
@@ -363,7 +363,7 @@
                 for what you typically find in the distribution layer:
                 <itemizedlist>
                     <listitem><para><emphasis>classes:</emphasis>
-                        Class files (<filename>.bbclass</filename>) holds
+                        Class files (<filename>.bbclass</filename>) hold
                         common functionality that can be shared among
                         recipes in the distribution.
                         When your recipes inherit a class, they take on the
@@ -381,7 +381,7 @@
                     <listitem><para><emphasis>recipes-*:</emphasis>
                         Recipes and append files that affect common
                         functionality across the distribution.
-                        This area could include recipes and append files to
+                        This area could include recipes and append files
                         to add distribution-specific configuration,
                         initialization scripts, custom image recipes,
                         and so forth.</para></listitem>
@@ -421,7 +421,7 @@
                 Metadata can exist for multiple formfactors, graphics
                 support systems, and so forth.
                 <note>
-                    While the figure shows several <filename>recipe-*</filename>
+                    While the figure shows several <filename>recipes-*</filename>
                     directories, not all these directories appear in all
                     BSP layers.
                 </note>
@@ -487,7 +487,7 @@

         <para>
             Another area that plays a significant role in where source files
-            comes from is pointed to by the
+            come from is pointed to by the
             <link linkend='var-DL_DIR'><filename>DL_DIR</filename></link>
             variable.
             This area is a cache that can hold previously downloaded source.
@@ -546,7 +546,7 @@
                 The canonical method through which to include a local project
                 is to use the
                 <link linkend='ref-classes-externalsrc'><filename>externalsrc.bbclass</filename></link>
-                class to include local project.
+                class to include that local project.
                 You use either the <filename>local.conf</filename> or a
                 recipe's append file to override or set the
                 recipe to point to the local directory on your disk to pull
@@ -704,11 +704,11 @@
             </para>

             <para>
-                Unpacked source source files are pointed to by the
+                Unpacked source files are pointed to by the
                 <link linkend='var-S'><filename>S</filename></link> variable.
                 Each recipe has an area in the Build Directory where the
                 unpacked source code resides.
-                The name of directory for any given recipe is defined from
+                The name of that directory for any given recipe is defined from
                 several different variables.
                 You can see the variables that define these directories
                 by looking at the figure:
@@ -809,7 +809,7 @@
                         variable.
                         For information on how this variable works within
                         that class, see the
-                        <filename>meta/classes/autotools.bbclass</filename>.
+                        <filename>meta/classes/autotools.bbclass</filename> file.
                         </para></listitem>
                     <listitem><para><emphasis><filename>do_compile</filename>:</emphasis>
                         Once a configuration task has been satisfied, BitBake
@@ -818,8 +818,8 @@
                         Compilation occurs in the directory pointed to by the
                         <link linkend='var-B'><filename>B</filename></link>
                         variable.
-                        Realize that the <filename>B</filename> directory, by
-                        default, is the same as the
+                        Realize that the <filename>B</filename> directory is, by
+                        default, the same as the
                         <link linkend='var-S'><filename>S</filename></link>
                         directory.</para></listitem>
                     <listitem><para><emphasis><filename>do_install</filename>:</emphasis>
@@ -948,7 +948,7 @@

             <para>
                 During image generation, the build system attempts to run
-                all post installation scripts.
+                all post-installation scripts.
                 Any that fail to run on the build host are run on the
                 target when the target system is first booted.
                 If you are using a
@@ -1052,7 +1052,7 @@
         <para>
             The images produced by the OpenEmbedded build system
             are compressed forms of the
-            root filesystems that are ready to boot on a target device.
+            root filesystem that are ready to boot on a target device.
             You can see from the
             <link linkend='general-yocto-environment-figure'>general Yocto Project Development Environment figure</link>
             that BitBake output in part consists of images.
@@ -1062,14 +1062,14 @@

         <para>
             For a list of example images that the Yocto Project provides,
-            the
+            see the
             "<link linkend='ref-images'>Images</link>" chapter.
         </para>

         <para>
             Images are written out to the
             <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
-            inside the <filename>deploy/images/&lt;machine&gt;/</filename>
+            inside the <filename>tmp/deploy/images/&lt;machine&gt;/</filename>
             folder as shown in the figure.
             This folder contains any files expected to be loaded on the
             target device.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

