Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB1E1E014EE
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:47 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id q16so774961bkw.27
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=wLJqD0Qej8+EJo2Qr/WuD4gIDgfE8vIwhk1GPz2jxDY=;
	b=eLPrAyFTgvmIVxNpwvlZbSE4jlBS2mcY0RksWW6dc4FzasLc7uWJw8lCnrycT5Uqic
	ujPv03Z9yS310PmRu4LOM/RQtwm+yEBa5rryyXIveNf2Y5JTX+hfZqlQPhAgiehdVejO
	5ByBQUkeXrIVa5Tuf6HcNJb/wfaRYC0YOI2FdBxPcN9IdGNiutiMhv9/VU3alHhwCnmd
	M7ZYac3b26TZ++D4pu0+MFvtciAFvwkLoGGzY9BUVMfXxfIFV8A6USyIT2MgTafF/5YO
	DonNqC/NHz/DwyJgFHB/L9WNPPyiauIKe0Zua4udSspFBHAyhfQtNAwpCoYGvQC57fPx
	jjbA==
X-Received: by 10.205.13.194 with SMTP id pn2mr2289492bkb.76.1366205386723;
	Wed, 17 Apr 2013 06:29:46 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.45
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:46 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:22 +0200
Message-Id: <1366205365-8843-8-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 07/10] plugins/sdk.ide: Renamed existing templates
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:48 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The existing templates are all Autotools-based.
Ensured that ids, names and file names reflect this.
---
 plugins/org.yocto.sdk.ide/plugin.xml               |    6 +-
 .../EmptyCAutotoolsProject/template.properties     |   14 ++
 .../EmptyCAutotoolsProject/template.xml            |   16 +++
 .../EmptyCPPAutotoolsProject/template.properties   |   14 ++
 .../EmptyCPPAutotoolsProject/template.xml          |   15 +++
 .../EmptyCPPProject/template.properties            |   14 --
 .../projecttemplates/EmptyCPPProject/template.xml  |   16 ---
 .../EmptyCProject/template.properties              |   14 --
 .../projecttemplates/EmptyCProject/template.xml    |   17 ---
 .../HelloWorldCAutotoolsProject/template.xml       |   32 ++---
 .../HelloWorldCGTKAutotoolsProject/src/Basename.c  |   50 +++++++
 .../src/Basename.desktop.in.src                    |    9 ++
 .../HelloWorldCGTKAutotoolsProject/src/INSTALL     |    9 ++
 .../src/Makefile.am.src                            |    8 ++
 .../src/Makefile.am.top                            |    7 +
 .../HelloWorldCGTKAutotoolsProject/src/README      |   25 ++++
 .../HelloWorldCGTKAutotoolsProject/src/autogen.sh  |   10 ++
 .../src/configure.ac.top                           |   49 +++++++
 .../src/configure.ac.top.old                       |   37 +++++
 .../template.properties                            |   28 ++++
 .../HelloWorldCGTKAutotoolsProject/template.xml    |  142 ++++++++++++++++++++
 .../HelloWorldCGTKProject/src/Basename.c           |   50 -------
 .../src/Basename.desktop.in.src                    |    9 --
 .../HelloWorldCGTKProject/src/INSTALL              |    9 --
 .../HelloWorldCGTKProject/src/Makefile.am.src      |    8 --
 .../HelloWorldCGTKProject/src/Makefile.am.top      |    7 -
 .../HelloWorldCGTKProject/src/README               |   25 ----
 .../HelloWorldCGTKProject/src/autogen.sh           |   10 --
 .../HelloWorldCGTKProject/src/configure.ac.top     |   49 -------
 .../HelloWorldCGTKProject/src/configure.ac.top.old |   37 -----
 .../HelloWorldCGTKProject/template.properties      |   28 ----
 .../HelloWorldCGTKProject/template.xml             |  142 --------------------
 .../HelloWorldCPPAutotoolsProject/template.xml     |   32 ++---
 33 files changed, 468 insertions(+), 470 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.c
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.desktop.in.src
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/ChangeLog
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/INSTALL
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.src
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.top
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/NEWS
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/README
 create mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/autogen.sh
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top.old
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.c
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.desktop.in.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/ChangeLog
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/INSTALL
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/NEWS
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/README
 delete mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/autogen.sh
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top.old
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 35e34b4..6e378bd 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -105,13 +105,13 @@
       <template
             filterPattern=".*gcc"
             id="org.yocto.sdk.ide.template.emptyCProject"
-            location="templates/projecttemplates/EmptyCProject/template.xml"
+            location="templates/projecttemplates/EmptyCAutotoolsProject/template.xml"
             projectType="org.yocto.sdk.ide.projectType">
       </template>
       <template
             filterPattern=".*g\+\+"
             id="org.yocto.sdk.ide.template.emptyCPPProject"
-            location="templates/projecttemplates/EmptyCPPProject/template.xml"
+            location="templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml"
             projectType="org.yocto.sdk.ide.projectType">
       </template>
       <template
@@ -129,7 +129,7 @@
       <template
             filterPattern=".*gcc"
             id="org.yocto.sdk.ide.template.helloWorldCGTKProject"
-            location="templates/projecttemplates/HelloWorldCGTKProject/template.xml"
+            location="templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml"
             projectType="org.yocto.sdk.ide.projectType">
       </template>
    </extension>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.properties
