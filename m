Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E632DE014E1
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:10 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id l10so1758674eei.32
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=Aock/d6/lAi7QLDNBH+S5yIFMFAwWH1/L5QlDUEVimw=;
	b=dQwwrM5JhpScSMZp7n062/AQtebZ98ssi/9a0uJBW+XfMDHjpim8wYc4p/6zz7t8Im
	bXUdyUd0QNTcp2OxuOOS3uDJ1W7BwQm+iDJpnJE+M3xxycv8sPXsPq3NY3gQ1egGWVY9
	KKhZLf597tcl4SVXa4h169Hr8X+PvQDAN8KOjT0PobAjqTQ+DGd1FW/j0ksjyniOzbWx
	Ur/D2lNaRFpsXPdfL6yL4C5Cn2/E4ZB/Cb2b+S0v8Try3V6dm3rae2KqQITb/qF+284e
	9VfMpLc6qhGzGTM3jSEf137Ehin6IToEjBZsdMVxcj4BdBxgTwSJ8EqWj4tUbbfnT3hu
	tfqQ==
X-Received: by 10.15.93.193 with SMTP id w41mr29165659eez.22.1369298410064;
	Thu, 23 May 2013 01:40:10 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.09
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:09 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:50 +0200
Message-Id: <1369298392-4076-12-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 11/13] plugins/cmake: Added CMake template projects
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
X-List-Received-Date: Thu, 23 May 2013 08:40:11 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Added a C and C++ HelloWorld template projects for
CMake. The both have the new CMake project type
and are therefore built with the CMake toolchain.
---
 .../build.properties                               |    1 +
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |   17 ++++++
 .../HelloWorldCCMakeProject/src/CMakeLists.txt     |   34 +++++++++++
 .../HelloWorldCCMakeProject/src/main.c             |   21 +++++++
 .../HelloWorldCCMakeProject/template.properties    |   31 ++++++++++
 .../HelloWorldCCMakeProject/template.xml           |   61 ++++++++++++++++++++
 .../HelloWorldCPPCMakeProject/src/CMakeLists.txt   |   34 +++++++++++
 .../HelloWorldCPPCMakeProject/src/main.cpp         |   21 +++++++
 .../HelloWorldCPPCMakeProject/template.properties  |   31 ++++++++++
 .../HelloWorldCPPCMakeProject/template.xml         |   61 ++++++++++++++++++++
 10 files changed, 312 insertions(+)
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/main.c
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.xml
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/main.cpp
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.xml

diff --git a/plugins/org.yocto.cmake.managedbuilder/build.properties b/plugins/org.yocto.cmake.managedbuilder/build.properties
index 3e5f9ad..3945652 100644
--- a/plugins/org.yocto.cmake.managedbuilder/build.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/build.properties
@@ -3,4 +3,5 @@ output.. = bin/
 bin.includes = META-INF/,\
                .,\
                plugin.xml,\
+               templates/,\
                OSGI-INF/
diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
index 8718ae6..7aa6671 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -263,4 +263,21 @@
             </configuration>
         </projectType>
     </extension>
