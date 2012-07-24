Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f68.google.com (mail-wg0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FFE4E002A9
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:22 -0700 (PDT)
Received: by wgbdt12 with SMTP id dt12so1399503wgb.11
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=uPMzUicKBp08umDCL2kPxovMOE887ewoDcpbjAQT+0I=;
	b=I1Bu4jSgTL3D3niI7c1tlO+d2An8vSRebBNH5EbQSVz1DLIWuE83cO2WvhIXFZqB/i
	gxzPHsKuK0bikLyypKRSUU4vEuts9m/i7aWYqQmc3ZYtQUiC34YqWaHiGA26YF40Lok/
	giENqGnrWxzC3xxu/WbntxgrXx1fW6ZJCSnVo5b0HbcwpASOMDXWtkp9zwQVPgnMuYCS
	vyFyNMg/w2Q4cONIXt2cNNglkzjb47qAb/meJ7lY081l6K+8o6rclPvYXN7miUbE4iQb
	3yNW/GNxmsLEcauzV9vmJPUu8pdjGJdt9A69jiEwAw29gMvdmRG9Gw24PiAqF4u4y/Bf
	tzyQ==
Received: by 10.180.107.103 with SMTP id hb7mr8176898wib.3.1343145321139;
	Tue, 24 Jul 2012 08:55:21 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id 49sm256418eej.10.2012.07.24.08.55.20
	(version=SSLv3 cipher=OTHER); Tue, 24 Jul 2012 08:55:20 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Jul 2012 17:53:52 +0200
Message-Id: <e92701b7671cd2347eca7cfb1040153e1154b71c.1343140579.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
Subject: [RFC 3/3] plugins/sdk.ide.doc.user: Added cheat sheet for hello world project
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
X-List-Received-Date: Tue, 24 Jul 2012 15:55:23 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The cheat sheet added provides an interactive tutorial for creating
and building the 'Hello World C++ Autotools Project' provided with the
yocto ide.  The tutorial starts of by configuring the yocto project
settings and then guides the user through the process of creating and
finally building the project.
---
 .../META-INF/MANIFEST.MF                           |    1 +
 .../OSGI-INF/l10n/bundle.properties                |    4 +
 .../org.yocto.sdk.ide.doc.user/build.properties    |    4 +-
 .../cheatsheets/createNewHelloWorldProject.xml     |  187 ++++++++++++++++++++
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |    9 +
 5 files changed, 204 insertions(+), 1 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml

diff --git a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
index 1c8ae05..87079ce 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
@@ -5,3 +5,4 @@ Bundle-SymbolicName: org.yocto.sdk.ide.doc.user;singleton:=true
 Bundle-Version: 1.2.0.qualifier
 Bundle-Vendor: %Bundle-Vendor
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Require-Bundle: org.eclipse.ui.cheatsheets
diff --git a/plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
index 99f8fce..9c77778 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
@@ -1,3 +1,7 @@
 #Properties file for org.yocto.sdk.ide.doc.user
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto User Help
+
+category.name = Yocto Project
+
+cheatsheet.name = Creating a Hello World C++ Autotools Project
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide.doc.user/build.properties b/plugins/org.yocto.sdk.ide.doc.user/build.properties
index 31e0140..caf850b 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.ide.doc.user/build.properties
@@ -1,4 +1,6 @@
 bin.includes = plugin.xml,\
                .,\
                META-INF/,\
-               OSGI-INF/
+               OSGI-INF/,\
+               cheatsheets/
+src.includes = cheatsheets/
diff --git a/plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml b/plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml
new file mode 100644
index 0000000..327242b
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml
@@ -0,0 +1,187 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<!--
+/*******************************************************************************
+ * Copyright (c) 2012 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Atanas Gegov - initial cheat sheet for creating the hello world project.
+ *******************************************************************************
+-->
+<cheatsheet title="Creating a Hello World C++ Autotools Project">
+	<intro>
+		<description>
+			This cheat sheet will guide you through the process of creating and
+			building a &quot;Hello World C++ Autotools Project&quot;
+			application that uses the Yocto Project template.
+		</description>
+	</intro>
+	<item title="Open the C/C++ Perspective" dialog="false" skip="true">
+		<description>
+			Select <b>Window</b> &gt; <b>Open Perspective</b> &gt;
+			<b>Other...</b> from the menu bar.<br/>
+			Choose <b>C/C++</b> from the <b>Open Perspective</b> dialog.
+			Click <b>OK</b>.
+		</description>
+		<command
+			required="false"
+			serialization="org.eclipse.ui.perspectives.showPerspective(org.eclipse.ui.perspectives.showPerspective.perspectiveId=org.eclipse.cdt.ui.CPerspective)">
+		</command>
+	</item>
+	<item title="Specify a toolchain and sysroot location" dialog="true" skip="true">
+		<description>
+			You need to specify a toolchain and sysroot location before
+			building any project in the workspace.
+		</description>
+		<subitem>
+			<description>
+			The global settings can be modified in the <b>Yocto Project ADT</b>
+			section of the eclipse preferences. Select <b>Window</b> &gt;
+			<b>Preferences</b> from the menu bar and then select the section
+			<b>Yocto Project ADT</b>. These settings are the default ones for
+			every project you create in the workspace.
+			</description>
+			<command
+				required="false"
+				serialization="org.eclipse.ui.window.preferences(preferencePageId=org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage)">
+			</command>
+		</subitem>
+		<subitem>
+			<description>
+			Choose in the <b>Cross Compiler Options</b> the
+			<b>Standalone pre-built toolchain</b>.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			Provide a <b>Toolchain Root Location</b> (most probably
+			/opt/poky/&lt;Yocto version, e.g. 1.2&gt;).
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			Provide a <b>Sysroot Location</b>. This is the filesystem
+			containing libraries, headers etc. used while cross-building
+			binaries for the target.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			If more than one toolchain is found in the <b>Toolchain
+			Root Location</b>, use the drop-down box to select the <b>Target
+			Architecture</b>. Make sure that the selected sysroot matches
+			the toolchain.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			Choose in the <b>Target Options</b> whether the target is a QEMU
+			emulation (kernel location required) or an external hardware.
+			The target is used for running or remote debugging the binaries
+			created for it.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			Save the settings with <b>Apply</b> and <b>OK</b>. You can later
+			change these settings for any project from the menu
+			<b>Project</b> &gt; <b>Change Yocto Project Settings</b>.
+			</description>
+		</subitem>
+	</item>
+	<item title="Create a Hello World C++ Autotools Project" dialog="true">
+		<description>
+			Create a Yocto Project ADT Project &quot;Hello World C++ Autotools
+			Project&quot; by using the C++ Project wizard.
+		</description>
+		<subitem>
+			<description>
+				Click <b>File</b> &gt; <b>New</b> &gt; <b>C++ Project</b> to
+				launch the C++ Project wizard.
+			</description>
+			<command
+				required="false"
+				serialization="org.eclipse.ui.newWizard(newWizardId=org.eclipse.cdt.ui.wizards.NewCWizard1)">
+			</command>
+		</subitem>
+		<subitem>
+			<description>
+				Enter <b>HelloWorld</b> as the project name, then select
+				<b>Yocto Project ADT Project</b> &gt;
+				<b>Hello World C++ Autotools Project</b> from the Project type
+				list and click <b>Next</b>.
+			</description>
+		</subitem>
+		<subitem skip="true">
+			<description>
+			Fill in the name of the <b>Author</b>. Make some changes in the
+			other fields if needed. Possibly change the <b>License</b> from
+			the drop-down box and click <b>Next</b>.
+			</description>
+		</subitem>
+		<subitem skip="true">
+			<description>
+			If needed make some Advanced settings. Click <b>Next</b>.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			Click <b>Finish</b> to create the project in your workspace. You
+			will find the created project in the <b>Project Explorer</b> view.
+			</description>
+		</subitem>
+	</item>
+	<item title="Build the project" dialog="true">
+		<description>
+			Create the project&apos;s binary using a specified toolchain and
+			sysroot.
+		</description>
+		<subitem>
+			<description>
+			Make sure that the project is on focus in the
+			<b>Project Explorer</b> view.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			If you want to change the default settings for toolchain and
+			sysroot location go to <b>Project</b> &gt;
+			<b>Change Yocto Project Settings</b> in the menu bar. Finish the
+			editing by pressing <b>OK</b>.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			If you have changed the settings in the previous step, call
+			<b>Project</b> &gt; <b>Reconfigure Project</b> to reconfigure the
+			project with these new settings (e.g. create the correct Makefiles
+			that make use of the selected toolchain and sysroot).
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			Build the project with a click on the hammer symbol in the
+			Toolbar. Alternatively, go to <b>Project</b> &gt;
+			<b>Build Project</b>. If you didn&apos;t change the default
+			toolchain and sysroot, now the configuring step will be executed
+			at first, followed by the build step itself.
+			</description>
+		</subitem>
+		<subitem>
+			<description>
+			Observe the output in the different consoles (e.g.
+			<b>Configure [HelloWorld]</b> and
+			<b>CDT Build Console [HelloWorld]</b>) to check if everything
+			was successful.
+			</description>
+		</subitem>
+		<onCompletion>
+			Congratulations, you have completed this cheat sheet! You may
+			continue with editing, rebuilding or debugging the
+			Hello World C++ Autotools Project.
+		</onCompletion>
+	</item>
+</cheatsheet>
diff --git a/plugins/org.yocto.sdk.ide.doc.user/plugin.xml b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
index f422d55..24c539d 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.ide.doc.user/plugin.xml
@@ -1,4 +1,13 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <?eclipse version="3.4"?>
 <plugin>
+	<extension point="org.eclipse.ui.cheatsheets.cheatSheetContent">
+		<category id="org.yocto.sdk.ide.doc.user.cheatsheets" name="%category.name">
+		</category>
+		<cheatsheet category="org.yocto.sdk.ide.doc.user.cheatsheets"
+			composite="false" contentFile="cheatsheets/createNewHelloWorldProject.xml"
+			id="org.yocto.sdk.ide.doc.user.cheatsheet.helloworldProject"
+			name="%cheatsheet.name">
+		</cheatsheet>
+	</extension>
 </plugin>
-- 
1.7.5.4


