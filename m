Return-Path: <timo@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14AABE013E5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:03:10 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from localhost (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id ABA281D56099;
	Wed, 18 Jul 2012 15:03:08 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 18 Jul 2012 15:02:59 +0200
Message-Id: <9ce8ef0a11d5bc9f5d83b4d16f6cf6acb1b67449.1342614895.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cad0c3d02deed3168db032b8deb4bbd2a8752dd1.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<8bbcd40cc56d25517ad2de1dbc3a9b1d5bfd61e9.1342614895.git.timo.mueller@bmw-carit.de>
	<e4d6d3bb6e59ce31a6c70e99260c36a1ab6a578c.1342614895.git.timo.mueller@bmw-carit.de>
	<5f1a6b30ceb23444478d4e5bf313fb135d256451.1342614895.git.timo.mueller@bmw-carit.de>
	<b8938f0d94423c7b584d9203ea9a8d206020baf8.1342614895.git.timo.mueller@bmw-carit.de>
	<8393b7e36cf0054754e5de7af7e3a1606fe8c363.1342614895.git.timo.mueller@bmw-carit.de>
	<8b1c614175c4587bfe46b8f0ac8ca4a9fba4a86c.1342614895.git.timo.mueller@bmw-carit.de>
	<cad0c3d02deed3168db032b8deb4bbd2a8752dd1.1342614895.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1342614895.git.timo.mueller@bmw-carit.de>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 8/8] plugins/sdk.doc.user: Added yocto adt manual
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
X-List-Received-Date: Wed, 18 Jul 2012 13:03:11 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The Yocto Project Application Development Toolkit (ADT) User's Guide
is integrated into the eclipse help. This includes the generated html
files as well as a table of contents that is needed by the eclipse
help center to allow the user to navigate the contents.

Source: git://git.yoctoproject.org/yocto-docs/
---
 plugins/org.yocto.sdk.doc.user/about.html          |   24 +
 plugins/org.yocto.sdk.doc.user/build.properties    |    4 +-
 .../html/adt-manual/ch01.html                      |   90 +++
 .../html/adt-manual/ch01s02.html                   |  166 +++++
 .../html/adt-manual/ch02.html                      |  450 +++++++++++++
 .../html/adt-manual/ch02s02.html                   |   56 ++
 .../html/adt-manual/ch02s03.html                   |  182 ++++++
 .../html/adt-manual/ch03.html                      |   97 +++
 .../html/adt-manual/ch03s02.html                   |   78 +++
 .../html/adt-manual/ch04.html                      |  675 ++++++++++++++++++++
 .../html/adt-manual/ch04s02.html                   |   94 +++
 .../html/adt-manual/ch04s03.html                   |   77 +++
 .../html/adt-manual/ch04s04.html                   |   37 ++
 .../html/adt-manual/ch04s05.html                   |   65 ++
 .../html/adt-manual/ch04s06.html                   |  100 +++
 .../html/adt-manual/ch04s07.html                   |  161 +++++
 .../html/adt-manual/ch04s08.html                   |  184 ++++++
 .../html/adt-manual/ch05.html                      |  112 ++++
 .../html/adt-manual/ch05s02.html                   |   41 ++
 .../html/adt-manual/index.html                     |  260 ++++++++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    4 +
 plugins/org.yocto.sdk.doc.user/toc.xml             |    3 +
 .../yocto-project-qs-toc.xml                       |   32 +
 23 files changed, 2991 insertions(+), 1 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s03.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s03.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s04.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s05.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s06.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s07.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s08.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/yocto-project-qs-toc.xml

diff --git a/plugins/org.yocto.sdk.doc.user/about.html b/plugins/org.yocto.sdk.doc.user/about.html
index 052051d..e074303 100644
--- a/plugins/org.yocto.sdk.doc.user/about.html
+++ b/plugins/org.yocto.sdk.doc.user/about.html
@@ -52,6 +52,30 @@
 			</a>
 		<br />
 			<em>Commit:</em> 980b4d22dab4ac681c6dc1a85e78306213799062