+    <extension
+        point="org.eclipse.cdt.core.templates">
+        <template
+            filterPattern=".*gcc"
+            id="org.yocto.cmake.managedbuilder.template.helloWorldCCMakeProject"
+            isCategory="false"
+            location="templates/projecttemplates/HelloWorldCCMakeProject/template.xml"
+            projectType="org.yocto.sdk.ide.buildArtefact.cmake.exe">
+        </template>
+        <template
+            filterPattern=".*g\+\+"
+            id="org.yocto.cmake.managedbuilder.template.helloWorldCPPCMakeProject"
+            isCategory="false"
+            location="templates/projecttemplates/HelloWorldCPPCMakeProject/template.xml"
+            projectType="org.yocto.sdk.ide.buildArtefact.cmake.exe">
+        </template>
+    </extension>
 </plugin>
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt
new file mode 100644
index 0000000..e6482a7
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt
@@ -0,0 +1,34 @@
+cmake_minimum_required (VERSION 2.8.1)
+
+######## Project settings ########
+PROJECT($(projectName))
+SET(LICENSE "TBD")
+
+######## Build and include settings ########
+include_directories(
+	inc
+)
+
+link_directories(
+	${LINK_DIRECTORIES}
+)
+
+
+file(GLOB SOURCES
+	"src/*.c"
+)
+
+add_executable(
+	$(projectName)
+
+	${SOURCES}
+)
+
+TARGET_LINK_LIBRARIES(
+	$(projectName)
+)
+
+######## Install targets ########
+INSTALL(TARGETS $(projectName)
+	RUNTIME DESTINATION usr/bin
+)
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/main.c b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/main.c
new file mode 100644
index 0000000..78b4e23
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/main.c
@@ -0,0 +1,21 @@
+/** @mainpage $(projectName) - $(vendor)
+ *
+ * @author $(author) <$(email)>
+ * @version $(projectVersion)
+**/
+
+
+#include <stdio.h>
+/**
+ * Main class of project $(projectName)
+ *
+ * @param argc the number of arguments
+ * @param argv the arguments from the commandline
+ * @returns exit code of the application
+ */
+int main(int argc, char **argv) {
+	// print a greeting to the console
+	printf("Hello World!\n");
+
+	return 0;
+}
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.properties b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.properties
new file mode 100644
index 0000000..bc37c1c
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.properties
@@ -0,0 +1,31 @@
+#/*******************************************************************************
+# * Copyright (c) 2013 BMW Car IT GmbH.
+# * All rights reserved. This program and the accompanying materials
+# * are made available under the terms of the Eclipse Public License v1.0
+# * which accompanies this distribution, and is available at
+# * http://www.eclipse.org/legal/epl-v10.html
+# *
+# * Contributors:
+# * BMW Car IT - initial implementation
+# *******************************************************************************/
+
+# Template
+template.vendor=Yocto Project
+template.name=Hello World C CMake Project
+template.description=A simple C hello world project based on CMake
+
+# General Settings
+general.name=General settings
+general.description=Author properties of the project
+general.author.name=Author
+general.author.description=The author of the project
+general.author.default=anonymous
+general.email.name=Email address
+general.email.description=The email address of the project's author
+general.email.default=anony@mo.us
+general.vendor.name=Vendor
+general.vendor.description=The vendor of the project
+general.vendor.default=None
+general.projectVersion.name=Version
+general.projectVersion.description=The version of the project
+general.projectVersion.default=1.0.0
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.xml b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.xml
new file mode 100644
index 0000000..7c3774e
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.xml
@@ -0,0 +1,61 @@
+<?xml version="1.0" encoding="ISO-8859-1"?>
+<template type="ProjTempl"
+	version="1.0" supplier="%template.vendor" revision="1.0" author="Atanas Gegov"
+	id="org.yocto.cmake.template.exe.helloWorldCCMakeProject" label="%template.name"
+	description="%template.description">
+
+	<property-group id="general_settings" label="%general.name"
+		description="%general.description" type="PAGES-ONLY">
+		<property id="author" label="%general.author.name" description="%general.author.description"
+			default="%general.author.default" type="input" hidden="false" mandatory="false"
+			persist="true" />
+
+		<property id="email" label="%general.email.name"
+			description="%general.email.description" default="%general.email.default"
+			type="input" hidden="false" mandatory="false" persist="true" />
+
+		<property id="vendor" label="%general.vendor.name"
+			description="%general.vendor.description" default="%general.vendor.default"
+			type="input" hidden="false" mandatory="false" persist="true" />
+
+		<property id="projectVersion" label="%general.projectVersion.name"
+			description="%general.projectVersion.description" checkproject="false"
+			default="%general.projectVersion.default" type="input"
+			pattern="([0-9]\.){2}[0-9]" hidden="false" mandatory="false" persist="true" />
+	</property-group>
+
+	<process type="org.yocto.sdk.ide.NewYoctoProject">
+		<simple name="name" value="$(projectName)" />
+		<simple name="artifactExtension" value="exe" />
+		<simple name="isCProject" value="true" />
+		<simple name="isEmptyProject" value="false" />
+		<simple name="isAutotoolsProject" value="false" />
+		<simple name="isCMakeProject" value="true" />
+	</process>
+
+	<process type="org.eclipse.cdt.core.CreateSourceFolder">
+		<simple name="projectName" value="$(projectName)" />
+		<simple name="path" value="src" />
+	</process>
+
+	<process type="org.eclipse.cdt.managedbuilder.core.CreateIncludeFolder">
+		<simple name="projectName" value="$(projectName)" />
+		<simple name="path" value="inc" />
+	</process>
+
+	<process type="org.eclipse.cdt.core.AddFiles">
+		<simple name="projectName" value="$(projectName)" />
+		<complex-array name="files">
+			<element>
+				<simple name="source" value="src/main.c" />
+				<simple name="target" value="src/main.c" />
+				<simple name="replaceable" value="true" />
+			</element>
+			<element>
+				<simple name="source" value="src/CMakeLists.txt" />
+				<simple name="target" value="CMakeLists.txt" />
+				<simple name="replaceable" value="true" />
+			</element>
+		</complex-array>
+	</process>
+</template>
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt
new file mode 100644
index 0000000..0436959
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt
@@ -0,0 +1,34 @@
+cmake_minimum_required (VERSION 2.8.1)
+
+######## Project settings ########
+PROJECT($(projectName))
+SET(LICENSE "TBD")
+
+######## Build and include settings ########
+include_directories(
+	inc
+)
+
+link_directories(
+	${LINK_DIRECTORIES}
+)
+
+
+file(GLOB SOURCES
+	"src/*.cpp"
+)
+
+add_executable(
+	$(projectName)
+
+	${SOURCES}
+)
+
+TARGET_LINK_LIBRARIES(
+	$(projectName)
+)
+
+######## Install targets ########
+INSTALL(TARGETS $(projectName)
+	RUNTIME DESTINATION usr/bin
+)
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/main.cpp b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/main.cpp
new file mode 100644
index 0000000..78b4e23
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/main.cpp
@@ -0,0 +1,21 @@
+/** @mainpage $(projectName) - $(vendor)
+ *
+ * @author $(author) <$(email)>
+ * @version $(projectVersion)
+**/
+
+
+#include <stdio.h>
+/**
+ * Main class of project $(projectName)
+ *
+ * @param argc the number of arguments
+ * @param argv the arguments from the commandline
+ * @returns exit code of the application
+ */
+int main(int argc, char **argv) {
+	// print a greeting to the console
+	printf("Hello World!\n");
+
+	return 0;
+}
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.properties b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.properties
new file mode 100644
index 0000000..99e7047
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.properties
@@ -0,0 +1,31 @@
+#/*******************************************************************************
+# * Copyright (c) 2013 BMW Car IT GmbH.
+# * All rights reserved. This program and the accompanying materials
+# * are made available under the terms of the Eclipse Public License v1.0
+# * which accompanies this distribution, and is available at
+# * http://www.eclipse.org/legal/epl-v10.html
+# *
+# * Contributors:
+# * BMW Car IT - initial implementation
+# *******************************************************************************/
+
+# Template
+template.vendor=Yocto Project
+template.name=Hello World C++ CMake Project
+template.description=A simple C++ hello world project based on CMake
+
+# General Settings
+general.name=General settings
+general.description=Author properties of the project
+general.author.name=Author
+general.author.description=The author of the project
+general.author.default=anonymous
+general.email.name=Email address
+general.email.description=The email address of the project's author
+general.email.default=anony@mo.us
+general.vendor.name=Vendor
+general.vendor.description=The vendor of the project
+general.vendor.default=None
+general.projectVersion.name=Version
+general.projectVersion.description=The version of the project
+general.projectVersion.default=1.0.0
diff --git a/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.xml b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.xml
new file mode 100644
index 0000000..a664d8a
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.xml
@@ -0,0 +1,61 @@
+<?xml version="1.0" encoding="ISO-8859-1"?>
+<template type="ProjTempl"
+	version="1.0" supplier="%template.vendor" revision="1.0" author="Atanas Gegov"
+	id="org.yocto.cmake.template.exe.helloWorldCPPCMakeProject" label="%template.name"
+	description="%template.description">
+
+	<property-group id="general_settings" label="%general.name"
+		description="%general.description" type="PAGES-ONLY">
+		<property id="author" label="%general.author.name" description="%general.author.description"
+			default="%general.author.default" type="input" hidden="false" mandatory="false"
+			persist="true" />
+
+		<property id="email" label="%general.email.name"
+			description="%general.email.description" default="%general.email.default"
+			type="input" hidden="false" mandatory="false" persist="true" />
+
+		<property id="vendor" label="%general.vendor.name"
+			description="%general.vendor.description" default="%general.vendor.default"
+			type="input" hidden="false" mandatory="false" persist="true" />
+
+		<property id="projectVersion" label="%general.projectVersion.name"
+			description="%general.projectVersion.description" checkproject="false"
+			default="%general.projectVersion.default" type="input"
+			pattern="([0-9]\.){2}[0-9]" hidden="false" mandatory="false" persist="true" />
+	</property-group>
+
+	<process type="org.yocto.sdk.ide.NewYoctoProject">
+		<simple name="name" value="$(projectName)" />
+		<simple name="artifactExtension" value="exe" />
+		<simple name="isCProject" value="false" />
+		<simple name="isEmptyProject" value="false" />
+		<simple name="isAutotoolsProject" value="false" />
+		<simple name="isCMakeProject" value="true" />
+	</process>
+
+	<process type="org.eclipse.cdt.core.CreateSourceFolder">
+		<simple name="projectName" value="$(projectName)" />
+		<simple name="path" value="src" />
+	</process>
+
+	<process type="org.eclipse.cdt.managedbuilder.core.CreateIncludeFolder">
+		<simple name="projectName" value="$(projectName)" />
+		<simple name="path" value="inc" />
+	</process>
+
+	<process type="org.eclipse.cdt.core.AddFiles">
+		<simple name="projectName" value="$(projectName)" />
+		<complex-array name="files">
+			<element>
+				<simple name="source" value="src/main.cpp" />
+				<simple name="target" value="src/main.cpp" />
+				<simple name="replaceable" value="true" />
+			</element>
+			<element>
+				<simple name="source" value="src/CMakeLists.txt" />
+				<simple name="target" value="CMakeLists.txt" />
+				<simple name="replaceable" value="true" />
+			</element>
+		</complex-array>
+	</process>
+</template>
-- 
1.7.9.5


