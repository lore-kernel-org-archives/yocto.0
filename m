Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f49.google.com (mail-bk0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D194E01483
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:09 -0700 (PDT)
Received: by mail-bk0-f49.google.com with SMTP id 6so1714893bkj.36
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=RKKvGtRMgi9/nsxs7J8Wpq5VfcpZhndnwonw1peWADM=;
	b=hRHXIQ6dUoEw3vYVL34jJmrvJDtWIfmdYm2lx1ocj3uYjbg/sHiN9+/YRDh/J0rKO5
	dJKUO8qnrXuomqy5c8VomdwO9i3N7UOhwhyPNFuOxz/SfXhQQlLFIhpqAycJhgL7krSr
	/NCSr8Ms508RLlaTVOTG9O2G7p2TKAZiPr1rCHNgJQ3JhscmaU5oNPUC7jOb6PqdRRI9
	HHBkdkw0xBZ/hndhtUJ3kafg7eJCtffiaFqkwjfdpq/Bg0KOx71ia9trGLxBb8JC/qZe
	UlHOJgMvH/mJARgYu86gk4VwdKHc6xabmP/yvy/sgKmnjFp/XXTZhrO8xLrICQPflEaQ
	kERQ==
X-Received: by 10.205.26.70 with SMTP id rl6mr6161489bkb.54.1370248208717;
	Mon, 03 Jun 2013 01:30:08 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.07 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:08 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:53 +0200
Message-Id: <1370248197-4243-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 3/7] plugins/sdk.ide: Decoupled launcher creation from environment setting
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:10 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The creation of the remote debug and qemu
launchers is now decoupled from the method
setEnvironmentVariables(...). This also fixes a
bug where the remote debug launcher is not
correctly created because at the time of the call
not all relevant Yocto natures are added to the
project.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    5 ++---
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |    2 ++
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 76bac26..5400a42 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -223,15 +223,13 @@ public class YoctoSDKUtils {
 		return envSetupFile;
 	}
 
-	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException {
+	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) {
 		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
 
 		String sFileName = getEnvironmentSetupFileFullPath(elem);
 		HashMap<String, String> envMap = parseEnvScript(sFileName);
 
 		setEnvVars(cpdesc, elem, envMap);
-
-		createRemoteDebugAndQemuLaunchers(project, elem);
 		try {
 			CoreModel.getDefault().setProjectDescription(project,cpdesc);
 		} catch (CoreException e) {
@@ -461,6 +459,7 @@ public class YoctoSDKUtils {
 
 		try {
 			setEnvironmentVariables(project, elem);
+			createRemoteDebugAndQemuLaunchers(project, elem);
 
 			if (project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
 				YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
index 9c6dca4..3ea7e33 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
@@ -232,6 +232,8 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 			YoctoSDKNatureUtils.addNature(project, YoctoSDKCMakeProjectNature.YoctoSDK_CMAKE_NATURE_ID, monitor);
 			YoctoSDKCMakeProjectNature.extendProjectEnvironmentForCMake(project);
 		}
+
+		YoctoSDKUtils.createRemoteDebugAndQemuLaunchers(project, elem);
 	}
 
 	protected final void turnOffAutoBuild(IWorkspace workspace) throws CoreException {
-- 
1.7.9.5


