Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A971E00547; Thu, 31 Jul 2014 12:19:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12E47E003FA
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 12:19:25 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20140731191918826
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 19:19:18 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=57974 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XCvsf-0007On-Ob
	for yocto@yoctoproject.org; Thu, 31 Jul 2014 15:19:13 -0400
Date: Thu, 31 Jul 2014 15:19:09 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1407311517150.16024@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [yocto-docs][PATCH] dev-manual: Numerous minor grammar fixes to Chapter 3.
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
X-List-Received-Date: Thu, 31 Jul 2014 19:19:30 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1274105867-1406834353=:16024"

--8323328-1274105867-1406834353=:16024
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 0f7708e..f5f23f4 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -41,7 +41,7 @@
     </para>

     <para>
-        A benchmark example of an open source project is the Linux Kernel, which was initially conceived
+        A benchmark example of an open source project is the Linux kernel, which was initially conceived
         and created by Finnish computer science student Linus Torvalds in 1991.
         Conversely, a good example of a non-open source project is the
         <trademark class='registered'>Windows</trademark> family of operating
@@ -443,7 +443,7 @@
                     </para></listitem>
                 <listitem><para>
                     Be sure to always work in matching branches for both
-                    the <filename>meta-intel</filename> repository and the
+                    the selected BSP repository and the
                     <link linkend='source-directory'>Source Directory</link>
                     (i.e. <filename>poky</filename>) repository.
                     For example, if you have checked out the "master" branch
@@ -508,7 +508,8 @@
                 The filenames can differ only in the file type suffix used (e.g.
                 <filename>formfactor_0.0.bb</filename> and <filename>formfactor_0.0.bbappend</filename>).
                 </para>
-                <para>Information in append files overrides the information in the similarly-named recipe file.
+                <para>Information in append files extends or overrides the
+                information in the similarly-named recipe file.
                 For an example of an append file in use, see the
                 "<link linkend='using-bbappend-files'>Using .bbappend Files</link>" section.
                 <note>
@@ -669,7 +670,7 @@
                 chapter in the Yocto Project Reference Manual.</para></listitem>
             <listitem><para id='layer'><emphasis>Layer:</emphasis> A collection of recipes representing the core,
                 a BSP, or an application stack.
-                For a discussion on BSP Layers, see the
+                For a discussion specifically on BSP Layers, see the
                 "<ulink url='&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP Layers</ulink>"
                 section in the Yocto Project Board Support Packages (BSP)
                 Developer's Guide.</para></listitem>
@@ -699,7 +700,7 @@
                 <para>It is worth noting that the term "package" can, in general, have subtle
                 meanings.  For example, the packages referred to in the
                 "<ulink url='&YOCTO_DOCS_QS_URL;#packages'>The Packages</ulink>" section are
-                compiled binaries that when installed add functionality to your Linux
+                compiled binaries that, when installed, add functionality to your Linux
                 distribution.</para>
                 <para>Another point worth noting is that historically within the Yocto Project,
                 recipes were referred to as packages - thus, the existence of several BitBake
@@ -733,12 +734,11 @@
                 the Yocto Project.</para></listitem>
             <listitem><para><emphasis>Recipe:</emphasis>
                 A set of instructions for building packages.
-                A recipe describes where you get source code and which patches
-                to apply.
-                Recipes describe dependencies for libraries or for other
-                recipes, and they also contain configuration and compilation
-                options.
-                Recipes contain the logical unit of execution, the software
+                A recipe describes where you get source code, which patches
+                to apply, how to configure the source, how to compile it and so on.
+                Recipes also describe dependencies for libraries or for other
+                recipes.
+                Recipes represent the logical unit of execution, the software
                 to build, the images to build, and use the
                 <filename>.bb</filename> file extension.
                 </para></listitem>
@@ -778,7 +778,7 @@
                 folder is also named "poky".</para>

                 <para>While it is not recommended that you use tarball expansion
-                to setup the Source Directory, if you do, the top-level
+                to set up the Source Directory, if you do, the top-level
                 directory name of the Source Directory is derived from the
                 Yocto Project release tarball.
                 For example, downloading and unpacking
@@ -844,7 +844,7 @@
         license is distributed with that software.
         MIT is also compatible with the GNU General Public License (GPL).
         Patches to the Yocto Project follow the upstream licensing scheme.
-        You can find information on the MIT license at
+        You can find information on the MIT license
         <ulink url='http://www.opensource.org/licenses/mit-license.php'>here</ulink>.
         You can find information on the GNU GPL <ulink url='http://www.opensource.org/licenses/LGPL-3.0'>
         here</ulink>.
@@ -976,7 +976,7 @@
             Each of these branches represents a specific area of development.
             The <filename>master</filename> branch represents the current or most recent
             development.
-            All other branches represent off-shoots of the <filename>master</filename>
+            All other branches represent offshoots of the <filename>master</filename>
             branch.
         </para>

@@ -1029,7 +1029,7 @@

         <para>
             Some key tags are <filename>dylan-9.0.0</filename>,
-            <filename>dora-10.0.0</filename>,
+            <filename>dora-10.0.0</filename>, <filename>daisy-11.0.0</filename>,
             and <filename>&DISTRO_NAME;-&POKYVERSION;</filename>.
             These tags represent Yocto Project releases.
         </para>
@@ -1175,10 +1175,10 @@
         For the Yocto Project, a key individual called the "maintainer" is responsible for the "master"
         branch of a given Git repository.
         The "master" branch is the “upstream” repository where the final builds of the project occur.
-        The maintainer is responsible for allowing changes in from other developers and for
+        The maintainer is responsible for accepting changes from other developers and for
         organizing the underlying branch structure to reflect release strategies and so forth.
-        <note>For information on finding out who is responsible (maintains)
-            for a particular area of code, see the
+        <note>For information on finding out who is responsible for (maintains)
+            a particular area of code, see the
             "<link linkend='how-to-submit-a-change'>How to Submit a Change</link>"
             section.
         </note>
@@ -1332,9 +1332,9 @@
                 a bug.</para></listitem>
             <listitem><para>When submitting a new bug, be sure to choose the appropriate
                 Classification, Product, and Component for which the issue was found.
-                Defects for the Yocto Project fall into one of six classifications:  Yocto Project
-                Components, Infrastructure, Build System &amp; Metadata, Documentation,
-                QA/Testing, and Runtime.
+                Defects for the Yocto Project fall into one of seven classifications:
+                Yocto Project Components, Infrastructure, Build System &amp; Metadata,
+                Documentation, QA/Testing, Runtime and Hardware.
                 Each of these Classifications break down into multiple Products and, in some
                 cases, multiple Components.</para></listitem>
             <listitem><para>Use the bug form to choose the correct Hardware and Architecture

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1274105867-1406834353=:16024--
