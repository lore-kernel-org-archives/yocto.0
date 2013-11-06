Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EDCBE01793
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 11:42:01 -0800 (PST)
Received: from [173.34.6.101] (port=35862 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Ve8zH-0003BA-Pl; Wed, 06 Nov 2013 14:41:59 -0500
Date: Wed, 6 Nov 2013 14:41:52 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311061438110.14212@oneiric>
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
Subject: [PATCH] Documentation: Partial proofing of ref manual, ch 6
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
X-List-Received-Date: Wed, 06 Nov 2013 19:42:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Significant tweaks:

* removal of (confusing) leading slashes from YP filenames
* deletion of reference to non-existent "build/tmp/pkgdata/"

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i didn't do the entire chapter, i think someone else should go
through it to verify that what's listed is what's actually generated
these days.

  for example, there's a listing for "build/pseudodone" that i don't
even see anymore.

diff --git a/documentation/ref-manual/ref-structure.xml b/documentation/ref-manual/ref-structure.xml
index 0872461..977bf57 100644
--- a/documentation/ref-manual/ref-structure.xml
+++ b/documentation/ref-manual/ref-structure.xml
@@ -101,7 +101,7 @@
     </section>

     <section id='handbook'>
-        <title><filename>documentation</filename></title>
+        <title><filename>documentation/</filename></title>

         <para>
             This directory holds the source for the Yocto Project documentation
@@ -109,7 +109,7 @@
             versions of the manuals.
             Each manual is contained in a sub-folder.
             For example, the files for this manual reside in
-            <filename>ref-manual</filename>.
+            the <filename>ref-manual/</filename> directory.
         </para>
     </section>

@@ -179,9 +179,9 @@
         </para>

         <para>
-            The <filename>scripts</filename> directory has useful scripts that assist contributing
-            back to the Yocto Project, such as <filename>create_pull_request</filename> and
-            <filename>send_pull_request</filename>.
+            The <filename>scripts</filename> directory has useful scripts that assist in contributing
+            back to the Yocto Project, such as <filename>create-pull-request</filename> and
+            <filename>send-pull-request</filename>.
         </para>
     </section>

@@ -209,7 +209,8 @@
         <para>
             By default, running this script without a
             <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
-            argument creates the <filename>build</filename> directory.
+            argument creates the <filename>build</filename> directory
+            in your current working directory.
             If you provide a Build Directory argument when you
             <filename>source</filename> the script, you direct the OpenEmbedded
             build system to create a Build Directory of your choice.
@@ -354,7 +355,7 @@
             <filename><link linkend='var-MACHINE'>MACHINE</link></filename>
             for which you want to build, which package types you wish to use
             (<link linkend='var-PACKAGE_CLASSES'><filename>PACKAGE_CLASSES</filename></link>),
-            the location from which you want to downloaded files
+            the location from which you want to access downloaded files
             (<filename><link linkend='var-DL_DIR'>DL_DIR</link></filename>),
             and how you want your host machine to use resources
             (<link linkend='var-BB_NUMBER_THREADS'><filename>BB_NUMBER_THREADS</filename></link>
@@ -376,9 +377,9 @@
         <para>
             The source <filename>local.conf.sample</filename> file used
             depends on the <filename>$TEMPLATECONF</filename> script variable,
-            which defaults to <filename>/meta-yocto/conf</filename>
+            which defaults to <filename>meta-yocto/conf</filename>
             when you are building from the Yocto Project development
-            environment and defaults to <filename>/meta/conf</filename> when
+            environment and defaults to <filename>meta/conf</filename> when
             you are building from the OpenEmbedded Core environment.
             Because the script variable points to the source of the
             <filename>local.conf.sample</filename> file, this implies that
@@ -395,11 +396,11 @@
             <note>
                 You can see how the <filename>TEMPLATECONF</filename> variable
                 is used by looking at the
-                <filename>/scripts/oe-setup-builddir</filename> script in the
+                <filename>scripts/oe-setup-builddir</filename> script in the
                 <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
                 You can find the Yocto Project version of the
                 <filename>local.conf.sample</filename> file in the
-                <filename>/meta-yocto/conf</filename> directory.
+                <filename>meta-yocto/conf</filename> directory.
             </note>
         </para>
     </section>
@@ -432,9 +433,9 @@
         <para>
             The source <filename>bblayers.conf.sample</filename> file used
             depends on the <filename>$TEMPLATECONF</filename> script variable,
-            which defaults to <filename>/meta-yocto/conf</filename>
+            which defaults to <filename>meta-yocto/conf</filename>
             when you are building from the Yocto Project development
-            environment and defaults to <filename>/meta/conf</filename> when
+            environment and defaults to <filename>meta/conf</filename> when
             you are building from the OpenEmbedded Core environment.
             Because the script variable points to the source of the
             <filename>bblayers.conf.sample</filename> file, this implies that
@@ -449,11 +450,11 @@
             values for all <filename>##OEROOT##</filename> values.
             <note>
                 You can see how the <filename>TEMPLATECONF</filename> variable
-                <filename>/scripts/oe-setup-builddir</filename> script in the
+                <filename>scripts/oe-setup-builddir</filename> script in the
                 <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
                 You can find the Yocto Project version of the
                 <filename>bblayers.conf.sample</filename> file in the
-                <filename>/meta-yocto/conf</filename> directory.
+                <filename>meta-yocto/conf</filename> directory.
             </note>
         </para>
     </section>
@@ -495,7 +496,7 @@
         <title><filename>build/tmp/</filename></title>

         <para>
-            This directory receives all the OpenEmbedded build system's output.
+            This directory receives all of the OpenEmbedded build system's output.
             BitBake creates this directory if it does not exist.
             As a last resort, to clean up a build and start it from scratch (other than the downloads),
             you can remove everything in the <filename>tmp</filename> directory or get rid of the
@@ -559,6 +560,14 @@
         </para>
     </section>

+    <section id='structure-build-tmp-deploy-ipk'>
+        <title><filename>build/tmp/deploy/ipk/</filename></title>
+
+        <para>
+            This directory receives <filename>.ipk</filename> packages produced by
+            the build process.</para>
+    </section>
+
     <section id='structure-build-tmp-deploy-licenses'>
         <title><filename>build/tmp/deploy/licenses/</filename></title>

@@ -605,14 +614,6 @@
         </para>
     </section>

-    <section id='structure-build-tmp-deploy-ipk'>
-        <title><filename>build/tmp/deploy/ipk/</filename></title>
-
-        <para>
-            This directory receives <filename>.ipk</filename> packages produced by
-            the build process.</para>
-    </section>
-
     <section id='structure-build-tmp-sysroots'>
         <title><filename>build/tmp/sysroots/</filename></title>

@@ -654,15 +655,6 @@
         </para>
     </section>

-    <section id='structure-build-tmp-pkgdata'>
-        <title><filename>build/tmp/pkgdata/</filename></title>
-
-        <para>
-            This directory contains intermediate packaging data that is used later in the packaging process.
-            For more information, see the "<link linkend='ref-classes-package'>Packaging - package*.bbclass</link>" section.
-        </para>
-    </section>
-
     <section id='structure-build-tmp-work'>
         <title><filename>build/tmp/work/</filename></title>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

