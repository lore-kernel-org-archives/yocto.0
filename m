Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f47.google.com (mail-bk0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D1D6E014FC
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:50 -0700 (PDT)
Received: by mail-bk0-f47.google.com with SMTP id ik5so750342bkc.6
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=Du13iZ7SV0Lz26KVoAuL07RM6+Bd7oj8SjRmSKNPW6g=;
	b=UcaB7hKT2+5KVpib6K6Xqkg5x1yQggliXY721TCQpYnslZclF/ZQdUI6tv791ahOrI
	gWhvkXx3wQY6qnZSc6TfEyqhY4mNQsn6bWOotdhdy1gMwkHapOJgvIzN1qzEiLI9kaR2
	jmxSHGKUI5iiQ+pM3Y+sodMsnvFVpmBua6MaJDt/MTtpjUpDX4oJRURAfYcr1DKvY8Up
	sKFy7pLMnpWARcgW2D36D+xkqSpLoN7YlmsC/ud+gO/jIY7VpPi38NeDNhmKIXGsXuhq
	yHkdlwcDjqhXJiPzypeyrSq0YLd/8uAa3V78oSOGh6GJ+Sb9RmqCtLBwT7aITlTt1Rgc
	gSPQ==
X-Received: by 10.205.24.132 with SMTP id re4mr2265622bkb.92.1366205389263;
	Wed, 17 Apr 2013 06:29:49 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.47
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:48 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:24 +0200
Message-Id: <1366205365-8843-10-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 09/10] plugins/sdk.ide: Improved usage of strings in class
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:50 -0000

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


