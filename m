Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f42.google.com (mail-bk0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 708BDE00741
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:15 -0700 (PDT)
Received: by mail-bk0-f42.google.com with SMTP id jk7so312279bkc.15
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=Du13iZ7SV0Lz26KVoAuL07RM6+Bd7oj8SjRmSKNPW6g=;
	b=dhoH6h5ui3FrNp6jDbz6LAzZtxiaXTDWU2CDceBErQ/wK+COWBxOX7IHgAZ8GxZmKj
	RFpvIlGNTNAIJxLNPVPDei1KIak+ERbRN3cYTnwfvZPbWB0X7HuekiVlYl97n7sxiixI
	O5TIWyWV4msGlQeaKBqcwtrHJwar6sdS0VyJP0++m5HSuttsH+uahkYLp1pCV6wB0Dve
	FaPmwz9NtMYmjNOTkDQ/5fEgYQ70Jruzp8kLDN9Elwjul40QU2LH9SQiO9dFCuxv00Gx
	xHhLagM4yV6Rwj0Ia4X32sdcnSG4LS90BPqhK3TAXpZjfTYhi+fi3agKS0I0JHXDCpNK
	oC1A==
X-Received: by 10.204.244.135 with SMTP id lq7mr9074949bkb.138.1363708934592; 
	Tue, 19 Mar 2013 09:02:14 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm6616816bkw.5.2013.03.19.09.02.13
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 09:02:14 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 17:01:50 +0100
Message-Id: <1363708911-13002-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 6/7] plugins/sdk.ide: Improved usage of strings in class
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


