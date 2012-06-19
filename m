Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B5FDE013F7
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 03:27:42 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:60437 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Sgvev-00065y-Qu
	for yocto@yoctoproject.org; Tue, 19 Jun 2012 06:27:42 -0400
Date: Tue, 19 Jun 2012 06:27:37 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206190626320.29371@oneiric>
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
Subject: [PATCH] Docs, Development manual: Typoes/fixes to chapter 3.
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
X-List-Received-Date: Tue, 19 Jun 2012 10:27:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 1f41d1e..9b1636c 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -23,7 +23,7 @@
         Open source philosophy is characterized by software development directed by peer production
         and collaboration through an active community of developers.
         Contrast this to the more standard centralized development models used by commercial software
-        companies where a finite set of developers produce a product for sale using a defined set
+        companies where a finite set of developers produces a product for sale using a defined set
         of procedures that ultimately result in an end product whose architecture and source material
         are closed to the public.
     </para>
@@ -97,7 +97,7 @@
     <para>
         Most teams have many pieces of software undergoing active development at any given time.
         You can derive large benefits by putting these pieces under the control of a source
-        control system that is compatible with the Yocto Project (i.e. Git or Subversion (SVN).
+        control system that is compatible with the Yocto Project (i.e. Git or Subversion (SVN)).
         You can then set the autobuilder to pull the latest revisions of the packages
         and test the latest commits by the builds.
         This practice quickly highlights issues.
@@ -239,14 +239,14 @@
                 tools and utilities that allow you to develop software for targeted architectures.
                 This toolchain contains cross-compilers, linkers, and debuggers that are specific to
                 an architecture.
-                You can use the Yocto Project to build cross-development toolchains in tarball form that when
-                unpacked contain the development tools you need to cross-compile and test your software.
+                You can use the Yocto Project to build cross-development toolchains in tarball form that, when
+                unpacked, contain the development tools you need to cross-compile and test your software.
                 The Yocto Project ships with images that contain toolchains for supported architectures
                 as well.
                 Sometimes this toolchain is referred to as the meta-toolchain.</para></listitem>
             <listitem><para><emphasis>Image:</emphasis> An image is the result produced when
                 BitBake processes a given collection of recipes and related metadata.
-                Images are the binary output that runs on specific hardware and for specific
+                Images are the binary output that run on specific hardware and for specific
                 use cases.
                 For a list of the supported image types that the Yocto Project provides, see the
                 "<ulink url='&YOCTO_DOCS_REF_URL;#ref-images'>Reference: Images</ulink>"
@@ -530,9 +530,9 @@
      $ git checkout -b &DISTRO_NAME; origin/&DISTRO_NAME;
             </literallayout>
             In this example, the name of the top-level directory of your local Yocto Project
-            Files Git repository is <filename>poky</filename>.
-            And, the name of the local working area (or local branch) you have created and checked
-            out is named <filename>&DISTRO_NAME;</filename>.
+            Files Git repository is <filename>poky</filename>,
+            and the name of the local working area (or local branch) you have created and checked
+            out is <filename>&DISTRO_NAME;</filename>.
             The files in your repository now reflect the same files that are in the
             <filename>&DISTRO_NAME;</filename> development branch of the Yocto Project's
             <filename>poky</filename> repository.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

