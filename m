Return-Path: <timo@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4785FE00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:03:07 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from localhost (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 4BE4D1D56079;
	Wed, 18 Jul 2012 15:03:06 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 18 Jul 2012 15:02:56 +0200
Message-Id: <8393b7e36cf0054754e5de7af7e3a1606fe8c363.1342614895.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <b8938f0d94423c7b584d9203ea9a8d206020baf8.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<8bbcd40cc56d25517ad2de1dbc3a9b1d5bfd61e9.1342614895.git.timo.mueller@bmw-carit.de>
	<e4d6d3bb6e59ce31a6c70e99260c36a1ab6a578c.1342614895.git.timo.mueller@bmw-carit.de>
	<5f1a6b30ceb23444478d4e5bf313fb135d256451.1342614895.git.timo.mueller@bmw-carit.de>
	<b8938f0d94423c7b584d9203ea9a8d206020baf8.1342614895.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 5/8] plugins/sdk.doc.user: Added yocto quick start guide
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
X-List-Received-Date: Wed, 18 Jul 2012 13:03:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The Yocto Project Quick Start Guide is integrated into the eclipse
help. This includes the generated html files as well as a table of
contents that is needed by the eclipse help center to allow the user
to navigate the contents.

Source: git://git.yoctoproject.org/yocto-docs/
---
 plugins/org.yocto.sdk.doc.user/about.html          |   58 +++
 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml  |   61 +++
 plugins/org.yocto.sdk.doc.user/build.properties    |    8 +-
 plugins/org.yocto.sdk.doc.user/html/book.css       |    1 +
 .../yocto-project-qs/figures/building-an-image.png |  Bin 0 -> 14891 bytes
 .../figures/using-a-pre-built-image.png            |  Bin 0 -> 12733 bytes
 .../yocto-project-qs/figures/yocto-environment.png |  Bin 0 -> 73095 bytes
 .../figures/yocto-project-transp.png               |  Bin 0 -> 8626 bytes
 .../html/yocto-project-qs/index.html               |  542 ++++++++++++++++++++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    4 +
 plugins/org.yocto.sdk.doc.user/toc.xml             |    3 +
 11 files changed, 676 insertions(+), 1 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/about.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/book.css
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/building-an-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/using-a-pre-built-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-environment.png
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-project-transp.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/index.html