new file mode 100644
index 0000000..c7e7867
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.properties
@@ -0,0 +1,14 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - Initial implementation
+ *******************************************************************************/
+
+#Template Default Values
+EmptyProject.template.label=Empty C Autotools Project
+EmptyProject.template.description=An empty C Yocto Project autotools project template
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml
new file mode 100644
index 0000000..028f33d
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml
@@ -0,0 +1,16 @@
+<?xml version="1.0" encoding="ISO-8859-1"?>
+<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Intel Corporation"
+		copyright="Copyright (c) 2007 Intel Corporation and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html"
+
+		id="YoctoEmptyCAutotoolsProject" label="%EmptyProject.template.label" description="%EmptyProject.template.description"
+		 help="help.html">
+
+	<process type="org.yocto.sdk.ide.NewYoctoProject">
+		<simple name="name" value="$(projectName)" />
+		<simple name="artifactExtension" value="exe" />
+		<simple name="isCProject" value="true" />
+		<simple name="isEmptyProject" value="true" />
+		<simple name="isAutotoolsProject" value="true" />
+	</process>
+
+</template>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.properties
new file mode 100644
index 0000000..416e2ef
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.properties
@@ -0,0 +1,14 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - Initial implementation
+ *******************************************************************************/
+
+#Template Default Values
+EmptyProject.template.label=Empty C++ Autotools Project
+EmptyProject.template.description=An empty CPP Yocto Project autotools project template
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml
new file mode 100644
index 0000000..ae4173b
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml
@@ -0,0 +1,15 @@
+<?xml version="1.0" encoding="ISO-8859-1"?>
+<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Intel Corporation"
+		copyright="Copyright (c) 2007 Intel Corporation and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html"
+		id="YoctoEmptyCppAutotoolsProject" label="%EmptyProject.template.label" description="%EmptyProject.template.description"
+		 help="help.html">
+
+	<process type="org.yocto.sdk.ide.NewYoctoProject">
+		<simple name="name" value="$(projectName)" />
+		<simple name="artifactExtension" value="exe" />
+		<simple name="isCProject" value="false" />
+		<simple name="isEmptyProject" value="true" />
+		<simple name="isAutotoolsProject" value="true" />
+	</process>
+
+</template>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.properties
deleted file mode 100644
index 0eb4e9f..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.properties
+++ /dev/null
@@ -1,14 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - Initial implementation
- *******************************************************************************/
-
-#Template Default Values
-EmptyProject.template.label=Empty Project
-EmptyProject.template.description=An empty CPP Yocto Project autotools project template 
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml
deleted file mode 100644
index 0f0a7e8..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml
+++ /dev/null
@@ -1,16 +0,0 @@
-<?xml version="1.0" encoding="ISO-8859-1"?>
-<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Intel Corporation"
-		copyright="Copyright (c) 2007 Intel Corporation and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html"
-		id="YoctoEmptyProject" label="%EmptyProject.template.label" description="%EmptyProject.template.description"
-		 help="help.html">
-
-	<process type="org.yocto.sdk.ide.NewYoctoProject">
-		<simple name="name" value="$(projectName)" /> 
-		<simple name="artifactExtension" value="exe" /> 
-		<simple name="isCProject" value="false" /> 
-		<simple name="isEmptyProject" value="true" />
-		<simple name="isAutotoolsProject" value="true" />
-	</process>
-
-</template>
-
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.properties
deleted file mode 100644
index cba7112..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.properties
+++ /dev/null
@@ -1,14 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - Initial implementation
- *******************************************************************************/
-
-#Template Default Values
-EmptyProject.template.label=Empty Project
-EmptyProject.template.description=An empty C Yocto Project autotools project template 
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml
deleted file mode 100644
index 8f821af..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml
+++ /dev/null
@@ -1,17 +0,0 @@
-<?xml version="1.0" encoding="ISO-8859-1"?>
-<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Intel Corporation"
-		copyright="Copyright (c) 2007 Intel Corporation and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html"
-
-		id="YoctoEmptyCProject" label="%EmptyProject.template.label" description="%EmptyProject.template.description"
-		 help="help.html">
-
-	<process type="org.yocto.sdk.ide.NewYoctoProject">
-		<simple name="name" value="$(projectName)" /> 
-		<simple name="artifactExtension" value="exe" /> 
-		<simple name="isCProject" value="true" /> 
-		<simple name="isEmptyProject" value="true" />
-		<simple name="isAutotoolsProject" value="true" />
-	</process>
-
-</template>
-
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
index ca58158..27dc2f2 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
@@ -1,7 +1,7 @@
 <?xml version="1.0" encoding="ISO-8859-1"?>
 <template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Bala Torati (Symbian)"
 		copyright="Copyright (c) 2007,2009 Symbian Software Limited and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available athttp://www.eclipse.org/legal/epl-v10.html"
-		id="HelloWorldCYoctoProject" label="%HelloWorld.CAnsitemplate.label" description="%HelloWorld.CAnsitemplate.description"
+		id="YoctoHelloWorldCAutotoolsProject" label="%HelloWorld.CAnsitemplate.label" description="%HelloWorld.CAnsitemplate.description"
 		help="help.html">
 
 	<property-group id="basics" label="%HelloWorld.basics.label" description="%HelloWorld.basics.description" type="PAGES-ONLY" help="help.html">
@@ -41,19 +41,19 @@
 			mandatory="true"
 			persist="true"/>
 		<property id="license" label="License" description="License" type="select" default="BSD" mandatory="false" persist="true">