+		<br />
+		<br />
+		<strong>
+			The Yocto Project Application Development Toolkit (ADT) User's Guide:
+		</strong>
+		<br />
+		<br />
+			This Manual provides an overview of the development process for images
+			and user-space applications. The manual provides plenty of information
+			for the user new to open-source development and the Yocto Project
+			build system.
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
 	</p>
 </body>
 </html>
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
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01.html
new file mode 100644
index 0000000..529a0b1
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01.html
@@ -0,0 +1,90 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>Chapter&nbsp;1.&nbsp;Application Development Toolkit (ADT)
+User's Guide</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="prev" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="next" href="ch01s02.html" title=
+"1.2.&nbsp;ADT Components">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="chapter" title=
+"Chapter&nbsp;1.&nbsp;Application Development Toolkit (ADT) User's Guide">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title"><a name="adt-intro" id=
+"adt-intro"></a>Chapter&nbsp;1.&nbsp;Application Development
+Toolkit (ADT) User's Guide</h2>
+</div>
+</div>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="ch01.html#book-intro">1.1.
+Introducing the Application Development Toolkit
+(ADT)</a></span></dt>
+<dt><span class="section"><a href="ch01s02.html">1.2. ADT
+Components</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch01s02.html#the-cross-toolchain">1.2.1. The
+Cross-Toolchain</a></span></dt>
+<dt><span class="section"><a href="ch01s02.html#sysroot">1.2.2.
+Sysroot</a></span></dt>
+<dt><span class="section"><a href=
+"ch01s02.html#the-qemu-emulator">1.2.3. The QEMU
+Emulator</a></span></dt>
+<dt><span class="section"><a href=
+"ch01s02.html#user-space-tools">1.2.4. User-Space
+Tools</a></span></dt>
+</dl>
+</dd>
+</dl>
+</div>
+<p>Welcome to the Application Development Toolkit User&rsquo;s
+Guide. This manual provides information that lets you get going
+with the ADT to develop projects using the Yocto Project.</p>
+<div class="section" title=
+"1.1.&nbsp;Introducing the Application Development Toolkit (ADT)">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name="book-intro" id=
+"book-intro"></a>1.1.&nbsp;Introducing the Application Development
+Toolkit (ADT)</h2>
+</div>
+</div>
+</div>
+<p>Fundamentally, the ADT consists of an architecture-specific
+cross-toolchain and a matching sysroot that are both built by the
+Yocto Project build system Poky. The toolchain and sysroot are
+based on a metadata configuration and extensions, which allows you
+to cross-develop on the host machine for the target.</p>
+<p>Additionally, to provide an effective development platform, the
+Yocto Project makes available and suggests other tools you can use
+with the ADT. These other tools include the Eclipse IDE Yocto
+Plug-in, an emulator (QEMU), and various user-space tools that
+greatly enhance your development experience.</p>
+<p>The resulting combination of the architecture-specific
+cross-toolchain and sysroot along with these additional tools
+yields a custom-built, cross-development platform for a
+user-targeted product.</p>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01s02.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01s02.html
new file mode 100644
index 0000000..dcf496d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01s02.html
@@ -0,0 +1,166 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>1.2.&nbsp;ADT Components</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch01.html" title=
+"Chapter&nbsp;1.&nbsp;Application Development Toolkit (ADT) User's Guide">
+<link rel="prev" href="ch01.html" title=
+"Chapter&nbsp;1.&nbsp;Application Development Toolkit (ADT) User's Guide">
+<link rel="next" href="ch02.html" title=
+"Chapter&nbsp;2.&nbsp;Preparing to Use the Application Development Toolkit (ADT)">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title="1.2.&nbsp;ADT Components">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name="adt-components" id=
+"adt-components"></a>1.2.&nbsp;ADT Components</h2>
+</div>
+</div>
+</div>
+<p>This section provides a brief description of what comprises the
+ADT.</p>
+<div class="section" title="1.2.1.&nbsp;The Cross-Toolchain">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="the-cross-toolchain" id=
+"the-cross-toolchain"></a>1.2.1.&nbsp;The Cross-Toolchain</h3>
+</div>
+</div>
+</div>
+<p>The cross-toolchain consists of a cross-compiler, cross-linker,
+and cross-debugger that are used to develop user-space applications
+for targeted hardware. This toolchain is created either by running
+the ADT Installer script or through a Yocto Project build tree that
+is based on your metadata configuration or extension for your
+targeted device. The cross-toolchain works with a matching target
+sysroot.</p>
+</div>
+<div class="section" title="1.2.2.&nbsp;Sysroot">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="sysroot" id=
+"sysroot"></a>1.2.2.&nbsp;Sysroot</h3>
+</div>
+</div>
+</div>
+<p>The matching target sysroot contains needed headers and
+libraries for generating binaries that run on the target
+architecture. The sysroot is based on the target root filesystem
+image that is built by the Yocto Project's build system Poky and
+uses the same metadata configuration used to build the
+cross-toolchain.</p>
+</div>
+<div class="section" title="1.2.3.&nbsp;The QEMU Emulator">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="the-qemu-emulator" id=
+"the-qemu-emulator"></a>1.2.3.&nbsp;The QEMU Emulator</h3>
+</div>
+</div>
+</div>
+<p>The QEMU emulator allows you to simulate your hardware while
+running your application or image. QEMU is made available a number
+of ways:</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p>If you use the ADT Installer script to install ADT, you can
+specify whether or not to install QEMU.</p>
+</li>
+<li class="listitem">
+<p>If you have downloaded a Yocto Project release and unpacked it
+to create a Yocto Project file structure and you have sourced the
+Yocto Project environment setup script, QEMU is installed and
+automatically available.</p>
+</li>
+<li class="listitem">
+<p>If you have installed the cross-toolchain tarball and you have
+sourcing the toolchain's setup environment script, QEMU is also
+installed and automatically available.</p>
+</li>
+</ul>
+</div>
+</div>
+<div class="section" title="1.2.4.&nbsp;User-Space Tools">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="user-space-tools" id=
+"user-space-tools"></a>1.2.4.&nbsp;User-Space Tools</h3>
+</div>
+</div>
+</div>
+<p>User-space tools are included as part of the distribution. You
+will find these tools helpful during development. The tools include
+LatencyTOP, PowerTOP, OProfile, Perf, SystemTap, and Lttng-ust.
+These tools are common development tools for the Linux
+platform.</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em>LatencyTOP:</em></span> LatencyTOP
+focuses on latency that causes skips in audio, stutters in your
+desktop experience, or situations that overload your server even
+when you have plenty of CPU power left. You can find out more about
+LatencyTOP at <a class="ulink" href="http://www.latencytop.org/"
+target="_top">http://www.latencytop.org/</a>.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>PowerTOP:</em></span> Helps you
+determine what software is using the most power. You can find out
+more about PowerTOP at <a class="ulink" href=
+"http://www.linuxpowertop.org/" target=
+"_top">http://www.linuxpowertop.org/</a>.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>OProfile:</em></span> A system-wide
+profiler for Linux systems that is capable of profiling all running
+code at low overhead. You can find out more about OProfile at
+<a class="ulink" href="http://oprofile.sourceforge.net/about/"
+target="_top">http://oprofile.sourceforge.net/about/</a>.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Perf:</em></span> Performance
+counters for Linux used to keep track of certain types of hardware
+and software events. For more information on these types of
+counters see <a class="ulink" href="https://perf.wiki.kernel.org/"
+target="_top">https://perf.wiki.kernel.org/</a> and click on
+&ldquo;Perf tools.&rdquo;</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>SystemTap:</em></span> A free
+software infrastructure that simplifies information gathering about
+a running Linux system. This information helps you diagnose
+performance or functional problems. SystemTap is not available as a
+user-space tool through the Yocto Eclipse IDE Plug-in. See
+<a class="ulink" href="http://sourceware.org/systemtap" target=
+"_top">http://sourceware.org/systemtap</a> for more information on
+SystemTap.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Lttng-ust:</em></span> A User-space
+Tracer designed to provide detailed information on user-space
+activity. See <a class="ulink" href="http://lttng.org/ust" target=
+"_top">http://lttng.org/ust</a> for more information on
+Lttng-ust.</p>
+</li>
+</ul>
+</div>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02.html
new file mode 100644
index 0000000..c5ca243
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02.html
@@ -0,0 +1,450 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>Chapter&nbsp;2.&nbsp;Preparing to Use the Application
+Development Toolkit (ADT)</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="prev" href="ch01s02.html" title=
+"1.2.&nbsp;ADT Components">
+<link rel="next" href="ch02s02.html" title=
+"2.2.&nbsp;Setting Up the Cross-Development Environment">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="chapter" title=
+"Chapter&nbsp;2.&nbsp;Preparing to Use the Application Development Toolkit (ADT)">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title"><a name="adt-prepare" id=
+"adt-prepare"></a>Chapter&nbsp;2.&nbsp;Preparing to Use the
+Application Development Toolkit (ADT)</h2>
+</div>
+</div>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href=
+"ch02.html#installing-the-adt">2.1. Installing the
+ADT</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch02.html#using-the-adt-installer">2.1.1. Using the ADT
+Installer</a></span></dt>
+<dt><span class="section"><a href=
+"ch02.html#using-an-existing-toolchain-tarball">2.1.2. Using a
+Cross-Toolchain Tarball</a></span></dt>
+<dt><span class="section"><a href=
+"ch02.html#using-the-toolchain-from-within-the-build-tree">2.1.3.
+Using BitBake and the Yocto Project Build Tree</a></span></dt>
+</dl>
+</dd>
+<dt><span class="section"><a href="ch02s02.html">2.2. Setting Up
+the Cross-Development Environment</a></span></dt>
+<dt><span class="section"><a href="ch02s03.html">2.3. Securing
+Kernel and Filesystem Images</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch02s03.html#getting-the-images">2.3.1. Getting the
+Images</a></span></dt>
+<dt><span class="section"><a href=
+"ch02s03.html#extracting-the-root-filesystem">2.3.2. Extracting the
+Root Filesystem</a></span></dt>
+</dl>
+</dd>
+</dl>
+</div>
+<p>In order to use the ADT, you must install it, <code class=
+"filename">source</code> a script to set up the environment, and be
+sure both the kernel and filesystem image specific to the target
+architecture exist. This chapter describes how to be sure you meet
+the ADT requirements.</p>
+<div class="section" title="2.1.&nbsp;Installing the ADT">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name="installing-the-adt"
+id="installing-the-adt"></a>2.1.&nbsp;Installing the ADT</h2>
+</div>
+</div>
+</div>
+<p>The following list describes how you can install the ADT, which
+includes the cross-toolchain. Regardless of the installation you
+choose, you must <code class="filename">source</code> the
+cross-toolchain environment setup script before you use the
+toolchain. See the "<a class="link" href="ch02s02.html" title=
+"2.2.&nbsp;Setting Up the Cross-Development Environment">Setting Up
+the Cross-Development Environment</a>" section for more
+information.</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em>Use the ADT Installer
+Script:</em></span> This method is the recommended way to install
+the ADT because it automates much of the process for you. For
+example, you can configure the installation to install the QEMU
+emulator and the user-space NFS, specify which root filesystem
+profiles to download, and define the target sysroot location.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Use an Existing Toolchain
+Tarball:</em></span> Using this method, you select and download an
+architecture-specific toolchain tarball and then hand-install the
+toolchain. If you use this method, you just get the cross-toolchain
+and QEMU - you do not get any of the other mentioned benefits had
+you run the ADT Installer script.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Use the Toolchain from within a Yocto
+Project Build Tree:</em></span> If you already have a Yocto Project
+build tree, you can build the cross-toolchain within tree. However,
+like the previous method mentioned, you only get the
+cross-toolchain and QEMU - you do not get any of the other benefits
+without taking separate steps.</p>
+</li>
+</ul>
+</div>
+<div class="section" title="2.1.1.&nbsp;Using the ADT Installer">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="using-the-adt-installer" id=
+"using-the-adt-installer"></a>2.1.1.&nbsp;Using the ADT
+Installer</h3>
+</div>
+</div>
+</div>
+<p>To run the ADT Installer, you need to first get the ADT
+Installer tarball and then run the ADT Installer Script.</p>
+<div class="section" title=
+"2.1.1.1.&nbsp;Getting the ADT Installer Tarball">
+<div class="titlepage">
+<div>
+<div>
+<h4 class="title"><a name="getting-the-adt-installer-tarball" id=
+"getting-the-adt-installer-tarball"></a>2.1.1.1.&nbsp;Getting the
+ADT Installer Tarball</h4>
+</div>
+</div>
+</div>
+<p>The ADT Installer is contained in the ADT Installer tarball. You
+can download the tarball into any directory from the <a class=
+"ulink" href="http://downloads.yoctoproject.org/releases" target=
+"_top">Index of Releases</a>, specifically at <a class="ulink"
+href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/adt_installer"
+target=
+"_top">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/adt_installer</a>.
+Or, you can use BitBake to generate the tarball inside the existing
+Yocto Project build tree.</p>
+<p>If you use BitBake to generate the ADT Installer tarball, you
+must <code class="filename">source</code> the Yocto Project
+environment setup script (<code class=
+"filename">oe-init-build-env</code>) located in the Yocto Project
+file structure before running the <code class=
+"filename">bitbake</code> command that creates the tarball.</p>
+<p>The following example commands download the Yocto Project
+release tarball, set up the Yocto Project files structure, set up
+the environment while also creating the default Yocto Project build
+tree, and run the <code class="filename">bitbake</code> command
+that results in the tarball <code class=
+"filename">~/yocto-project/build/tmp/deploy/sdk/adt_installer.tar.bz2</code>:</p>
+<pre class="literallayout">
+     $ cd ~
+     $ mkdir yocto-project
+     $ cd yocto-project
+     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/poky-1.2+snapshot-8.0.tar.bz2
+     $ tar xjf poky-1.2+snapshot-8.0.tar.bz2
+     $ source poky-1.2+snapshot-8.0/oe-init-build-env
+     $ bitbake adt-installer
+                
+</pre></div>
+<div class="section" title=
+"2.1.1.2.&nbsp;Configuring and Running the ADT Installer Script">
+<div class="titlepage">
+<div>
+<div>
+<h4 class="title"><a name=
+"configuring-and-running-the-adt-installer-script" id=
+"configuring-and-running-the-adt-installer-script"></a>2.1.1.2.&nbsp;Configuring
+and Running the ADT Installer Script</h4>
+</div>
+</div>
+</div>
+<p>Before running the ADT Installer script, you need to unpack the
+tarball. You can unpack the tarball in any directory you wish. For
+example, this command copies the ADT Installer tarball from where
+it was built into the home directory and then unpacks the tarball
+into a top-level directory named <code class=
+"filename">adt-installer</code>:</p>
+<pre class="literallayout">
+     $ cd ~
+     $ cp ~/poky/build/tmp/deploy/sdk/adt_installer.tar.bz2 $HOME
+     $ tar -xjf adt_installer.tar.bz2
+                
+</pre>
+<p>Unpacking it creates the directory <code class=
+"filename">adt-installer</code>, which contains the ADT Installer
+script (<code class="filename">adt_installer</code>) and its
+configuration file (<code class=
+"filename">adt_installer.conf</code>).</p>
+<p>Before you run the script, however, you should examine the ADT
+Installer configuration file and be sure you are going to get what
+you want. Your configurations determine which kernel and filesystem
+image are downloaded.</p>
+<p>The following list describes the configurations you can define
+for the ADT Installer. For configuration values and restrictions,
+see the comments in the <code class=
+"filename">adt-installer.conf</code> file:</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><code class="filename">YOCTOADT_REPO</code>: This area includes
+the IPKG-based packages and the root filesystem upon which the
+installation is based. If you want to set up your own IPKG
+repository pointed to by <code class=
+"filename">YOCTOADT_REPO</code>, you need to be sure that the
+directory structure follows the same layout as the reference
+directory set up at <a class="ulink" href=
+"http://adtrepo.yoctoproject.org" target=
+"_top">http://adtrepo.yoctoproject.org</a>. Also, your repository
+needs to be accessible through HTTP.</p>
+</li>
+<li class="listitem">
+<p><code class="filename">YOCTOADT_TARGETS</code>: The machine
+target architectures for which you want to set up cross-development
+environments.</p>
+</li>
+<li class="listitem">
+<p><code class="filename">YOCTOADT_QEMU</code>: Indicates whether
+or not to install the emulator QEMU.</p>
+</li>
+<li class="listitem">
+<p><code class="filename">YOCTOADT_NFS_UTIL</code>: Indicates
+whether or not to install user-mode NFS. If you plan to use the
+Yocto Eclipse IDE plug-in against QEMU, you should install NFS.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+To boot QEMU images using our userspace NFS server, you need to be
+running <code class="filename">portmap</code> or <code class=
+"filename">rpcbind</code>. If you are running <code class=
+"filename">rpcbind</code>, you will also need to add the
+<code class="filename">-i</code> option when <code class=
+"filename">rpcbind</code> starts up. Please make sure you
+understand the security implications of doing this. You might also
+have to modify your firewall settings to allow NFS booting to
+work.</div>
+</li>
+<li class="listitem">
+<p><code class="filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code>: The
+root filesystem images you want to download from the <code class=
+"filename">YOCTOADT_IPKG_REPO</code> repository.</p>
+</li>
+<li class="listitem">
+<p><code class=
+"filename">YOCTOADT_TARGET_SYSROOT_IMAGE_&lt;arch&gt;</code>: The
+particular root filesystem used to extract and create the target
+sysroot. The value of this variable must have been specified with
+<code class="filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code>. For
+example, if you downloaded both <code class=
+"filename">minimal</code> and <code class=
+"filename">sato-sdk</code> images by setting <code class=
+"filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code> to "minimal
+sato-sdk", then <code class=
+"filename">YOCTOADT_ROOTFS_&lt;arch&gt;</code> must be set to
+either <code class="filename">minimal</code> or <code class=
+"filename">sato-sdk</code>.</p>
+</li>
+<li class="listitem">
+<p><code class=
+"filename">YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;</code>: The
+location on the development host where the target sysroot is
+created.</p>
+</li>
+</ul>
+</div>
+<p>After you have configured the <code class=
+"filename">adt_installer.conf</code> file, run the installer using
+the following command. Be sure that you are not trying to use
+cross-compilation tools. When you run the installer, the
+environment must use a host <code class="filename">gcc</code>:</p>
+<pre class="literallayout">
+     $ ./adt_installer
+                
+</pre>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+The ADT Installer requires the <code class=
+"filename">libtool</code> package to complete. If you install the
+recommended packages as described in "<a class="ulink" href=
+"http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html#packages"
+target="_top">The Packages</a>" section of The Yocto Project Quick
+Start, then you will have libtool installed.</div>
+<p>Once the installer begins to run, you are asked whether you want
+to run in interactive or silent mode. If you want to closely
+monitor the installation, choose &ldquo;I&rdquo; for interactive
+mode rather than &ldquo;S&rdquo; for silent mode. Follow the
+prompts from the script to complete the installation.</p>
+<p>Once the installation completes, the ADT, which includes the
+cross-toolchain, is installed. You will notice environment setup
+files for the cross-toolchain in <code class=
+"filename">/opt/poky/1.3</code>, and image tarballs in the
+<code class="filename">adt-installer</code> directory according to
+your installer configurations, and the target sysroot located
+according to the <code class=
+"filename">YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;</code> variable
+also in your configuration file.</p>
+</div>
+</div>
+<div class="section" title=
+"2.1.2.&nbsp;Using a Cross-Toolchain Tarball">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="using-an-existing-toolchain-tarball" id=
+"using-an-existing-toolchain-tarball"></a>2.1.2.&nbsp;Using a
+Cross-Toolchain Tarball</h3>
+</div>
+</div>
+</div>
+<p>If you want to simply install the cross-toolchain by hand, you
+can do so by using an existing cross-toolchain tarball. If you use
+this method to install the cross-toolchain and you still need to
+install the target sysroot, you will have to install sysroot
+separately.</p>
+<p>Follow these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Go to <a class="ulink" href=
+"http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/toolchain/"
+target=
+"_top">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/toolchain/</a>
+and find the folder that matches your host development system (i.e.
+<code class="filename">i686</code> for 32-bit machines or
+<code class="filename">x86-64</code> for 64-bit machines).</p>
+</li>
+<li class="listitem">
+<p>Go into that folder and download the toolchain tarball whose
+name includes the appropriate target architecture. For example, if
+your host development system is an Intel-based 64-bit system and
+you are going to use your cross-toolchain for an Intel-based 32-bit
+target, go into the <code class="filename">x86_64</code> folder and
+download the following tarball:</p>
+<pre class="literallayout">
+     poky-eglibc-x86_64-i586-toolchain-gmae-1.3.tar.bz2
+                    
+</pre>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+<p>As an alternative to steps one and two, you can build the
+toolchain tarball if you have a Yocto Project build tree. If you
+need GMAE, you should use the <code class="filename">bitbake
+meta-toolchain-gmae</code> command. The resulting tarball will
+support such development. However, if you are not concerned with
+GMAE, you can generate the tarball using <code class=
+"filename">bitbake meta-toolchain</code>.</p>
+<p>Use the appropriate <code class="filename">bitbake</code>
+command only after you have sourced the <code class=
+"filename">oe-build-init-env</code> script located in the Yocto
+Project files. When the <code class="filename">bitbake</code>
+command completes, the tarball will be in <code class=
+"filename">tmp/deploy/sdk</code> in the Yocto Project build
+tree.</p>
+</div>
+</li>
+<li class="listitem">
+<p>Make sure you are in the root directory with root privileges and
+then expand the tarball. The tarball expands into <code class=
+"filename">/opt/poky/1.3</code>. Once the tarball is expanded, the
+cross-toolchain is installed. You will notice environment setup
+files for the cross-toolchain in the directory.</p>
+</li>
+</ol>
+</div>
+</div>
+<div class="section" title=
+"2.1.3.&nbsp;Using BitBake and the Yocto Project Build Tree">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name=
+"using-the-toolchain-from-within-the-build-tree" id=
+"using-the-toolchain-from-within-the-build-tree"></a>2.1.3.&nbsp;Using
+BitBake and the Yocto Project Build Tree</h3>
+</div>
+</div>
+</div>
+<p>A final way of making the cross-toolchain available is to use
+BitBake to generate the toolchain within an existing Yocto Project
+build tree. This method does not install the toolchain into the
+<code class="filename">/opt</code> directory. As with the previous
+method, if you need to install the target sysroot, you must do this
+separately.</p>
+<p>Follow these steps to generate the toolchain into the build
+tree:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Source the environment setup script <code class=
+"filename">oe-init-build-env</code> located in the Yocto Project
+files.</p>
+</li>
+<li class="listitem">
+<p>At this point, you should be sure that the <code class=
+"filename">MACHINE</code> variable in the <code class=
+"filename">local.conf</code> file found in the <code class=
+"filename">conf</code> directory of the Yocto Project build
+directory is set for the target architecture. Comments within the
+<code class="filename">local.conf</code> file list the values you
+can use for the <code class="filename">MACHINE</code> variable.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+You can populate the build tree with the cross-toolchains for more
+than a single architecture. You just need to edit the <code class=
+"filename">MACHINE</code> variable in the <code class=
+"filename">local.conf</code> file and re-run the BitBake
+command.</div>
+</li>
+<li class="listitem">
+<p>Run <code class="filename">bitbake meta-ide-support</code> to
+complete the cross-toolchain generation.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+If you change out of your working directory after you <code class=
+"filename">source</code> the environment setup script and before
+you run the <code class="filename">bitbake</code> command, the
+command might not work. Be sure to run the <code class=
+"filename">bitbake</code> command immediately after checking or
+editing the <code class="filename">local.conf</code> but without
+changing out of your working directory.</div>
+<p>Once the <code class="filename">bitbake</code> command finishes,
+the cross-toolchain is generated and populated within the Yocto
+Project build tree. You will notice environment setup files for the
+cross-toolchain in the Yocto Project build tree in the <code class=
+"filename">tmp</code> directory. Setup script filenames contain the
+strings <code class="filename">environment-setup</code>.</p>
+</li>
+</ol>
+</div>
+</div>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s02.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s02.html
new file mode 100644
index 0000000..1604da4
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s02.html
@@ -0,0 +1,56 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>2.2.&nbsp;Setting Up the Cross-Development
+Environment</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch02.html" title=
+"Chapter&nbsp;2.&nbsp;Preparing to Use the Application Development Toolkit (ADT)">
+<link rel="prev" href="ch02.html" title=
+"Chapter&nbsp;2.&nbsp;Preparing to Use the Application Development Toolkit (ADT)">
+<link rel="next" href="ch02s03.html" title=
+"2.3.&nbsp;Securing Kernel and Filesystem Images">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title=
+"2.2.&nbsp;Setting Up the Cross-Development Environment">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"setting-up-the-cross-development-environment" id=
+"setting-up-the-cross-development-environment"></a>2.2.&nbsp;Setting
+Up the Cross-Development Environment</h2>
+</div>
+</div>
+</div>
+<p>Before you can develop using the cross-toolchain, you need to
+set up the cross-development environment by sourcing the
+toolchain's environment setup script. If you used the ADT Installer
+or used an existing ADT tarball to install the ADT, then you can
+find this script in the <code class="filename">/opt/poky/1.3</code>
+directory. If you installed the toolchain in the build tree, you
+can find the environment setup script for the toolchain in the
+Yocto Project build tree's <code class="filename">tmp</code>
+directory.</p>
+<p>Be sure to run the environment setup script that matches the
+architecture for which you are developing. Environment setup
+scripts begin with the string &ldquo;<code class=
+"filename">environment-setup</code>&rdquo; and include as part of
+their name the architecture. For example, the toolchain environment
+setup script for a 64-bit IA-based architecture would be the
+following:</p>
+<pre class="literallayout">
+     /opt/poky/1.3/environment-setup-x86_64-poky-linux
+        
+</pre></div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s03.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s03.html
new file mode 100644
index 0000000..59411d4
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s03.html
@@ -0,0 +1,182 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>2.3.&nbsp;Securing Kernel and Filesystem Images</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch02.html" title=
+"Chapter&nbsp;2.&nbsp;Preparing to Use the Application Development Toolkit (ADT)">
+<link rel="prev" href="ch02s02.html" title=
+"2.2.&nbsp;Setting Up the Cross-Development Environment">
+<link rel="next" href="ch03.html" title=
+"Chapter&nbsp;3.&nbsp;Optionally Customizing the Development Packages Installation">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title=
+"2.3.&nbsp;Securing Kernel and Filesystem Images">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"securing-kernel-and-filesystem-images" id=
+"securing-kernel-and-filesystem-images"></a>2.3.&nbsp;Securing
+Kernel and Filesystem Images</h2>
+</div>
+</div>
+</div>
+<p>You will need to have a kernel and filesystem image to boot
+using your hardware or the QEMU emulator. Furthermore, if you plan
+on booting your image using NFS or you want to use the root
+filesystem as the target sysroot, you need to extract the root
+filesystem.</p>
+<div class="section" title="2.3.1.&nbsp;Getting the Images">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="getting-the-images" id=
+"getting-the-images"></a>2.3.1.&nbsp;Getting the Images</h3>
+</div>
+</div>
+</div>
+<p>To get the kernel and filesystem images, you either have to
+build them or download pre-built versions. You can find examples
+for both these situations in the "<a class="ulink" href=
+"http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html#test-run"
+target="_top">A Quick Test Run</a>" section of The Yocto Project
+Quick Start.</p>
+<p>The Yocto Project provides basic kernel and filesystem images
+for several architectures (<code class="filename">x86</code>,
+<code class="filename">x86-64</code>, <code class=
+"filename">mips</code>, <code class="filename">powerpc</code>, and
+<code class="filename">arm</code>) that you can use unaltered in
+the QEMU emulator. These kernel images reside in the Yocto Project
+release area - <a class="ulink" href=
+"http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines"
+target=
+"_top">http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines</a>
+and are ideal for experimentation within Yocto Project. For
+information on the image types you can build using the Yocto
+Project, see the "<a class="ulink" href=
+"http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#ref-images"
+target="_top">Reference: Images</a>" appendix in The Yocto Project
+Reference Manual.</p>
+<p>If you plan on remotely deploying and debugging your application
+from within the Eclipse IDE, you must have an image that contains
+the Yocto Target Communication Framework (TCF) agent (<code class=
+"filename">tcf-agent</code>). By default, the Yocto Project
+provides only one type pre-built image that contains the
+<code class="filename">tcf-agent</code>. And, those images are SDK
+(e.g.<code class="filename">core-image-sato-sdk</code>).</p>
+<p>If you want to use a different image type that contains the
+<code class="filename">tcf-agent</code>, you can do so one of two
+ways:</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p>Modify the <code class="filename">conf/local.conf</code>
+configuration in the Yocto Project build directory and then rebuild
+the image. With this method, you need to modify the <code class=
+"filename">EXTRA_IMAGE_FEATURES</code> variable to have the value
+of "tools-debug" before rebuilding the image. Once the image is
+rebuilt, the <code class="filename">tcf-agent</code> will be
+included in the image and is launched automatically after the
+boot.</p>
+</li>
+<li class="listitem">
+<p>Manually build the <code class="filename">tcf-agent</code>. To
+build the agent, follow these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Be sure the ADT is installed as described in the "<a class=
+"link" href="ch02.html#installing-the-adt" title=
+"2.1.&nbsp;Installing the ADT">Installing the ADT</a>" section.</p>
+</li>
+<li class="listitem">
+<p>Set up the cross-development environment as described in the
+"<a class="link" href="ch02s02.html" title=
+"2.2.&nbsp;Setting Up the Cross-Development Environment">Setting Up
+the Cross-Development Environment</a>" section.</p>
+</li>
+<li class="listitem">
+<p>Get the <code class="filename">tcf-agent</code> source code
+using the following commands:</p>
+<pre class="literallayout">
+     $ git clone http://git.eclipse.org/gitroot/tcf/org.eclipse.tcf.agent.git
+     $ cd agent
+                            
+</pre></li>
+<li class="listitem">
+<p>Modify the <code class="filename">Makefile.inc</code> file for
+the cross-compilation environment by setting the <code class=
+"filename">OPSYS</code> and <code class="filename">MACHINE</code>
+variables according to your target.</p>
+</li>
+<li class="listitem">
+<p>Use the cross-development tools to build the <code class=
+"filename">tcf-agent</code>. Before you "Make" the file, be sure
+your cross-tools are set up first. See the "<a class="link" href=
+"ch05s02.html" title=
+"5.2.&nbsp;Makefile-Based Projects">Makefile-Based Projects</a>"
+section for information on how to make sure the cross-tools are set
+up correctly.</p>
+<p>If the build is successful, the <code class=
+"filename">tcf-agent</code> output will be <code class=
+"filename">obj/$(OPSYS)/$(MACHINE)/Debug/agent</code>.</p>
+</li>
+<li class="listitem">
+<p>Deploy the agent into the image's root filesystem.</p>
+</li>
+</ol>
+</div>
+</li>
+</ul>
+</div>
+</div>
+<div class="section" title=
+"2.3.2.&nbsp;Extracting the Root Filesystem">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="extracting-the-root-filesystem" id=
+"extracting-the-root-filesystem"></a>2.3.2.&nbsp;Extracting the
+Root Filesystem</h3>
+</div>
+</div>
+</div>
+<p>You must extract the root filesystem if you want to boot the
+image using NFS or you want to use the root filesystem as the
+target sysroot. For example, the Eclipse IDE environment with the
+Eclipse Yocto Plug-in installed allows you to use QEMU to boot
+under NFS. Another example is if you want to develop your target
+application using the root filesystem as the target sysroot.</p>
+<p>To extract the root filesystem, first <code class=
+"filename">source</code> the cross-development environment setup
+script and then use the <code class=
+"filename">runqemu-extract-sdk</code> command on the filesystem
+image. For example, the following commands set up the environment
+and then extract the root filesystem from a previously built
+filesystem image tarball named <code class=
+"filename">core-image-sato-sdk-qemux86-2011091411831.rootfs.tar.bz2</code>.
+The example extracts the root filesystem into the <code class=
+"filename">$HOME/qemux86-sato</code> directory:</p>
+<pre class="literallayout">
+     $ source $HOME/poky/build/tmp/environment-setup-i586-poky-linux
+     $ runqemu-extract-sdk \
+        tmp/deploy/images/core-image-sato-sdk-qemux86-2011091411831.rootfs.tar.bz2 \
+        $HOME/qemux86-sato
+            
+</pre>
+<p>In this case, you could now point to the target sysroot at
+<code class="filename">$HOME/qemux86-sato</code>.</p>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03.html
new file mode 100644
index 0000000..7b33e56
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03.html
@@ -0,0 +1,97 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>Chapter&nbsp;3.&nbsp;Optionally Customizing the Development
+Packages Installation</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="prev" href="ch02s03.html" title=
+"2.3.&nbsp;Securing Kernel and Filesystem Images">
+<link rel="next" href="ch03s02.html" title=
+"3.2.&nbsp;Configuring the PMS">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="chapter" title=
+"Chapter&nbsp;3.&nbsp;Optionally Customizing the Development Packages Installation">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title"><a name="adt-package" id=
+"adt-package"></a>Chapter&nbsp;3.&nbsp;Optionally Customizing the
+Development Packages Installation</h2>
+</div>
+</div>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href=
+"ch03.html#package-management-systems">3.1. Package Management
+Systems</a></span></dt>
+<dt><span class="section"><a href="ch03s02.html">3.2. Configuring
+the PMS</a></span></dt>
+</dl>
+</div>
+<p>Because the Yocto Project is suited for embedded Linux
+development, it is likely that you will need to customize your
+development packages installation. For example, if you are
+developing a minimal image, then you might not need certain
+packages (e.g. graphics support packages). Thus, you would like to
+be able to remove those packages from your target sysroot.</p>
+<div class="section" title="3.1.&nbsp;Package Management Systems">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"package-management-systems" id=
+"package-management-systems"></a>3.1.&nbsp;Package Management
+Systems</h2>
+</div>
+</div>
+</div>
+<p>The Yocto Project supports the generation of sysroot files using
+three different Package Management Systems (PMS):</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em>OPKG:</em></span> A less well known
+PMS whose use originated in the OpenEmbedded and OpenWrt embedded
+Linux projects. This PMS works with files packaged in an
+<code class="filename">.ipk</code> format. See <a class="ulink"
+href="http://en.wikipedia.org/wiki/Opkg" target=
+"_top">http://en.wikipedia.org/wiki/Opkg</a> for more information
+about OPKG.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>RPM:</em></span> A more widely known
+PMS intended for GNU/Linux distributions. This PMS works with files
+packaged in an <code class="filename">.rms</code> format. The Yocto
+Project currently installs through this PMS by default. See
+<a class="ulink" href=
+"http://en.wikipedia.org/wiki/RPM_Package_Manager" target=
+"_top">http://en.wikipedia.org/wiki/RPM_Package_Manager</a> for
+more information about RPM.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Debian:</em></span> The PMS for
+Debian-based systems is built on many PMS tools. The lower-level
+PMS tool <code class="filename">dpkg</code> forms the base of the
+Debian PMS. For information on dpkg see <a class="ulink" href=
+"http://en.wikipedia.org/wiki/Dpkg" target=
+"_top">http://en.wikipedia.org/wiki/Dpkg</a>.</p>
+</li>
+</ul>
+</div>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03s02.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03s02.html
new file mode 100644
index 0000000..9a284bc
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03s02.html
@@ -0,0 +1,78 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>3.2.&nbsp;Configuring the PMS</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch03.html" title=
+"Chapter&nbsp;3.&nbsp;Optionally Customizing the Development Packages Installation">
+<link rel="prev" href="ch03.html" title=
+"Chapter&nbsp;3.&nbsp;Optionally Customizing the Development Packages Installation">
+<link rel="next" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title="3.2.&nbsp;Configuring the PMS">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name="configuring-the-pms"
+id="configuring-the-pms"></a>3.2.&nbsp;Configuring the PMS</h2>
+</div>
+</div>
+</div>
+<p>Whichever PMS you are using, you need to be sure that the
+<code class="filename">PACKAGE_CLASSES</code> variable in the
+<code class="filename">conf/local.conf</code> file is set to
+reflect that system. The first value you choose for the variable
+specifies the package file format for the root filesystem at
+sysroot. Additional values specify additional formats for
+convenience or testing. See the configuration file for details.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+For build performance information related to the PMS, see <a class=
+"ulink" href=
+"http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#ref-classes-package"
+target="_top">Packaging - <code class=
+"filename">package*.bbclass</code></a> in The Yocto Project
+Reference Manual.</div>
+<p>As an example, consider a scenario where you are using OPKG and
+you want to add the <code class="filename">libglade</code> package
+to the target sysroot.</p>
+<p>First, you should generate the <code class="filename">ipk</code>
+file for the <code class="filename">libglade</code> package and add
+it into a working <code class="filename">opkg</code> repository.
+Use these commands:</p>
+<pre class="literallayout">
+     $ bitbake libglade
+     $ bitbake package-index
+        
+</pre>
+<p>Next, source the environment setup script found in the Yocto
+Project files. Follow that by setting up the installation
+destination to point to your sysroot as <code class=
+"filename">&lt;sysroot_dir&gt;</code>. Finally, have an OPKG
+configuration file <code class="filename">&lt;conf_file&gt;</code>
+that corresponds to the <code class="filename">opkg</code>
+repository you have just created. The following command forms
+should now work:</p>
+<pre class="literallayout">
+     $ opkg-cl &ndash;f &lt;conf_file&gt; -o &lt;sysroot_dir&gt; update
+     $ opkg-cl &ndash;f &lt;cconf_file&gt; -o &lt;sysroot_dir&gt; \
+        --force-overwrite install libglade
+     $ opkg-cl &ndash;f &lt;cconf_file&gt; -o &lt;sysroot_dir&gt; \
+        --force-overwrite install libglade-dbg
+     $ opkg-cl &ndash;f &lt;conf_file&gt; -o &lt;sysroot_dir&gt; \
+        --force-overwrite install libglade-dev
+        
+</pre></div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04.html
new file mode 100644
index 0000000..314bb93
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04.html
@@ -0,0 +1,675 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>Chapter&nbsp;4.&nbsp;Working Within Eclipse</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="prev" href="ch03s02.html" title=
+"3.2.&nbsp;Configuring the PMS">
+<link rel="next" href="ch04s02.html" title=
+"4.2.&nbsp;Creating the Project">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="chapter" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title"><a name="adt-eclipse" id=
+"adt-eclipse"></a>Chapter&nbsp;4.&nbsp;Working Within Eclipse</h2>
+</div>
+</div>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href=
+"ch04.html#setting-up-the-eclipse-ide">4.1. Setting Up the Eclipse
+IDE</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch04.html#installing-eclipse-ide">4.1.1. Installing the Eclipse
+IDE</a></span></dt>
+<dt><span class="section"><a href=
+"ch04.html#configuring-the-eclipse-ide">4.1.2. Configuring the
+Eclipse IDE</a></span></dt>
+<dt><span class="section"><a href=
+"ch04.html#installing-the-eclipse-yocto-plug-in">4.1.3. Installing
+or Accessing the Eclipse Yocto Plug-in</a></span></dt>
+<dt><span class="section"><a href=
+"ch04.html#configuring-the-eclipse-yocto-plug-in">4.1.4.
+Configuring the Eclipse Yocto Plug-in</a></span></dt>
+</dl>
+</dd>
+<dt><span class="section"><a href="ch04s02.html">4.2. Creating the
+Project</a></span></dt>
+<dt><span class="section"><a href="ch04s03.html">4.3. Configuring
+the Cross-Toolchains</a></span></dt>
+<dt><span class="section"><a href="ch04s04.html">4.4. Building the
+Project</a></span></dt>
+<dt><span class="section"><a href="ch04s05.html">4.5. Starting QEMU
+in User Space NFS Mode</a></span></dt>
+<dt><span class="section"><a href="ch04s06.html">4.6. Deploying and
+Debugging the Application</a></span></dt>
+<dt><span class="section"><a href="ch04s07.html">4.7. Running
+User-Space Tools</a></span></dt>
+<dt><span class="section"><a href="ch04s08.html">4.8. Customizing
+an Image Using a BitBake Commander Project and Hob</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch04s08.html#creating-the-yocto-bitbake-commander-project">4.8.1.
+Creating the Yocto BitBake Commander Project</a></span></dt>
+<dt><span class="section"><a href=
+"ch04s08.html#editing-the-metadata-files">4.8.2. Editing the
+Metadata Files</a></span></dt>
+<dt><span class="section"><a href=
+"ch04s08.html#buiding-and-customizing-the-image">4.8.3. Building
+and Customizing the Image</a></span></dt>
+</dl>
+</dd>
+</dl>
+</div>
+<p>The Eclipse IDE is a popular development environment and it
+fully supports development using Yocto Project. When you install
+and configure the Eclipse Yocto Project Plug-in into the Eclipse
+IDE, you maximize your Yocto Project design experience. Installing
+and configuring the Plug-in results in an environment that has
+extensions specifically designed to let you more easily develop
+software. These extensions allow for cross-compilation, deployment,
+and execution of your output into a QEMU emulation session. You can
+also perform cross-debugging and profiling. The environment also
+supports a suite of tools that allows you to perform remote
+profiling, tracing, collection of power data, collection of latency
+data, and collection of performance data.</p>
+<p>This section describes how to install and configure the Eclipse
+IDE Yocto Plug-in and how to use it to develop your Yocto
+Project.</p>
+<div class="section" title="4.1.&nbsp;Setting Up the Eclipse IDE">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"setting-up-the-eclipse-ide" id=
+"setting-up-the-eclipse-ide"></a>4.1.&nbsp;Setting Up the Eclipse
+IDE</h2>
+</div>
+</div>
+</div>
+<p>To develop within the Eclipse IDE, you need to do the
+following:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Install the optimal version of the Eclipse IDE.</p>
+</li>
+<li class="listitem">
+<p>Configure the Eclipse IDE.</p>
+</li>
+<li class="listitem">
+<p>Install the Eclipse Yocto Plug-in.</p>
+</li>
+<li class="listitem">
+<p>Configure the Eclipse Yocto Plug-in.</p>
+</li>
+</ol>
+</div>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+Do not install Eclipse from your distribution's package repository.
+Be sure to install Eclipse from the official Eclipse download site
+as directed in the next section.</div>
+<div class="section" title=
+"4.1.1.&nbsp;Installing the Eclipse IDE">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="installing-eclipse-ide" id=
+"installing-eclipse-ide"></a>4.1.1.&nbsp;Installing the Eclipse
+IDE</h3>
+</div>
+</div>
+</div>
+<p>It is recommended that you have the Indigo 3.7.2 version of the
+Eclipse IDE installed on your development system. If you
+don&rsquo;t have this version, you can find it at <a class="ulink"
+href="http://www.eclipse.org/downloads" target=
+"_top">http://www.eclipse.org/downloads</a>. From that site, choose
+the Eclipse Classic version particular to your development host.
+This version contains the Eclipse Platform, the Java Development
+Tools (JDT), and the Plug-in Development Environment.</p>
+<p>Once you have downloaded the tarball, extract it into a clean
+directory. For example, the following commands unpack and install
+the Eclipse IDE tarball found in the <code class=
+"filename">Downloads</code> area into a clean directory using the
+default name <code class="filename">eclipse</code>:</p>
+<pre class="literallayout">
+     $ cd ~
+     $ tar -xzvf ~/Downloads/eclipse-SDK-3.7.2-linux-gtk-x86_64.tar.gz
+            
+</pre>
+<p>One issue exists that you need to be aware of regarding the Java
+Virtual machine&rsquo;s garbage collection (GC) process. The GC
+process does not clean up the permanent generation space (PermGen).
+This space stores metadata descriptions of classes. The default
+value is set too small and it could trigger an out-of-memory error
+such as the following:</p>
+<pre class="literallayout">
+     Java.lang.OutOfMemoryError: PermGen space
+            
+</pre>
+<p>This error causes the application to hang.</p>
+<p>To fix this issue, you can use the <code class=
+"filename">--vmargs</code> option when you start Eclipse to
+increase the size of the permanent generation space:</p>
+<pre class="literallayout">
+     eclipse --vmargs --XX:PermSize=256M
+            
+</pre></div>
+<div class="section" title=
+"4.1.2.&nbsp;Configuring the Eclipse IDE">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="configuring-the-eclipse-ide" id=
+"configuring-the-eclipse-ide"></a>4.1.2.&nbsp;Configuring the
+Eclipse IDE</h3>
+</div>
+</div>
+</div>
+<p>Before installing and configuring the Eclipse Yocto Plug-in, you
+need to configure the Eclipse IDE. Follow these general steps to
+configure Eclipse:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Start the Eclipse IDE.</p>
+</li>
+<li class="listitem">
+<p>Make sure you are in your Workbench and select "Install New
+Software" from the "Help" pull-down menu.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">indigo -
+http://download.eclipse.org/releases/indigo</code> from the "Work
+with:" pull-down menu.</p>
+</li>
+<li class="listitem">
+<p>Expand the box next to <code class="filename">Programming
+Languages</code> and select the <code class="filename">Autotools
+Support for CDT (incubation)</code> and <code class=
+"filename">C/C++ Development Tools</code> boxes.</p>
+</li>
+<li class="listitem">
+<p>Expand the box next to "Linux Tools" and select the "LTTng -
+Linux Tracing Toolkit(incubation)" boxes.</p>
+</li>
+<li class="listitem">
+<p>Complete the installation and restart the Eclipse IDE.</p>
+</li>
+<li class="listitem">
+<p>After the Eclipse IDE restarts and from the Workbench, select
+"Install New Software" from the "Help" pull-down menu.</p>
+</li>
+<li class="listitem">
+<p>Click the "Available Software Sites" link.</p>
+</li>
+<li class="listitem">
+<p>Check the box next to <code class=
+"filename">http://download.eclipse.org/tm/updates/3.3</code> and
+click "OK".</p>
+</li>
+<li class="listitem">
+<p>Select <code class=
+"filename">http://download.eclipse.org/tm/updates/3.3</code> from
+the "Work with:" pull-down menu.</p>
+</li>
+<li class="listitem">
+<p>Check the box next to <code class="filename">TM and RSE Main
+Features</code>.</p>
+</li>
+<li class="listitem">
+<p>Expand the box next to <code class="filename">TM and RSE
+Optional Add-ons</code> and select every item except <code class=
+"filename">RSE Unit Tests</code> and <code class="filename">RSE
+WinCE Services (incubation)</code>.</p>
+</li>
+<li class="listitem">
+<p>Complete the installation and restart the Eclipse IDE.</p>
+</li>
+<li class="listitem">
+<p>If necessary, select "Install New Software" from the "Help"
+pull-down menu so you can click the "Available Software Sites" link
+again.</p>
+</li>
+<li class="listitem">
+<p>After clicking "Available Software Sites", check the box next to
+<code class=
+"filename">http://download.eclipse.org/tools/cdt/releases/indigo</code>
+and click "OK".</p>
+</li>
+<li class="listitem">
+<p>Select <code class=
+"filename">http://download.eclipse.orgtools/cdt/releases/indigo</code>
+from the "Work with:" pull-down menu.</p>
+</li>
+<li class="listitem">
+<p>Check the box next to <code class="filename">CDT Main
+Features</code>.</p>
+</li>
+<li class="listitem">
+<p>Expand the box next to <code class="filename">CDT Optional
+Features</code> and select <code class="filename">C/C++ Remote
+Launch</code> and <code class="filename">Target Communication
+Framework (incubation)</code>.</p>
+</li>
+<li class="listitem">
+<p>Complete the installation and restart the Eclipse IDE.</p>
+</li>
+</ol>
+</div>
+</div>
+<div class="section" title=
+"4.1.3.&nbsp;Installing or Accessing the Eclipse Yocto Plug-in">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="installing-the-eclipse-yocto-plug-in"
+id="installing-the-eclipse-yocto-plug-in"></a>4.1.3.&nbsp;Installing
+or Accessing the Eclipse Yocto Plug-in</h3>
+</div>
+</div>
+</div>
+<p>You can install the Eclipse Yocto Plug-in into the Eclipse IDE
+one of two ways: use the Yocto Project update site to install the
+pre-built plug-in, or build and install the plug-in from the latest
+source code. If you don't want to permanently install the plug-in
+but just want to try it out within the Eclipse environment, you can
+import the plug-in project from the Yocto Project source
+repositories.</p>
+<div class="section" title=
+"4.1.3.1.&nbsp;Installing the Pre-built Plug-in from the Yocto Project Eclipse Update Site">
+<div class="titlepage">
+<div>
+<div>
+<h4 class="title"><a name="new-software" id=
+"new-software"></a>4.1.3.1.&nbsp;Installing the Pre-built Plug-in
+from the Yocto Project Eclipse Update Site</h4>
+</div>
+</div>
+</div>
+<p>To install the Eclipse Yocto Plug-in from the update site,
+follow these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Start up the Eclipse IDE.</p>
+</li>
+<li class="listitem">
+<p>In Eclipse, select "Install New Software" from the "Help"
+menu.</p>
+</li>
+<li class="listitem">
+<p>Click "Add..." in the "Work with:" area.</p>
+</li>
+<li class="listitem">
+<p>Enter <code class=
+"filename">http://downloads.yoctoproject.org/releases/eclipse-plugin/1.3</code>
+in the URL field and provide a meaningful name in the "Name"
+field.</p>
+</li>
+<li class="listitem">
+<p>Click "OK" to have the entry added to the "Work with:" drop-down
+list.</p>
+</li>
+<li class="listitem">
+<p>Select the entry for the plug-in from the "Work with:" drop-down
+list.</p>
+</li>
+<li class="listitem">
+<p>Check the box next to <code class="filename">Development tools
+and SDKs for Yocto Linux</code>.</p>
+</li>
+<li class="listitem">
+<p>Complete the remaining software installation steps and then
+restart the Eclipse IDE to finish the installation of the
+plug-in.</p>
+</li>
+</ol>
+</div>
+</div>
+<div class="section" title=
+"4.1.3.2.&nbsp;Installing the Plug-in Using the Latest Source Code">
+<div class="titlepage">
+<div>
+<div>
+<h4 class="title"><a name="zip-file-method" id=
+"zip-file-method"></a>4.1.3.2.&nbsp;Installing the Plug-in Using
+the Latest Source Code</h4>
+</div>
+</div>
+</div>
+<p>To install the Eclipse Yocto Plug-in from the latest source
+code, follow these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Open a shell and create a Git repository with:</p>
+<pre class="literallayout">
+     $ git clone git://git.yoctoproject.org/eclipse-poky yocto-eclipse
+                        
+</pre>
+<p>For this example, the repository is named <code class=
+"filename">~/yocto-eclipse</code>.</p>
+</li>
+<li class="listitem">
+<p>Locate the <code class="filename">build.sh</code> script in the
+Git repository you created in the previous step. The script is
+located in the <code class="filename">scripts</code>.</p>
+</li>
+<li class="listitem">
+<p>Be sure to set and export the <code class=
+"filename">ECLIPSE_HOME</code> environment variable to the
+top-level directory in which you installed the Indigo version of
+Eclipse. For example, if your Eclipse directory is <code class=
+"filename">$HOME/eclipse</code>, use the following:</p>
+<pre class="literallayout">
+     $ export ECLIPSE_HOME=$HOME/eclipse
+                        
+</pre></li>
+<li class="listitem">
+<p>Run the <code class="filename">build.sh</code> script and
+provide the name of the Git branch along with the Yocto Project
+release you are using. Here is an example that uses the
+<code class="filename">master</code> Git repository and the
+<code class="filename">1.1M4</code> release:</p>
+<pre class="literallayout">
+     $ scripts/build.sh master 1.1M4 
+                        
+</pre>
+<p>After running the script, the file <code class=
+"filename">org.yocto.sdk-&lt;release&gt;-&lt;date&gt;-archive.zip</code>
+is in the current directory.</p>
+</li>
+<li class="listitem">
+<p>If necessary, start the Eclipse IDE and be sure you are in the
+Workbench.</p>
+</li>
+<li class="listitem">
+<p>Select "Install New Software" from the "Help" pull-down
+menu.</p>
+</li>
+<li class="listitem">
+<p>Click "Add".</p>
+</li>
+<li class="listitem">
+<p>Provide anything you want in the "Name" field.</p>
+</li>
+<li class="listitem">
+<p>Click "Archive" and browse to the ZIP file you built in step
+four. This ZIP file should not be "unzipped", and must be the
+<code class="filename">*archive.zip</code> file created by running
+the <code class="filename">build.sh</code> script.</p>
+</li>
+<li class="listitem">
+<p>Check the box next to the new entry in the installation window
+and complete the installation.</p>
+</li>
+<li class="listitem">
+<p>Restart the Eclipse IDE if necessary.</p>
+</li>
+</ol>
+</div>
+<p>At this point you should be able to configure the Eclipse Yocto
+Plug-in as described in the "<a class="link" href=
+"ch04.html#configuring-the-eclipse-yocto-plug-in" title=
+"4.1.4.&nbsp;Configuring the Eclipse Yocto Plug-in">Configuring the
+Eclipse Yocto Plug-in</a>" section.</p>
+</div>
+<div class="section" title=
+"4.1.3.3.&nbsp;Importing the Plug-in Project into the Eclipse Environment">
+<div class="titlepage">
+<div>
+<div>
+<h4 class="title"><a name="yocto-project-source" id=
+"yocto-project-source"></a>4.1.3.3.&nbsp;Importing the Plug-in
+Project into the Eclipse Environment</h4>
+</div>
+</div>
+</div>
+<p>Importing the Eclipse Yocto Plug-in project from the Yocto
+Project source repositories is useful when you want to try out the
+latest plug-in from the tip of plug-in's development tree. It is
+important to understand when you import the plug-in you are not
+installing it into the Eclipse application. Rather, you are
+importing the project and just using it. To import the plug-in
+project, follow these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Open a shell and create a Git repository with:</p>
+<pre class="literallayout">
+     $ git clone git://git.yoctoproject.org/eclipse-poky yocto-eclipse
+                        
+</pre>
+<p>For this example, the repository is named <code class=
+"filename">~/yocto-eclipse</code>.</p>
+</li>
+<li class="listitem">
+<p>In Eclipse, select "Import" from the "File" menu.</p>
+</li>
+<li class="listitem">
+<p>Expand the "General" box and select "existing projects into
+workspace" and then click "Next".</p>
+</li>
+<li class="listitem">
+<p>Select the root directory and browse to <code class=
+"filename">~/yocto-eclipse/plugins</code>.</p>
+</li>
+<li class="listitem">
+<p>Three plug-ins exist: "org.yocto.bc.ui", "org.yocto.sdk.ide",
+and "org.yocto.sdk.remotetools". Select and import all of them.</p>
+</li>
+</ol>
+</div>
+<p>The left navigation pane in the Eclipse application shows the
+default projects. Right-click on one of these projects and run it
+as an Eclipse application. This brings up a second instance of
+Eclipse IDE that has the Yocto Plug-in.</p>
+</div>
+</div>
+<div class="section" title=
+"4.1.4.&nbsp;Configuring the Eclipse Yocto Plug-in">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="configuring-the-eclipse-yocto-plug-in"
+id=
+"configuring-the-eclipse-yocto-plug-in"></a>4.1.4.&nbsp;Configuring
+the Eclipse Yocto Plug-in</h3>
+</div>
+</div>
+</div>
+<p>Configuring the Eclipse Yocto Plug-in involves setting the Cross
+Compiler options and the Target options. The configurations you
+choose become the default settings for all projects. You do have
+opportunities to change them later when you configure the project
+(see the following section).</p>
+<p>To start, you need to do the following from within the Eclipse
+IDE:</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p>Choose <code class="filename">Windows -&gt; Preferences</code>
+to display the <code class="filename">Preferences</code> Dialog</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">Yocto Project ADT</code></p>
+</li>
+</ul>
+</div>
+<div class="section" title=
+"4.1.4.1.&nbsp;Configuring the Cross-Compiler Options">
+<div class="titlepage">
+<div>
+<div>
+<h4 class="title"><a name="configuring-the-cross-compiler-options"
+id=
+"configuring-the-cross-compiler-options"></a>4.1.4.1.&nbsp;Configuring
+the Cross-Compiler Options</h4>
+</div>
+</div>
+</div>
+<p>To configure the Cross Compiler Options, you must select the
+type of toolchain, point to the toolchain, specify the sysroot
+location, and select the target architecture.</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em>Selecting the Toolchain
+Type:</em></span> Choose between <code class="filename">Standalone
+pre-built toolchain</code> and <code class="filename">Build system
+derived toolchain</code> for Cross Compiler Options.</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="circle">
+<li class="listitem">
+<p><span class="emphasis"><em><code class="filename">Standalone
+Pre-built Toolchain:</code></em></span> Select this mode when you
+are using a stand-alone cross-toolchain. For example, suppose you
+are an application developer and do not need to build a target
+image. Instead, you just want to use an architecture-specific
+toolchain on an existing kernel and target root filesystem.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em><code class="filename">Build System
+Derived Toolchain:</code></em></span> Select this mode if the
+cross-toolchain has been installed and built as part of the Yocto
+Project build tree. When you select <code class="filename">Build
+system derived toolchain</code>, you are using the toolchain
+bundled inside the Yocto Project build tree.</p>
+</li>
+</ul>
+</div>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Point to the Toolchain:</em></span>
+If you are using a stand-alone pre-built toolchain, you should be
+pointing to the <code class="filename">/opt/poky/1.3</code>
+directory. This is the location for toolchains installed by the ADT
+Installer or by hand. Sections "<a class="link" href=
+"ch02.html#configuring-and-running-the-adt-installer-script" title=
+"2.1.1.2.&nbsp;Configuring and Running the ADT Installer Script">Configuring
+and Running the ADT Installer Script</a>" and "<a class="link"
+href="ch02.html#using-an-existing-toolchain-tarball" title=
+"2.1.2.&nbsp;Using a Cross-Toolchain Tarball">Using a
+Cross-Toolchain Tarball</a>" describe two ways to install a
+stand-alone cross-toolchain in the <code class=
+"filename">/opt/poky</code> directory.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+It is possible to install a stand-alone cross-toolchain in a
+directory other than <code class="filename">/opt/poky</code>.
+However, doing so is discouraged.</div>
+<p>If you are using a system-derived toolchain, the path you
+provide for the <code class="filename">Toolchain Root
+Location</code> field is the Yocto Project's build directory. See
+section "<a class="link" href=
+"ch02.html#using-the-toolchain-from-within-the-build-tree" title=
+"2.1.3.&nbsp;Using BitBake and the Yocto Project Build Tree">Using
+BitBake and the Yocto Project Build Tree</a>" for information on
+how to install the toolchain into the Yocto Project build tree.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Specify the Sysroot
+Location:</em></span> This location is where the root filesystem
+for the target hardware is created on the development system by the
+ADT Installer. The QEMU user-space tools, the NFS boot process, and
+the cross-toolchain all use the sysroot location.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Select the Target
+Architecture:</em></span> The target architecture is the type of
+hardware you are going to use or emulate. Use the pull-down
+<code class="filename">Target Architecture</code> menu to make your
+selection. The pull-down menu should have the supported
+architectures. If the architecture you need is not listed in the
+menu, you will need to build the image. See the "<a class="ulink"
+href=
+"http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html#building-image"
+target="_top">Building an Image</a>" section of The Yocto Project
+Quick Start for more information.</p>
+</li>
+</ul>
+</div>
+</div>
+<div class="section" title=
+"4.1.4.2.&nbsp;Configuring the Target Options">
+<div class="titlepage">
+<div>
+<div>
+<h4 class="title"><a name="configuring-the-target-options" id=
+"configuring-the-target-options"></a>4.1.4.2.&nbsp;Configuring the
+Target Options</h4>
+</div>
+</div>
+</div>
+<p>You can choose to emulate hardware using the QEMU emulator, or
+you can choose to run your image on actual hardware.</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em><code class=
+"filename">QEMU:</code></em></span> Select this option if you will
+be using the QEMU emulator. If you are using the emulator, you also
+need to locate the kernel and specify any custom options.</p>
+<p>If you selected <code class="filename">Build system derived
+toolchain</code>, the target kernel you built will be located in
+the Yocto Project build tree in <code class=
+"filename">tmp/deploy/images</code> directory. If you selected
+<code class="filename">Standalone pre-built toolchain</code>, the
+pre-built image you downloaded is located in the directory you
+specified when you downloaded the image.</p>
+<p>Most custom options are for advanced QEMU users to further
+customize their QEMU instance. These options are specified between
+paired angled brackets. Some options must be specified outside the
+brackets. In particular, the options <code class=
+"filename">serial</code>, <code class="filename">nographic</code>,
+and <code class="filename">kvm</code> must all be outside the
+brackets. Use the <code class="filename">man qemu</code> command to
+get help on all the options and their use. The following is an
+example:</p>
+<pre class="literallayout">
+    serial &lsquo;&lt;-m 256 -full-screen&gt;&rsquo;
+                        
+</pre>
+<p>Regardless of the mode, Sysroot is already defined as part of
+the Cross Compiler Options configuration in the <code class=
+"filename">Sysroot Location:</code> field.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em><code class="filename">External
+HW:</code></em></span> Select this option if you will be using
+actual hardware.</p>
+</li>
+</ul>
+</div>
+<p>Click the <code class="filename">OK</code> button to save your
+plug-in configurations.</p>
+</div>
+</div>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s02.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s02.html
new file mode 100644
index 0000000..046c49c
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s02.html
@@ -0,0 +1,94 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>4.2.&nbsp;Creating the Project</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="prev" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="next" href="ch04s03.html" title=
+"4.3.&nbsp;Configuring the Cross-Toolchains">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title="4.2.&nbsp;Creating the Project">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"creating-the-project" id=
+"creating-the-project"></a>4.2.&nbsp;Creating the Project</h2>
+</div>
+</div>
+</div>
+<p>You can create two types of projects: Autotools-based, or
+Makefile-based. This section describes how to create
+Autotools-based projects from within the Eclipse IDE. For
+information on creating Makefile-based projects in a terminal
+window, see the section "<a class="link" href="ch05.html" title=
+"Chapter&nbsp;5.&nbsp;Using the Command Line">Using the Command
+Line</a>".</p>
+<p>To create a project based on a Yocto template and then display
+the source code, follow these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Select <code class="filename">File -&gt; New -&gt;
+Project</code>.</p>
+</li>
+<li class="listitem">
+<p>Double click <code class="filename">CC++</code>.</p>
+</li>
+<li class="listitem">
+<p>Double click <code class="filename">C Project</code> to create
+the project.</p>
+</li>
+<li class="listitem">
+<p>Expand <code class="filename">Yocto Project ADT
+Project</code>.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">Hello World ANSI C Autotools
+Project</code>. This is an Autotools-based project based on a Yocto
+Project template.</p>
+</li>
+<li class="listitem">
+<p>Put a name in the <code class="filename">Project name:</code>
+field. Do not use hyphens as part of the name.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">Next</code>.</p>
+</li>
+<li class="listitem">
+<p>Add information in the <code class="filename">Author</code> and
+<code class="filename">Copyright notice</code> fields.</p>
+</li>
+<li class="listitem">
+<p>Be sure the <code class="filename">License</code> field is
+correct.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">Finish</code>.</p>
+</li>
+<li class="listitem">
+<p>If the "open perspective" prompt appears, click "Yes" so that
+you in the C/C++ perspective.</p>
+</li>
+<li class="listitem">
+<p>The left-hand navigation pane shows your project. You can
+display your source by double clicking the project's source
+file.</p>
+</li>
+</ol>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s03.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s03.html
new file mode 100644
index 0000000..3172f53
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s03.html
@@ -0,0 +1,77 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>4.3.&nbsp;Configuring the Cross-Toolchains</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="prev" href="ch04s02.html" title=
+"4.2.&nbsp;Creating the Project">
+<link rel="next" href="ch04s04.html" title=
+"4.4.&nbsp;Building the Project">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title=
+"4.3.&nbsp;Configuring the Cross-Toolchains">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"configuring-the-cross-toolchains" id=
+"configuring-the-cross-toolchains"></a>4.3.&nbsp;Configuring the
+Cross-Toolchains</h2>
+</div>
+</div>
+</div>
+<p>The earlier section, "<a class="link" href=
+"ch04.html#configuring-the-eclipse-yocto-plug-in" title=
+"4.1.4.&nbsp;Configuring the Eclipse Yocto Plug-in">Configuring the
+Eclipse Yocto Plug-in</a>", sets up the default project
+configurations. You can override these settings for a given project
+by following these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Select <code class="filename">Project -&gt; Change Yocto Project
+Settings</code>: This selection brings up the <code class=
+"filename">Yocot Project Settings</code> Dialog and allows you to
+make changes specific to an individual project.</p>
+<p>By default, the Cross Compiler Options and Target Options for a
+project are inherited from settings you provide using the
+<code class="filename">Preferences</code> Dialog as described
+earlier in the "<a class="link" href=
+"ch04.html#configuring-the-eclipse-yocto-plug-in" title=
+"4.1.4.&nbsp;Configuring the Eclipse Yocto Plug-in">Configuring the
+Eclipse Yocto Plug-in</a>" section. The <code class=
+"filename">Yocto Project Settings</code> Dialog allows you to
+override those default settings for a given project.</p>
+</li>
+<li class="listitem">
+<p>Make your configurations for the project and click "OK".</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">Project -&gt; Reconfigure
+Project</code>: This selection reconfigures the project by running
+<code class="filename">autogen.sh</code> in the workspace for your
+project. The script also runs <code class=
+"filename">libtoolize</code>, <code class=
+"filename">aclocal</code>, <code class="filename">autoconf</code>,
+<code class="filename">autoheader</code>, <code class=
+"filename">automake --a</code>, and <code class=
+"filename">./configure</code>. Click on the <code class=
+"filename">Console</code> tab beneath your source code to see the
+results of reconfiguring your project.</p>
+</li>
+</ol>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s04.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s04.html
new file mode 100644
index 0000000..fb43563
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s04.html
@@ -0,0 +1,37 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>4.4.&nbsp;Building the Project</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="prev" href="ch04s03.html" title=
+"4.3.&nbsp;Configuring the Cross-Toolchains">
+<link rel="next" href="ch04s05.html" title=
+"4.5.&nbsp;Starting QEMU in User Space NFS Mode">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title="4.4.&nbsp;Building the Project">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"building-the-project" id=
+"building-the-project"></a>4.4.&nbsp;Building the Project</h2>
+</div>
+</div>
+</div>
+<p>To build the project, select <code class="filename">Project
+-&gt; Build Project</code>. The console should update and you can
+note the cross-compiler you are using.</p>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s05.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s05.html
new file mode 100644
index 0000000..6ae3fb1
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s05.html
@@ -0,0 +1,65 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>4.5.&nbsp;Starting QEMU in User Space NFS Mode</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="prev" href="ch04s04.html" title=
+"4.4.&nbsp;Building the Project">
+<link rel="next" href="ch04s06.html" title=
+"4.6.&nbsp;Deploying and Debugging the Application">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title=
+"4.5.&nbsp;Starting QEMU in User Space NFS Mode">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"starting-qemu-in-user-space-nfs-mode" id=
+"starting-qemu-in-user-space-nfs-mode"></a>4.5.&nbsp;Starting QEMU
+in User Space NFS Mode</h2>
+</div>
+</div>
+</div>
+<p>To start the QEMU emulator from within Eclipse, follow these
+steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Expose the <code class="filename">Run -&gt; External
+Tools</code> menu. Your image should appear as a selectable menu
+item.</p>
+</li>
+<li class="listitem">
+<p>Select your image from the menu to launch the emulator in a new
+window.</p>
+</li>
+<li class="listitem">
+<p>If needed, enter your host root password in the shell window at
+the prompt. This sets up a <code class="filename">Tap 0</code>
+connection needed for running in user-space NFS mode.</p>
+</li>
+<li class="listitem">
+<p>Wait for QEMU to launch.</p>
+</li>
+<li class="listitem">
+<p>Once QEMU launches, you can begin operating within that
+environment. For example, you could determine the IP Address for
+the user-space NFS by using the <code class=
+"filename">ifconfig</code> command.</p>
+</li>
+</ol>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s06.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s06.html
new file mode 100644
index 0000000..1918cc5
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s06.html
@@ -0,0 +1,100 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>4.6.&nbsp;Deploying and Debugging the Application</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="prev" href="ch04s05.html" title=
+"4.5.&nbsp;Starting QEMU in User Space NFS Mode">
+<link rel="next" href="ch04s07.html" title=
+"4.7.&nbsp;Running User-Space Tools">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title=
+"4.6.&nbsp;Deploying and Debugging the Application">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"deploying-and-debugging-the-application" id=
+"deploying-and-debugging-the-application"></a>4.6.&nbsp;Deploying
+and Debugging the Application</h2>
+</div>
+</div>
+</div>
+<p>Once the QEMU emulator is running the image, using the Eclipse
+IDE you can deploy your application and use the emulator to perform
+debugging. Follow these steps to deploy the application.</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Select <code class="filename">Run -&gt; Debug
+Configurations...</code></p>
+</li>
+<li class="listitem">
+<p>In the left area, expand <code class="filename">C/C++Remote
+Application</code>.</p>
+</li>
+<li class="listitem">
+<p>Locate your project and select it to bring up a new tabbed view
+in the <code class="filename">Debug Configurations</code>
+Dialog.</p>
+</li>
+<li class="listitem">
+<p>Enter the absolute path into which you want to deploy the
+application. Use the <code class="filename">Remote Absolute File
+Path for C/C++Application:</code> field. For example, enter
+<code class="filename">/usr/bin/&lt;programname&gt;</code>.</p>
+</li>
+<li class="listitem">
+<p>Click on the <code class="filename">Debugger</code> tab to see
+the cross-tool debugger you are using.</p>
+</li>
+<li class="listitem">
+<p>Click on the <code class="filename">Main</code> tab.</p>
+</li>
+<li class="listitem">
+<p>Create a new connection to the QEMU instance by clicking on
+<code class="filename">new</code>.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">TCF</code>, which means Target
+Communication Framework.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">Next</code>.</p>
+</li>
+<li class="listitem">
+<p>Clear out the <code class="filename">host name</code> field and
+enter the IP Address determined earlier.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">Finish</code> to close the
+<code class="filename">New Connections</code> Dialog.</p>
+</li>
+<li class="listitem">
+<p>Use the drop-down menu now in the <code class=
+"filename">Connection</code> field and pick the IP Address you
+entered.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">Debug</code> to bring up a login
+screen and login.</p>
+</li>
+<li class="listitem">
+<p>Accept the debug perspective.</p>
+</li>
+</ol>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s07.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s07.html
new file mode 100644
index 0000000..78dad17
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s07.html
@@ -0,0 +1,161 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>4.7.&nbsp;Running User-Space Tools</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="prev" href="ch04s06.html" title=
+"4.6.&nbsp;Deploying and Debugging the Application">
+<link rel="next" href="ch04s08.html" title=
+"4.8.&nbsp;Customizing an Image Using a BitBake Commander Project and Hob">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title="4.7.&nbsp;Running User-Space Tools">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"running-user-space-tools" id=
+"running-user-space-tools"></a>4.7.&nbsp;Running User-Space
+Tools</h2>
+</div>
+</div>
+</div>
+<p>As mentioned earlier in the manual, several tools exist that
+enhance your development experience. These tools are aids in
+developing and debugging applications and images. You can run these
+user-space tools from within the Eclipse IDE through the
+<code class="filename">YoctoTools</code> menu.</p>
+<p>Once you pick a tool, you need to configure it for the remote
+target. Every tool needs to have the connection configured. You
+must select an existing TCF-based RSE connection to the remote
+target. If one does not exist, click <code class=
+"filename">New</code> to create one.</p>
+<p>Here are some specifics about the remote tools:</p>
+<div class="itemizedlist">
+<ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em><code class=
+"filename">OProfile</code>:</em></span> Selecting this tool causes
+the <code class="filename">oprofile-server</code> on the remote
+target to launch on the local host machine. The <code class=
+"filename">oprofile-viewer</code> must be installed on the local
+host machine and the <code class="filename">oprofile-server</code>
+must be installed on the remote target, respectively, in order to
+use. You must compile and install the <code class=
+"filename">oprofile-viewer</code> from the source code on your
+local host machine. Furthermore, in order to convert the target's
+sample format data into a form that the host can use, you must have
+<code class="filename">oprofile</code> version 0.9.4 or greater
+installed on the host.</p>
+<p>You can locate both the viewer and server from <a class="ulink"
+href="http://git.yoctoproject.org/cgit/cgit.cgi/oprofileui/"
+target="_top">http://git.yoctoproject.org/cgit/cgit.cgi/oprofileui/</a>.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+The <code class="filename">oprofile-server</code> is installed by
+default on the <code class="filename">core-image-sato-sdk</code>
+image.</div>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em><code class=
+"filename">Lttng-ust</code>:</em></span> Selecting this tool runs
+<code class="filename">usttrace</code> on the remote target,
+transfers the output data back to the local host machine, and uses
+the <code class="filename">lttng</code> Eclipse plug-in to
+graphically display the output. For information on how to use
+<code class="filename">lttng</code> to trace an application, see
+<a class="ulink" href="http://lttng.org/files/ust/manual/ust.html"
+target="_top">http://lttng.org/files/ust/manual/ust.html</a>.</p>
+<p>For <code class="filename">Application</code>, you must supply
+the absolute path name of the application to be traced by user mode
+<code class="filename">lttng</code>. For example, typing
+<code class="filename">/path/to/foo</code> triggers <code class=
+"filename">usttrace /path/to/foo</code> on the remote target to
+trace the program <code class="filename">/path/to/foo</code>.</p>
+<p><code class="filename">Argument</code> is passed to <code class=
+"filename">usttrace</code> running on the remote target.</p>
+<p>Before you use the <code class="filename">lttng-ust</code> tool,
+you need to setup the <code class="filename">lttng</code> Eclipse
+plug-in and create a <code class="filename">lttng</code> project.
+Do the following:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Follow these <a class="ulink" href=
+"http://wiki.eclipse.org/Linux_Tools_Project/LTTng#Downloading_and_installing_the_LTTng_parser_library"
+target="_top">instructions</a> to download and install the
+<code class="filename">lttng</code> parser library.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">Window -&gt; Open Perspective
+-&gt; Other</code> and then select <code class=
+"filename">LTTng</code>.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">OK</code> to change the Eclipse
+perspective into the <code class="filename">LTTng</code>
+perspective.</p>
+</li>
+<li class="listitem">
+<p>Create a new <code class="filename">LTTng</code> project by
+selecting <code class="filename">File -&gt; New -&gt;
+Project</code>.</p>
+</li>
+<li class="listitem">
+<p>Choose <code class="filename">LTTng -&gt; LTTng
+Project</code>.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">YoctoTools -&gt; lttng-ust</code>
+to start user mode <code class="filename">lttng</code> on the
+remote target.</p>
+</li>
+</ol>
+</div>
+<p>After the output data has been transferred from the remote
+target back to the local host machine, new traces will be imported
+into the selected <code class="filename">LTTng</code> project. Then
+you can go to the <code class="filename">LTTng</code> project,
+right click the imported trace, and set the trace type as the
+<code class="filename">LTTng</code> kernel trace. Finally, right
+click the imported trace and select <code class=
+"filename">Open</code> to display the data graphically.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em><code class=
+"filename">PowerTOP</code>:</em></span> Selecting this tool runs
+<code class="filename">powertop</code> on the remote target machine
+and displays the results in a new view called <code class=
+"filename">powertop</code>.</p>
+<p><code class="filename">Time to gather data(sec):</code> is the
+time passed in seconds before data is gathered from the remote
+target for analysis.</p>
+<p><code class="filename">show pids in wakeups list:</code>
+corresponds to the <code class="filename">-p</code> argument passed
+to <code class="filename">powertop</code>.</p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em><code class="filename">LatencyTOP and
+Perf</code>:</em></span> <code class="filename">latencytop</code>
+identifies system latency, while <code class="filename">perf</code>
+monitors the system's performance counter registers. Selecting
+either of these tools causes an RSE terminal view to appear from
+which you can run the tools. Both tools refresh the entire screen
+to display results while they run.</p>
+</li>
+</ul>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s08.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s08.html
new file mode 100644
index 0000000..ada80e5
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s08.html
@@ -0,0 +1,184 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>4.8.&nbsp;Customizing an Image Using a BitBake Commander
+Project and Hob</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch04.html" title=
+"Chapter&nbsp;4.&nbsp;Working Within Eclipse">
+<link rel="prev" href="ch04s07.html" title=
+"4.7.&nbsp;Running User-Space Tools">
+<link rel="next" href="ch05.html" title=
+"Chapter&nbsp;5.&nbsp;Using the Command Line">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title=
+"4.8.&nbsp;Customizing an Image Using a BitBake Commander Project and Hob">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"customizing-an-image-using-a-bitbake-commander-project-and-hob"
+id="customizing-an-image-using-a-bitbake-commander-project-and-hob">
+</a>4.8.&nbsp;Customizing an Image Using a BitBake Commander
+Project and Hob</h2>
+</div>
+</div>
+</div>
+<p>Within Eclipse, you can create a Yocto BitBake Commander
+project, edit the metadata, and then use the <a class="ulink" href=
+"http://www.yoctoproject.org/projects/hob" target="_top">Hob</a> to
+build a customized image all within one IDE.</p>
+<div class="section" title=
+"4.8.1.&nbsp;Creating the Yocto BitBake Commander Project">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name=
+"creating-the-yocto-bitbake-commander-project" id=
+"creating-the-yocto-bitbake-commander-project"></a>4.8.1.&nbsp;Creating
+the Yocto BitBake Commander Project</h3>
+</div>
+</div>
+</div>
+<p>To create a Yocto BitBake Commander project, follow these
+steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Select <code class="filename">Window -&gt; Open Perspective
+-&gt; Other</code> and then choose <code class="filename">Bitbake
+Commander</code>.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">OK</code> to change the Eclipse
+perspective into the Bitbake Commander perspective.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">File -&gt; New -&gt;
+Project</code> to create a new Yocto Bitbake Commander project.</p>
+</li>
+<li class="listitem">
+<p>Choose <code class="filename">Yocto Project Bitbake Commander
+-&gt; New Yocto Project</code> and click <code class=
+"filename">Next</code>.</p>
+</li>
+<li class="listitem">
+<p>Enter the Project Name and choose the Project Location. The
+Yocto project's metadata files will be put under the directory
+<code class=
+"filename">&lt;project_location&gt;/&lt;project_name&gt;</code>. If
+that directory does not exist, you need to check the "Clone from
+Yocto Git Repository" box, which would execute a <code class=
+"filename">git clone</code> command to get the Yocto project's
+metadata files.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">Finish</code> to create the
+project.</p>
+</li>
+</ol>
+</div>
+</div>
+<div class="section" title=
+"4.8.2.&nbsp;Editing the Metadata Files">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="editing-the-metadata-files" id=
+"editing-the-metadata-files"></a>4.8.2.&nbsp;Editing the Metadata
+Files</h3>
+</div>
+</div>
+</div>
+<p>After you create the Yocto Bitbake Commander project, you can
+modify the metadata files by opening them in the project. When
+editing recipe files (<code class="filename">.bb</code> files), you
+can view BitBake variable values and information by hovering the
+mouse pointer over the variable name and waiting a few seconds.</p>
+<p>To edit the metadata, follow these steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Select your Yocto Bitbake Commander project.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">File -&gt; New -&gt; Yocto BitBake
+Commander -&gt; BitBake Recipe</code> to open a new recipe
+wizard.</p>
+</li>
+<li class="listitem">
+<p>Point to your source by filling in the "SRC_URL" field. For
+example, you can add a recipe in the <a class="ulink" href=
+"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-source-files"
+target="_top">Yocto Project Source Files</a>, input the "SRC_URL"
+as follows:</p>
+<pre class="literallayout">
+     ftp://ftp.gnu.org/gnu/m4/m4-1.4.9.tar.gz
+                    
+</pre></li>
+<li class="listitem">
+<p>Click "Populate" to calculate the archive md5, sha256, license
+checksum values and to auto-generate the recipe filename.</p>
+</li>
+<li class="listitem">
+<p>Fill in the "Description" field.</p>
+</li>
+<li class="listitem">
+<p>Be sure values for all required fields exist.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">Finish</code>.</p>
+</li>
+</ol>
+</div>
+</div>
+<div class="section" title=
+"4.8.3.&nbsp;Building and Customizing the Image">
+<div class="titlepage">
+<div>
+<div>
+<h3 class="title"><a name="buiding-and-customizing-the-image" id=
+"buiding-and-customizing-the-image"></a>4.8.3.&nbsp;Building and
+Customizing the Image</h3>
+</div>
+</div>
+</div>
+<p>To build and customize the image in Eclipse, follow these
+steps:</p>
+<div class="orderedlist">
+<ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Select your Yocto Bitbake Commander project.</p>
+</li>
+<li class="listitem">
+<p>Select <code class="filename">Project -&gt; Launch
+HOB</code>.</p>
+</li>
+<li class="listitem">
+<p>Enter the build directory where you want to put your final
+images.</p>
+</li>
+<li class="listitem">
+<p>Click <code class="filename">OK</code> to launch Hob.</p>
+</li>
+<li class="listitem">
+<p>Use Hob to customize and build your own images. For information
+on Hob, see the <a class="ulink" href=
+"http://www.yoctoproject.org/projects/hob" target="_top">Hob
+Project Page</a> on the Yocto Project website.</p>
+</li>
+</ol>
+</div>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05.html
new file mode 100644
index 0000000..c5907d9
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05.html
@@ -0,0 +1,112 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>Chapter&nbsp;5.&nbsp;Using the Command Line</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="prev" href="ch04s08.html" title=
+"4.8.&nbsp;Customizing an Image Using a BitBake Commander Project and Hob">
+<link rel="next" href="ch05s02.html" title=
+"5.2.&nbsp;Makefile-Based Projects">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="chapter" title=
+"Chapter&nbsp;5.&nbsp;Using the Command Line">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title"><a name="using-the-command-line" id=
+"using-the-command-line"></a>Chapter&nbsp;5.&nbsp;Using the Command
+Line</h2>
+</div>
+</div>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href=
+"ch05.html#autotools-based-projects">5.1. Autotools-Based
+Projects</a></span></dt>
+<dt><span class="section"><a href="ch05s02.html">5.2.
+Makefile-Based Projects</a></span></dt>
+</dl>
+</div>
+<p>Recall that earlier the manual discussed how to use an existing
+toolchain tarball that had been installed into <code class=
+"filename">/opt/poky</code>, which is outside of the Yocto Project
+build tree (see the section "<a class="link" href=
+"ch02.html#using-an-existing-toolchain-tarball" title=
+"2.1.2.&nbsp;Using a Cross-Toolchain Tarball">Using an Existing
+Toolchain Tarball)</a>". And, that sourcing your
+architecture-specific environment setup script initializes a
+suitable cross-toolchain development environment. During the setup,
+locations for the compiler, QEMU scripts, QEMU binary, a special
+version of <code class="filename">pkgconfig</code> and other useful
+utilities are added to the <code class="filename">PATH</code>
+variable. Variables to assist <code class=
+"filename">pkgconfig</code> and <code class=
+"filename">autotools</code> are also defined so that, for example,
+<code class="filename">configure.sh</code> can find pre-generated
+test results for tests that need target hardware on which to run.
+These conditions allow you to easily use the toolchain outside of
+the Yocto Project build environment on both autotools-based
+projects and Makefile-based projects.</p>
+<div class="section" title="5.1.&nbsp;Autotools-Based Projects">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"autotools-based-projects" id=
+"autotools-based-projects"></a>5.1.&nbsp;Autotools-Based
+Projects</h2>
+</div>
+</div>
+</div>
+<p>For an Autotools-based project, you can use the cross-toolchain
+by just passing the appropriate host option to <code class=
+"filename">configure.sh</code>. The host option you use is derived
+from the name of the environment setup script in <code class=
+"filename">/opt/poky</code> resulting from unpacking the
+cross-toolchain tarball. For example, the host option for an
+ARM-based target that uses the GNU EABI is <code class=
+"filename">armv5te-poky-linux-gnueabi</code>. Note that the name of
+the script is <code class=
+"filename">environment-setup-armv5te-poky-linux-gnueabi</code>.
+Thus, the following command works:</p>
+<pre class="literallayout">
+     $ configure --host=armv5te-poky-linux-gnueabi \
+        --with-libtool-sysroot=&lt;sysroot-dir&gt;
+        
+</pre>
+<p>This single command updates your project and rebuilds it using
+the appropriate cross-toolchain tools.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+If <code class="filename">configure</code> script results in
+problems recognizing the <code class=
+"filename">--with-libtool-sysroot=&lt;sysroot-dir&gt;</code>
+option, regenerate the script to enable the support by doing the
+following and then re-running the script:
+<pre class="literallayout">
+     $ libtoolize --automake
+     $ aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \
+        [-I &lt;dir_containing_your_project-specific_m4_macros&gt;]
+     $ autoconf
+     $ autoheader
+     $ automake -a
+        
+</pre></div>
+</div>
+</div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05s02.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05s02.html
new file mode 100644
index 0000000..f539f88
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05s02.html
@@ -0,0 +1,41 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>5.2.&nbsp;Makefile-Based Projects</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="up" href="ch05.html" title=
+"Chapter&nbsp;5.&nbsp;Using the Command Line">
+<link rel="prev" href="ch05.html" title=
+"Chapter&nbsp;5.&nbsp;Using the Command Line">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div class="section" title="5.2.&nbsp;Makefile-Based Projects">
+<div class="titlepage">
+<div>
+<div>
+<h2 class="title" style="clear: both"><a name=
+"makefile-based-projects" id=
+"makefile-based-projects"></a>5.2.&nbsp;Makefile-Based
+Projects</h2>
+</div>
+</div>
+</div>
+<p>For a Makefile-based project, you use the cross-toolchain by
+making sure the tools are used. You can do this as follows:</p>
+<pre class="literallayout">
+     CC=arm-poky-linux-gnueabi-gcc
+     LD=arm-poky-linux-gnueabi-ld
+     CFLAGS=&rdquo;${CFLAGS} --sysroot=&lt;sysroot-dir&gt;&rdquo;
+     CXXFLAGS=&rdquo;${CXXFLAGS} --sysroot=&lt;sysroot-dir&gt;&rdquo;
+        
+</pre></div>
+</body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html b/plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
new file mode 100644
index 0000000..1b639d6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
@@ -0,0 +1,260 @@
+<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
+<html>
+<head>
+<meta name="generator" content=
+"HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
+<meta http-equiv="Content-Type" content=
+"text/html; charset=us-ascii">
+<title>The Yocto Project Application Development Toolkit (ADT)
+User's Guide.</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<link rel="next" href="ch01.html" title=
+"Chapter&nbsp;1.&nbsp;Application Development Toolkit (ADT) User's Guide">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084"
+alink="#0000FF">
+<div lang="en" class="book" title=
+"The Yocto Project Application Development Toolkit (ADT) User's Guide.">
+<div class="titlepage">
+<div>
+<div>
+<h1 class="title"><a name="adt-manual" id="adt-manual"></a> The
+Yocto Project Application Development Toolkit (ADT) User's
+Guide.</h1>
+</div>
+<div>
+<div class="authorgroup">
+<div class="author">
+<h3 class="author"><span class="firstname">Jessica</span>
+<span class="surname">Zhang</span></h3>
+<div class="affiliation"><span class="orgname">Intel
+Corporation<br></span></div>
+<code class="email">&lt;<a class="email" href=
+"mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;</code></div>
+</div>
+</div>
+<div>
+<p class="copyright">Copyright &copy; 2010-2012 Linux
+Foundation</p>
+</div>
+<div>
+<div class="legalnotice" title="Legal Notice"><a name="id572901"
+id="id572901"></a>
+<p>Permission is granted to copy, distribute and/or modify this
+document under the terms of the <a class="ulink" href=
+"http://creativecommons.org/licenses/by-sa/2.0/uk/" target=
+"_top">Creative Commons Attribution-Share Alike 2.0 UK: England
+&amp; Wales</a> as published by Creative Commons.</p>
+<div class="note" title="Note" style=
+"margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+Due to production processes, there could be differences between the
+Yocto Project documentation bundled in the release tarball and the
+<a class="ulink" href=
+"http://www.yoctoproject.org/docs/latest/adt-manual/adt-manual.html"
+target="_top">Application Developer's Toolkit (ADT) User's
+Guide</a> on the <a class="ulink" href=
+"http://www.yoctoproject.org" target="_top">Yocto Project</a>
+website. For the latest version of this manual, see the manual on
+the website.</div>
+</div>
+</div>
+<div>
+<div class="revhistory">
+<table border="1" width="100%" summary="Revision history">
+<tr>
+<th align="left" valign="top" colspan="2"><b>Revision
+History</b></th>
+</tr>
+<tr>
+<td align="left">Revision 1.0</td>
+<td align="left">6 April 2011</td>
+</tr>
+<tr>
+<td align="left" colspan="2">Released with the Yocto Project 1.0
+Release.</td>
+</tr>
+<tr>
+<td align="left">Revision 1.0.1</td>
+<td align="left">23 May 2011</td>
+</tr>
+<tr>
+<td align="left" colspan="2">Released with the Yocto Project 1.0.1
+Release.</td>
+</tr>
+<tr>
+<td align="left">Revision 1.1</td>
+<td align="left">6 October 2011</td>
+</tr>
+<tr>
+<td align="left" colspan="2">Released with the Yocto Project 1.1
+Release.</td>
+</tr>
+<tr>
+<td align="left">Revision 1.2</td>
+<td align="left">April 2012</td>
+</tr>
+<tr>
+<td align="left" colspan="2">Released with the Yocto Project 1.2
+Release.</td>
+</tr>
+<tr>
+<td align="left">Revision 1.3</td>
+<td align="left">Sometime in 2012</td>
+</tr>
+<tr>
+<td align="left" colspan="2">Released with the Yocto Project 1.3
+Release.</td>
+</tr>
+</table>
+</div>
+</div>
+</div>
+<hr></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="chapter"><a href="ch01.html">1. Application
+Development Toolkit (ADT) User's Guide</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href="ch01.html#book-intro">1.1.
+Introducing the Application Development Toolkit
+(ADT)</a></span></dt>
+<dt><span class="section"><a href="ch01s02.html">1.2. ADT
+Components</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch01s02.html#the-cross-toolchain">1.2.1. The
+Cross-Toolchain</a></span></dt>
+<dt><span class="section"><a href="ch01s02.html#sysroot">1.2.2.
+Sysroot</a></span></dt>
+<dt><span class="section"><a href=
+"ch01s02.html#the-qemu-emulator">1.2.3. The QEMU
+Emulator</a></span></dt>
+<dt><span class="section"><a href=
+"ch01s02.html#user-space-tools">1.2.4. User-Space
+Tools</a></span></dt>
+</dl>
+</dd>
+</dl>
+</dd>
+<dt><span class="chapter"><a href="ch02.html">2. Preparing to Use
+the Application Development Toolkit (ADT)</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch02.html#installing-the-adt">2.1. Installing the
+ADT</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch02.html#using-the-adt-installer">2.1.1. Using the ADT
+Installer</a></span></dt>
+<dt><span class="section"><a href=
+"ch02.html#using-an-existing-toolchain-tarball">2.1.2. Using a
+Cross-Toolchain Tarball</a></span></dt>
+<dt><span class="section"><a href=
+"ch02.html#using-the-toolchain-from-within-the-build-tree">2.1.3.
+Using BitBake and the Yocto Project Build Tree</a></span></dt>
+</dl>
+</dd>
+<dt><span class="section"><a href="ch02s02.html">2.2. Setting Up
+the Cross-Development Environment</a></span></dt>
+<dt><span class="section"><a href="ch02s03.html">2.3. Securing
+Kernel and Filesystem Images</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch02s03.html#getting-the-images">2.3.1. Getting the
+Images</a></span></dt>
+<dt><span class="section"><a href=
+"ch02s03.html#extracting-the-root-filesystem">2.3.2. Extracting the
+Root Filesystem</a></span></dt>
+</dl>
+</dd>
+</dl>
+</dd>
+<dt><span class="chapter"><a href="ch03.html">3. Optionally
+Customizing the Development Packages Installation</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch03.html#package-management-systems">3.1. Package Management
+Systems</a></span></dt>
+<dt><span class="section"><a href="ch03s02.html">3.2. Configuring
+the PMS</a></span></dt>
+</dl>
+</dd>
+<dt><span class="chapter"><a href="ch04.html">4. Working Within
+Eclipse</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch04.html#setting-up-the-eclipse-ide">4.1. Setting Up the Eclipse
+IDE</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch04.html#installing-eclipse-ide">4.1.1. Installing the Eclipse
+IDE</a></span></dt>
+<dt><span class="section"><a href=
+"ch04.html#configuring-the-eclipse-ide">4.1.2. Configuring the
+Eclipse IDE</a></span></dt>
+<dt><span class="section"><a href=
+"ch04.html#installing-the-eclipse-yocto-plug-in">4.1.3. Installing
+or Accessing the Eclipse Yocto Plug-in</a></span></dt>
+<dt><span class="section"><a href=
+"ch04.html#configuring-the-eclipse-yocto-plug-in">4.1.4.
+Configuring the Eclipse Yocto Plug-in</a></span></dt>
+</dl>
+</dd>
+<dt><span class="section"><a href="ch04s02.html">4.2. Creating the
+Project</a></span></dt>
+<dt><span class="section"><a href="ch04s03.html">4.3. Configuring
+the Cross-Toolchains</a></span></dt>
+<dt><span class="section"><a href="ch04s04.html">4.4. Building the
+Project</a></span></dt>
+<dt><span class="section"><a href="ch04s05.html">4.5. Starting QEMU
+in User Space NFS Mode</a></span></dt>
+<dt><span class="section"><a href="ch04s06.html">4.6. Deploying and
+Debugging the Application</a></span></dt>
+<dt><span class="section"><a href="ch04s07.html">4.7. Running
+User-Space Tools</a></span></dt>
+<dt><span class="section"><a href="ch04s08.html">4.8. Customizing
+an Image Using a BitBake Commander Project and Hob</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch04s08.html#creating-the-yocto-bitbake-commander-project">4.8.1.
+Creating the Yocto BitBake Commander Project</a></span></dt>
+<dt><span class="section"><a href=
+"ch04s08.html#editing-the-metadata-files">4.8.2. Editing the
+Metadata Files</a></span></dt>
+<dt><span class="section"><a href=
+"ch04s08.html#buiding-and-customizing-the-image">4.8.3. Building
+and Customizing the Image</a></span></dt>
+</dl>
+</dd>
+</dl>
+</dd>
+<dt><span class="chapter"><a href="ch05.html">5. Using the Command
+Line</a></span></dt>
+<dd>
+<dl>
+<dt><span class="section"><a href=
+"ch05.html#autotools-based-projects">5.1. Autotools-Based
+Projects</a></span></dt>
+<dt><span class="section"><a href="ch05s02.html">5.2.
+Makefile-Based Projects</a></span></dt>
+</dl>
+</dd>
+</dl>
+</div>
+</div>
+</body>
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
index 9be9cf5..70fcc48 100644
--- a/plugins/org.yocto.sdk.doc.user/toc.xml
+++ b/plugins/org.yocto.sdk.doc.user/toc.xml
@@ -3,4 +3,7 @@
    <topic label="The Yocto Project Quick Start">
       <link toc="yocto-project-qs-toc.xml"/>
    </topic>
