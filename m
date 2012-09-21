Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F406E0144E
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:18 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E45E6400A1;
	Fri, 21 Sep 2012 16:14:20 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:11 +0200
Message-Id: <03c0d71b47602996c71b78504e5d82a3631ded7c.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <fe14d23342130dc08b2ac62a6c5a85e631708a60.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
	<e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
	<ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
	<020c6213dadc157b2d47f4d99db197c3ded6e90b.1348237278.git.timo.mueller@bmw-carit.de>
	<33b736ffaca72740bedf1b1415b11a8f653fa5ba.1348237278.git.timo.mueller@bmw-carit.de>
	<08c85c21ce236477ddc53176fa1a961881aba94c.1348237278.git.timo.mueller@bmw-carit.de>
	<fe14d23342130dc08b2ac62a6c5a85e631708a60.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 08/12] plugins/sdk.doc.user: Added yocto adt manual
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The Yocto Project Application Development Toolkit (ADT) User's Guide
is integrated into the eclipse help. This includes the generated html
files as well as a table of contents that is needed by the eclipse
help center to allow the user to navigate the contents.

Source: git://git.yoctoproject.org/yocto-docs/
---
 plugins/org.yocto.sdk.doc.user/about.html          |   23 ++++
 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml  |   35 ++++++
 plugins/org.yocto.sdk.doc.user/build.properties    |    4 +-
 .../html/adt-manual/adt-intro-section.html         |   39 ++++++
 .../html/adt-manual/adt-intro.html                 |   44 +++++++
 .../html/adt-manual/adt-package.html               |   30 +++++
 .../html/adt-manual/adt-prepare.html               |   39 ++++++
 .../html/adt-manual/autotools-based-projects.html  |   53 ++++++++
 ...uring-and-running-the-adt-installer-script.html |  130 ++++++++++++++++++++
 .../html/adt-manual/configuring-the-pms.html       |   68 ++++++++++
 .../html/adt-manual/eclipse-overview.html          |   37 ++++++
 .../adt-manual/extracting-the-root-filesystem.html |   45 +++++++
 .../html/adt-manual/figures/adt-title.png          |  Bin 0 -> 13498 bytes
 .../getting-the-adt-installer-tarball.html         |   50 ++++++++
 .../html/adt-manual/getting-the-images.html        |  100 +++++++++++++++
 .../html/adt-manual/index.html                     |  130 ++++++++++++++++++++
 .../html/adt-manual/installing-the-adt.html        |   59 +++++++++
 .../html/adt-manual/makefile-based-projects.html   |   28 ++++
 .../adt-manual/package-management-systems.html     |   40 ++++++
 .../securing-kernel-and-filesystem-images.html     |   22 ++++
 ...tting-up-the-cross-development-environment.html |   40 ++++++
 .../html/adt-manual/sysroot.html                   |   23 ++++
 .../html/adt-manual/the-cross-toolchain.html       |   24 ++++
 .../html/adt-manual/the-qemu-emulator.html         |   34 +++++
 .../html/adt-manual/user-space-tools.html          |   55 ++++++++
 .../using-an-existing-toolchain-tarball.html       |   90 ++++++++++++++
 .../html/adt-manual/using-the-adt-installer.html   |   20 +++
 .../html/adt-manual/using-the-command-line.html    |   42 +++++++
 ...g-the-toolchain-from-within-the-build-tree.html |   75 +++++++++++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    4 +
 plugins/org.yocto.sdk.doc.user/toc.xml             |    3 +
 31 files changed, 1385 insertions(+), 1 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro-section.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-package.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-prepare.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/autotools-based-projects.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-and-running-the-adt-installer-script.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-the-pms.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/eclipse-overview.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/extracting-the-root-filesystem.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/figures/adt-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-adt-installer-tarball.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-images.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/installing-the-adt.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/makefile-based-projects.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/package-management-systems.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/securing-kernel-and-filesystem-images.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/setting-up-the-cross-development-environment.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/sysroot.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/the-cross-toolchain.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/the-qemu-emulator.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/user-space-tools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-an-existing-toolchain-tarball.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-adt-installer.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-command-line.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-toolchain-from-within-the-build-tree.html

diff --git a/plugins/org.yocto.sdk.doc.user/about.html b/plugins/org.yocto.sdk.doc.user/about.html
index d62c5d1..303a3a6 100644
--- a/plugins/org.yocto.sdk.doc.user/about.html
+++ b/plugins/org.yocto.sdk.doc.user/about.html
@@ -52,6 +52,29 @@
 			</a>
 		<br />
 			<em>Commit:</em> abc32d85a7f241766d1fcc52a251249f2172ea89
+		<br />
+		<br />
+		<strong>
+			The Yocto Project Application Developer's Guide:
+		</strong>
+		<br />
+		<br />
+			This manual shows you how to setup and use the Application Development
+			Toolkit (ADT) and stand-alone cross-development toolchains so you can
+			develop user-space applications.
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
+			<em>Commit:</em> abc32d85a7f241766d1fcc52a251249f2172ea89
 	</p>
 </body>
 </html>
diff --git a/plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml b/plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
new file mode 100644
index 0000000..651bf07
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
@@ -0,0 +1,35 @@
+<?xml version="1.0" encoding="utf-8" standalone="no"?>
+<toc label="The Yocto Project Application Developer's Guide" topic="html/adt-manual/index.html">
+  <topic label="Introduction" href="html/adt-manual/adt-intro.html">
+    <topic label="The Application Development Toolkit (ADT)" href="html/adt-manual/adt-intro-section.html">
+      <topic label="The Cross-Toolchain" href="html/adt-manual/the-cross-toolchain.html"/>
+      <topic label="Sysroot" href="html/adt-manual/sysroot.html"/>
+      <topic label="Eclipse Yocto Plug-in" href="html/adt-manual/eclipse-overview.html"/>
+      <topic label="The QEMU Emulator" href="html/adt-manual/the-qemu-emulator.html"/>
+      <topic label="User-Space Tools" href="html/adt-manual/user-space-tools.html"/>
+    </topic>
+  </topic>
+  <topic label="Preparing for Application Development" href="html/adt-manual/adt-prepare.html">
+    <topic label="Installing the ADT and Toolchains" href="html/adt-manual/installing-the-adt.html">
+      <topic label="Using the ADT Installer" href="html/adt-manual/using-the-adt-installer.html">
+        <topic label="Getting the ADT Installer Tarball" href="html/adt-manual/getting-the-adt-installer-tarball.html"/>
+        <topic label="Configuring and Running the ADT Installer Script" href="html/adt-manual/configuring-and-running-the-adt-installer-script.html"/>
+      </topic>
+      <topic label="Using a Cross-Toolchain Tarball" href="html/adt-manual/using-an-existing-toolchain-tarball.html"/>
+      <topic label="Using BitBake and the Build Directory" href="html/adt-manual/using-the-toolchain-from-within-the-build-tree.html"/>
+    </topic>
+    <topic label="Setting Up the Cross-Development Environment" href="html/adt-manual/setting-up-the-cross-development-environment.html"/>
+    <topic label="Securing Kernel and Filesystem Images" href="html/adt-manual/securing-kernel-and-filesystem-images.html">
+      <topic label="Getting the Images" href="html/adt-manual/getting-the-images.html"/>
+      <topic label="Extracting the Root Filesystem" href="html/adt-manual/extracting-the-root-filesystem.html"/>
+    </topic>
+  </topic>
+  <topic label="Optionally Customizing the Development Packages Installation" href="html/adt-manual/adt-package.html">
+    <topic label="Package Management Systems" href="html/adt-manual/package-management-systems.html"/>
+    <topic label="Configuring the PMS" href="html/adt-manual/configuring-the-pms.html"/>
+  </topic>
+  <topic label="Using the Command Line" href="html/adt-manual/using-the-command-line.html">
+    <topic label="Autotools-Based Projects" href="html/adt-manual/autotools-based-projects.html"/>
+    <topic label="Makefile-Based Projects" href="html/adt-manual/makefile-based-projects.html"/>
+  </topic>
+</toc>
diff --git a/plugins/org.yocto.sdk.doc.user/build.properties b/plugins/org.yocto.sdk.doc.user/build.properties
index 546b6fd..b1659fe 100644
--- a/plugins/org.yocto.sdk.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.doc.user/build.properties
@@ -5,8 +5,10 @@ bin.includes = plugin.xml,\
                toc.xml,\
                yocto-project-qs-toc.xml,\
                about.html,\