-    		<item label="BSD License"  name="BSD"/>
-    		<item label="MIT License"  name="MIT"/>
-    		<item label="GNU General Public License v2.0"  name="GPLv2"/>
-    		<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
-    		<item label="GNU General Public License v3.0"  name="GPLv3"/>
-    		<item label="Other"  name="Other"/>
-		</property>			
+			<item label="BSD License"  name="BSD"/>
+			<item label="MIT License"  name="MIT"/>
+			<item label="GNU General Public License v2.0"  name="GPLv2"/>
+			<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
+			<item label="GNU General Public License v3.0"  name="GPLv3"/>
+			<item label="Other"  name="Other"/>
+		</property>
 	</property-group>
 
 	<process type="org.yocto.sdk.ide.NewYoctoProject">
-		<simple name="name" value="$(projectName)" /> 
-		<simple name="artifactExtension" value="exe" /> 
-		<simple name="isCProject" value="true" /> 
+		<simple name="name" value="$(projectName)" />
+		<simple name="artifactExtension" value="exe" />
+		<simple name="isCProject" value="true" />
 		<simple name="isEmptyProject" value="false" />
 		<simple name="isAutotoolsProject" value="true" />
 	</process>
@@ -76,11 +76,11 @@
 				<simple name="target" value="COPYING"/>
 				<simple name="replaceable" value="true"/>
 			</element>
-        	<element>
+			<element>
 				<simple name="source" value="../Licenses/Header_$(license)"/>
 				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
 				<simple name="replaceable" value="true"/>
-        	</element>
+			</element>
 			<element>
 				<simple name="source" value="src/autogen.sh"/>
 				<simple name="target" value="autogen.sh"/>
@@ -125,14 +125,14 @@
 	</process>
 
 	<process type="org.eclipse.cdt.core.AppendCreate">
-        <simple name="projectName" value="$(projectName)"/>
-        <complex-array name="files">
+		<simple name="projectName" value="$(projectName)"/>
+		<complex-array name="files">
 			<element>
 				<simple name="source" value="src/Basename.c"/>
 				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
 				<simple name="replaceable" value="true"/>
 			</element>
-        </complex-array>
+		</complex-array>
 	</process>
 
 	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.c b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.c
