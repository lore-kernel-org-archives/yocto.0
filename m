Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1097EE01517
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:44 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id q11so1241275bkw.27
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=4igYt5eZiRYmH0poR8uPWEAqNUE0701GE1mlTtrvNC8=;
	b=Rka6xcXwipgSvBe68qj2IpnJlht1feZw+oKqaZ0hCb55RZ+HHbgutVcfy7quVOK+ib
	ozf7B9UIKXIVmoGOyYjcZwZC/xdQIdw/fbw7/tN+se1j73cSNk022hhYKyn/NDVOl15N
	hk80alXBcdBgqj6yxk+idLyTSA0fHVH2gLT873E3rlo9aoGtUQaHXblMWMDx5FZLAy34
	aDCVPYdEnR9Z5txspJxCR3hCy6mQ2DGddrKgGOYBQnq6wRrPGsqWw5d7kaUtJYypWZg1
	nTuMfaFcklnwBujNd1oApAZ1nP4IBGMRz1AJEsp0sp1E2a5n1jbcoUfuTtaFYyk3Cf3N
	77PA==
X-Received: by 10.205.114.207 with SMTP id fb15mr3670074bkc.137.1366893164137; 
	Thu, 25 Apr 2013 05:32:44 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id cv9sm1541605bkb.5.2013.04.25.05.32.42
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 05:32:43 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 14:32:27 +0200
Message-Id: <1366893153-9880-2-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFCv2 1/7] plugins/sdk.ide: Prepared templates for CMake nature
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
X-List-Received-Date: Thu, 25 Apr 2013 12:32:45 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Added an extra variable to the templates and the
creating process to prepare them for the new CMake
nature.
---
 plugins/org.yocto.sdk.ide/plugin.xml               |    4 ++++
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    2 ++
 .../EmptyCAutotoolsProject/template.xml            |    1 +
 .../EmptyCPPAutotoolsProject/template.xml          |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 7 files changed, 11 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 1b882a2..dd75532 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -162,6 +162,10 @@
                external="true"
                name="isAutotoolsProject">
          </simple>
+         <simple
+               external="true"
+               name="isCMakeProject">
+         </simple>
       </processType>
       <processType
             name="NewYoctoAutotoolsProjectPostProcess"
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index a103ebe..705dc99 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -88,9 +88,11 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		String isCProjectValue = args[3].getSimpleValue();
 		String isEmptyProjetValue = args[4].getSimpleValue();
 		String isAutotoolsProjectValue = args[5].getSimpleValue();
+		String isCMakeProjectValue = args[6].getSimpleValue();
 		boolean isCProject = Boolean.valueOf(isCProjectValue).booleanValue();
 		boolean isEmptyProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
 		boolean isAutotoolsProject = Boolean.valueOf(isAutotoolsProjectValue).booleanValue();
+		boolean isCMakeProject = Boolean.valueOf(isCMakeProjectValue).booleanValue();
 
 		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
 		try {
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml
index 028f33d..e1c1abc 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml
@@ -11,6 +11,7 @@
 		<simple name="isCProject" value="true" />
 		<simple name="isEmptyProject" value="true" />
 		<simple name="isAutotoolsProject" value="true" />
+		<simple name="isCMakeProject" value="false" />
 	</process>
 
 </template>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml
index ae4173b..9f1d46b 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml
@@ -10,6 +10,7 @@
 		<simple name="isCProject" value="false" />
 		<simple name="isEmptyProject" value="true" />
 		<simple name="isAutotoolsProject" value="true" />
+		<simple name="isCMakeProject" value="false" />
 	</process>
 
 </template>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
index 33bffd5..ca154ca 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
@@ -56,6 +56,7 @@
 		<simple name="isCProject" value="true" />
 		<simple name="isEmptyProject" value="false" />
 		<simple name="isAutotoolsProject" value="true" />
+		<simple name="isCMakeProject" value="false" />
 	</process>
 
 	<process type="org.eclipse.cdt.core.CreateSourceFolder">
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml
index 8a4f43b..4234ff4 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml
@@ -56,6 +56,7 @@
 		<simple name="isCProject" value="true" />
 		<simple name="isEmptyProject" value="false" />
 		<simple name="isAutotoolsProject" value="true" />
+		<simple name="isCMakeProject" value="false" />
 	</process>
 
 	<process type="org.eclipse.cdt.core.CreateSourceFolder">
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
index 0b807d8..2bf76bf 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
@@ -56,6 +56,7 @@
 		<simple name="isCProject" value="false" />
 		<simple name="isEmptyProject" value="false" />
 		<simple name="isAutotoolsProject" value="true" />
+		<simple name="isCMakeProject" value="false" />
 	</process>
 
 	<process type="org.eclipse.cdt.core.CreateSourceFolder">
-- 
1.7.9.5