diff --git a/plugins/org.yocto.sdk.doc.user/about.html b/plugins/org.yocto.sdk.doc.user/about.html
new file mode 100644
index 0000000..052051d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/about.html
@@ -0,0 +1,58 @@
+
+<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
+	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
+<html xmlns="http://www.w3.org/1999/xhtml">
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
+<title>About</title>
+</head>
+<body lang="EN-US">
+	<h2>About This Content</h2>
+
+	<p>
+		<em>July 3, 2012</em>
+	</p>
+	<h3>License</h3>
+
+	<p>
+		Copyright (c) 2010 Intel, Inc. and others. <br />
+		All rights reserved. This program and the accompanying materials
+		are made available under the terms of the Creative Commons Attribution-Share
+		Alike 2.0 UK: England & Wales which accompanies this distribution,
+		and is available at <br />
+		<a href="http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode">
+			http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode
+		</a>
+	</p>
+
+	<h3>Third Party Content</h3>
+	<p>The Content includes items that have been sourced from the Yocto project
+		as set out below. If you did not receive this Content directly
+		from the Linux Foundation, the following is provided for
+		informational purposes only, and you should look to the
+		Redistributor's license for terms and conditions of use.</p>
+	<p>
+		<strong>
+			Yocto Project Quick Start
+		</strong>
+		<br />
+		<br />
+			This short document lets you get started with the Yocto Project
+			quickly and start building an image.
+		<br />
+		<br />
+			<em>License:</em>
+			<a href="http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode">
+				http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode
+			</a>
+		<br />
+			<em>Source Code Repository:</em>
+			<a href="git://git.yoctoproject.org/yocto-docs">
+				git://git.yoctoproject.org/yocto-docs
+			</a>
+		<br />
+			<em>Commit:</em> 980b4d22dab4ac681c6dc1a85e78306213799062
+	</p>
+</body>
+</html>
+
diff --git a/plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml b/plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
new file mode 100644
index 0000000..85a0292
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
@@ -0,0 +1,61 @@
+<?xml version="1.0" encoding="utf-8" standalone="no"?>
+<toc label="The Yocto Project Application Development Toolkit (ADT) User's Guide." topic="html/adt-manual/index.html">
+  <topic label="Application Development Toolkit (ADT) User's Guide" href="html/adt-manual/ch01.html">
+    <topic label="Introducing the Application Development Toolkit (ADT)" href="html/adt-manual/ch01.html#book-intro"/>
+    <topic label="ADT Components" href="html/adt-manual/ch01s02.html">
+      <topic label="The Cross-Toolchain" href="html/adt-manual/ch01s02.html#the-cross-toolchain"/>
+      <topic label="Sysroot" href="html/adt-manual/ch01s02.html#sysroot"/>
+      <topic label="The QEMU Emulator" href="html/adt-manual/ch01s02.html#the-qemu-emulator"/>
+      <topic label="User-Space Tools" href="html/adt-manual/ch01s02.html#user-space-tools"/>
+    </topic>
+  </topic>
+  <topic label="Preparing to Use the Application Development Toolkit (ADT)" href="html/adt-manual/ch02.html">
+    <topic label="Installing the ADT" href="html/adt-manual/ch02.html#installing-the-adt">
+      <topic label="Using the ADT Installer" href="html/adt-manual/ch02.html#using-the-adt-installer">
+        <topic label="Getting the ADT Installer Tarball" href="html/adt-manual/ch02.html#getting-the-adt-installer-tarball"/>
+        <topic label="Configuring and Running the ADT Installer Script" href="html/adt-manual/ch02.html#configuring-and-running-the-adt-installer-script"/>
+      </topic>
+      <topic label="Using a Cross-Toolchain Tarball" href="html/adt-manual/ch02.html#using-an-existing-toolchain-tarball"/>
+      <topic label="Using BitBake and the Yocto Project Build Tree" href="html/adt-manual/ch02.html#using-the-toolchain-from-within-the-build-tree"/>
+    </topic>
+    <topic label="Setting Up the Cross-Development Environment" href="html/adt-manual/ch02s02.html"/>
+    <topic label="Securing Kernel and Filesystem Images" href="html/adt-manual/ch02s03.html">
+      <topic label="Getting the Images" href="html/adt-manual/ch02s03.html#getting-the-images"/>
+      <topic label="Extracting the Root Filesystem" href="html/adt-manual/ch02s03.html#extracting-the-root-filesystem"/>
+    </topic>
+  </topic>
+  <topic label="Optionally Customizing the Development Packages Installation" href="html/adt-manual/ch03.html">
+    <topic label="Package Management Systems" href="html/adt-manual/ch03.html#package-management-systems"/>
+    <topic label="Configuring the PMS" href="html/adt-manual/ch03s02.html"/>
+  </topic>
+  <topic label="Working Within Eclipse" href="html/adt-manual/ch04.html">
+    <topic label="Setting Up the Eclipse IDE" href="html/adt-manual/ch04.html#setting-up-the-eclipse-ide">
+      <topic label="Installing the Eclipse IDE" href="html/adt-manual/ch04.html#installing-eclipse-ide"/>
+      <topic label="Configuring the Eclipse IDE" href="html/adt-manual/ch04.html#configuring-the-eclipse-ide"/>
+      <topic label="Installing or Accessing the Eclipse Yocto Plug-in" href="html/adt-manual/ch04.html#installing-the-eclipse-yocto-plug-in">
+        <topic label="Installing the Pre-built Plug-in from the Yocto Project Eclipse Update Site" href="html/adt-manual/ch04.html#new-software"/>
+        <topic label="Installing the Plug-in Using the Latest Source Code" href="html/adt-manual/ch04.html#zip-file-method"/>
+        <topic label="Importing the Plug-in Project into the Eclipse Environment" href="html/adt-manual/ch04.html#yocto-project-source"/>
+      </topic>
+      <topic label="Configuring the Eclipse Yocto Plug-in" href="html/adt-manual/ch04.html#configuring-the-eclipse-yocto-plug-in">
+        <topic label="Configuring the Cross-Compiler Options" href="html/adt-manual/ch04.html#configuring-the-cross-compiler-options"/>
+        <topic label="Configuring the Target Options" href="html/adt-manual/ch04.html#configuring-the-target-options"/>
+      </topic>
+    </topic>
+    <topic label="Creating the Project" href="html/adt-manual/ch04s02.html"/>
+    <topic label="Configuring the Cross-Toolchains" href="html/adt-manual/ch04s03.html"/>
+    <topic label="Building the Project" href="html/adt-manual/ch04s04.html"/>
+    <topic label="Starting QEMU in User Space NFS Mode" href="html/adt-manual/ch04s05.html"/>
+    <topic label="Deploying and Debugging the Application" href="html/adt-manual/ch04s06.html"/>
+    <topic label="Running User-Space Tools" href="html/adt-manual/ch04s07.html"/>
+    <topic label="Customizing an Image Using a BitBake Commander Project and Hob" href="html/adt-manual/ch04s08.html">
+      <topic label="Creating the Yocto BitBake Commander Project" href="html/adt-manual/ch04s08.html#creating-the-yocto-bitbake-commander-project"/>
+      <topic label="Editing the Metadata Files" href="html/adt-manual/ch04s08.html#editing-the-metadata-files"/>
+      <topic label="Building and Customizing the Image" href="html/adt-manual/ch04s08.html#buiding-and-customizing-the-image"/>
+    </topic>
+  </topic>
+  <topic label="Using the Command Line" href="html/adt-manual/ch05.html">
+    <topic label="Autotools-Based Projects" href="html/adt-manual/ch05.html#autotools-based-projects"/>
+    <topic label="Makefile-Based Projects" href="html/adt-manual/ch05s02.html"/>
+  </topic>
+</toc>
diff --git a/plugins/org.yocto.sdk.doc.user/build.properties b/plugins/org.yocto.sdk.doc.user/build.properties
index cc18fce..546b6fd 100644
--- a/plugins/org.yocto.sdk.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.doc.user/build.properties
@@ -1,6 +1,12 @@
 bin.includes = plugin.xml,\
                .,\
                META-INF/,\
+               html/,\
                toc.xml,\
+               yocto-project-qs-toc.xml,\
+               about.html,\
                OSGI-INF/