new file mode 100644
index 0000000..e40fd64
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.c
@@ -0,0 +1,50 @@
+#include <gtk/gtk.h>
+
+static void
+hello (GtkWidget * widget, gpointer data)
+{
+  g_print ("Hello World!\n");
+}
+
+static gboolean
+delete_event (GtkWidget * widget, GdkEvent * event, gpointer data)
+{
+  g_print ("delete event occurred\n");
+  return TRUE;
+}
+
+static void
+destroy (GtkWidget * widget, gpointer data)
+{
+  gtk_main_quit ();
+}
+
+int
+main (int argc, char *argv[])
+{
+  GtkWidget *window;
+  GtkWidget *button;
+
+  gtk_init (&argc, &argv);
+  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
+
+  g_signal_connect (G_OBJECT (window), "delete_event",
+                    G_CALLBACK (delete_event), NULL);
+  g_signal_connect (G_OBJECT (window), "destroy", G_CALLBACK (destroy), NULL);
+
+  gtk_container_set_border_width (GTK_CONTAINER (window), 10);
+  button = gtk_button_new_with_label ("Hello World!");
+
+  g_signal_connect (G_OBJECT (button), "clicked", G_CALLBACK (hello), NULL);
+  g_signal_connect_swapped (G_OBJECT (button), "clicked",
+                            G_CALLBACK (gtk_widget_destroy),
+                            G_OBJECT (window));
+
+  gtk_container_add (GTK_CONTAINER (window), button);
+  gtk_widget_show (button);
+  gtk_widget_show (window);
+
+  gtk_main ();
+
+  return 0;
+}
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.desktop.in.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.desktop.in.src
new file mode 100644
index 0000000..e96420f
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.desktop.in.src
@@ -0,0 +1,9 @@
+[Desktop Entry]
+Version=@VERSION@
+Encoding=UTF-8
+Name=$(projectName)
+Comment=A "$(message)"
+Type=Application
+Categories=Application
+Exec=$(projectName)
+Name[en_US]=$(message)
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/ChangeLog b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/ChangeLog
new file mode 100644
index 0000000..e69de29
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/INSTALL b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/INSTALL
new file mode 100644
index 0000000..b8b0535
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/INSTALL
@@ -0,0 +1,9 @@
+Building:
+  $ ./autogen.sh  [--enable-gtk-doc] [--prefix=/usr]
+  $ make
+
+Installing:
+  $ sudo make install
+
+Running:
+  $ $(projectName)
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.src
new file mode 100644
index 0000000..5ac2885
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.src
@@ -0,0 +1,8 @@
+
+bin_PROGRAMS = $(projectName)
+$(projectName)_SOURCES = $(projectName).c
+
+AM_CFLAGS = @$(projectName)_CFLAGS@
+AM_LDFLAGS = @$(projectName)_LIBS@
+
+CLEANFILES = *~
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.top
new file mode 100644
index 0000000..7bee2b7
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.top
@@ -0,0 +1,7 @@
+SUBDIRS = $(sourceDir)
+
+MAINTAINERCLEANFILES = aclocal.m4 compile config.guess \
+		config.sub configure depcomp install-sh \
+		ltmain.sh Makefile.in missing
+
+
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/NEWS b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/NEWS
new file mode 100644
index 0000000..e69de29
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/README b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/README
new file mode 100644
index 0000000..ec15541
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/README
@@ -0,0 +1,25 @@
+$(projectName)
+Copyright (C) $(copyright).
+
+Brief description of project....
+
+-----------------------------------------------------------------------------
+ Build
+-----------------------------------------------------------------------------
+$ ./autogen.sh $CONFIGURE_FLAGS
+$ make
+
+-----------------------------------------------------------------------------
+ Build with documentation generated (usually for libraries)
+-----------------------------------------------------------------------------
+$ ./autogen.sh --enable-gtk-doc
+$ make
+
+( If built with the --enable-gtk-doc flag above you can view the index.html
+  file in your web browser. )
+$ firefox ./docs/reference/index.html
+
+-----------------------------------------------------------------------------
+ Install
+-----------------------------------------------------------------------------
+$ sudo make install
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/autogen.sh b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/autogen.sh
new file mode 100755
index 0000000..7fd81e2
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/autogen.sh
@@ -0,0 +1,10 @@
+#! /bin/sh
+[ -e config.cache ] && rm -f config.cache
+
+libtoolize --automake
+aclocal ${OECORE_ACLOCAL_OPTS}
+autoconf
+autoheader
+automake -a
+./configure $@
+exit
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top
new file mode 100644
index 0000000..508bc13
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top
@@ -0,0 +1,49 @@
+AC_PREREQ(2.61)
+
+# package version number (not shared library version)
+# odd micro numbers indicate in-progress development
+# even micro numbers indicate released versions
+m4_define($(projectName)_version_major, 0)
+m4_define($(projectName)_version_minor, 1)
+m4_define($(projectName)_version_micro, 0)
+
+m4_define([$(projectName)_version],
+          [$(projectName)_version_major.$(projectName)_version_minor.$(projectName)_version_micro])
+m4_define([$(projectName)_api_version],
+          [$(projectName)_version_major.$(projectName)_version_minor])
+
+AC_INIT($(projectName), $(projectName)_version)
+AM_INIT_AUTOMAKE($(projectName), $(projectName)_version)
+AC_CONFIG_HEADERS(config.h)
+
+# Checks for programs.
+AC_PROG_LIBTOOL
+AM_PROG_CC_C_O
+AC_PROG_INSTALL
+
+#enable pkg-config
+PKG_PROG_PKG_CONFIG
+
+#GTK_REQUIRED_VERSION=2.0.0
+#GLIB_REQUIRED_VERSION=$GTK_REQUIRED_VERSION
+
+#AM_PATH_GLIB_2_0($GLIB_REQUIRED_VERSION,,
+#  [AC_MSG_ERROR(Test for GLib failed.)], gobject)
+#AM_PATH_GTK_2_0($GTK_REQUIRED_VERSION,,
+#  [AC_MSG_ERROR(Test for GTK failed.)])
+PKG_CHECK_MODULES($(projectName), glib-2.0 gtk+-2.0)
+
+AC_SUBST($(projectName)_CFLAGS)
+AC_SUBST($(projectName)_LIBS)
+
+AC_OUTPUT([
+Makefile
+$(sourceDir)/Makefile
+])
+
+echo ""
+echo "   $(projectName) $VERSION"
+echo "   ====================="
+echo ""
+echo "   To build the project, run \"make\""
+echo ""
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top.old b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top.old
new file mode 100644
index 0000000..234ab99
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top.old
@@ -0,0 +1,37 @@
+AC_PREREQ(2.61)
+
+# package version number (not shared library version)
+# odd micro numbers indicate in-progress development
+# even micro numbers indicate released versions
+m4_define($(projectName)_version_major, 0)
+m4_define($(projectName)_version_minor, 1)
+m4_define($(projectName)_version_micro, 0)
+
+m4_define([$(projectName)_version],
+          [$(projectName)_version_major.$(projectName)_version_minor.$(projectName)_version_micro])
+m4_define([$(projectName)_api_version],
+          [$(projectName)_version_major.$(projectName)_version_minor])
+
+AC_INIT($(projectName), $(projectName)_version)
+AM_INIT_AUTOMAKE($(projectName), $(projectName)_version)
+AC_CONFIG_HEADERS(config.h)
+
+# Checks for programs.
+AC_PROG_LIBTOOL
+AM_PROG_CC_C_O
+AC_PROG_INSTALL
+
+AC_SUBST($(projectName)_CFLAGS)
+AC_SUBST($(projectName)_LIBS)
+
+AC_OUTPUT([
+Makefile
+$(sourceDir)/Makefile
+])
+
+echo ""
+echo "   $(projectName) $VERSION"
+echo "   ====================="
+echo ""
+echo "   To build the project, run \"make\""
+echo ""
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.properties
new file mode 100644
index 0000000..430c04d
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.properties
@@ -0,0 +1,28 @@
+###############################################################################
+# Copyright (c) 2007, 2009 Symbian Software Private Ltd. and others.
+# All rights reserved. This program and the accompanying materials
+# are made available under the terms of the Eclipse Public License v1.0
+# which accompanies this distribution, and is available at
+# http://www.eclipse.org/legal/epl-v10.html
+#
+# Contributors:
+#     Bala Torati (Symbian) - initial API and implementation
+#     Red Hat Inc - modification to use with Autotools project
+###############################################################################
+
+#Template Default Values
+HelloWorld.CAnsitemplate.label=Hello World GTK C Autotools Project
+HelloWorld.CAnsitemplate.description=A skeletal C GTK Hello World project. Creates a folder for sources and autogen artifacts.
+HelloWorld.basics.label=Basic Settings
+HelloWorld.basics.description=Basic properties of a project
+HelloWorld.author.label=Author
+HelloWorld.author.description=Name of the author
+HelloWorld.copyright.label=Copyright notice
+HelloWorld.copyright.description=The name of the copyright holder (e.g. XYZ Corporation)
+HelloWorld.copyright.default=Your copyright
+HelloWorld.message.default=Hello World
+HelloWorld.message.description=Your hello world greeting message
+HelloWorld.message.label=Hello world greeting
+HelloWorld.sourceDir.label=Source
+HelloWorld.sourceDir.description=Directory for hello world project source files
+HelloWorld.sourceDir.default=src
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml
new file mode 100644
index 0000000..16bde16
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml
@@ -0,0 +1,142 @@
+<?xml version="1.0" encoding="ISO-8859-1"?>
+<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Bala Torati (Symbian)"
+		copyright="Copyright (c) 2007,2009 Symbian Software Limited and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available athttp://www.eclipse.org/legal/epl-v10.html"
+		id="YoctoHelloWorldCGTKAutotoolsProject" label="%HelloWorld.CAnsitemplate.label" description="%HelloWorld.CAnsitemplate.description"
+		help="help.html">
+
+	<property-group id="basics" label="%HelloWorld.basics.label" description="%HelloWorld.basics.description" type="PAGES-ONLY" help="help.html">
+		<property id="author"
+			label="%HelloWorld.author.label"
+			description="%HelloWorld.author.description"
+			type="input"
+			pattern=".+"
+			default=""
+			hidden="false"
+			mandatory="true"
+			persist="true"/>
+		<property id="copyright"
+			label="%HelloWorld.copyright.label"
+			description="%HelloWorld.copyright.description"
+			type="input"
+			pattern=".+"
+			default="%HelloWorld.copyright.default"
+			hidden="false"
+			mandatory="true"
+			persist="true"/>
+		<property id="message"
+			label="%HelloWorld.message.label"
+			description="%HelloWorld.message.description"
+			type="input"
+			pattern=".+"
+			default="%HelloWorld.message.default"
+			hidden="false"
+			mandatory="true"
+			persist="true"/>
+		<property id="sourceDir"
+			label="%HelloWorld.sourceDir.label"
+			description="%HelloWorld.sourceDir.description"
+			type="input"
+			default="%HelloWorld.sourceDir.default"
+			pattern="[a-zA-Z0-9]+"
+			mandatory="true"
+			persist="true"/>
+		<property id="license" label="License" description="License" type="select" default="BSD" mandatory="false" persist="true">
+			<item label="BSD License"  name="BSD"/>
+			<item label="MIT License"  name="MIT"/>
+			<item label="GNU General Public License v2.0"  name="GPLv2"/>
+			<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
+			<item label="GNU General Public License v3.0"  name="GPLv3"/>
+			<item label="Other"  name="Other"/>
+		</property>
+	</property-group>
+
+	<process type="org.yocto.sdk.ide.NewYoctoProject">
+		<simple name="name" value="$(projectName)" />
+		<simple name="artifactExtension" value="exe" />
+		<simple name="isCProject" value="true" />
+		<simple name="isEmptyProject" value="false" />
+		<simple name="isAutotoolsProject" value="true" />
+	</process>
+
+	<process type="org.eclipse.cdt.core.CreateSourceFolder">
+		<simple name="projectName" value="$(projectName)"/>
+		<simple name="path" value="$(sourceDir)"/>
+	</process>
+
+	<process type="org.eclipse.cdt.core.AddFiles">
+		<simple name="projectName" value="$(projectName)"/>
+		<complex-array name="files">
+			<element>
+				<simple name="source" value="../Licenses/AUTHORS"/>
+				<simple name="target" value="AUTHORS"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="../Licenses/COPYING_$(license)"/>
+				<simple name="target" value="COPYING"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="../Licenses/Header_$(license)"/>
+				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/autogen.sh"/>
+				<simple name="target" value="autogen.sh"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/ChangeLog"/>
+				<simple name="target" value="ChangeLog"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/configure.ac.top"/>
+				<simple name="target" value="configure.ac"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/INSTALL"/>
+				<simple name="target" value="INSTALL"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/Makefile.am.src"/>
+				<simple name="target" value="$(sourceDir)/Makefile.am"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/Makefile.am.top"/>
+				<simple name="target" value="Makefile.am"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/NEWS"/>
+				<simple name="target" value="NEWS"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+			<element>
+				<simple name="source" value="src/README"/>
+				<simple name="target" value="README"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+		</complex-array>
+	</process>
+
+	<process type="org.eclipse.cdt.core.AppendCreate">
+		<simple name="projectName" value="$(projectName)"/>
+		<complex-array name="files">
+			<element>
+				<simple name="source" value="src/Basename.c"/>
+				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
+				<simple name="replaceable" value="true"/>
+			</element>
+		</complex-array>
+	</process>
+
+	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
+		<simple name="projectName" value="$(projectName)" />
+	</process>
+</template>
+
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.c b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.c
deleted file mode 100644
index d41de93..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.c
+++ /dev/null
@@ -1,50 +0,0 @@
-#include <gtk/gtk.h> 
-
-static void 
-hello (GtkWidget * widget, gpointer data) 
-{ 
-  g_print ("Hello World!\n"); 
-} 
-
-static gboolean 
-delete_event (GtkWidget * widget, GdkEvent * event, gpointer data) 
-{ 
-  g_print ("delete event occurred\n");
-  return TRUE; 
-} 
-
-static void 
-destroy (GtkWidget * widget, gpointer data) 
-{ 
-  gtk_main_quit (); 
-} 
- 
-int 
-main (int argc, char *argv[]) 
-{ 
-  GtkWidget *window; 
-  GtkWidget *button; 
-
-  gtk_init (&argc, &argv); 
-  window = gtk_window_new (GTK_WINDOW_TOPLEVEL); 
-
-  g_signal_connect (G_OBJECT (window), "delete_event", 
-                    G_CALLBACK (delete_event), NULL); 
-  g_signal_connect (G_OBJECT (window), "destroy", G_CALLBACK (destroy), NULL); 
-
-  gtk_container_set_border_width (GTK_CONTAINER (window), 10); 
-  button = gtk_button_new_with_label ("Hello World!"); 
-
-  g_signal_connect (G_OBJECT (button), "clicked", G_CALLBACK (hello), NULL); 
-  g_signal_connect_swapped (G_OBJECT (button), "clicked", 
-                            G_CALLBACK (gtk_widget_destroy), 
-                            G_OBJECT (window)); 
-
-  gtk_container_add (GTK_CONTAINER (window), button); 
-  gtk_widget_show (button); 
-  gtk_widget_show (window); 
-
-  gtk_main (); 
-
-  return 0; 
-}
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.desktop.in.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.desktop.in.src
deleted file mode 100644
index e96420f..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.desktop.in.src
+++ /dev/null
@@ -1,9 +0,0 @@
-[Desktop Entry]
-Version=@VERSION@
-Encoding=UTF-8
-Name=$(projectName)
-Comment=A "$(message)"
-Type=Application
-Categories=Application
-Exec=$(projectName)
-Name[en_US]=$(message)
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/ChangeLog b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/ChangeLog
deleted file mode 100644
index e69de29..0000000
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/INSTALL b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/INSTALL
deleted file mode 100644
index b8b0535..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/INSTALL
+++ /dev/null
@@ -1,9 +0,0 @@
-Building:
-  $ ./autogen.sh  [--enable-gtk-doc] [--prefix=/usr]
-  $ make
-
-Installing:
-  $ sudo make install
-
-Running:
-  $ $(projectName)
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.src
deleted file mode 100644
index fc3bc8c..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.src
+++ /dev/null
@@ -1,8 +0,0 @@
-
-bin_PROGRAMS = $(projectName)
-$(projectName)_SOURCES = $(projectName).c
-
-AM_CFLAGS = @$(projectName)_CFLAGS@
-AM_LDFLAGS = @$(projectName)_LIBS@
-
-CLEANFILES = *~ 
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.top
deleted file mode 100644
index 7bee2b7..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.top
+++ /dev/null
@@ -1,7 +0,0 @@
-SUBDIRS = $(sourceDir)
-
-MAINTAINERCLEANFILES = aclocal.m4 compile config.guess \
-		config.sub configure depcomp install-sh \
-		ltmain.sh Makefile.in missing
-
-
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/NEWS b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/NEWS
deleted file mode 100644
index e69de29..0000000
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/README b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/README
deleted file mode 100644
index ec15541..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/README
+++ /dev/null
@@ -1,25 +0,0 @@
-$(projectName)
-Copyright (C) $(copyright).
-
-Brief description of project....
-
------------------------------------------------------------------------------
- Build
------------------------------------------------------------------------------
-$ ./autogen.sh $CONFIGURE_FLAGS
-$ make
-
------------------------------------------------------------------------------
- Build with documentation generated (usually for libraries)
------------------------------------------------------------------------------
-$ ./autogen.sh --enable-gtk-doc
-$ make
-
-( If built with the --enable-gtk-doc flag above you can view the index.html
-  file in your web browser. )
-$ firefox ./docs/reference/index.html
-
------------------------------------------------------------------------------
- Install
------------------------------------------------------------------------------
-$ sudo make install
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/autogen.sh b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/autogen.sh
deleted file mode 100755
index 7fd81e2..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/autogen.sh
+++ /dev/null
@@ -1,10 +0,0 @@
-#! /bin/sh
-[ -e config.cache ] && rm -f config.cache
-
-libtoolize --automake
-aclocal ${OECORE_ACLOCAL_OPTS}
-autoconf
-autoheader
-automake -a
-./configure $@
-exit
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top
deleted file mode 100644
index 508bc13..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top
+++ /dev/null
@@ -1,49 +0,0 @@
-AC_PREREQ(2.61)
-
-# package version number (not shared library version)
-# odd micro numbers indicate in-progress development
-# even micro numbers indicate released versions
-m4_define($(projectName)_version_major, 0)
-m4_define($(projectName)_version_minor, 1)
-m4_define($(projectName)_version_micro, 0)
-
-m4_define([$(projectName)_version],
-          [$(projectName)_version_major.$(projectName)_version_minor.$(projectName)_version_micro])
-m4_define([$(projectName)_api_version],
-          [$(projectName)_version_major.$(projectName)_version_minor])
-
-AC_INIT($(projectName), $(projectName)_version)
-AM_INIT_AUTOMAKE($(projectName), $(projectName)_version)
-AC_CONFIG_HEADERS(config.h)
-
-# Checks for programs.
-AC_PROG_LIBTOOL
-AM_PROG_CC_C_O
-AC_PROG_INSTALL
-
-#enable pkg-config
-PKG_PROG_PKG_CONFIG
-
-#GTK_REQUIRED_VERSION=2.0.0
-#GLIB_REQUIRED_VERSION=$GTK_REQUIRED_VERSION
-
-#AM_PATH_GLIB_2_0($GLIB_REQUIRED_VERSION,,
-#  [AC_MSG_ERROR(Test for GLib failed.)], gobject)
-#AM_PATH_GTK_2_0($GTK_REQUIRED_VERSION,,
-#  [AC_MSG_ERROR(Test for GTK failed.)])
-PKG_CHECK_MODULES($(projectName), glib-2.0 gtk+-2.0)
-
-AC_SUBST($(projectName)_CFLAGS)
-AC_SUBST($(projectName)_LIBS)
-
-AC_OUTPUT([
-Makefile
-$(sourceDir)/Makefile
-])
-
-echo ""
-echo "   $(projectName) $VERSION"
-echo "   ====================="
-echo ""
-echo "   To build the project, run \"make\""
-echo ""
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top.old b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top.old
deleted file mode 100644
index 234ab99..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top.old
+++ /dev/null
@@ -1,37 +0,0 @@
-AC_PREREQ(2.61)
-
-# package version number (not shared library version)
-# odd micro numbers indicate in-progress development
-# even micro numbers indicate released versions
-m4_define($(projectName)_version_major, 0)
-m4_define($(projectName)_version_minor, 1)
-m4_define($(projectName)_version_micro, 0)
-
-m4_define([$(projectName)_version],
-          [$(projectName)_version_major.$(projectName)_version_minor.$(projectName)_version_micro])
-m4_define([$(projectName)_api_version],
-          [$(projectName)_version_major.$(projectName)_version_minor])
-
-AC_INIT($(projectName), $(projectName)_version)
-AM_INIT_AUTOMAKE($(projectName), $(projectName)_version)
-AC_CONFIG_HEADERS(config.h)
-
-# Checks for programs.
-AC_PROG_LIBTOOL
-AM_PROG_CC_C_O
-AC_PROG_INSTALL
-
-AC_SUBST($(projectName)_CFLAGS)
-AC_SUBST($(projectName)_LIBS)
-
-AC_OUTPUT([
-Makefile
-$(sourceDir)/Makefile
-])
-
-echo ""
-echo "   $(projectName) $VERSION"
-echo "   ====================="
-echo ""
-echo "   To build the project, run \"make\""
-echo ""
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.properties
deleted file mode 100644
index c79e982..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.properties
+++ /dev/null
@@ -1,28 +0,0 @@
-###############################################################################
-# Copyright (c) 2007, 2009 Symbian Software Private Ltd. and others.
-# All rights reserved. This program and the accompanying materials
-# are made available under the terms of the Eclipse Public License v1.0
-# which accompanies this distribution, and is available at
-# http://www.eclipse.org/legal/epl-v10.html
-# 
-# Contributors:
-#     Bala Torati (Symbian) - initial API and implementation
-#     Red Hat Inc - modification to use with Autotools project
-###############################################################################
-
-#Template Default Values
-HelloWorld.CAnsitemplate.label=Hello World GTK C Autotools Project
-HelloWorld.CAnsitemplate.description=A skeletal C GTK Hello World project. Creates a folder for sources and autogen artifacts.
-HelloWorld.basics.label=Basic Settings
-HelloWorld.basics.description=Basic properties of a project
-HelloWorld.author.label=Author
-HelloWorld.author.description=Name of the author
-HelloWorld.copyright.label=Copyright notice
-HelloWorld.copyright.description=The name of the copyright holder (e.g. XYZ Corporation)
-HelloWorld.copyright.default=Your copyright
-HelloWorld.message.default=Hello World
-HelloWorld.message.description=Your hello world greeting message
-HelloWorld.message.label=Hello world greeting
-HelloWorld.sourceDir.label=Source
-HelloWorld.sourceDir.description=Directory for hello world project source files
-HelloWorld.sourceDir.default=src
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
deleted file mode 100644
index bbcf153..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
+++ /dev/null
@@ -1,142 +0,0 @@
-<?xml version="1.0" encoding="ISO-8859-1"?>
-<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Bala Torati (Symbian)"
-		copyright="Copyright (c) 2007,2009 Symbian Software Limited and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available athttp://www.eclipse.org/legal/epl-v10.html"
-		id="HelloWorldCGTKYoctoProject" label="%HelloWorld.CAnsitemplate.label" description="%HelloWorld.CAnsitemplate.description"
-		help="help.html">
-
-	<property-group id="basics" label="%HelloWorld.basics.label" description="%HelloWorld.basics.description" type="PAGES-ONLY" help="help.html">
-		<property id="author"
-			label="%HelloWorld.author.label"
-			description="%HelloWorld.author.description"
-			type="input"
-			pattern=".+"
-			default=""
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="copyright"
-			label="%HelloWorld.copyright.label"
-			description="%HelloWorld.copyright.description"
-			type="input"
-			pattern=".+"
-			default="%HelloWorld.copyright.default"
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="message"
-			label="%HelloWorld.message.label"
-			description="%HelloWorld.message.description"
-			type="input"
-			pattern=".+"
-			default="%HelloWorld.message.default"
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="sourceDir"
-			label="%HelloWorld.sourceDir.label"
-			description="%HelloWorld.sourceDir.description"
-			type="input"
-			default="%HelloWorld.sourceDir.default"
-			pattern="[a-zA-Z0-9]+"
-			mandatory="true"
-			persist="true"/>
-		<property id="license" label="License" description="License" type="select" default="BSD" mandatory="false" persist="true">
-    		<item label="BSD License"  name="BSD"/>
-    		<item label="MIT License"  name="MIT"/>
-    		<item label="GNU General Public License v2.0"  name="GPLv2"/>
-    		<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
-    		<item label="GNU General Public License v3.0"  name="GPLv3"/>
-    		<item label="Other"  name="Other"/>
-		</property>			
-	</property-group>
-
-	<process type="org.yocto.sdk.ide.NewYoctoProject">
-		<simple name="name" value="$(projectName)" /> 
-		<simple name="artifactExtension" value="exe" /> 
-		<simple name="isCProject" value="true" /> 
-		<simple name="isEmptyProject" value="false" />
-		<simple name="isAutotoolsProject" value="true" />
-	</process>
-
-	<process type="org.eclipse.cdt.core.CreateSourceFolder">
-		<simple name="projectName" value="$(projectName)"/>
-		<simple name="path" value="$(sourceDir)"/>
-	</process>
-
-	<process type="org.eclipse.cdt.core.AddFiles">
-		<simple name="projectName" value="$(projectName)"/>
-		<complex-array name="files">
-			<element>
-				<simple name="source" value="../Licenses/AUTHORS"/>
-				<simple name="target" value="AUTHORS"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="../Licenses/COPYING_$(license)"/>
-				<simple name="target" value="COPYING"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-        	<element>
-				<simple name="source" value="../Licenses/Header_$(license)"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
-				<simple name="replaceable" value="true"/>
-        	</element>
-			<element>
-				<simple name="source" value="src/autogen.sh"/>
-				<simple name="target" value="autogen.sh"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/ChangeLog"/>
-				<simple name="target" value="ChangeLog"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/configure.ac.top"/>
-				<simple name="target" value="configure.ac"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/INSTALL"/>
-				<simple name="target" value="INSTALL"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Makefile.am.src"/>
-				<simple name="target" value="$(sourceDir)/Makefile.am"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Makefile.am.top"/>
-				<simple name="target" value="Makefile.am"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/NEWS"/>
-				<simple name="target" value="NEWS"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/README"/>
-				<simple name="target" value="README"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-		</complex-array>
-	</process>
-
-	<process type="org.eclipse.cdt.core.AppendCreate">
-        <simple name="projectName" value="$(projectName)"/>
-        <complex-array name="files">
-			<element>
-				<simple name="source" value="src/Basename.c"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-        </complex-array>
-	</process>
-
-	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
-		<simple name="projectName" value="$(projectName)" /> 
-	</process>
-</template>
-
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
index 7ec9e05..105ce94 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
@@ -1,7 +1,7 @@
 <?xml version="1.0" encoding="ISO-8859-1"?>
 <template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Bala Torati (Symbian)"
 		copyright="Copyright (c) 2007,2009 Symbian Software Limited and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available athttp://www.eclipse.org/legal/epl-v10.html"
