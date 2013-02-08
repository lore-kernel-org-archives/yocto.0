Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6EFC5E00527
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 96FE040238;
	Fri,  8 Feb 2013 13:44:17 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:34 +0100
Message-Id: <68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
	<a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 04/12] plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto documentation
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
X-List-Received-Date: Fri, 08 Feb 2013 13:24:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

As documentation is licensed under CCA-SA 2.0 UK and the plugin itself
is licensed under EPL v1.0 an about file needs to be added to the
plugin identifying the third party content.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.doc.user/about.html.in    | 189 ++++++++++++++++++++++++++++
 plugins/org.yocto.doc.user/build.properties |   6 +-
 2 files changed, 193 insertions(+), 2 deletions(-)
 create mode 100644 plugins/org.yocto.doc.user/about.html.in

diff --git a/plugins/org.yocto.doc.user/about.html.in b/plugins/org.yocto.doc.user/about.html.in
new file mode 100644
index 0000000..3040859
--- /dev/null
+++ b/plugins/org.yocto.doc.user/about.html.in
@@ -0,0 +1,189 @@
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
+		<em>December, 2012</em>
+	</p>
+	<h3>License</h3>
+
+	<p>
+		Copyright (c) 2010 Intel, Inc. and others.
+		All rights reserved. This program and the accompanying materials
+		are made available under the terms of the Eclipse Public License v1.0
+		which accompanies this distribution, and is available at <br />
+		<a href="http://www.eclipse.org/legal/epl-v10.html">
+			http://www.eclipse.org/legal/epl-v10.html
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
+			<em>Commit:</em> @COMMIT_ID-yocto-project-qs@
+		<br />
+		<br />
+		<strong>
+			Yocto Project Application Developer's Guide:
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
+			<em>Commit:</em> @COMMIT_ID-adt-manual@
+		<br />
+		<br />
+		<strong>
+			Yocto Project Development Manual:
+		</strong>
+		<br />
+		<br />
+			This manual describes how to use the Yocto Project to develop
+			embedded Linux images and user-space applications to run on
+			targeted devices.
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
+			<em>Commit:</em> @COMMIT_ID-dev-manual@
+		<br />
+		<br />
+		<strong>
+			Yocto Project Reference Manual:
+		</strong>
+		<br />
+		<br />
+			This manual is the complete reference guide to the Poky component.
+			It also contains a chapter on Board Support Package (BSP) development.
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
+			<em>Commit:</em> @COMMIT_ID-ref-manual@
+		<br />
+		<br />
+		<strong>
+			Yocto Project Board Support Package (BSP) Developer's Guide:
+		</strong>
+		<br />
+		<br />
+			This brief document defines a structure for BSP components.
+			Having a commonly understood layout encourages standardization.
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
+			<em>Commit:</em> @COMMIT_ID-bsp-guide@
+		<br />
+		<br />
+		<strong>
+			Yocto Project Linux Kernel Development Manual:
+		</strong>
+		<br />
+		<br />
+			  This document describes the architecture of the Yocto Project
+			  kernel and provides some work flow examples.
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
+			<em>Commit:</em> @COMMIT_ID-kernel-dev@
+				<br />
+		<br />
+		<strong>
+			Yocto Project Profiling and Tracing Manual:
+		</strong>
+		<br />
+		<br />
+			  This manual presents a set of common and generally useful
+			  tracing and profiling schemes along with their application
+			  (as appropriate) to each tool.
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
+			<em>Commit:</em> @COMMIT_ID-profile-manual@
+	</p>
+</body>
diff --git a/plugins/org.yocto.doc.user/build.properties b/plugins/org.yocto.doc.user/build.properties
index 525a366..cbceb14 100644
--- a/plugins/org.yocto.doc.user/build.properties
+++ b/plugins/org.yocto.doc.user/build.properties
@@ -3,5 +3,7 @@ bin.includes = plugin.xml,\
                META-INF/,\
                OSGI-INF/,\
                html/,\
-               toc.xml
-src.includes = html/
+               toc.xml,\
+               about.html
+src.includes = html/,\
+               about.html
-- 
1.7.11.7


