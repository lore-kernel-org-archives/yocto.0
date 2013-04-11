Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 103DFE014D8
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:49 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id z53so1192642wey.9
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=Du13iZ7SV0Lz26KVoAuL07RM6+Bd7oj8SjRmSKNPW6g=;
	b=vsvAhl3vTpnT7ayCp3h2GbT0bOQNCh8sA9Ogzc/JwFk++q5OlDpeNbAKoBuX0wR3D5
	n5SCvZqIwLpv8qG7QtDp+DjuenX+4fILENTh1nE1PR2Cruef/TFyQwg7dPvsuwejxfGj
	WrTLORxDsPn6mWpQMBS41+2J0bOfV7F6buiQhuhyFs0HKgs2qbdwpFmeYek3xTQO2Z0X
	qFiTlZnbRUMwTLcvl417/snHjbunCmUd/sqfWVjUcrvbfwaTH+zPqvWFb0dumdKB7pRV
	XKLYyGynHvGVizOmY2+td7i5VynGpIJ/YeWYSg5mZwA/2nPMoL5ugJHOBXOUmu0z44d/
	0nzw==
X-Received: by 10.194.133.198 with SMTP id pe6mr10063449wjb.9.1365679549301;
	Thu, 11 Apr 2013 04:25:49 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g4sm2785162wib.11.2013.04.11.04.25.48
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 04:25:48 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 13:25:30 +0200
Message-Id: <1365679531-4518-9-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 8/9] plugins/sdk.ide: Improved usage of strings in class
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
X-List-Received-Date: Thu, 11 Apr 2013 11:25:50 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Extracted string constants. Added missing
NON-NLS-1 declarations.
---
 .../NewYoctoAutotoolsProjectPostProcess.java       |   10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
index 9bc042a..cb187e9 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
@@ -11,6 +11,7 @@
 package org.yocto.sdk.ide.wizard;
 
 import java.io.BufferedReader;
+import java.io.File;
 import java.io.InputStream;
 import java.io.InputStreamReader;
 
@@ -28,6 +29,9 @@ import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
 
 public class NewYoctoAutotoolsProjectPostProcess extends ProcessRunner {
 
+	public static final String CHMOD_COMMAND = "chmod +x "; //$NON-NLS-1$
+	public static final String AUTOGEN_SCRIPT_NAME = "autogen.sh"; //$NON-NLS-1$
+
 	public NewYoctoAutotoolsProjectPostProcess() {}
 
 	public void process(TemplateCore template, ProcessArgument[] args, String processId, IProgressMonitor monitor) throws ProcessFailureException {
@@ -45,7 +49,7 @@ public class NewYoctoAutotoolsProjectPostProcess extends ProcessRunner {
 			} else {
 				IPath path = project.getLocation();
 				String path_str = path.toString();
-				String autogen_cmd = "chmod +x " + path_str + "/autogen.sh";
+				String autogen_cmd = CHMOD_COMMAND + path_str + File.separator + AUTOGEN_SCRIPT_NAME;
 				try {
 					Runtime rt = Runtime.getRuntime();
 					Process proc = rt.exec(autogen_cmd);
@@ -53,7 +57,7 @@ public class NewYoctoAutotoolsProjectPostProcess extends ProcessRunner {
 					InputStreamReader isr = new InputStreamReader(stdin);
 					BufferedReader br = new BufferedReader(isr);
 					String line = null;
-					String error_message = "";
+					String error_message = ""; //$NON-NLS-1$
 
 					while ( (line = br.readLine()) != null) {
 						error_message = error_message + line;
@@ -61,7 +65,7 @@ public class NewYoctoAutotoolsProjectPostProcess extends ProcessRunner {
 
 					int exitVal = proc.waitFor();
 					if (exitVal != 0) {
-						throw new ProcessFailureException("Failed to make autogen.sh executable for project: " + projectName);
+						throw new ProcessFailureException("Failed to make autogen.sh executable for project: " + projectName); //$NON-NLS-1$
 					}
 				} catch (Throwable t) {
 					t.printStackTrace();
-- 
1.7.9.5


