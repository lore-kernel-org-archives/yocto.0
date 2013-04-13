Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BAEE0140A
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 04:44:58 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:47561 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UQyt7-0002bK-Ab; Sat, 13 Apr 2013 07:44:57 -0400
Date: Sat, 13 Apr 2013 07:44:54 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304130741590.27522@oneiric>
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
Subject: [PATCH] yocto-docs: A few minor aesthetic fixes in Ch 3 of kernel use manual.
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
X-List-Received-Date: Sat, 13 Apr 2013 11:44:59 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  only contentious issue below is whether manual should link directly
to YP BSP page, is that considered a stable page?

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 9d9aef6..b279455 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -47,7 +47,7 @@
             in the Yocto Project kernel in any clone of the Yocto Project kernel source repository
             Git tree.
             For example, the following command clones the Yocto Project baseline kernel that
-            branched off of <filename>linux.org</filename> version 3.4:
+            branched off of <filename>kernel.org</filename> version 3.4:
             <literallayout class='monospaced'>
      $ git clone git://git.yoctoproject.org/linux-yocto-3.4
             </literallayout>
@@ -171,7 +171,7 @@

         <para>
             The OpenEmbedded build system makes sure these conditions exist before attempting compilation.
-            Other means, however, do exist, such as as bootstrapping a BSP, see
+            Other means, however, do exist, such as bootstrapping a BSP, see
             the "<link linkend='workflow-examples'>Workflow Examples</link>".
         </para>

@@ -538,9 +538,9 @@
                     associated with development by using the following commands:

                     <literallayout class='monospaced'>
-     $ Git add &lt;path&gt;/file
-     $ Git commit --amend
-     $ Git rebase or Git rebase -i
+     $ git add &lt;path&gt;/file
+     $ git commit --amend
+     $ git rebase or Git rebase -i
                     </literallayout>
                 </para>

@@ -843,13 +843,13 @@
                         by either creating a Git repository (recommended) or
                         extracting a Yocto Project release tarball.</para></listitem>
                     <listitem><para><emphasis>Choose an existing BSP available with the Yocto Project:</emphasis>
-                        Try to map your board features as closely to the features of a BSP that is
+                        Try to map your board features as closely as possible to the features of a BSP that is
                         already supported and exists in the Yocto Project.
                         Starting with something as close as possible to your board makes developing
                         your BSP easier.
                         You can find all the BSPs that are supported and ship with the Yocto Project
-                        on the Yocto Project's Download page at
-                        <ulink url='&YOCTO_HOME_URL;/download'></ulink>.</para></listitem>
+                        on the Yocto Project's BSP page at
+                        <ulink url='&YOCTO_HOME_URL;/downloads/bsp'></ulink>.</para></listitem>
                     <listitem><para><emphasis>Be sure you have the Base BSP:</emphasis>
                         You need to either have a local Git repository of the base BSP set up or
                         have downloaded and extracted the files from a release BSP tarball.


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

