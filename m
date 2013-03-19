Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f51.google.com (mail-bk0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E5DCE006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:10 -0700 (PDT)
Received: by mail-bk0-f51.google.com with SMTP id ik5so317907bkc.10
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=rAwnrZUozbJuCgekRDo4YFXqhBDSMROpidsaKwLTDy8=;
	b=tWNToeQgwbweojjfnX4OUMwmcjv4t0k0g74b6fZiXBQlIyVWBxpqSRZyYaROMa1tl+
	NQa11sNKF0W0Jji9145j42yqKN1bqQ4ZbUMRHTkL1vWZ8Mrbotug2RLHG9ken3qWoryr
	HjzfGxmc99cCxQd0uQVeTS/pvB9KNj9Af+S2HqU61n9hOJEG8KMsqGpqBq/EKk7SK+HB
	Mha0FZDg0jWpIPGigxOAk6yJdkySXnmBriw2cd0OiZsrUMZCmn60rVmbQqf3HRhNgBKK
	tW9QcbWu1sYaYkNkIXGDuzw3kxwuhvWP+yJHx5injN5aXnI55n32ZYyxExiIwHddSkI3
	Vfdg==
X-Received: by 10.205.136.5 with SMTP id ii5mr9132331bkc.137.1363708929496;
	Tue, 19 Mar 2013 09:02:09 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm6616816bkw.5.2013.03.19.09.02.08
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 09:02:08 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 17:01:45 +0100
Message-Id: <1363708911-13002-2-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 1/7] plugins/sdk.ide: Prepared templates for autotools nature
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
X-List-Received-Date: Tue, 19 Mar 2013 16:02:10 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Added an extra variable to the templates and the
creating process. They are now prepared for a new
autotools nature.
---
 plugins/org.yocto.sdk.ide/plugin.xml               |    4 ++++
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    3 +++
 .../projecttemplates/EmptyCPPProject/template.xml  |    1 +
 .../projecttemplates/EmptyCProject/template.xml    |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKProject/template.xml             |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 7 files changed, 12 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 8e8daac..1fbca80 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -142,6 +142,10 @@
                external="true"
                name="isEmptyProject">
          </simple>
+         <simple
+               external="true"
+               name="isAutotoolsProject">
+         </simple>
       </processType>
       <processType
             name="NewYoctoProjectPostProcess"
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 5ffd6b7..35fb821 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -70,8 +70,11 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		String artifactExtension = args[2].getSimpleValue();
 		String isCProjectValue = args[3].getSimpleValue();
 		String isEmptyProjetValue = args[4].getSimpleValue();
+		String isAutotoolsProjectValue = args[5].getSimpleValue();
 		boolean isCProject = Boolean.valueOf(isCProjectValue).booleanValue();
 		boolean isEmptryProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
+		boolean isAutotoolsProject = Boolean.valueOf(isAutotoolsProjectValue).booleanValue();
+
 		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
 		try {
 			if (projectName.contains(" ")) {
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml
index e1b2338..0f0a7e8 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml
@@ -9,6 +9,7 @@
 		<simple name="artifactExtension" value="exe" /> 
 		<simple name="isCProject" value="false" /> 
 		<simple name="isEmptyProject" value="true" />
+		<simple name="isAutotoolsProject" value="true" />
 	</process>
 
 </template>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml
index f5c595c..8f821af 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml
@@ -10,6 +10,7 @@
 		<simple name="artifactExtension" value="exe" /> 
 		<simple name="isCProject" value="true" /> 
 		<simple name="isEmptyProject" value="true" />
+		<simple name="isAutotoolsProject" value="true" />
 	</process>
 
 </template>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
index 52ac355..ca58158 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
@@ -55,6 +55,7 @@
 		<simple name="artifactExtension" value="exe" /> 
 		<simple name="isCProject" value="true" /> 
 		<simple name="isEmptyProject" value="false" />
+		<simple name="isAutotoolsProject" value="true" />
 	</process>
 
 	<process type="org.eclipse.cdt.core.CreateSourceFolder">
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
index e552a54..bbcf153 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
@@ -55,6 +55,7 @@
 		<simple name="artifactExtension" value="exe" /> 
 		<simple name="isCProject" value="true" /> 
 		<simple name="isEmptyProject" value="false" />
+		<simple name="isAutotoolsProject" value="true" />
 	</process>
 
 	<process type="org.eclipse.cdt.core.CreateSourceFolder">
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
index a6bac07..7ec9e05 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
@@ -55,6 +55,7 @@
 		<simple name="artifactExtension" value="exe" /> 
 		<simple name="isCProject" value="false" /> 
 		<simple name="isEmptyProject" value="false" />
+		<simple name="isAutotoolsProject" value="true" />
 	</process>
 
 	<process type="org.eclipse.cdt.core.CreateSourceFolder">
-- 
1.7.9.5


