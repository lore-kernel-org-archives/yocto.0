Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CF58E0188E
	for <yocto@yoctoproject.org>; Sat,  9 Nov 2013 01:28:32 -0800 (PST)
Received: from [173.34.6.101] (port=56038 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vf4qF-0007S5-4F; Sat, 09 Nov 2013 04:28:31 -0500
Date: Sat, 9 Nov 2013 04:28:25 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311090426300.17206@oneiric>
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
Subject: [PATCH] Documentation: A few tweaks to chapter 2 of the dev manual.
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
X-List-Received-Date: Sat, 09 Nov 2013 09:28:33 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  scott (or anyone else) is welcome to use any or all of this, or
tweak to taste. i have a few other concerns with ch 2 but i'll read it
more carefully to make sure i'm reading it correctly.

diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/dev-manual/dev-manual-start.xml
index 1a16b9f..478b8ee 100644
--- a/documentation/dev-manual/dev-manual-start.xml
+++ b/documentation/dev-manual/dev-manual-start.xml
@@ -34,7 +34,7 @@
         You can use the OpenEmbedded build system, which uses
         BitBake, to develop complete Linux
         images and associated user-space applications for architectures based
-        on ARM, MIPS, PowerPC, x86 and x86-64.
+        on ARM, MIPS, MIPS64, PowerPC, x86 and x86-64.
         <note>
             By default, using the Yocto Project creates a Poky distribution.
             However, you can create your own distribution by providing key
@@ -55,12 +55,12 @@
     <title>Getting Set Up</title>

     <para>
-        Here is what you need to get set up to use the Yocto Project:
+        Here is what you need to use the Yocto Project:
         <itemizedlist>
             <listitem><para><emphasis>Host System:</emphasis>  You should have a reasonably current
                 Linux-based host system.
                 You will have the best results with a recent release of Fedora,
-                OpenSUSE, Debian, Ubuntu, or CentOS as these releases are frequently tested against the Yocto Project
+                openSUSE, Debian, Ubuntu, or CentOS as these releases are frequently tested against the Yocto Project
                 and officially supported.
                 For a list of the distributions under validation and their status, see the
                 "<ulink url='&YOCTO_DOCS_REF_URL;#detailed-supported-distros'>Supported Linux Distributions</ulink>" section
@@ -70,7 +70,7 @@
                 You should also have about 100 gigabytes of free disk space for building images.
                 </para></listitem>
             <listitem><para><emphasis>Packages:</emphasis>  The OpenEmbedded build system
-                requires certain packages exist on your development system (e.g. Python 2.6 or 2.7).
+                requires that certain packages exist on your development system (e.g. Python 2.6 or 2.7).
                 See "<ulink url='&YOCTO_DOCS_QS_URL;#packages'>The Packages</ulink>"
                 section in the Yocto Project Quick Start and the
                 "<ulink url='&YOCTO_DOCS_REF_URL;#required-packages-for-the-host-development-system'>Required Packages for the Host Development System</ulink>"
@@ -85,7 +85,8 @@
                 <link linkend='source-directory'>Source Directory</link>
                 and is created when you use
                 <link linkend='git'>Git</link> to clone a local copy
-                of the upstream <filename>poky</filename> repository.</para>
+                of the upstream <filename>poky</filename> repository,
+                or when you download an official release of the corresponding tarball.</para>
                 <para>Working from a copy of the upstream repository allows you
                 to contribute back into the Yocto Project or simply work with
                 the latest software on a development branch.
@@ -122,7 +123,7 @@
             <listitem id='local-kernel-files'><para><emphasis>Yocto Project Kernel:</emphasis>
                 If you are going to be making modifications to a supported Yocto Project kernel, you
                 need to establish local copies of the source.
-                You can find Git repositories of supported Yocto Project Kernels organized under
+                You can find Git repositories of supported Yocto Project kernels organized under
                 "Yocto Linux Kernel" in the Yocto Project Source Repositories at
                 <ulink url='&YOCTO_GIT_URL;/cgit.cgi'></ulink>.</para>
                 <para>This setup can involve creating a bare clone of the Yocto Project kernel and then

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