-		id="HelloWorldCPPYoctoProject" label="%HelloWorld.CCtemplate.label" description="%HelloWorld.CCtemplate.description"
+		id="YoctoHelloWorldCPPAutotoolsProject" label="%HelloWorld.CCtemplate.label" description="%HelloWorld.CCtemplate.description"
 		help="help.html">
 
 	<property-group id="basics" label="%HelloWorld.basics.label" description="%HelloWorld.basics.description" type="PAGES-ONLY" help="help.html">
@@ -41,19 +41,19 @@
 			mandatory="true"
 			persist="true"/>
 		<property id="license" label="License" description="License" type="select" default="BSD" mandatory="false" persist="true">
-    		<item label="BSD License"  name="BSD"/>
-    		<item label="MIT License"  name="MIT"/>
-    		<item label="GNU General Public License v2.0"  name="GPLv2"/>
-    		<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
-    		<item label="GNU General Public License v3.0"  name="GPLv3"/>
-    		<item label="Other"  name="Other"/>
-		</property>			
+			<item label="BSD License"  name="BSD"/>
+			<item label="MIT License"  name="MIT"/>
+			<item label="GNU General Public License v2.0"  name="GPLv2"/>
+			<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
+			<item label="GNU General Public License v3.0"  name="GPLv3"/>
+			<item label="Other"  name="Other"/>
+		</property>
 	</property-group>
 
 	<process type="org.yocto.sdk.ide.NewYoctoProject">