-src.includes = toc.xml
+src.includes = toc.xml, \
+               html/,\
+               yocto-project-qs-toc.xml,\
+               about.html
diff --git a/plugins/org.yocto.sdk.doc.user/html/book.css b/plugins/org.yocto.sdk.doc.user/html/book.css
new file mode 100644
index 0000000..e4e0117
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/book.css
@@ -0,0 +1 @@
+@import "PLUGINS_ROOT/PRODUCT_PLUGIN/book.css";
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/building-an-image.png b/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/building-an-image.png
new file mode 100755
index 0000000000000000000000000000000000000000..1fbea5ab008e1dc864105851173e7ed64edd4b71
GIT binary patch
literal 14891
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
QAn=4!l2endkv0qaKXjC1u>b%7

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/using-a-pre-built-image.png b/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/using-a-pre-built-image.png
new file mode 100644
index 0000000000000000000000000000000000000000..b03130d123963ffe0a07c523d4772973887b9679
GIT binary patch
literal 12733
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
Pxj+LeYbn(zScd;Ur$T3+

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-environment.png b/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-environment.png
new file mode 100644
index 0000000000000000000000000000000000000000..82b7a55a35c097c8f9104d5d960e19fb200fb4c8
GIT binary patch
literal 73095
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
C2XROM

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-project-transp.png b/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-project-transp.png
new file mode 100755
index 0000000000000000000000000000000000000000..31d2b147fdb5e23f84d64652faf9528d83be7d8d
GIT binary patch
literal 8626
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

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/index.html b/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/index.html
new file mode 100644
index 0000000..bb680ca
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/index.html
@@ -0,0 +1,542 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>The Yocto Project Quick Start</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Quick Start">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF">
+<div class="article" title="The Yocto Project Quick Start"><div class="titlepage"><div><div><h2 class="title"><a name="intro"></a>The Yocto Project Quick Start</h2></div></div><hr></div><table border="0" summary="manufactured viewport for HTML img" cellspacing="0" cellpadding="0" width="540"><tr style="height: 90px"><td align="right"><img src="figures/yocto-project-transp.png" align="right" width="135"></td></tr></table><div class="section" title="The Yocto Project Quick Start"><div class="titlepage"><div><div><h2 class="title" style="clear: both"><a name="fake-title"></a>The Yocto Project Quick Start</h2></div></div></div><p>Copyright © 2010-2012 Linux Foundation</p></div><div class="section" title="Welcome!"><div class="titlepage"><div><div><h2 class="title" style="clear: both"><a name="welcome"></a>Welcome!</h2></div></div></div><p>
+        Welcome to the Yocto Project!  
+        The Yocto Project is an open-source collaboration project focused on embedded Linux
+        developers.
+        Amongst other things, the Yocto Project uses the Poky build system to 
+        construct complete Linux images.
+    </p><p>
+        If you don't have a system that runs Linux and you want to give the Yocto Project a test run, 
+        you might consider using the Yocto Project Build Appliance.
+        The Build Appliance allows you to build and boot a custom embedded Linux image with the Yocto 
+        Project using a non-Linux development system.  
+        See the <a class="ulink" href="http://www.yoctoproject.org/documentation/build-appliance" target="_top">Yocto 
+        Project Build Appliance</a> for more information.
+    </p><p>
+        On the other hand, if you know all about open-source development, Linux development environments, 
+        Git source repositories and the like and you just want some quick information that lets you try out
+        the Yocto Project on your Linux system, skip right to the 
+        "<a class="link" href="index.html#super-user" title="Super User">Super User</a>" section at the end of this quick start.
+    </p><p>
+        For the rest of you, this short document will give you some basic information about the environment and 
+        let you experience it in its simplest form.  
+        After reading this document, you will have a basic understanding of what the Yocto Project is
+        and how to use some of its core components.  
+        This document steps you through a simple example showing you how to build a small image 
+        and run it using the QEMU emulator.
+    </p><p>
+        For more detailed information on the Yocto Project, you should check out these resources:
+        </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p><span class="emphasis"><em>Website:</em></span> The <a class="ulink" href="http://www.yoctoproject.org" target="_top">Yocto Project Website</a>
+                provides the latest builds, breaking news, full development documentation, and a rich Yocto 
+                Project Development Community into which you can tap.
+                </p></li><li class="listitem"><p><span class="emphasis"><em>FAQs:</em></span> Lists commonly asked Yocto Project questions and answers.
+                You can find two FAQs: <a class="ulink" href="https://wiki.yoctoproject.org/wiki/FAQ" target="_top">Yocto Project FAQ</a> on 
+                a wiki, and the 
+                <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#faq" target="_top">FAQ</a> appendix in the 
+                The Yocto Project Reference Manual.
+                </p></li><li class="listitem"><p><span class="emphasis"><em>Developer Screencast:</em></span> The 
+                <a class="ulink" href="http://vimeo.com/36450321" target="_top">Getting Started with the Yocto Project - New
+                Developer Screencast Tutorial</a> provides a 30-minute video for the user 
+                new to the Yocto Project but familiar with Linux build systems.</p></li></ul></div><p>
+    </p><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3>
+        Due to production processes, there could be differences between the Yocto Project
+        documentation bundled in the release tarball and the 
+        <a class="ulink" href="http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html" target="_top">
+        Yocto Project Quick Start</a> on
+        the <a class="ulink" href="http://www.yoctoproject.org" target="_top">Yocto Project</a> website.
+        For the latest version of this manual, see the manual on the website.
+    </div></div><div class="section" title="Introducing the Yocto Project Development Environment"><div class="titlepage"><div><div><h2 class="title" style="clear: both"><a name="yp-intro"></a>Introducing the Yocto Project Development Environment</h2></div></div></div><p>
+        The Yocto Project through the Poky build system provides an open source development 
+        environment targeting the ARM, MIPS, PowerPC and x86 architectures for a variety of 
+        platforms including x86-64 and emulated ones.
+        You can use components from the Yocto Project to design, develop, build, debug, simulate,
+        and test the complete software stack using Linux, the X Window System, GNOME Mobile-based
+        application frameworks, and Qt frameworks.
+    </p><p></p><p></p><div class="mediaobject" align="center"><table border="0" summary="manufactured viewport for HTML img" cellspacing="0" cellpadding="0" width="100%"><tr><td align="center"><img src="figures/yocto-environment.png" align="middle" width="100%"></td></tr></table><div class="caption"><p>The Yocto Project Development Environment</p></div></div><p>
+        Here are some highlights for the Yocto Project:
+    </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p>Provides a recent Linux kernel along with a set of system commands and libraries suitable for the embedded environment.</p></li><li class="listitem"><p>Makes available system components such as X11, Matchbox, GTK+, Pimlico, Clutter,
+            GuPNP and Qt (among others) so you can create a richer user interface experience on 
+            devices that use displays or have a GUI.
+            For devices that don't have a GUI or display, you simply would not employ these 
+            components.</p></li><li class="listitem"><p>Creates a focused and stable core compatible with the OpenEmbedded 
+            project with which you can easily and reliably build and develop.</p></li><li class="listitem"><p>Fully supports a wide range of hardware and device emulation through the QEMU
+            Emulator.</p></li></ul></div><p>
+        The Yocto Project can generate images for many kinds of devices.  
+        However, the standard example machines target QEMU full-system emulation for x86, x86-64, ARM, MIPS,
+        and PPC-based architectures as well as specific hardware such as the 
+        <span class="trademark">Intel</span>® Desktop Board DH55TC.  
+        Because an image developed with the Yocto Project can boot inside a QEMU emulator, the 
+        development environment works nicely as a test platform for developing embedded software.
+    </p><p>
+        Another important Yocto Project feature is the Sato reference User Interface. 
+        This optional GNOME mobile-based UI, which is intended for devices with
+        restricted screen sizes, sits neatly on top of a device using the 
+        GNOME Mobile Stack and provides a well-defined user experience. 
+        Implemented in its own layer, it makes it clear to developers how they can implement 
+        their own user interface on top of Yocto Linux.
+    </p></div><div class="section" title="What You Need and How You Get It"><div class="titlepage"><div><div><h2 class="title" style="clear: both"><a name="resources"></a>What You Need and How You Get It</h2></div></div></div><p>
+        You need these things to develop in the Yocto Project environment:
+    </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p>A host system running a supported Linux distribution (i.e. recent releases of
+                Fedora, openSUSE, CentOS, Debian, and Ubuntu).
+                If the host system supports multiple cores and threads, you can configure the 
+                Yocto Project build system to decrease the time needed to build images
+                significantly.
+            </p></li><li class="listitem"><p>The right packages.</p></li><li class="listitem"><p>A release of Yocto Project.</p></li></ul></div><div class="section" title="The Linux Distribution"><div class="titlepage"><div><div><h3 class="title"><a name="the-linux-distro"></a>The Linux Distribution</h3></div></div></div><p>
+            The Yocto Project team is continually verifying more and more Linux 
+            distributions with each release.
+            In general, if you have the current release minus one of the following 
+            distributions you should have no problems.
+            </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p>Ubuntu</p></li><li class="listitem"><p>Fedora</p></li><li class="listitem"><p>openSUSE</p></li><li class="listitem"><p>CentOS</p></li></ul></div><p>
+            For a list of the distributions under validation and their status, see the
+            <a class="ulink" href="https://wiki.yoctoproject.org/wiki/Distribution_Support" target="_top">Distribution
+            Support</a> wiki page.
+            </p><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3>
+                For notes about using the Yocto Project on a RHEL 4-based host, see the
+                <a class="ulink" href="https://wiki.yoctoproject.org/wiki/BuildingOnRHEL4" target="_top">BuildingOnRHEL4</a>
+                wiki page.
+            </div><p>
+            </p><p>
+            The build system should be able to run on any modern distribution with Python 2.6 or 2.7.
+            Earlier releases of Python are known to not work and the system does not support Python 3 at this time.
+            This document assumes you are running one of the previously noted distributions on your Linux-based 
+            host systems.
+        </p><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3><p>
+            If you attempt to use a distribution not in the above list, you may or may not have success - you 
+            are venturing into untested territory.
+            Refer to  
+            <a class="ulink" href="http://www.openembedded.org/index.php?title=OEandYourDistro&amp;action=historysubmit&amp;diff=4309&amp;okdid=4225" target="_top">OE and Your Distro</a> and 
+            <a class="ulink" href="http://www.openembedded.org/index.php?title=Required_software&amp;action=historysubmit&amp;diff=4311&amp;oldid=4251" target="_top">Required Software</a> 
+            for information for other distributions used with the OpenEmbedded project, which might be
+            a starting point for exploration.
+            If you go down this path, you should expect problems.
+            When you do, please go to <a class="ulink" href="http://bugzilla.yoctoproject.org" target="_top">Yocto Project Bugzilla</a>
+            and submit a bug.
+            We are interested in hearing about your experience.
+        </p></div></div><div class="section" title="The Packages"><div class="titlepage"><div><div><h3 class="title"><a name="packages"></a>The Packages</h3></div></div></div><p>
+            Packages and package installation vary depending on your development system.  
+            In general, you need to have root access and then install the required packages.
+            The next few sections show you how to get set up with the right packages for
+            Ubuntu, Fedora, openSUSE, and CentOS.
+        </p><div class="section" title="Ubuntu"><div class="titlepage"><div><div><h4 class="title"><a name="ubuntu"></a>Ubuntu</h4></div></div></div><p>
+                The packages you need for a supported Ubuntu distribution are shown in the following command:
+            </p><pre class="literallayout">
+     $ sudo apt-get install sed wget subversion git-core coreutils \
+     unzip texi2html texinfo libsdl1.2-dev docbook-utils fop gawk \
+     python-pysqlite2 diffstat make gcc build-essential xsltproc \
+     g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
+     autoconf automake groff libtool xterm libxml-parser-perl
+                </pre></div><div class="section" title="Fedora"><div class="titlepage"><div><div><h4 class="title"><a name="fedora"></a>Fedora</h4></div></div></div><p>
+                The packages you need for a supported Fedora distribution are shown in the following
+                commands:
+            </p><pre class="literallayout">
+     $ sudo yum groupinstall "development tools"
+     $ sudo yum install python m4 make wget curl ftp tar bzip2 gzip \
+     unzip perl texinfo texi2html diffstat openjade \
+     docbook-style-dsssl sed docbook-style-xsl docbook-dtds fop xsltproc \
+     docbook-utils sed bc eglibc-devel ccache pcre pcre-devel quilt \
+     groff linuxdoc-tools patch cmake \
+     perl-ExtUtils-MakeMaker tcl-devel gettext chrpath ncurses apr \
+     SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
+     autoconf automake libtool xterm
+                </pre></div><div class="section" title="openSUSE"><div class="titlepage"><div><div><h4 class="title"><a name="opensuse"></a>openSUSE</h4></div></div></div><p>
+                The packages you need for a supported openSUSE distribution are shown in the following 
+                command:
+            </p><pre class="literallayout">
+     $ sudo zypper install python gcc gcc-c++ libtool fop \
+     subversion git chrpath automake make wget xsltproc \
+     diffstat texinfo freeglut-devel libSDL-devel
+                </pre></div><div class="section" title="CentOS"><div class="titlepage"><div><div><h4 class="title"><a name="centos"></a>CentOS</h4></div></div></div><p>
+                The packages you need for a supported CentOS distribution are shown in the following 
+                commands:
+            </p><pre class="literallayout">
+     $ sudo yum -y groupinstall "development tools"
+     $ sudo yum -y install tetex gawk sqlite-devel vim-common redhat-lsb xz \
+       m4 make wget curl ftp tar bzip2 gzip python-devel \
+       unzip perl texinfo texi2html diffstat openjade zlib-devel \
+       docbook-style-dsssl sed docbook-style-xsl docbook-dtds \
+       docbook-utils bc glibc-devel pcre pcre-devel \
+       groff linuxdoc-tools patch cmake \
+       tcl-devel gettext ncurses apr \
+       SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
+       autoconf automake libtool xterm
+                </pre><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3><p>
+                Depending on the CentOS version you are using, other requirements and dependencies
+                might exist. 
+                For details, you should look at the CentOS sections on the 
+                <a class="ulink" href="https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies" target="_top">Poky/GettingStarted/Dependencies</a>
+                wiki page.
+            </p></div></div></div><div class="section" title="Yocto Project Release"><div class="titlepage"><div><div><h3 class="title"><a name="releases"></a>Yocto Project Release</h3></div></div></div><p>
+            You can download the latest Yocto Project release by going to the 
+            <a class="ulink" href="http://www.yoctoproject.org/download" target="_top">Yocto Project Download page</a>.
+            Just go to the page and click the "Yocto Downloads" link found in the "Download"
+            navigation pane to the right to view all available Yocto Project releases. 
+            Then, click the "Yocto Release" link for the release you want from the list to 
+            begin the download. 
+            Nightly and developmental builds are also maintained at
+            <a class="ulink" href="http://autobuilder.yoctoproject.org/nightly/" target="_top">http://autobuilder.yoctoproject.org/nightly/</a>.  
+            However, for this document a released version of Yocto Project is used.
+        </p><p>
+            You can also get the Yocto Project files by setting up a Git repository on your host
+            development system. 
+            Doing so allows you to contribute back to the project.
+            For information on how to get set up using this method, see the 
+            "<a class="ulink" href="http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#local-yp-release" target="_top">Yocto 
+            Project Release</a>" item in The Yocto Project Development Manual.
+        </p></div></div><div class="section" title="A Quick Test Run"><div class="titlepage"><div><div><h2 class="title" style="clear: both"><a name="test-run"></a>A Quick Test Run</h2></div></div></div><p>
+        Now that you have your system requirements in order, you can give the Yocto Project a try.  
+        This section presents some steps that let you do the following:
+    </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p>Build an image and run it in the QEMU emulator</p></li><li class="listitem"><p>Use a pre-built image and run it in the QEMU emulator</p></li></ul></div><div class="section" title="Building an Image"><div class="titlepage"><div><div><h3 class="title"><a name="building-image"></a>Building an Image</h3></div></div></div><p>
+            In the development environment you will need to build an image whenever you change hardware 
+            support, add or change system libraries, or add or change services that have dependencies.
+        </p><div class="mediaobject" align="center"><img src="figures/building-an-image.png" align="middle"><div class="caption"><p>Building an Image</p></div></div><p>
+             Use the following commands to build your image.  
+             The build process creates an entire Linux distribution, including the toolchain, from source.
+         </p><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3><p>
+             The build process using Sato currently consumes 
+             about 50GB of disk space.
+             To allow for variations in the build process and for future package expansion, we 
+             recommend having at least 100GB of free disk space.
+         </p></div><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3><p>
+             By default, the Yocto Project searches for source code using a pre-determined order
+             through a set of locations.
+             If you encounter problems with the Yocto Project finding and downloading source code, see
+             the FAQ entry "How does the Yocto Project build system obtain source code and will it work behind my
+             firewall or proxy server?" in  
+             <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#faq" target="_top">
+             The Yocto Project Reference Manual</a>.
+         </p></div><p>
+             </p><pre class="literallayout">
+     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/poky-1.2+snapshot-8.0.tar.bz2
+     $ tar xjf poky-1.2+snapshot-8.0.tar.bz2
+     $ source poky-1.2+snapshot-8.0/oe-init-build-env poky-1.2+snapshot-8.0-build
+             </pre><p>
+         </p><div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Tip</h3><p>
+             To help conserve disk space during builds, you can add the following statement
+             to your project's configuration file, which for this example
+             is <code class="filename">poky-1.2+snapshot-8.0-build/conf/local.conf</code>.
+             Adding this statement deletes the work directory used for building a package
+             once the package is built.
+             </p><pre class="literallayout">
+     INHERIT += "rm_work"
+             </pre><p>
+         </p></div><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p>In the previous example, the first command retrieves the Yocto Project
+                 release tarball from the source repositories using the
+                 <code class="filename">wget</code> command.
+                 Alternatively, you can go to the 
+                 <a class="ulink" href="http://www.yoctoproject.org/download" target="_top">Yocto Project website's Downloads page</a>
+                 to retrieve the tarball.</p></li><li class="listitem"><p>The second command extracts the files from the tarball and places 
+                 them into a directory named <code class="filename">poky-1.2+snapshot-8.0</code> in the current 
+                 directory.</p></li><li class="listitem"><p>The third command runs the Yocto Project environment setup script.
+                 Running this script defines Yocto Project build environment settings needed to 
+                 complete the build.
+                 The script also creates the Yocto Project
+                 build directory, which is <code class="filename">poky-1.2+snapshot-8.0-build</code> in this case.
+                 After the script runs, your current working directory is set 
+                 to the build directory.
+                 Later, when the build completes, the build directory contains all the files 
+                 created during the build.
+                 </p></li></ul></div><p>
+             Take some time to examine your <code class="filename">local.conf</code> file 
+             in your project's configuration directory.
+             The defaults in that file should work fine.
+             However, there are some variables of interest at which you might look.
+         </p><p>  
+             By default, the target architecture for the build is <code class="filename">qemux86</code>, 
+             which produces an image that can be used in the QEMU emulator and is targeted at an
+             <span class="trademark">Intel</span>® 32-bit based architecture.
+             To change this default, edit the value of the <code class="filename">MACHINE</code> variable 
+             in the configuration file before launching the build.
+         </p><p>
+             Another couple of variables of interest are the 
+             <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#var-BB_NUMBER_THREADS" target="_top"><code class="filename">BB_NUMBER_THREADS</code></a> and the 
+             <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#var-PARALLEL_MAKE" target="_top"><code class="filename">PARALLEL_MAKE</code></a> variables.
+             By default, these variables are commented out. 
+             However, if you have a multi-core CPU you might want to uncomment
+             the lines and set both variables equal to twice the number of your 
+             host's processor cores.
+             Setting these variables can significantly shorten your build time.
+         </p><p>
+            Another consideration before you build is the package manager used when creating 
+            the image. 
+            By default, the Yocto Project build system uses the RPM package manager.
+            You can control this configuration by using the 
+            <code class="filename"><a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#var-PACKAGE_CLASSES" target="_top"><code class="filename">PACKAGE_CLASSES</code></a></code> variable.  
+             For additional package manager selection information, see 
+             "<a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#ref-classes-package" target="_top">Packaging - <code class="filename">package*.bbclass</code></a>" 
+             in The Yocto Project Reference Manual.
+        </p><p>
+             Continue with the following command to build an OS image for the target, which is 
+             <code class="filename">core-image-sato</code> in this example.
+             For information on the <code class="filename">-k</code> option use the 
+             <code class="filename">bitbake --help</code> command or see the
+             "<a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#usingpoky-components-bitbake" target="_top">BitBake</a>" section in 
+             The Yocto Project Reference Manual.
+             </p><pre class="literallayout">
+     $ bitbake -k core-image-sato
+             </pre><p>
+             </p><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3><p>
+                 BitBake requires Python 2.6 or 2.7.  For more information on this requirement, 
+                 see the 
+                 <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#faq" target="_top">FAQ</a> in The Yocto Project Reference 
+                 Manual.
+             </p></div><p>
+             The final command runs the image:
+             </p><pre class="literallayout">
+     $ runqemu qemux86
+             </pre><p>
+             </p><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3><p>
+                 Depending on the number of processors and cores, the amount or RAM, the speed of your
+                 Internet connection and other factors, the build process could take several hours the first
+                 time you run it.
+                 Subsequent builds run much faster since parts of the build are cached.
+             </p></div><p>
+         </p></div><div class="section" title="Using Pre-Built Binaries and QEMU"><div class="titlepage"><div><div><h3 class="title"><a name="using-pre-built"></a>Using Pre-Built Binaries and QEMU</h3></div></div></div><p>
+            If hardware, libraries and services are stable, you can get started by using a pre-built binary 
+            of the filesystem image, kernel, and toolchain and run it using the QEMU emulator.  
+            This scenario is useful for developing application software.
+        </p><div class="mediaobject" align="center"><img src="figures/using-a-pre-built-image.png" align="middle"><div class="caption"><p>Using a Pre-Built Image</p></div></div><p>
+            For this scenario, you need to do several things:
+        </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p>Install the appropriate stand-alone Yocto toolchain tarball.</p></li><li class="listitem"><p>Download the pre-built image that will boot with QEMU.  
+                You need to be sure to get the QEMU image that matches your target machine&#8217;s 
+                architecture (e.g. x86, ARM, etc.).</p></li><li class="listitem"><p>Download the filesystem image for your target machine's architecture.
+                </p></li><li class="listitem"><p>Set up the environment to emulate the hardware and then start the QEMU emulator.
+                </p></li></ul></div><div class="section" title="Installing the Toolchain"><div class="titlepage"><div><div><h4 class="title"><a name="installing-the-toolchain"></a>Installing the Toolchain</h4></div></div></div><p>
+                You can download the pre-built toolchain, which includes the <code class="filename">runqemu</code> 
+                script and support files, from the appropriate directory under
+                <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/toolchain/" target="_top">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/toolchain/</a>.  
+                Toolchains are available for 32-bit and 64-bit development systems from the 
+                <code class="filename">i686</code> and <code class="filename">x86-64</code> directories, respectively. 
+                Each type of development system supports five target architectures.
+                The tarball files are named such that a string representing the host system appears 
+                first in the filename and then is immediately followed by a string representing
+                the target architecture.
+            </p><pre class="literallayout">
+     poky-eglibc-&lt;<span class="emphasis"><em>host_system</em></span>&gt;-&lt;<span class="emphasis"><em>arch</em></span>&gt;-toolchain-gmae-&lt;<span class="emphasis"><em>release</em></span>&gt;.tar.bz2
+
+     Where:
+         &lt;<span class="emphasis"><em>host_system</em></span>&gt; is a string representing your development system: 
+                i686 or x86_64.
+       
+         &lt;<span class="emphasis"><em>arch</em></span>&gt; is a string representing the target architecture: 
+                i586, x86_64, powerpc, mips, or arm.
+       
+         &lt;<span class="emphasis"><em>release</em></span>&gt; is the version of Yocto Project.
+            </pre><p>       
+                For example, the following toolchain tarball is for a 64-bit development 
+                host system and a 32-bit target architecture:
+            </p><pre class="literallayout">
+     poky-eglibc-x86_64-i586-toolchain-gmae-1.3.tar.bz2
+            </pre><p>
+                The toolchain tarballs are self-contained and must be installed into <code class="filename">/opt/poky</code>.
+                The following commands show how you install the toolchain tarball given a 64-bit development host system
+                and a 32-bit target architecture.
+                The example assumes the toolchain tarball is located in <code class="filename">~/toolchains/</code>:
+            </p><p>
+                </p><pre class="literallayout">
+     $ cd /
+     $ sudo tar -xvjf ~/toolchains/poky-eglibc-x86_64-i586-toolchain-gmae-1.3.tar.bz2
+                </pre><p>
+            </p><p>
+                For more information on how to install tarballs, see the 
+                "<a class="ulink" href="http://www.yoctoproject.org/docs/latest/adt-manual/adt-manual.html#using-an-existing-toolchain-tarball" target="_top">Using a Cross-Toolchain Tarball</a>" and 
+                "<a class="ulink" href="http://www.yoctoproject.org/docs/latest/adt-manual/adt-manual.html#using-the-toolchain-from-within-the-build-tree" target="_top">Using BitBake and the Yocto Project Build Tree</a>" sections in The Yocto Project Application Development Toolkit (ADT) 
+                User's Guide.
+            </p></div><div class="section" title="Downloading the Pre-Built Linux Kernel"><div class="titlepage"><div><div><h4 class="title"><a name="downloading-the-pre-built-linux-kernel"></a>Downloading the Pre-Built Linux Kernel</h4></div></div></div><p>
+                You can download the pre-built Linux kernel suitable for running in the QEMU emulator from 
+                <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/qemu" target="_top">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/qemu</a>.
+                Be sure to use the kernel that matches the architecture you want to simulate.
+                Download areas exist for the five supported machine architectures:
+                <code class="filename">qemuarm</code>, <code class="filename">qemumips</code>, <code class="filename">qemuppc</code>,
+                <code class="filename">qemux86</code>, and <code class="filename">qemux86-64</code>.
+            </p><p>  
+                Most kernel files have one of the following forms:
+                </p><pre class="literallayout">
+     *zImage-qemu&lt;<span class="emphasis"><em>arch</em></span>&gt;.bin
+     vmlinux-qemu&lt;<span class="emphasis"><em>arch</em></span>&gt;.bin
+
+     Where:
+         &lt;<span class="emphasis"><em>arch</em></span>&gt; is a string representing the target architecture: 
+                x86, x86-64, ppc, mips, or arm.
+                </pre><p>
+            </p><p>
+                You can learn more about downloading a Yocto Project kernel in the 
+                "<a class="ulink" href="http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#local-kernel-files" target="_top">Linux Yocto Kernel</a>" section of  
+                The Yocto Project Development Manual.
+            </p></div><div class="section" title="Downloading the Filesystem"><div class="titlepage"><div><div><h4 class="title"><a name="downloading-the-filesystem"></a>Downloading the Filesystem</h4></div></div></div><p>
+                You can also download the filesystem image suitable for your target architecture from
+                <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/qemu" target="_top">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/qemu</a>.
+                Again, be sure to use the filesystem that matches the architecture you want 
+                to simulate.
+            </p><p>
+                The filesystem image has two tarball forms: <code class="filename">ext3</code> and 
+                <code class="filename">tar</code>.
+                You must use the <code class="filename">ext3</code> form when booting an image using the 
+                QEMU emulator.
+                The <code class="filename">tar</code> form can be flattened out in your host development system
+                and used for build purposes with the Yocto Project.
+                </p><pre class="literallayout">
+     core-image-&lt;<span class="emphasis"><em>profile</em></span>&gt;-qemu&lt;<span class="emphasis"><em>arch</em></span>&gt;.ext3
+     core-image-&lt;<span class="emphasis"><em>profile</em></span>&gt;-qemu&lt;<span class="emphasis"><em>arch</em></span>&gt;.tar.bz2
+
+     Where:
+         &lt;<span class="emphasis"><em>profile</em></span>&gt; is the filesystem image's profile:
+                   lsb, lsb-dev, lsb-sdk, lsb-qt3, minimal, minimal-dev, sato, sato-dev, or sato-sdk.
+                   For information on these types of image profiles, see
+                   <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#ref-images" target="_top">Reference: Images</a> in the Yocto Project Reference Manual.
+
+         &lt;<span class="emphasis"><em>arch</em></span>&gt; is a string representing the target architecture: 
+                x86, x86-64, ppc, mips, or arm.
+                </pre><p>
+            </p></div><div class="section" title="Setting Up the Environment and Starting the QEMU Emulator"><div class="titlepage"><div><div><h4 class="title"><a name="setting-up-the-environment-and-starting-the-qemu-emulator"></a>Setting Up the Environment and Starting the QEMU Emulator</h4></div></div></div><p>
+                Before you start the QEMU emulator, you need to set up the emulation environment.
+                The following command form sets up the emulation environment.
+                </p><pre class="literallayout">
+     $ source /opt/poky/1.3/environment-setup-&lt;<span class="emphasis"><em>arch</em></span>&gt;-poky-linux-&lt;<span class="emphasis"><em>if</em></span>&gt; 
+
+     Where:
+         &lt;<span class="emphasis"><em>arch</em></span>&gt; is a string representing the target architecture: 
+                i586, x86_64, ppc603e, mips, or armv5te.
+
+         &lt;<span class="emphasis"><em>if</em></span>&gt; is a string representing an embedded application binary interface.
+              Not all setup scripts include this string.
+                </pre><p>
+            </p><p>
+                Finally, this command form invokes the QEMU emulator 
+                </p><pre class="literallayout">
+     $ runqemu &lt;<span class="emphasis"><em>qemuarch</em></span>&gt; &lt;<span class="emphasis"><em>kernel-image</em></span>&gt; &lt;<span class="emphasis"><em>filesystem-image</em></span>&gt;
+
+     Where:
+         &lt;<span class="emphasis"><em>qemuarch</em></span>&gt; is a string representing the target architecture: qemux86, qemux86-64, 
+                    qemuppc, qemumips, or qemuarm.
+
+         &lt;<span class="emphasis"><em>kernel-image</em></span>&gt; is the architecture-specific kernel image.
+
+         &lt;<span class="emphasis"><em>filesystem-image</em></span>&gt; is the .ext3 filesystem image.
+
+                </pre><p>
+            </p><p>
+                Continuing with the example, the following two commands setup the emulation 
+                environment and launch QEMU.
+                This example assumes the root filesystem (<code class="filename">.ext3</code> file) and 
+                the pre-built kernel image file both reside in your home directory. 
+                The kernel and filesystem are for a 32-bit target architecture.
+                </p><pre class="literallayout">
+     $ cd $HOME
+     $ source /opt/poky/1.3/environment-setup-i586-poky-linux 
+     $ runqemu qemux86 bzImage-qemux86.bin \
+     core-image-sato-qemux86.ext3
+                </pre><p>
+            </p><p>
+                The environment in which QEMU launches varies depending on the filesystem image and on the 
+                target architecture.  
+                For example, if you source the environment for the ARM target 
+                architecture and then boot the minimal QEMU image, the emulator comes up in a new 
+                shell in command-line mode.  
+                However, if you boot the SDK image, QEMU comes up with a GUI.
+                </p><div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;"><h3 class="title">Note</h3>Booting the PPC image results in QEMU launching in the same shell in 
+                command-line mode.</div><p>
+            </p></div></div></div><div class="section" title="Super User"><div class="titlepage"><div><div><h2 class="title" style="clear: both"><a name="super-user"></a>Super User 
+</h2></div></div></div><p>
+        This section 
+        <sup>[<a name="id408486" href="#ftn.id408486" class="footnote">1</a>]</sup>
+        gives you a very fast description of how to use the Yocto Project to build images 
+        for a BeagleBoard xM starting from scratch. 
+        The steps were performed on a 64-bit Ubuntu 10.04 system.
+    </p><div class="section" title="Getting the Yocto Project"><div class="titlepage"><div><div><h3 class="title"><a name="getting-yocto"></a>Getting the Yocto Project</h3></div></div></div><p>
+            Get the <a class="ulink" href="http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-files" target="_top">Yocto Project Files</a>
+            one of two ways:
+            </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p><span class="emphasis"><em>Tarball:</em></span> 
+                    Use if you want the latest stable release:
+                    </p><pre class="literallayout">
+     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/poky-1.2+snapshot-8.0.tar.bz2
+     $ tar xvjf poky-1.2+snapshot-8.0.tar.bz2
+                    </pre></li><li class="listitem"><p><span class="emphasis"><em>Git Repository:</em></span>
+                    Use if you want to work with cutting edge development content:
+                    </p><pre class="literallayout">
+     $ git clone git://git.yoctoproject.org/poky
+                    </pre></li></ul></div><p>
+            The remainder of the section assumes the Git repository method.
+        </p></div><div class="section" title="Setting Up Your Host"><div class="titlepage"><div><div><h3 class="title"><a name="setting-up-your-host"></a>Setting Up Your Host</h3></div></div></div><p>
+            You need some packages for everything to work. 
+            Rather than duplicate them here, look at the "<a class="link" href="index.html#packages" title="The Packages">The Packages</a>"
+            section earlier in this quick start.
+        </p></div><div class="section" title="Initializing the Build Environment"><div class="titlepage"><div><div><h3 class="title"><a name="initializing-the-build-environment"></a>Initializing the Build Environment</h3></div></div></div><p>
+            From the parent directory of the Yocto Project Files, initialize your environment 
+            and provide a meaningful 
+            <a class="ulink" href="http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-build-directory" target="_top">Yocto Project Build Directory</a>
+            name:
+            </p><pre class="literallayout">
+     $ source poky/oe-init-build-env mybuilds
+            </pre><p>
+            At this point, the <code class="filename">mybuilds</code> directory has been created for you 
+            and it is now your current working directory.
+            If you don't provide your own directory name it defaults to <code class="filename">build</code>.
+        </p></div><div class="section" title="Configuring the local.conf File"><div class="titlepage"><div><div><h3 class="title"><a name="configuring-the-local.conf-file"></a>Configuring the local.conf File</h3></div></div></div><p>
+            Initializing the build environment creates a <code class="filename">local.conf</code> configuration file
+            in the build directory.
+            You need to manually edit this file to specify the machine you are building and to optimize
+            your build time.
+            Here are the minimal changes to make:
+            </p><pre class="literallayout">
+     BB_NUMBER_THREADS = "8"
+     PARALLEL_MAKE = "-j 8"
+     MACHINE ?= "beagleboard"
+            </pre><p>
+            Briefly, set <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#var-BB_NUMBER_THREADS" target="_top"><code class="filename">BB_NUMBER_THREADS</code></a> 
+            and <a class="ulink" href="http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#var-PARALLEL_MAKE" target="_top"><code class="filename">PARALLEL_MAKE</code></a> to
+            twice your host processor's number of cores.
+        </p><p>
+            A good deal that goes into a Yocto Project build is simply downloading all of the source 
+            tarballs. 
+            Maybe you have been working with another build system (OpenEmbedded, Angstrom, etc) for which 
+            you've built up a sizable directory of source tarballs.
+            Or perhaps someone else has such a directory for which you have read access. 
+            If so, you can save time by adding the <code class="filename">PREMIRRORS</code>
+            statement to your configuration file so that local directories are first checked for existing 
+            tarballs before running out to the net:
+            </p><pre class="literallayout">
+     PREMIRRORS_prepend = "\
+     git://.*/.* file:///home/you/dl/ \n \
+     svn://.*/.* file:///home/you/dl/ \n \
+     cvs://.*/.* file:///home/you/dl/ \n \
+     ftp://.*/.* file:///home/you/dl/ \n \
+     http://.*/.* file:///home/you/dl/ \n \
+     https://.*/.* file:///home/you/dl/ \n"
+            </pre><p>
+        </p></div><div class="section" title="Building the Image"><div class="titlepage"><div><div><h3 class="title"><a name="building-the-image"></a>Building the Image</h3></div></div></div><p>
+            At this point, you need to select an image to build for the BeagleBoard xM.
+            If this is your first build using the Yocto Project, you should try the smallest and simplest
+            image:
+            </p><pre class="literallayout">
+     $ bitbake core-image-minimal
+            </pre><p>
+            Now you just wait for the build to finish.
+        </p><p>
+            Here are some variations on the build process that could be helpful:
+            </p><div class="itemizedlist"><ul class="itemizedlist" type="disc"><li class="listitem"><p>Fetch all the necessary sources without starting the build:
+                    </p><pre class="literallayout">
+     $ bitbake -c fetchall core-image-minimal
+                    </pre><p>
+                    This variation guarantees that you have all the sources for that BitBake target 
+                    should you to disconnect from the net and want to do the build later offline.
+                    </p></li><li class="listitem"><p>Specify to continue the build even if BitBake encounters an error.
+                    By default, BitBake aborts the build when it encounters an error.
+                    This command keeps a faulty build going:
+                    </p><pre class="literallayout">
+     $ bitbake -k core-image-minimal
+                    </pre></li></ul></div><p>
+        </p></div></div><div class="footnotes"><br><hr width="100" align="left"><div class="footnote"><p><sup>[<a id="ftn.id408486" href="#id408486" class="para">1</a>] </sup>
+                Kudos and thanks to Robert P. J. Day of 
+                <a class="ulink" href="http://www.crashcourse.ca" target="_top">CrashCourse</a> for providing the basis
+                for this "expert" section with information from one of his
+                <a class="ulink" href="http://www.crashcourse.ca/wiki/index.php/Yocto_Project_Quick_Start" target="_top">wiki</a>
+                pages.
+            </p></div></div></div></body></html>
diff --git a/plugins/org.yocto.sdk.doc.user/plugin.xml b/plugins/org.yocto.sdk.doc.user/plugin.xml
index 367962c..e211b6a 100644
--- a/plugins/org.yocto.sdk.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.doc.user/plugin.xml
@@ -7,5 +7,9 @@
           file="toc.xml"
           primary="true">
     </toc>
+    <toc
+          file="yocto-project-qs-toc.xml"
+          primary="false">
+    </toc>
  </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.doc.user/toc.xml b/plugins/org.yocto.sdk.doc.user/toc.xml
index 4d30d0d..9be9cf5 100644
--- a/plugins/org.yocto.sdk.doc.user/toc.xml
+++ b/plugins/org.yocto.sdk.doc.user/toc.xml
@@ -1,3 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <toc label="The Yocto Project Documentation">
+   <topic label="The Yocto Project Quick Start">
+      <link toc="yocto-project-qs-toc.xml"/>
+   </topic>
 </toc>
-- 
1.7.7.6


