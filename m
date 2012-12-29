Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 691B6E0045D
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2012 11:47:26 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45025 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tp2NR-0001En-C1
	for yocto@yoctoproject.org; Sat, 29 Dec 2012 14:47:25 -0500
Date: Sat, 29 Dec 2012 14:47:20 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212291445560.9138@oneiric>
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
Subject: [PATCH] Documentation: Small number of typoes/grammos in Ch 4, Dev Manual.
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
X-List-Received-Date: Sat, 29 Dec 2012 19:47:26 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
index 442cab3..1c27828 100644
--- a/documentation/dev-manual/dev-manual-model.xml
+++ b/documentation/dev-manual/dev-manual-model.xml
@@ -33,7 +33,7 @@
              Direct modification of temporary source code is a convenient development model
              to quickly iterate and develop towards a solution.
              Once the solution has been implemented, you should of course take steps to
-             get the changes upstream and applied in the affected recipes.</para></listitem>
+             get the changes upstream and applied to the affected recipes.</para></listitem>
          <listitem><para><emphasis>Image Development using Hob:</emphasis>
              You can use the <ulink url='&YOCTO_HOME_URL;/projects/hob'>Hob</ulink> to build
              custom operating system images within the build environment.
@@ -55,7 +55,7 @@
         Usually, when you want to create an image that runs on embedded hardware, the image does
         not require the same number of features that a full-fledged Linux distribution provides.
         Thus, you can create a much smaller image that is designed to use only the
-        features for your particular hardware.
+        features of your particular hardware.
     </para>

     <para>
@@ -99,7 +99,7 @@
             <orderedlist>
                 <listitem><para><emphasis>Set up your host development system to support
                     development using the Yocto Project</emphasis>:  See the
-                    "<ulink url='&YOCTO_DOCS_QS_URL;#the-linux-distro'>The Linux Distributions</ulink>"
+                    "<ulink url='&YOCTO_DOCS_QS_URL;#the-linux-distro'>The Linux Distribution</ulink>"
                     and the
                     "<ulink url='&YOCTO_DOCS_QS_URL;#packages'>The Packages</ulink>" sections both
                     in the Yocto Project Quick Start for requirements.</para></listitem>
@@ -110,7 +110,7 @@
                     process and to the tools you need.
                     For information on how to set up the
                     <link linkend='source-directory'>Source Directory</link>, see the
-                    "<link linkend='getting-setup'>Getting Setup</link>" section.</para></listitem>
+                    "<link linkend='getting-setup'>Getting Set Up</link>" section.</para></listitem>
                 <listitem><para><emphasis>Establish the <filename>meta-intel</filename>
                     repository on your system</emphasis>:  Having local copies of the
                     supported BSP layers on your system gives you access to the build
@@ -245,7 +245,7 @@
             <para>
                 Traditionally, when one thinks of a patched kernel, they think of a base kernel
                 source tree and a fixed structure that contains kernel patches.
-                The Yocto Project, however, employs mechanisms, that in a sense, result in a kernel source
+                The Yocto Project, however, employs mechanisms that, in a sense, result in a kernel source
                 generator.
                 By the end of this section, this analogy will become clearer.
             </para>
@@ -327,7 +327,7 @@
                 representing and using the code on your host development system is another.
                 Conceptually, you can think of the kernel source repositories as all the
                 source files necessary for all the supported kernels.
-                As a developer, you are just interested in the source files for the kernel on
+                As a developer, you are just interested in the source files for the kernel
                 on which you are working.
                 And, furthermore, you need them available on your host system.
             </para>
@@ -391,7 +391,7 @@
                 <orderedlist>
                     <listitem><para><emphasis>Set up your host development system to support
                         development using the Yocto Project</emphasis>:  See
-                        "<ulink url='&YOCTO_DOCS_QS_URL;#the-linux-distro'>The Linux Distributions</ulink>" and
+                        "<ulink url='&YOCTO_DOCS_QS_URL;#the-linux-distro'>The Linux Distribution</ulink>" and
                         "<ulink url='&YOCTO_DOCS_QS_URL;#packages'>The Packages</ulink>" sections both
                         in the Yocto Project Quick Start for requirements.</para></listitem>
                     <listitem><para><emphasis>Establish a local copy of project files on your
@@ -445,7 +445,7 @@
                         Doing so, can produce unexpected results when the OpenEmbedded build system
                         regenerates the configuration file.</para>
                         <para>Once you are satisfied with the configuration changes made using
-                        <filename>menuconfig</filename>, you can directly examine the
+                        <filename>menuconfig</filename>, you can directly compare the
                         <filename>.config</filename> file against a saved original and gather those
                         changes into a config fragment to be referenced from within the kernel's
                         <filename>.bbappend</filename> file.</para></listitem>
@@ -503,11 +503,11 @@
             <orderedlist>
                 <listitem><para><emphasis>Prepare the Host System for the Yocto Project</emphasis>:
                     See
-                    "<ulink url='&YOCTO_DOCS_QS_URL;#the-linux-distro'>The Linux Distributions</ulink>" and
+                    "<ulink url='&YOCTO_DOCS_QS_URL;#the-linux-distro'>The Linux Distribution</ulink>" and
                     "<ulink url='&YOCTO_DOCS_QS_URL;#packages'>The Packages</ulink>" sections both
                     in the Yocto Project Quick Start for requirements.</para></listitem>
                 <listitem><para><emphasis>Secure the Yocto Project Kernel Target Image</emphasis>:
-                    You must have a target kernel image that has been built using the OpenEmbeded
+                    You must have a target kernel image that has been built using the OpenEmbedded
                     build system.</para>
                     <para>Depending on whether the Yocto Project has a pre-built image that matches your target
                     architecture and where you are going to run the image while you develop your application
@@ -517,7 +517,7 @@
                                 <ulink url='&YOCTO_MACHINES_DL_URL;'><filename>machines</filename></ulink>
                                 if your target architecture is supported and you are going to develop
                                 and test your application on actual hardware.</para></listitem>
-                            <listitem><para>Download the image from the
+                            <listitem><para>Download the image from
                                 <ulink url='&YOCTO_QEMU_DL_URL;'>
                                 <filename>machines/qemu</filename></ulink> if your target architecture is supported
                                 and you are going to develop and test your application using the QEMU
@@ -1466,7 +1466,7 @@ directory.</para></listitem>
                 <listitem><para><emphasis>Develop and Test your Application:</emphasis>  At this point,
                     you have the tools to develop your application.
                     If you need to separately install and use the QEMU emulator, you can go to
-                    <ulink url='http://www.qemu.org'>QEMU Home Page</ulink> to download and learn about the
+                    <ulink url='http://wiki.qemu.org/Main_Page'>QEMU Home Page</ulink> to download and learn about the
                     emulator.</para></listitem>
             </orderedlist>
         </para>
@@ -1825,7 +1825,7 @@ directory.</para></listitem>
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
                 for which you are building the image.</para></listitem>
             <listitem><para>You can modify various policy settings such as the package format used to build with,
-                the parrallelism BitBake uses, whether or not to build an external toolchain, and which host
+                the parallelism BitBake uses, whether or not to build an external toolchain, and which host
                 to build against.</para></listitem>
             <listitem><para>You can manage
                 <link linkend='understanding-and-creating-layers'>layers</link>.</para></listitem>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