+               adt-manual-toc.xml,\
                OSGI-INF/
 src.includes = toc.xml, \
                html/,\
                yocto-project-qs-toc.xml,\
-               about.html
+               about.html,\
+               adt-manual-toc.xml
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro-section.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro-section.html
new file mode 100644
index 0000000..4082048
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro-section.html
@@ -0,0 +1,39 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1. The Application Development Toolkit (ADT)</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-intro.html" title="Chapter 1. Introduction">
+<link rel="prev" href="adt-intro.html" title="Chapter 1. Introduction">
+<link rel="next" href="the-cross-toolchain.html" title="1.1.1. The Cross-Toolchain">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1. The Application Development Toolkit (ADT)">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="adt-intro-section"></a>1.1. The Application Development Toolkit (ADT)</h2></div></div></div>
+<p>
+        Part of the Yocto Project development solution is an Application Development 
+        Toolkit (ADT).
+        The ADT provides you with a custom-built, cross-development 
+        platform suited for developing a user-targeted product application.
+    </p>
+<p>
+        Fundamentally, the ADT consists of the following:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>An architecture-specific cross-toolchain and matching 
+                sysroot both built by the OpenEmbedded build system, which uses Poky.
+                The toolchain and sysroot are based on a metadata configuration and extensions, 
+                which allows you to cross-develop on the host machine for the target hardware.
+                </p></li>
+<li class="listitem"><p>The Eclipse IDE Yocto Plug-in.</p></li>
+<li class="listitem"><p>The Quick EMUlator (QEMU), which lets you simulate target hardware.
+                </p></li>
+<li class="listitem"><p>Various user-space tools that greatly enhance your application 
+                development experience.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro.html
new file mode 100644
index 0000000..bbf32d2
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro.html
@@ -0,0 +1,44 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 1. Introduction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="prev" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="next" href="adt-intro-section.html" title="1.1. The Application Development Toolkit (ADT)">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 1. Introduction">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="adt-intro"></a>Chapter 1. Introduction</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="adt-intro-section.html">1.1. The Application Development Toolkit (ADT)</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="the-cross-toolchain.html">1.1.1. The Cross-Toolchain</a></span></dt>
+<dt><span class="section"><a href="sysroot.html">1.1.2. Sysroot</a></span></dt>
+<dt><span class="section"><a href="eclipse-overview.html">1.1.3. Eclipse Yocto Plug-in</a></span></dt>
+<dt><span class="section"><a href="the-qemu-emulator.html">1.1.4. The QEMU Emulator</a></span></dt>
+<dt><span class="section"><a href="user-space-tools.html">1.1.5. User-Space Tools</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+<p>
+    Welcome to the Yocto Project Application Developer's Guide.  
+    This manual provides information that lets you begin developing applications 
+    using the Yocto Project.
+</p>
+<p>
+    The Yocto Project provides an application development environment based on 
+    an Application Development Toolkit (ADT) and the availability of stand-alone
+    cross-development toolchains and other tools.
+    This manual describes the ADT and how you can configure and install it,
+    how to access and use the cross-development toolchains, how to 
+    customize the development packages installation,
+    how to use command line development for both Autotools-based and Makefile-based projects, 
+    and an introduction to the Eclipse Yocto Plug-in. 
+</p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-package.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-package.html
new file mode 100644
index 0000000..0a6f5a6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-package.html
@@ -0,0 +1,30 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 3. Optionally Customizing the Development Packages Installation</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="prev" href="extracting-the-root-filesystem.html" title="2.3.2. Extracting the Root Filesystem">
+<link rel="next" href="package-management-systems.html" title="3.1. Package Management Systems">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 3. Optionally Customizing the Development Packages Installation">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="adt-package"></a>Chapter 3. Optionally Customizing the Development Packages Installation</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="package-management-systems.html">3.1. Package Management Systems</a></span></dt>
+<dt><span class="section"><a href="configuring-the-pms.html">3.2. Configuring the PMS</a></span></dt>
+</dl>
+</div>
+<p>
+        Because the Yocto Project is suited for embedded Linux development, it is 
+        likely that you will need to customize your development packages installation.  
+        For example, if you are developing a minimal image, then you might not need 
+        certain packages (e.g. graphics support packages).  
+        Thus, you would like to be able to remove those packages from your target sysroot.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-prepare.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-prepare.html
new file mode 100644
index 0000000..8d9ffdd
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-prepare.html
@@ -0,0 +1,39 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 2. Preparing for Application Development</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="prev" href="user-space-tools.html" title="1.1.5. User-Space Tools">
+<link rel="next" href="installing-the-adt.html" title="2.1. Installing the ADT and Toolchains">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 2. Preparing for Application Development">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="adt-prepare"></a>Chapter 2. Preparing for Application Development</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="installing-the-adt.html">2.1. Installing the ADT and Toolchains</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="using-the-adt-installer.html">2.1.1. Using the ADT Installer</a></span></dt>
+<dt><span class="section"><a href="using-an-existing-toolchain-tarball.html">2.1.2. Using a Cross-Toolchain Tarball</a></span></dt>
+<dt><span class="section"><a href="using-the-toolchain-from-within-the-build-tree.html">2.1.3. Using BitBake and the Build Directory</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="setting-up-the-cross-development-environment.html">2.2. Setting Up the Cross-Development Environment</a></span></dt>
+<dt><span class="section"><a href="securing-kernel-and-filesystem-images.html">2.3. Securing Kernel and Filesystem Images</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="getting-the-images.html">2.3.1. Getting the Images</a></span></dt>
+<dt><span class="section"><a href="extracting-the-root-filesystem.html">2.3.2. Extracting the Root Filesystem</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+<p>
+    In order to develop applications, you need set up your host development system.
+    Several ways exist that allow you to install cross-development tools, QEMU, the  
+    Eclipse Yocto Plug-in, and other tools.
+    This chapter describes how to prepare for application development.
+</p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/autotools-based-projects.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/autotools-based-projects.html
new file mode 100644
index 0000000..46b8c9d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/autotools-based-projects.html
@@ -0,0 +1,53 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1. Autotools-Based Projects</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="using-the-command-line.html" title="Chapter 4. Using the Command Line">
+<link rel="prev" href="using-the-command-line.html" title="Chapter 4. Using the Command Line">
+<link rel="next" href="makefile-based-projects.html" title="4.2. Makefile-Based Projects">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1. Autotools-Based Projects">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="autotools-based-projects"></a>4.1. Autotools-Based Projects</h2></div></div></div>
+<p>
+        For an Autotools-based project, you can use the cross-toolchain by just 
+        passing the appropriate host option to <code class="filename">configure.sh</code>.
+        The host option you use is derived from the name of the environment setup 
+        script in <code class="filename">/opt/poky</code> resulting from installation of the 
+        cross-toolchain tarball.
+        For example, the host option for an ARM-based target that uses the GNU EABI 
+        is <code class="filename">armv5te-poky-linux-gnueabi</code>.
+        Note that the name of the script is 
+        <code class="filename">environment-setup-armv5te-poky-linux-gnueabi</code>.
+        Thus, the following command works:
+        </p>
+<pre class="literallayout">
+     $ configure --host=armv5te-poky-linux-gnueabi \
+        --with-libtool-sysroot=&lt;sysroot-dir&gt;
+        </pre>
+<p>
+    </p>
+<p>
+        This single command updates your project and rebuilds it using the appropriate 
+        cross-toolchain tools.
+    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+        If <code class="filename">configure</code> script results in problems recognizing the 
+        <code class="filename">--with-libtool-sysroot=&lt;sysroot-dir&gt;</code> option, 
+        regenerate the script to enable the support by doing the following and then 
+        re-running the script:
+        <pre class="literallayout">
+     $ libtoolize --automake
+     $ aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \
+        [-I &lt;dir_containing_your_project-specific_m4_macros&gt;]
+     $ autoconf
+     $ autoheader
+     $ automake -a
+        </pre>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-and-running-the-adt-installer-script.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-and-running-the-adt-installer-script.html
new file mode 100644
index 0000000..fa71f11
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-and-running-the-adt-installer-script.html
@@ -0,0 +1,130 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1.1.2. Configuring and Running the ADT Installer Script</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="using-the-adt-installer.html" title="2.1.1. Using the ADT Installer">
+<link rel="prev" href="getting-the-adt-installer-tarball.html" title="2.1.1.1. Getting the ADT Installer Tarball">
+<link rel="next" href="using-an-existing-toolchain-tarball.html" title="2.1.2. Using a Cross-Toolchain Tarball">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.1.2. Configuring and Running the ADT Installer Script">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="configuring-and-running-the-adt-installer-script"></a>2.1.1.2. Configuring and Running the ADT Installer Script</h4></div></div></div>
+<p>
+                Before running the ADT Installer script, you need to unpack the tarball.
+                You can unpack the tarball in any directory you wish.
+                For example, this command copies the ADT Installer tarball from where 
+                it was built into the home directory and then unpacks the tarball into 
+                a top-level directory named <code class="filename">adt-installer</code>:
+                </p>
+<pre class="literallayout">
+     $ cd ~
+     $ cp ~/poky/build/tmp/deploy/sdk/adt_installer.tar.bz2 $HOME
+     $ tar -xjf adt_installer.tar.bz2
+                </pre>
+<p>
+                Unpacking it creates the directory <code class="filename">adt-installer</code>, 
+                which contains the ADT Installer script (<code class="filename">adt_installer</code>)
+                and its configuration file (<code class="filename">adt_installer.conf</code>).
+            </p>
+<p>
+                Before you run the script, however, you should examine the ADT Installer configuration 
+                file and be sure you are going to get what you want.  
+                Your configurations determine which kernel and filesystem image are downloaded.
+            </p>
+<p>  
+                The following list describes the configurations you can define for the ADT Installer.  
+                For configuration values and restrictions, see the comments in  
+                the <code class="filename">adt-installer.conf</code> file:
+
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename">YOCTOADT_REPO</code>: This area 
+                        includes the IPKG-based packages and the root filesystem upon which 
+                        the installation is based.  
+                        If you want to set up your own IPKG repository pointed to by 
+                        <code class="filename">YOCTOADT_REPO</code>, you need to be sure that the 
+                        directory structure follows the same layout as the reference directory 
+                        set up at <a class="ulink" href="http://adtrepo.yoctoproject.org" target="_self">http://adtrepo.yoctoproject.org</a>.  
+                        Also, your repository needs to be accessible through HTTP.</p></li>
+<li class="listitem"><p><code class="filename">YOCTOADT_TARGETS</code>: The machine 
+                        target architectures for which you want to set up cross-development 
+                        environments.</p></li>
+<li class="listitem"><p><code class="filename">YOCTOADT_QEMU</code>: Indicates whether 
+                        or not to install the emulator QEMU.</p></li>
+<li class="listitem">
+<p><code class="filename">YOCTOADT_NFS_UTIL</code>: Indicates whether 
+                        or not to install user-mode NFS.  
+                        If you plan to use the Eclipse IDE Yocto plug-in against QEMU, 
+                        you should install NFS.
+                        </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>To boot QEMU images using our userspace NFS server, you need 
+                            to be running <code class="filename">portmap</code> or <code class="filename">rpcbind</code>. 
+                            If you are running <code class="filename">rpcbind</code>, you will also need to add the 
+                            <code class="filename">-i</code> option when <code class="filename">rpcbind</code> starts up. 
+                            Please make sure you understand the security implications of doing this. 
+                            You might also have to modify your firewall settings to allow 
+                            NFS booting to work.</div>
+</li>
+<li class="listitem"><p><code class="filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code>: The root 
+                        filesystem images you want to download from the 
+                        <code class="filename">YOCTOADT_IPKG_REPO</code> repository.</p></li>
+<li class="listitem"><p><code class="filename">YOCTOADT_TARGET_SYSROOT_IMAGE_&lt;arch&gt;</code>: The 
+                        particular root filesystem used to extract and create the target sysroot.
+                        The value of this variable must have been specified with 
+                        <code class="filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code>.
+                        For example, if you downloaded both <code class="filename">minimal</code> and 
+                        <code class="filename">sato-sdk</code> images by setting 
+                        <code class="filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code>
+                        to "minimal sato-sdk", then <code class="filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code>
+                        must be set to either <code class="filename">minimal</code> or 
+                        <code class="filename">sato-sdk</code>.</p></li>
+<li class="listitem"><p><code class="filename">YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;</code>: The 
+                        location on the development host where the target sysroot is created.
+                        </p></li>
+</ul></div>
+<p>
+            </p>
+<p>
+                After you have configured the <code class="filename">adt_installer.conf</code> file, 
+                run the installer using the following command.
+                Be sure that you are not trying to use cross-compilation tools. 
+                When you run the installer, the environment must use a 
+                host <code class="filename">gcc</code>:
+                </p>
+<pre class="literallayout">
+     $ cd ~/adt-installer
+     $ ./adt_installer
+                </pre>
+<p>
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                The ADT Installer requires the <code class="filename">libtool</code> package to complete.  
+                If you install the recommended packages as described in  
+                "<a class="link" href="../yocto-project-qs/packages.html" target="_self">The Packages</a>"
+                section of the Yocto Project Quick Start, then you will have libtool installed.
+            </div>
+<p>
+                Once the installer begins to run, you are asked to confirm the location for 
+                cross-toolchain installation, which is <code class="filename">/opt/poky/&lt;release&gt;</code>.
+                After confirming the location, you are prompted to run in  
+                interactive or silent mode.  
+                If you want to closely monitor the installation, choose &#8220;I&#8221; for interactive 
+                mode rather than &#8220;S&#8221; for silent mode.  
+                Follow the prompts from the script to complete the installation.
+            </p>
+<p>
+                Once the installation completes, the ADT, which includes the cross-toolchain, is installed.
+                You will notice environment setup files for the cross-toolchain in 
+                <code class="filename">/opt/poky/1.3</code>,
+                and image tarballs in the <code class="filename">adt-installer</code>
+                directory according to your installer configurations, and the target sysroot located
+                according to the <code class="filename">YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;</code> variable
+                also in your configuration file.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-the-pms.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-the-pms.html
new file mode 100644
index 0000000..d692260
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-the-pms.html
@@ -0,0 +1,68 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2. Configuring the PMS</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-package.html" title="Chapter 3. Optionally Customizing the Development Packages Installation">
+<link rel="prev" href="package-management-systems.html" title="3.1. Package Management Systems">
+<link rel="next" href="using-the-command-line.html" title="Chapter 4. Using the Command Line">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2. Configuring the PMS">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="configuring-the-pms"></a>3.2. Configuring the PMS</h2></div></div></div>
+<p>
+        Whichever PMS you are using, you need to be sure that the 
+        <a class="link" href="../poky-ref-manual/var-PACKAGE_CLASSES.html" target="_self"><code class="filename">PACKAGE_CLASSES</code></a>
+        variable in the <code class="filename">conf/local.conf</code>
+        file is set to reflect that system.  
+        The first value you choose for the variable specifies the package file format for the root
+        filesystem at sysroot.
+        Additional values specify additional formats for convenience or testing.  
+        See the configuration file for details.
+    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+        For build performance information related to the PMS, see
+        <a class="link" href="../poky-ref-manual/ref-classes-package.html" target="_self">Packaging - <code class="filename">package*.bbclass</code></a>
+        in the Yocto Project Reference Manual.
+    </div>
+<p>
+        As an example, consider a scenario where you are using OPKG and you want to add 
+        the <code class="filename">libglade</code> package to the target sysroot.
+    </p>
+<p>
+        First, you should generate the <code class="filename">ipk</code> file for the 
+        <code class="filename">libglade</code> package and add it 
+        into a working <code class="filename">opkg</code> repository.  
+        Use these commands:
+        </p>
+<pre class="literallayout">
+     $ bitbake libglade
+     $ bitbake package-index
+        </pre>
+<p>
+    </p>
+<p>
+        Next, source the environment setup script found in the 
+        <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.  
+        Follow that by setting up the installation destination to point to your 
+        sysroot as <code class="filename">&lt;sysroot_dir&gt;</code>.  
+        Finally, have an OPKG configuration file <code class="filename">&lt;conf_file&gt;</code>
+        that corresponds to the <code class="filename">opkg</code> repository you have just created. 
+        The following command forms should now work:
+        </p>
+<pre class="literallayout">
+     $ opkg-cl &#8211;f &lt;conf_file&gt; -o &lt;sysroot_dir&gt; update
+     $ opkg-cl &#8211;f &lt;cconf_file&gt; -o &lt;sysroot_dir&gt; \
+        --force-overwrite install libglade
+     $ opkg-cl &#8211;f &lt;cconf_file&gt; -o &lt;sysroot_dir&gt; \
+        --force-overwrite install libglade-dbg
+     $ opkg-cl &#8211;f &lt;conf_file&gt; -o &lt;sysroot_dir&gt; \
+        --force-overwrite install libglade-dev
+        </pre>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/eclipse-overview.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/eclipse-overview.html
new file mode 100644
index 0000000..cd874f7
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/eclipse-overview.html
@@ -0,0 +1,37 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1.3. Eclipse Yocto Plug-in</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-intro-section.html" title="1.1. The Application Development Toolkit (ADT)">
+<link rel="prev" href="sysroot.html" title="1.1.2. Sysroot">
+<link rel="next" href="the-qemu-emulator.html" title="1.1.4. The QEMU Emulator">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1.3. Eclipse Yocto Plug-in">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="eclipse-overview"></a>1.1.3. Eclipse Yocto Plug-in</h3></div></div></div>
+<p>
+            The Eclipse IDE is a popular development environment and it fully supports 
+            development using the Yocto Project.  
+            When you install and configure the Eclipse Yocto Project Plug-in into 
+            the Eclipse IDE, you maximize your Yocto Project experience.  
+            Installing and configuring the Plug-in results in an environment that 
+            has extensions specifically designed to let you more easily develop software.  
+            These extensions allow for cross-compilation, deployment, and execution of 
+            your output into a QEMU emulation session.  
+            You can also perform cross-debugging and profiling.  
+            The environment also supports a suite of tools that allows you to perform 
+            remote profiling, tracing, collection of power data, collection of 
+            latency data, and collection of performance data.
+        </p>
+<p>
+            For information about the application development workflow that uses the Eclipse
+            IDE and for a detailed example of how to install and configure the Eclipse
+            Yocto Project Plug-in, see the 
+            "<a class="link" href="../dev-manual/adt-eclipse.html" target="_self">Working Within Eclipse</a>" section
+            of the Yocto Project Development Manual.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/extracting-the-root-filesystem.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/extracting-the-root-filesystem.html
new file mode 100644
index 0000000..c171346
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/extracting-the-root-filesystem.html
@@ -0,0 +1,45 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.2. Extracting the Root Filesystem</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="securing-kernel-and-filesystem-images.html" title="2.3. Securing Kernel and Filesystem Images">
+<link rel="prev" href="getting-the-images.html" title="2.3.1. Getting the Images">
+<link rel="next" href="adt-package.html" title="Chapter 3. Optionally Customizing the Development Packages Installation">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.2. Extracting the Root Filesystem">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="extracting-the-root-filesystem"></a>2.3.2. Extracting the Root Filesystem</h3></div></div></div>
+<p>
+            You must extract the root filesystem if you want to boot the image using NFS
+            or you want to use the root filesystem as the target sysroot.
+            For example, the Eclipse IDE environment with the Eclipse Yocto Plug-in installed allows you 
+            to use QEMU to boot under NFS.
+            Another example is if you want to develop your target application using the
+            root filesystem as the target sysroot. 
+        </p>
+<p> 
+            To extract the root filesystem, first <code class="filename">source</code>
+            the cross-development environment setup script and then 
+            use the <code class="filename">runqemu-extract-sdk</code> command on the 
+            filesystem image. 
+            For example, the following commands set up the environment and then extract
+            the root filesystem from a previously built filesystem image tarball named  
+            <code class="filename">core-image-sato-sdk-qemux86-2011091411831.rootfs.tar.bz2</code>.
+            The example extracts the root filesystem into the <code class="filename">$HOME/qemux86-sato</code>
+            directory:
+            </p>
+<pre class="literallayout">
+     $ source $HOME/poky/build/tmp/environment-setup-i586-poky-linux
+     $ runqemu-extract-sdk \
+        tmp/deploy/images/core-image-sato-sdk-qemux86-2011091411831.rootfs.tar.bz2 \
+        $HOME/qemux86-sato
+            </pre>
+<p>
+            In this case, you could now point to the target sysroot at 
+            <code class="filename">$HOME/qemux86-sato</code>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/figures/adt-title.png b/plugins/org.yocto.sdk.doc.user/html/adt-manual/figures/adt-title.png
new file mode 100644
index 0000000000000000000000000000000000000000..6e71e41f1a90e50e45a296613a5498deb331ea66
GIT binary patch
literal 13498
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

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-adt-installer-tarball.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-adt-installer-tarball.html
new file mode 100644
index 0000000..e61d80c
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-adt-installer-tarball.html
@@ -0,0 +1,50 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1.1.1. Getting the ADT Installer Tarball</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="using-the-adt-installer.html" title="2.1.1. Using the ADT Installer">
+<link rel="prev" href="using-the-adt-installer.html" title="2.1.1. Using the ADT Installer">
+<link rel="next" href="configuring-and-running-the-adt-installer-script.html" title="2.1.1.2. Configuring and Running the ADT Installer Script">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.1.1. Getting the ADT Installer Tarball">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="getting-the-adt-installer-tarball"></a>2.1.1.1. Getting the ADT Installer Tarball</h4></div></div></div>
+<p>
+                The ADT Installer is contained in the ADT Installer tarball.
+                You can download the tarball into any directory from the 
+                <a class="ulink" href="http://downloads.yoctoproject.org/releases" target="_self">Index of Releases</a>, specifically
+                at  
+                <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/adt_installer" target="_self">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/adt_installer</a>.
+                Or, you can use BitBake to generate the tarball inside the existing 
+                <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+            </p>
+<p>
+                If you use BitBake to generate the ADT Installer tarball, you must 
+                <code class="filename">source</code> the environment setup script 
+                (<code class="filename">oe-init-build-env</code>) located 
+                in the source directory before running the <code class="filename">bitbake</code>
+                command that creates the tarball.
+            </p>
+<p>
+                The following example commands download the Poky tarball, set up the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>, 
+                set up the environment while also creating the default build directory, 
+                and run the <code class="filename">bitbake</code> command that results in the tarball 
+                <code class="filename">~/yocto-project/build/tmp/deploy/sdk/adt_installer.tar.bz2</code>:
+                </p>
+<pre class="literallayout">
+     $ cd ~
+     $ mkdir yocto-project
+     $ cd yocto-project
+     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/poky-1.2+snapshot-8.0.tar.bz2
+     $ tar xjf poky-1.2+snapshot-8.0.tar.bz2
+     $ source poky-1.2+snapshot-8.0/oe-init-build-env
+     $ bitbake adt-installer
+                </pre>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-images.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-images.html
new file mode 100644
index 0000000..194d1e6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-images.html
@@ -0,0 +1,100 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.1. Getting the Images</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="securing-kernel-and-filesystem-images.html" title="2.3. Securing Kernel and Filesystem Images">
+<link rel="prev" href="securing-kernel-and-filesystem-images.html" title="2.3. Securing Kernel and Filesystem Images">
+<link rel="next" href="extracting-the-root-filesystem.html" title="2.3.2. Extracting the Root Filesystem">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.1. Getting the Images">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="getting-the-images"></a>2.3.1. Getting the Images</h3></div></div></div>
+<p>
+            To get the kernel and filesystem images, you either have to build them or download
+            pre-built versions.
+            You can find examples for both these situations in the 
+            "<a class="link" href="../yocto-project-qs/test-run.html" target="_self">A Quick Test Run</a>" section of   
+            the Yocto Project Quick Start.
+        </p>
+<p> 
+            The Yocto Project ships basic kernel and filesystem images for several 
+            architectures (<code class="filename">x86</code>, <code class="filename">x86-64</code>, 
+            <code class="filename">mips</code>, <code class="filename">powerpc</code>, and <code class="filename">arm</code>) 
+            that you can use unaltered in the QEMU emulator.  
+            These kernel images reside in the release 
+            area - <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines" target="_self">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines</a>
+            and are ideal for experimentation using Yocto Project.
+            For information on the image types you can build using the OpenEmbedded build system, 
+            see the
+            "<a class="link" href="../poky-ref-manual/ref-images.html" target="_self">Images</a>" chapter in  
+            the Yocto Project Reference Manual.
+        </p>
+<p>
+            If you plan on remotely deploying and debugging your application from within the 
+            Eclipse IDE, you must have an image that contains the Yocto Target Communication
+            Framework (TCF) agent (<code class="filename">tcf-agent</code>). 
+            By default, the Yocto Project provides only one type pre-built image that contains the 
+            <code class="filename">tcf-agent</code>.
+            And, those images are SDK (e.g.<code class="filename">core-image-sato-sdk</code>).
+        </p>
+<p>
+            If you want to use a different image type that contains the <code class="filename">tcf-agent</code>, 
+            you can do so one of two ways:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Modify the <code class="filename">conf/local.conf</code> configuration in 
+                    the <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>
+                    and then rebuild the image.
+                    With this method, you need to modify the 
+                    <a class="link" href="../poky-ref-manual/var-EXTRA_IMAGE_FEATURES.html" target="_self"><code class="filename">EXTRA_IMAGE_FEATURES</code></a>
+                    variable to have the value of "tools-debug" before rebuilding the image. 
+                    Once the image is rebuilt, the <code class="filename">tcf-agent</code> will be included
+                    in the image and is launched automatically after the boot.</p></li>
+<li class="listitem">
+<p>Manually build the <code class="filename">tcf-agent</code>.
+                    To build the agent, follow these steps:
+                    </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem"><p>Be sure the ADT is installed as described in the 
+                            "<a class="link" href="installing-the-adt.html" title="2.1. Installing the ADT and Toolchains">Installing the ADT and Toolchains</a>" section.
+                            </p></li>
+<li class="listitem"><p>Set up the cross-development environment as described in the 
+                            "<a class="link" href="setting-up-the-cross-development-environment.html" title="2.2. Setting Up the Cross-Development Environment">Setting 
+                            Up the Cross-Development Environment</a>" section.</p></li>
+<li class="listitem">
+<p>Get the <code class="filename">tcf-agent</code> source code using
+                            the following commands:
+                            </p>
+<pre class="literallayout">
+     $ git clone http://git.eclipse.org/gitroot/tcf/org.eclipse.tcf.agent.git
+     $ cd agent
+                            </pre>
+</li>
+<li class="listitem"><p>Modify the <code class="filename">Makefile.inc</code> file
+                            for the cross-compilation environment by setting the 
+                            <code class="filename">OPSYS</code> and 
+                            <a class="link" href="../poky-ref-manual/var-MACHINE.html" target="_self"><code class="filename">MACHINE</code></a>
+                            variables according to your target.</p></li>
+<li class="listitem">
+<p>Use the cross-development tools to build the 
+                            <code class="filename">tcf-agent</code>.  
+                            Before you "Make" the file, be sure your cross-tools are set up first.
+                            See the "<a class="link" href="makefile-based-projects.html" title="4.2. Makefile-Based Projects">Makefile-Based Projects</a>"
+                            section for information on how to make sure the cross-tools are set up
+                            correctly.</p>
+<p>If the build is successful, the <code class="filename">tcf-agent</code> output will 
+                            be <code class="filename">obj/$(OPSYS)/$(MACHINE)/Debug/agent</code>.</p>
+</li>
+<li class="listitem"><p>Deploy the agent into the image's root filesystem.</p></li>
+</ol></div>
+<p>
+                </p>
+</li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
new file mode 100644
index 0000000..46f3e6b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
@@ -0,0 +1,130 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>The Yocto Project Application Developer's Guide</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="next" href="adt-intro.html" title="Chapter 1. Introduction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div lang="en" class="book" title="The Yocto Project Application Developer's Guide">
+<div class="titlepage">
+<div>
+<div><h1 class="title">
+<a name="adt-manual"></a>
+            The Yocto Project Application Developer's Guide
+        </h1></div>
+<div><div class="authorgroup">
+            <div class="author">
+<h3 class="author">
+<span class="firstname">Jessica</span> <span class="surname">Zhang</span>
+</h3>
+<div class="affiliation">
+                    <span class="orgname">Intel Corporation<br></span>
+                </div>
+<code class="email">&lt;<a class="email" href="mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;</code>
+</div>
+        </div></div>
+<div><p class="copyright">Copyright © 2010-2012 Linux Foundation</p></div>
+<div><div class="legalnotice" title="Legal Notice">
+<a name="id654830"></a>
+      <p>
+        Permission is granted to copy, distribute and/or modify this document under 
+        the terms of the <a class="ulink" href="http://creativecommons.org/licenses/by-sa/2.0/uk/" target="_self">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</a> as published by Creative Commons.
+      </p>
+      <div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+          Due to production processes, there could be differences between the Yocto Project
+          documentation bundled in the release tarball and the 
+          <a class="link" href="../adt-manual/index.html" target="_self">Yocto Project Application Developer's Guide</a> on
+          the <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project</a> website.
+          For the latest version of this manual, see the manual on the website.
+      </div>
+
+    </div></div>
+<div><div class="revhistory"><table border="1" width="100%" summary="Revision history">
+<tr><th align="left" valign="top" colspan="2"><b>Revision History</b></th></tr>
+            <tr>
+<td align="left">Revision 1.0</td>
+<td align="left">6 April 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.0 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.0.1</td>
+<td align="left">23 May 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.0.1 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.1</td>
+<td align="left">6 October 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.1 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.2</td>
+<td align="left">April 2012</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.2 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.3</td>
+<td align="left">Sometime in 2012</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.3 Release.</td></tr>
+        </table></div></div>
+</div>
+<hr>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="chapter"><a href="adt-intro.html">1. Introduction</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="adt-intro-section.html">1.1. The Application Development Toolkit (ADT)</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="the-cross-toolchain.html">1.1.1. The Cross-Toolchain</a></span></dt>
+<dt><span class="section"><a href="sysroot.html">1.1.2. Sysroot</a></span></dt>
+<dt><span class="section"><a href="eclipse-overview.html">1.1.3. Eclipse Yocto Plug-in</a></span></dt>
+<dt><span class="section"><a href="the-qemu-emulator.html">1.1.4. The QEMU Emulator</a></span></dt>
+<dt><span class="section"><a href="user-space-tools.html">1.1.5. User-Space Tools</a></span></dt>
+</dl></dd>
+</dl></dd>
+<dt><span class="chapter"><a href="adt-prepare.html">2. Preparing for Application Development</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="installing-the-adt.html">2.1. Installing the ADT and Toolchains</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="using-the-adt-installer.html">2.1.1. Using the ADT Installer</a></span></dt>
+<dt><span class="section"><a href="using-an-existing-toolchain-tarball.html">2.1.2. Using a Cross-Toolchain Tarball</a></span></dt>
+<dt><span class="section"><a href="using-the-toolchain-from-within-the-build-tree.html">2.1.3. Using BitBake and the Build Directory</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="setting-up-the-cross-development-environment.html">2.2. Setting Up the Cross-Development Environment</a></span></dt>
+<dt><span class="section"><a href="securing-kernel-and-filesystem-images.html">2.3. Securing Kernel and Filesystem Images</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="getting-the-images.html">2.3.1. Getting the Images</a></span></dt>
+<dt><span class="section"><a href="extracting-the-root-filesystem.html">2.3.2. Extracting the Root Filesystem</a></span></dt>
+</dl></dd>
+</dl></dd>
+<dt><span class="chapter"><a href="adt-package.html">3. Optionally Customizing the Development Packages Installation</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="package-management-systems.html">3.1. Package Management Systems</a></span></dt>
+<dt><span class="section"><a href="configuring-the-pms.html">3.2. Configuring the PMS</a></span></dt>
+</dl></dd>
+<dt><span class="chapter"><a href="using-the-command-line.html">4. Using the Command Line</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="autotools-based-projects.html">4.1. Autotools-Based Projects</a></span></dt>
+<dt><span class="section"><a href="makefile-based-projects.html">4.2. Makefile-Based Projects</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+    
+
+    
+
+    
+
+    
+
+    
+
+
+
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/installing-the-adt.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/installing-the-adt.html
new file mode 100644
index 0000000..49e9309
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/installing-the-adt.html
@@ -0,0 +1,59 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1. Installing the ADT and Toolchains</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-prepare.html" title="Chapter 2. Preparing for Application Development">
+<link rel="prev" href="adt-prepare.html" title="Chapter 2. Preparing for Application Development">
+<link rel="next" href="using-the-adt-installer.html" title="2.1.1. Using the ADT Installer">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1. Installing the ADT and Toolchains">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="installing-the-adt"></a>2.1. Installing the ADT and Toolchains</h2></div></div></div>
+<p>
+        The following list describes installation methods that set up varying degrees of tool
+        availabiltiy on your system.
+        Regardless of the installation method you choose,
+        you must <code class="filename">source</code> the cross-toolchain
+        environment setup script before you use a toolchain.
+        See the "<a class="link" href="setting-up-the-cross-development-environment.html" title="2.2. Setting Up the Cross-Development Environment">Setting Up the 
+        Cross-Development Environment</a>" section for more information.
+    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+<p>Avoid mixing installation methods when installing toolchains for different architectures.
+        For example, avoid using the ADT Installer to install some toolchains and then hand-installing
+        cross-development toolchains by running the toolchain installer for different architectures. 
+        Mixing installation methods can result in situations where the ADT Installer becomes
+        unreliable and might not install the toolchain.</p>
+<p>If you must mix installation methods, you might avoid problems by deleting 
+        <code class="filename">/var/lib/opkg</code>, thus purging the <code class="filename">opkg</code> package 
+        metadata</p>
+</div>
+<p>
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>Use the ADT Installer Script:</em></span>
+                This method is the recommended way to install the ADT because it
+                automates much of the process for you.
+                For example, you can configure the installation to install the QEMU emulator
+                and the user-space NFS, specify which root filesystem profiles to download, 
+                and define the target sysroot location.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Use an Existing Toolchain:</em></span>
+                Using this method, you select and download an architecture-specific
+                toolchain installer and then run the script to hand-install the toolchain.
+                If you use this method, you just get the cross-toolchain and QEMU - you do not 
+                get any of the other mentioned benefits had you run the ADT Installer script.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Use the Toolchain from within the Build Directory:</em></span>
+                If you already have a 
+                <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>, 
+                you can build the cross-toolchain within the directory.
+                However, like the previous method mentioned, you only get the cross-toolchain and QEMU - you 
+                do not get any of the other benefits without taking separate steps.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/makefile-based-projects.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/makefile-based-projects.html
new file mode 100644
index 0000000..e977aaa
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/makefile-based-projects.html
@@ -0,0 +1,28 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2. Makefile-Based Projects</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="using-the-command-line.html" title="Chapter 4. Using the Command Line">
+<link rel="prev" href="autotools-based-projects.html" title="4.1. Autotools-Based Projects">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2. Makefile-Based Projects">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="makefile-based-projects"></a>4.2. Makefile-Based Projects</h2></div></div></div>
+<p>
+        For a Makefile-based project, you use the cross-toolchain by making sure 
+        the tools are used.  
+        You can do this as follows:
+        </p>
+<pre class="literallayout">
+     CC=arm-poky-linux-gnueabi-gcc
+     LD=arm-poky-linux-gnueabi-ld
+     CFLAGS=&#8221;${CFLAGS} --sysroot=&lt;sysroot-dir&gt;&#8221;
+     CXXFLAGS=&#8221;${CXXFLAGS} --sysroot=&lt;sysroot-dir&gt;&#8221;
+        </pre>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/package-management-systems.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/package-management-systems.html
new file mode 100644
index 0000000..c77a163
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/package-management-systems.html
@@ -0,0 +1,40 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.1. Package Management Systems</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-package.html" title="Chapter 3. Optionally Customizing the Development Packages Installation">
+<link rel="prev" href="adt-package.html" title="Chapter 3. Optionally Customizing the Development Packages Installation">
+<link rel="next" href="configuring-the-pms.html" title="3.2. Configuring the PMS">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1. Package Management Systems">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="package-management-systems"></a>3.1. Package Management Systems</h2></div></div></div>
+<p>
+        The OpenEmbedded build system supports the generation of sysroot files using 
+        three different Package Management Systems (PMS):
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>OPKG:</em></span> A less well known PMS whose use 
+                originated in the OpenEmbedded and OpenWrt embedded Linux projects.  
+                This PMS works with files packaged in an <code class="filename">.ipk</code> format.
+                See <a class="ulink" href="http://en.wikipedia.org/wiki/Opkg" target="_self">http://en.wikipedia.org/wiki/Opkg</a> for more 
+                information about OPKG.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>RPM:</em></span> A more widely known PMS intended for GNU/Linux 
+                distributions.  
+                This PMS works with files packaged in an <code class="filename">.rms</code> format.
+                The build system currently installs through this PMS by default.  
+                See <a class="ulink" href="http://en.wikipedia.org/wiki/RPM_Package_Manager" target="_self">http://en.wikipedia.org/wiki/RPM_Package_Manager</a>
+                for more information about RPM.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Debian:</em></span> The PMS for Debian-based systems 
+                is built on many PMS tools.  
+                The lower-level PMS tool <code class="filename">dpkg</code> forms the base of the Debian PMS.  
+                For information on dpkg see 
+                <a class="ulink" href="http://en.wikipedia.org/wiki/Dpkg" target="_self">http://en.wikipedia.org/wiki/Dpkg</a>.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/securing-kernel-and-filesystem-images.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/securing-kernel-and-filesystem-images.html
new file mode 100644
index 0000000..8a24629
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/securing-kernel-and-filesystem-images.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3. Securing Kernel and Filesystem Images</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-prepare.html" title="Chapter 2. Preparing for Application Development">
+<link rel="prev" href="setting-up-the-cross-development-environment.html" title="2.2. Setting Up the Cross-Development Environment">
+<link rel="next" href="getting-the-images.html" title="2.3.1. Getting the Images">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3. Securing Kernel and Filesystem Images">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="securing-kernel-and-filesystem-images"></a>2.3. Securing Kernel and Filesystem Images</h2></div></div></div>
+<p>
+        You will need to have a kernel and filesystem image to boot using your 
+        hardware or the QEMU emulator.
+        Furthermore, if you plan on booting your image using NFS or you want to use the root filesystem
+        as the target sysroot, you need to extract the root filesystem.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/setting-up-the-cross-development-environment.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/setting-up-the-cross-development-environment.html
new file mode 100644
index 0000000..c209ef8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/setting-up-the-cross-development-environment.html
@@ -0,0 +1,40 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.2. Setting Up the Cross-Development Environment</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-prepare.html" title="Chapter 2. Preparing for Application Development">
+<link rel="prev" href="using-the-toolchain-from-within-the-build-tree.html" title="2.1.3. Using BitBake and the Build Directory">
+<link rel="next" href="securing-kernel-and-filesystem-images.html" title="2.3. Securing Kernel and Filesystem Images">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.2. Setting Up the Cross-Development Environment">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="setting-up-the-cross-development-environment"></a>2.2. Setting Up the Cross-Development Environment</h2></div></div></div>
+<p>
+        Before you can develop using the cross-toolchain, you need to set up the 
+        cross-development environment by sourcing the toolchain's environment setup script.  
+        If you used the ADT Installer or hand-installed cross-toolchain,
+        then you can find this script in the <code class="filename">/opt/poky/1.3</code>
+        directory.  
+        If you installed the toolchain in the 
+        <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>, 
+        you can find the environment setup 
+        script for the toolchain in the build directory's <code class="filename">tmp</code> directory.
+    </p>
+<p> 
+        Be sure to run the environment setup script that matches the architecture for 
+        which you are developing.  
+        Environment setup scripts begin with the string &#8220;<code class="filename">environment-setup</code>&#8221;
+        and include as part of their name the architecture.  
+        For example, the toolchain environment setup script for a 64-bit IA-based architecture would 
+        be the following: 
+        </p>
+<pre class="literallayout">
+     /opt/poky/1.3/environment-setup-x86_64-poky-linux
+        </pre>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/sysroot.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/sysroot.html
new file mode 100644
index 0000000..0bc6423
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/sysroot.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1.2. Sysroot</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-intro-section.html" title="1.1. The Application Development Toolkit (ADT)">
+<link rel="prev" href="the-cross-toolchain.html" title="1.1.1. The Cross-Toolchain">
+<link rel="next" href="eclipse-overview.html" title="1.1.3. Eclipse Yocto Plug-in">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1.2. Sysroot">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="sysroot"></a>1.1.2. Sysroot</h3></div></div></div>
+<p>
+            The matching target sysroot contains needed headers and libraries for generating 
+            binaries that run on the target architecture.  
+            The sysroot is based on the target root filesystem image that is built by 
+            the OpenEmbedded build system Poky and uses the same metadata configuration 
+            used to build the cross-toolchain.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/the-cross-toolchain.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/the-cross-toolchain.html
new file mode 100644
index 0000000..d40992b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/the-cross-toolchain.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1.1. The Cross-Toolchain</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-intro-section.html" title="1.1. The Application Development Toolkit (ADT)">
+<link rel="prev" href="adt-intro-section.html" title="1.1. The Application Development Toolkit (ADT)">
+<link rel="next" href="sysroot.html" title="1.1.2. Sysroot">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1.1. The Cross-Toolchain">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="the-cross-toolchain"></a>1.1.1. The Cross-Toolchain</h3></div></div></div>
+<p>
+            The cross-toolchain consists of a cross-compiler, cross-linker, and cross-debugger 
+            that are used to develop user-space applications for targeted hardware.
+            This toolchain is created either by running the ADT Installer script, a toolchain installer
+            script, or through a build directory that is based on your metadata 
+            configuration or extension for your targeted device.  
+            The cross-toolchain works with a matching target sysroot.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/the-qemu-emulator.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/the-qemu-emulator.html
new file mode 100644
index 0000000..55f90a2
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/the-qemu-emulator.html
@@ -0,0 +1,34 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1.4. The QEMU Emulator</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-intro-section.html" title="1.1. The Application Development Toolkit (ADT)">
+<link rel="prev" href="eclipse-overview.html" title="1.1.3. Eclipse Yocto Plug-in">
+<link rel="next" href="user-space-tools.html" title="1.1.5. User-Space Tools">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1.4. The QEMU Emulator">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="the-qemu-emulator"></a>1.1.4. The QEMU Emulator</h3></div></div></div>
+<p>
+            The QEMU emulator allows you to simulate your hardware while running your 
+            application or image.
+            QEMU is made available a number of ways:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>If you use the ADT Installer script to install ADT, you can 
+                    specify whether or not to install QEMU.</p></li>
+<li class="listitem"><p>If you have downloaded a Yocto Project release and unpacked 
+                    it to create a source directory and you have sourced  
+                    the environment setup script, QEMU is installed and automatically 
+                    available.</p></li>
+<li class="listitem"><p>If you have installed the cross-toolchain 
+                    tarball and you have sourcing the toolchain's setup environment script, QEMU
+                    is also installed and automatically available.</p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/user-space-tools.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/user-space-tools.html
new file mode 100644
index 0000000..d165822
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/user-space-tools.html
@@ -0,0 +1,55 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1.5. User-Space Tools</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="adt-intro-section.html" title="1.1. The Application Development Toolkit (ADT)">
+<link rel="prev" href="the-qemu-emulator.html" title="1.1.4. The QEMU Emulator">
+<link rel="next" href="adt-prepare.html" title="Chapter 2. Preparing for Application Development">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1.5. User-Space Tools">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="user-space-tools"></a>1.1.5. User-Space Tools</h3></div></div></div>
+<p>
+            User-space tools are included as part of the distribution.  
+            You will find these tools helpful during development.  
+            The tools include LatencyTOP, PowerTOP, OProfile, Perf, SystemTap, and Lttng-ust.  
+            These tools are common development tools for the Linux platform.
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>LatencyTOP:</em></span> LatencyTOP focuses on latency 
+                    that causes skips in audio,
+                    stutters in your desktop experience, or situations that overload your server 
+                    even when you have plenty of CPU power left.  
+                    You can find out more about LatencyTOP at 
+                    <a class="ulink" href="http://www.latencytop.org/" target="_self">http://www.latencytop.org/</a>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>PowerTOP:</em></span> Helps you determine what   
+                    software is using the most power.  
+                    You can find out more about PowerTOP at 
+                    <a class="ulink" href="http://www.linuxpowertop.org/" target="_self">http://www.linuxpowertop.org/</a>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>OProfile:</em></span> A system-wide profiler for Linux 
+                    systems that is capable of profiling all running code at low overhead.  
+                    You can find out more about OProfile at 
+                    <a class="ulink" href="http://oprofile.sourceforge.net/about/" target="_self">http://oprofile.sourceforge.net/about/</a>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Perf:</em></span> Performance counters for Linux used 
+                    to keep track of certain types of hardware and software events.  
+                    For more information on these types of counters see 
+                    <a class="ulink" href="https://perf.wiki.kernel.org/" target="_self">https://perf.wiki.kernel.org/</a> and click 
+                    on &#8220;Perf tools.&#8221;</p></li>
+<li class="listitem"><p><span class="emphasis"><em>SystemTap:</em></span> A free software infrastructure 
+                    that simplifies information gathering about a running Linux system.  
+                    This information helps you diagnose performance or functional problems.  
+                    SystemTap is not available as a user-space tool through the Eclipse IDE Yocto Plug-in.  
+                    See <a class="ulink" href="http://sourceware.org/systemtap" target="_self">http://sourceware.org/systemtap</a> for more information 
+                    on SystemTap.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Lttng-ust:</em></span> A User-space Tracer designed to 
+                    provide detailed information on user-space activity.  
+                    See <a class="ulink" href="http://lttng.org/ust" target="_self">http://lttng.org/ust</a> for more information on Lttng-ust.
+                    </p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-an-existing-toolchain-tarball.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-an-existing-toolchain-tarball.html
new file mode 100644
index 0000000..2c304a6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-an-existing-toolchain-tarball.html
@@ -0,0 +1,90 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1.2. Using a Cross-Toolchain Tarball</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="installing-the-adt.html" title="2.1. Installing the ADT and Toolchains">
+<link rel="prev" href="configuring-and-running-the-adt-installer-script.html" title="2.1.1.2. Configuring and Running the ADT Installer Script">
+<link rel="next" href="using-the-toolchain-from-within-the-build-tree.html" title="2.1.3. Using BitBake and the Build Directory">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.2. Using a Cross-Toolchain Tarball">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="using-an-existing-toolchain-tarball"></a>2.1.2. Using a Cross-Toolchain Tarball</h3></div></div></div>
+<p>
+            If you want to simply install the cross-toolchain by hand, you can do so by running the 
+            toolchain installer.  
+            If you use this method to install the cross-toolchain and you still need to install the target 
+            sysroot, you will have to extract and install sysroot separately.
+            For information on how to do this, see the 
+            "<a class="link" href="extracting-the-root-filesystem.html" title="2.3.2. Extracting the Root Filesystem">Extracting the Root Filesystem</a>" section.
+        </p>
+<p>
+            Follow these steps:
+            </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem"><p>Go to  
+                    <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/toolchain/" target="_self">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/toolchain/</a> 
+                    and find the folder that matches your host development system 
+                    (i.e. <code class="filename">i686</code> for 32-bit machines or 
+                    <code class="filename">x86-64</code> for 64-bit machines).</p></li>
+<li class="listitem">
+<p>Go into that folder and download the toolchain installer whose name 
+                    includes the appropriate target architecture.
+                    For example, if your host development system is an Intel-based 64-bit system and 
+                    you are going to use your cross-toolchain for an Intel-based 32-bit target, go into the 
+                    <code class="filename">x86_64</code> folder and download the following installer:
+                    </p>
+<pre class="literallayout">
+     poky-eglibc-x86_64-i586-toolchain-gmae-1.3.sh
+                    </pre>
+<p>
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+<p>As an alternative to steps one and two, you can build the toolchain installer 
+                        if you have a <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+                        If you need GMAE, you should use the <code class="filename">bitbake meta-toolchain-gmae</code>
+                        command. 
+                        The resulting installation script when run will support such development.
+                        However, if you are not concerned with GMAE, 
+                        you can generate the toolchain installer using
+                        <code class="filename">bitbake meta-toolchain</code>.</p>
+<p>Use the appropriate <code class="filename">bitbake</code> command only after you have 
+                        sourced the <code class="filename">oe-build-init-env</code> script located in the source
+                        directory.  
+                        When the <code class="filename">bitbake</code> command completes, the toolchain installer will 
+                        be in <code class="filename">tmp/deploy/sdk</code> in the build directory.
+                        </p>
+</div>
+<p>
+                    </p>
+</li>
+<li class="listitem">
+<p>Once you have the installer, run it to install the toolchain. 
+                    The following command shows how to run the installer given a toolchain tarball 
+                    for a 64-bit development host system and a 32-bit target architecture.
+                    The example assumes the toolchain installer is located in <code class="filename">~/Downloads/</code>.
+                    </p>
+<pre class="literallayout">
+     $ ~/Downloads/poky-eglibc-x86_64-i586-toolchain-gmae-1.3.sh
+                    </pre>
+<p>
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        If you do not have write permissions for the directory into which you are installing 
+                        the toolchain, the toolchain installer notifies you and exits.  
+                        Be sure you have write permissions in the directory and run the installer again.
+                    </div>
+<p>
+                    Once the tarball is expanded, the cross-toolchain is installed.
+                    You will notice environment setup files for the cross-toolchain in the directory.
+                    </p>
+</li>
+</ol></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-adt-installer.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-adt-installer.html
new file mode 100644
index 0000000..1433f17
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-adt-installer.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1.1. Using the ADT Installer</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="installing-the-adt.html" title="2.1. Installing the ADT and Toolchains">
+<link rel="prev" href="installing-the-adt.html" title="2.1. Installing the ADT and Toolchains">
+<link rel="next" href="getting-the-adt-installer-tarball.html" title="2.1.1.1. Getting the ADT Installer Tarball">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.1. Using the ADT Installer">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="using-the-adt-installer"></a>2.1.1. Using the ADT Installer</h3></div></div></div>
+<p>
+            To run the ADT Installer, you need to first get the ADT Installer tarball and then run the ADT
+            Installer Script.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-command-line.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-command-line.html
new file mode 100644
index 0000000..cd5d4fc
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-command-line.html
@@ -0,0 +1,42 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 4. Using the Command Line</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="prev" href="configuring-the-pms.html" title="3.2. Configuring the PMS">
+<link rel="next" href="autotools-based-projects.html" title="4.1. Autotools-Based Projects">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 4. Using the Command Line">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="using-the-command-line"></a>Chapter 4. Using the Command Line</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="autotools-based-projects.html">4.1. Autotools-Based Projects</a></span></dt>
+<dt><span class="section"><a href="makefile-based-projects.html">4.2. Makefile-Based Projects</a></span></dt>
+</dl>
+</div>
+<p>
+        Recall that earlier the manual discussed how to use an existing toolchain 
+        tarball that had been installed into <code class="filename">/opt/poky</code>, 
+        which is outside of the build directory 
+        (see the section "<a class="link" href="using-an-existing-toolchain-tarball.html" title="2.1.2. Using a Cross-Toolchain Tarball">Using an Existing 
+        Toolchain Tarball)</a>".  
+        And, that sourcing your architecture-specific environment setup script 
+        initializes a suitable cross-toolchain development environment.  
+        During the setup, locations for the compiler, QEMU scripts, QEMU binary, 
+        a special version of <code class="filename">pkgconfig</code> and other useful 
+        utilities are added to the <code class="filename">PATH</code> variable.
+        Variables to assist <code class="filename">pkgconfig</code> and <code class="filename">autotools</code> 
+        are also defined so that, 
+        for example, <code class="filename">configure.sh</code> can find pre-generated 
+        test results for tests that need target hardware on which to run.  
+        These conditions allow you to easily use the toolchain outside of the 
+        OpenEmbedded build environment on both autotools-based projects and 
+        Makefile-based projects.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-toolchain-from-within-the-build-tree.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-toolchain-from-within-the-build-tree.html
new file mode 100644
index 0000000..27003a6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-toolchain-from-within-the-build-tree.html
@@ -0,0 +1,75 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1.3. Using BitBake and the Build Directory</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Application Developer's Guide">
+<link rel="up" href="installing-the-adt.html" title="2.1. Installing the ADT and Toolchains">
+<link rel="prev" href="using-an-existing-toolchain-tarball.html" title="2.1.2. Using a Cross-Toolchain Tarball">
+<link rel="next" href="setting-up-the-cross-development-environment.html" title="2.2. Setting Up the Cross-Development Environment">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.3. Using BitBake and the Build Directory">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="using-the-toolchain-from-within-the-build-tree"></a>2.1.3. Using BitBake and the Build Directory</h3></div></div></div>
+<p>
+            A final way of making the cross-toolchain available is to use BitBake 
+            to generate the toolchain within an existing 
+            <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+            This method does not install the toolchain into the 
+            <code class="filename">/opt</code> directory.
+            As with the previous method, if you need to install the target sysroot, you must 
+            do that separately as well.
+        </p>
+<p>
+            Follow these steps to generate the toolchain into the build directory:
+            </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem"><p>Source the environment setup script 
+                    <code class="filename">oe-init-build-env</code> located in the 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+                    </p></li>
+<li class="listitem">
+<p>At this point, you should be sure that the 
+                    <a class="link" href="../poky-ref-manual/var-MACHINE.html" target="_self"><code class="filename">MACHINE</code></a> variable 
+                    in the <code class="filename">local.conf</code> file found in the 
+                    <code class="filename">conf</code> directory of the build directory
+                    is set for the target architecture.
+                    Comments within the <code class="filename">local.conf</code> file list the values you 
+                    can use for the <code class="filename">MACHINE</code> variable.  
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>You can populate the build directory with the cross-toolchains for more 
+                        than a single architecture.  
+                        You just need to edit the <code class="filename">MACHINE</code> variable in the 
+                        <code class="filename">local.conf</code> file and re-run the BitBake 
+                        command.</div>
+</li>
+<li class="listitem">
+<p>Run <code class="filename">bitbake meta-ide-support</code> to complete the 
+                    cross-toolchain generation.
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>If you change out of your working directory after you 
+                        <code class="filename">source</code> the environment setup script and before you run
+                        the <code class="filename">bitbake</code> command, the command might not work. 
+                        Be sure to run the <code class="filename">bitbake</code> command immediately 
+                        after checking or editing the <code class="filename">local.conf</code> but without 
+                        changing out of your working directory.</div>
+<p>
+                    Once the <code class="filename">bitbake</code> command finishes, 
+                    the cross-toolchain is generated and populated within the build directory.
+                    You will notice environment setup files for the cross-toolchain in the 
+                    build directory in the <code class="filename">tmp</code> directory.
+                    Setup script filenames contain the strings <code class="filename">environment-setup</code>.</p>
+<p>Be aware that when you use this method to install the toolchain you still need
+                    to separately extract and install the sysroot filesystem.
+                    For information on how to do this, see the 
+                    "<a class="link" href="extracting-the-root-filesystem.html" title="2.3.2. Extracting the Root Filesystem">Extracting the Root Filesystem</a>" section.
+                    </p>
+</li>
+</ol></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/plugin.xml b/plugins/org.yocto.sdk.doc.user/plugin.xml
index e211b6a..352cfd6 100644
--- a/plugins/org.yocto.sdk.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.doc.user/plugin.xml
@@ -8,6 +8,10 @@
           primary="true">
     </toc>
     <toc
+          file="adt-manual-toc.xml"
+          primary="false">
+    </toc>
+    <toc
           file="yocto-project-qs-toc.xml"
           primary="false">
     </toc>
diff --git a/plugins/org.yocto.sdk.doc.user/toc.xml b/plugins/org.yocto.sdk.doc.user/toc.xml
index 9be9cf5..1287575 100644
--- a/plugins/org.yocto.sdk.doc.user/toc.xml
+++ b/plugins/org.yocto.sdk.doc.user/toc.xml
@@ -3,4 +3,7 @@
    <topic label="The Yocto Project Quick Start">
       <link toc="yocto-project-qs-toc.xml"/>
    </topic>
+   <topic label="TheÂ·YoctoÂ·ProjectÂ·ApplicationÂ·Developer&apos;sÂ·Guide">
+      <link toc="adt-manual-toc.xml"/>
+   </topic>
 </toc>
-- 
1.7.7.6


