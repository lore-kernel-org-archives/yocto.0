Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f47.google.com (mail-bk0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56E8E00741
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:14 -0700 (PDT)
Received: by mail-bk0-f47.google.com with SMTP id jc3so308602bkc.34
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=+vfiwvpuWUpo1yksa+04aQouygVfgDzifU+Eps2MBII=;
	b=zloXmRy14OHmiIEu3hyU3EEJ5ob0iEjSB82YNHqPAjeydUqW2N0VlgqshtSV9ILPvG
	xVUFA83/nNRznBC9L0VBPV0vt2ndNrnDqyslLQJE0rc8RWoC+HATTbbVyZqU1Ytn31rv
	ZTvWaa0IsCG5k7cW80lRWwJ5AbbgfFeGV+269YXEYc06QkOls1SigPkOOLYLvQimghFw
	ZuTXKj0zrsI0OJhabkvOQRoUp41s8mtPXjmBVgrW7ZBXmOxuxvb3oB+8pPW17LVO+sN2
	Mm1o7G/fuRMxMMJMKO7t5a625JyUFPQUPt3oALUQFrZFhmffqaQ6LblhnuCepENmXS/k
	TvpQ==
X-Received: by 10.205.64.79 with SMTP id xh15mr9036197bkb.44.1363708933689;
	Tue, 19 Mar 2013 09:02:13 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm6616816bkw.5.2013.03.19.09.02.12
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 09:02:13 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 17:01:49 +0100
Message-Id: <1363708911-13002-6-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 5/7] plugins/sdk.ide: Renamed the NewYoctoProjectPostProcess
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
X-List-Received-Date: Tue, 19 Mar 2013 16:02:15 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Renamed the NewYoctoProjectPostProcess to
NewYoctoAutotoolsProjectPostProcess as it is actually
relevant for Autotools-based projects. Added a check
for the apropriate project nature in the the "process"
method of NewYoctoAutotoolsProjectPostProcess.
---
 plugins/org.yocto.sdk.ide/plugin.xml               |    4 +-
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    2 +-
 .../NewYoctoAutotoolsProjectPostProcess.java       |   77 ++++++++++++++++++++
 .../sdk/ide/wizard/NewYoctoProjectPostProcess.java |   73 -------------------
 .../HelloWorldCAutotoolsProject/template.xml       |    2 +-
 .../HelloWorldCGTKProject/template.xml             |    2 +-
 .../HelloWorldCPPAutotoolsProject/template.xml     |    2 +-
 7 files changed, 83 insertions(+), 79 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectPostProcess.java

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 35e34b4..8613f43 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -164,8 +164,8 @@
          </simple>
       </processType>
       <processType
-            name="NewYoctoProjectPostProcess"
-            processRunner="org.yocto.sdk.ide.wizard.NewYoctoProjectPostProcess">
+            name="NewYoctoAutotoolsProjectPostProcess"
+            processRunner="org.yocto.sdk.ide.wizard.NewYoctoAutotoolsProjectPostProcess">
          <simple
                name="projectName">
          </simple>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 8596123..dbd00ae 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -98,5 +98,5 @@ LaunchConfig.BuildScope.Value = ${projects:}
 LaunchConfig.Location.Attr = org.eclipse.ui.externaltools.ATTR_LOCATION
 LaunchConfig.Arguments.Attr = org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS;
 
