Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C51EBE006D5
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 07:48:40 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E5459401A2;
	Thu,  6 Dec 2012 16:13:00 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 16:48:33 +0100
Message-Id: <bde760220ffcfa140bab6930f327977ecf085f22.1354805521.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <b7c6bd306781ef02179f4b82c46cfa4f73792c1f.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
	<b7c6bd306781ef02179f4b82c46cfa4f73792c1f.1354805521.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv3 2/7] plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto documentation
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
X-List-Received-Date: Thu, 06 Dec 2012 15:48:41 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

As documentation is licensed under CCA-SA 2.0 UK and the plugin itself
is licensed under EPL v1.0 an about file needs to be added to the
plugin identifying the third party content.
---
 plugins/org.yocto.sdk.ide.doc.user/about.html.in   |  166 ++++++++++++++++++++
 .../org.yocto.sdk.ide.doc.user/build.properties    |    6 +-
 2 files changed, 170 insertions(+), 2 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/about.html.in

diff --git a/plugins/org.yocto.sdk.ide.doc.user/about.html.in b/plugins/org.yocto.sdk.ide.doc.user/about.html.in
new file mode 100644
index 0000000..c009f77
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/about.html.in
@@ -0,0 +1,166 @@
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
+			<em>Commit:</em> @COMMIT_ID-adt-manual@
+		<br />
+		<br />
+		<strong>
+			The Yocto Project Development Manual:
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
+			The Yocto Project Reference Manual:
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
+			<em>Commit:</em> @COMMIT_ID-poky-ref-manual@
+		<br />
+		<br />
+		<strong>
+			The Yocto Project Board Support Package (BSP) Developer's Guide:
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
+			Yocto Project Kernel Architecture and Use Manual:
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
+			<em>Commit:</em> @COMMIT_ID-kernel-manual@
+	</p>
+</body>
diff --git a/plugins/org.yocto.sdk.ide.doc.user/build.properties b/plugins/org.yocto.sdk.ide.doc.user/build.properties
index 6d00e58..17c6cb5 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.ide.doc.user/build.properties
@@ -4,6 +4,8 @@ bin.includes = plugin.xml,\
                OSGI-INF/,\
                cheatsheets/,\
                html/,\
-               toc.xml
+               toc.xml,\
+               about.html
 src.includes = cheatsheets/,\
-               html/
+               html/,\
+               about.html
-- 
1.7.7.6