-		<simple name="name" value="$(projectName)" /> 
-		<simple name="artifactExtension" value="exe" /> 
-		<simple name="isCProject" value="false" /> 
+		<simple name="name" value="$(projectName)" />
+		<simple name="artifactExtension" value="exe" />
+		<simple name="isCProject" value="false" />
 		<simple name="isEmptyProject" value="false" />
 		<simple name="isAutotoolsProject" value="true" />
 	</process>
@@ -76,11 +76,11 @@
 				<simple name="target" value="COPYING"/>
 				<simple name="replaceable" value="true"/>
 			</element>
-        	<element>
+			<element>
 				<simple name="source" value="../Licenses/Header_$(license)"/>
 				<simple name="target" value="$(sourceDir)/$(projectName).cpp"/>
 				<simple name="replaceable" value="true"/>
-        	</element>
+			</element>
 			<element>
 				<simple name="source" value="src/autogen.sh"/>
 				<simple name="target" value="autogen.sh"/>
@@ -125,14 +125,14 @@
 	</process>
 
 	<process type="org.eclipse.cdt.core.AppendCreate">
-        <simple name="projectName" value="$(projectName)"/>
-        <complex-array name="files">
+		<simple name="projectName" value="$(projectName)"/>
+		<complex-array name="files">
 			<element>
 				<simple name="source" value="src/Basename.cpp"/>
 				<simple name="target" value="$(sourceDir)/$(projectName).cpp"/>
 				<simple name="replaceable" value="true"/>
 			</element>
-        </complex-array>
+		</complex-array>
 	</process>
 
 	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
-- 
1.7.9.5


