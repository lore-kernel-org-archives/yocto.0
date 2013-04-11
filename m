Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16287E014AD
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:43 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id r3so1155693wey.17
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=DngIO6ydmkhVIiKuNVk24SbvbnLGL7NpJ8D5NWyk97w=;
	b=oXBu6/CurV3xVTmanLnnyQl1Oj7Ki59WU/NWtLClpjqXyL1PkeSnBBDUmLIEi3qA4v
	r0j+5dZ4374vrpov3MBalxFE3283kO+7CiGNg6+6K2oDLN+Di7TiCzGDC95yklvOK2fr
	diFch9Ppswz8bmqOpa2z5dJdfEaaIgdzEzx3fSAWd0PrPFZvrFaKmTB12rELN7998ao6
	fJNqWcclx+xtG2ZSX0KnFJbRi9joiJ/DsXRK9TT9/N8bflWE+FGhfM2kFR1nJ2LeqSbZ
	Kjod0UsEvHQc+I0JySOuy/TTLO+8U2mjHAXH/3JRvv7f5vFMO2dPtDbIPLK1Xq1pZZRf
	YDBA==
X-Received: by 10.194.222.100 with SMTP id ql4mr9870579wjc.59.1365679543328;
	Thu, 11 Apr 2013 04:25:43 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g4sm2785162wib.11.2013.04.11.04.25.42
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 04:25:42 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 13:25:23 +0200
Message-Id: <1365679531-4518-2-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 1/9] plugins/sdk.ide: Prepared templates for autotools nature
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
X-List-Received-Date: Thu, 11 Apr 2013 11:25:44 -0000

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
index b8bef6b..73531e5 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -86,8 +86,11 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
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
 			if (!isValidProjectName(projectName)) {
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