+   <topic label="The Yocto Project Application Development Toolkit (ADT) User&apos;s Guide">
+      <link toc="adt-manual-toc.xml"/>
+   </topic>
 </toc>
diff --git a/plugins/org.yocto.sdk.doc.user/yocto-project-qs-toc.xml b/plugins/org.yocto.sdk.doc.user/yocto-project-qs-toc.xml
new file mode 100644
index 0000000..38d8055
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/yocto-project-qs-toc.xml
@@ -0,0 +1,32 @@
+<?xml version="1.0" encoding="utf-8" standalone="no"?>
+<toc label="The Yocto Project Quick Start" topic="html/yocto-project-qs/index.html">
+  <topic label="The Yocto Project Quick Start" href="html/yocto-project-qs/index.html#fake-title"/>
+  <topic label="Welcome!" href="html/yocto-project-qs/index.html#welcome"/>
+  <topic label="Introducing the Yocto Project Development Environment" href="html/yocto-project-qs/index.html#yp-intro"/>
+  <topic label="What You Need and How You Get It" href="html/yocto-project-qs/index.html#resources">
+    <topic label="The Linux Distribution" href="html/yocto-project-qs/index.html#the-linux-distro"/>
+    <topic label="The Packages" href="html/yocto-project-qs/index.html#packages">
+      <topic label="Ubuntu" href="html/yocto-project-qs/index.html#ubuntu"/>
+      <topic label="Fedora" href="html/yocto-project-qs/index.html#fedora"/>
+      <topic label="openSUSE" href="html/yocto-project-qs/index.html#opensuse"/>
+      <topic label="CentOS" href="html/yocto-project-qs/index.html#centos"/>
+    </topic>
+    <topic label="Yocto Project Release" href="html/yocto-project-qs/index.html#releases"/>
+  </topic>
+  <topic label="A Quick Test Run" href="html/yocto-project-qs/index.html#test-run">
+    <topic label="Building an Image" href="html/yocto-project-qs/index.html#building-image"/>
+    <topic label="Using Pre-Built Binaries and QEMU" href="html/yocto-project-qs/index.html#using-pre-built">
+      <topic label="Installing the Toolchain" href="html/yocto-project-qs/index.html#installing-the-toolchain"/>
+      <topic label="Downloading the Pre-Built Linux Kernel" href="html/yocto-project-qs/index.html#downloading-the-pre-built-linux-kernel"/>
+      <topic label="Downloading the Filesystem" href="html/yocto-project-qs/index.html#downloading-the-filesystem"/>
+      <topic label="Setting Up the Environment and Starting the QEMU Emulator" href="html/yocto-project-qs/index.html#setting-up-the-environment-and-starting-the-qemu-emulator"/>
+    </topic>
+  </topic>
+  <topic label="Super User" href="html/yocto-project-qs/index.html#super-user">
+    <topic label="Getting the Yocto Project" href="html/yocto-project-qs/index.html#getting-yocto"/>
+    <topic label="Setting Up Your Host" href="html/yocto-project-qs/index.html#setting-up-your-host"/>
+    <topic label="Initializing the Build Environment" href="html/yocto-project-qs/index.html#initializing-the-build-environment"/>
+    <topic label="Configuring the local.conf File" href="html/yocto-project-qs/index.html#configuring-the-local.conf-file"/>
+    <topic label="Building the Image" href="html/yocto-project-qs/index.html#building-the-image"/>
+  </topic>
+</toc>
-- 
1.7.7.6