-
+AutotoolsProjectPostProcess.WrongProjectNature = {0} is not an Autotools project
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
new file mode 100644
index 0000000..9bc042a
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
@@ -0,0 +1,77 @@
+/*******************************************************************************
+ * Copyright (c) 2012 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide.wizard;
+
+import java.io.BufferedReader;
+import java.io.InputStream;
+import java.io.InputStreamReader;
+
+import org.eclipse.cdt.core.templateengine.TemplateCore;
+import org.eclipse.cdt.core.templateengine.process.ProcessArgument;
+import org.eclipse.cdt.core.templateengine.process.ProcessFailureException;
+import org.eclipse.cdt.core.templateengine.process.ProcessRunner;
+import org.eclipse.cdt.core.templateengine.process.processes.Messages;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
+
+public class NewYoctoAutotoolsProjectPostProcess extends ProcessRunner {
+
+	public NewYoctoAutotoolsProjectPostProcess() {}
+
+	public void process(TemplateCore template, ProcessArgument[] args, String processId, IProgressMonitor monitor) throws ProcessFailureException {
+
+		String projectName = args[0].getSimpleValue();
+
+		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
+		try {
+			if (!project.exists()) {
+				throw new ProcessFailureException(Messages.getString("NewManagedProject.4") + projectName); //$NON-NLS-1$
+			} else if (!project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
+				throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + //$NON-NLS-1$
+						YoctoSDKMessages.getFormattedString("AutotoolsProjectPostProcess.WrongProjectNature", //$NON-NLS-1$
+								projectName));
+			} else {
+				IPath path = project.getLocation();
+				String path_str = path.toString();
+				String autogen_cmd = "chmod +x " + path_str + "/autogen.sh";
+				try {
+					Runtime rt = Runtime.getRuntime();
+					Process proc = rt.exec(autogen_cmd);
+					InputStream stdin = proc.getInputStream();
+					InputStreamReader isr = new InputStreamReader(stdin);
+					BufferedReader br = new BufferedReader(isr);
+					String line = null;
+					String error_message = "";
+
+					while ( (line = br.readLine()) != null) {
+						error_message = error_message + line;
+					}
+
+					int exitVal = proc.waitFor();
+					if (exitVal != 0) {
+						throw new ProcessFailureException("Failed to make autogen.sh executable for project: " + projectName);
+					}
+				} catch (Throwable t) {
+					t.printStackTrace();
+
+				}
+			}
+		}
+		catch (Exception e)
+		{
+			throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + e.getMessage(), e); //$NON-NLS-1$
+		}
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectPostProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectPostProcess.java
deleted file mode 100644
index d028ee6..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectPostProcess.java
+++ /dev/null
@@ -1,73 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2012 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - initial API and implementation
- *******************************************************************************/
-package org.yocto.sdk.ide.wizard;
-
-import java.io.BufferedReader;
-import java.io.InputStream;
-import java.io.InputStreamReader;
-
-import org.eclipse.cdt.core.templateengine.TemplateCore;
-import org.eclipse.cdt.core.templateengine.process.ProcessArgument;
-import org.eclipse.cdt.core.templateengine.process.ProcessFailureException;
-import org.eclipse.cdt.core.templateengine.process.ProcessRunner;
-import org.eclipse.cdt.core.templateengine.process.processes.Messages;
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.ResourcesPlugin;
-import org.eclipse.core.runtime.IPath;
-import org.eclipse.core.runtime.IProgressMonitor;
-
-
-@SuppressWarnings("restriction")
-public class NewYoctoProjectPostProcess extends ProcessRunner {
-	
-	public NewYoctoProjectPostProcess() {}
-	
-	public void process(TemplateCore template, ProcessArgument[] args, String processId, IProgressMonitor monitor) throws ProcessFailureException {
-
-		String projectName = args[0].getSimpleValue();
-		
-		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
-		try {
-			if (!project.exists()) {
-					throw new ProcessFailureException(Messages.getString("NewManagedProject.4") + projectName); //$NON-NLS-1$
-				} else {
-					IPath path = project.getLocation();
-					String path_str = path.toString();
-					String autogen_cmd = "chmod +x " + path_str + "/autogen.sh";
-					try {
-						Runtime rt = Runtime.getRuntime();
-						Process proc = rt.exec(autogen_cmd);
-						InputStream stdin = proc.getInputStream();
-						InputStreamReader isr = new InputStreamReader(stdin);
-						BufferedReader br = new BufferedReader(isr);
-						String line = null;
-						String error_message = "";
-						
-						while ( (line = br.readLine()) != null) {
-							error_message = error_message + line;
-						}
-						
-						int exitVal = proc.waitFor();
-						if (exitVal != 0) {
-							throw new ProcessFailureException("Failed to make autogen.sh executable for project: " + projectName);
-						} 
-					} catch (Throwable t) {
-						t.printStackTrace();
-						
-					}
-				}
-		}
-		catch (Exception e)
-		{
-			throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + e.getMessage(), e); //$NON-NLS-1$
-		} 
-	}
-}
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
index ca58158..b22d1ea 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCAutotoolsProject/template.xml
@@ -135,7 +135,7 @@
         </complex-array>
 	</process>
 
-	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
+	<process type="org.yocto.sdk.ide.NewYoctoAutotoolsProjectPostProcess">
 		<simple name="projectName" value="$(projectName)" /> 
 	</process>
 
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
index bbcf153..7a41ac3 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml
@@ -135,7 +135,7 @@
         </complex-array>
 	</process>
 
-	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
+	<process type="org.yocto.sdk.ide.NewYoctoAutotoolsProjectPostProcess">
 		<simple name="projectName" value="$(projectName)" /> 
 	</process>
 </template>
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
index 7ec9e05..3e8972b 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/template.xml
@@ -135,7 +135,7 @@
         </complex-array>
 	</process>
 
-	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
+	<process type="org.yocto.sdk.ide.NewYoctoAutotoolsProjectPostProcess">
 		<simple name="projectName" value="$(projectName)" /> 
 	</process>
 </template>
-- 
1.7.9.5


