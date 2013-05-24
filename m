Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC2D6E014A7
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:33 -0700 (PDT)
Received: by mail-ea0-f173.google.com with SMTP id n15so2418920ead.18
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=4igYt5eZiRYmH0poR8uPWEAqNUE0701GE1mlTtrvNC8=;
	b=TJX3693nnQUILCWmIhM6cMh1m3qSJYG95FGb0hvG/kLGnr8uCOx11A05mKaRaQ8oLY
	mjBRwEl1eb7++wigi7MGQ/jlL7fp0JDevv8VeEAhgBsZ0VFpP1u+C0yDeUagKPjMSCly
	HR7lk8n4Q0XbUG7wvvjmIAFxTwdEsw2oyHu2AChfXAEdYZDzHAUY9rRi3KBczrJ6Ky83
	5IbdPV6+vS7FOrxhkh8QG8bcmPFbGWGBXyzrF3cqLOGVEqekSLwkFOP0wp52E3aJ2Gbv
	qoHTwEYW33ZjRkadpkog6alTGvV2yh6lYIks/kHw0Hg04cxr9su5Zi2YLR+O0wuUw9cN
	8KCg==
X-Received: by 10.14.95.4 with SMTP id o4mr38503894eef.2.1369397012932;
	Fri, 24 May 2013 05:03:32 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id y10sm23198135eev.3.2013.05.24.05.03.31
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 24 May 2013 05:03:32 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 14:03:19 +0200
Message-Id: <1369397005-3262-2-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 1/7] plugins/sdk.ide: Prepared templates for CMake nature
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
X-List-Received-Date: Fri, 24 May 2013 12:03:34 -0000

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


