Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA7BE014E1
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:11 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id d17so1677973eek.8
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=SzPFgKpuR0uCnSjBDCa1jRXt8CXOUmipjtiQ6hxzDNw=;
	b=qiDBHR63nXLkYlDY8U3tSRpwR79E7MpCOYY8IZAxo3Ewv/fm3epYA6qqtfo1Cp4vaX
	kmhEKUbxQAKE/MWb1aov4ygjHXnFF+9mK0JozV1+kbBxhwxTzQ8xjC6sbcncxciq38GP
	mW7P+/sptr31LHpzACbJ6Fdr1tETlrTGqc/kqVUUdNhrgLXv1Lz6M5ZzJDpryLAnjjyp
	UOZk+ENUMvHX87yN/8reMs9LhhSzKLa6OuLOzQMmW3i++lKKTocCQ8ZWLcOtndac1zIn
	Y/GshU9vC8yknD7JV7mZ6ONJL73Spg7h58gDfo5jaVrcHVejO7qr0KgqXLpnCq3NS77i
	dU8w==
X-Received: by 10.14.224.201 with SMTP id x49mr28913972eep.14.1369298410819;
	Thu, 23 May 2013 01:40:10 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.10
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:10 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:51 +0200
Message-Id: <1369298392-4076-13-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 12/13] plugins/sdk.ide: Adapted RemoteDebugLauncher for CMake projects
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
X-List-Received-Date: Thu, 23 May 2013 08:40:12 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The Yocto CMake projects are built for more
clarity in a Debug folder and not in the source
tree. The binary is therefore not inside the src
folder but in the Debug folder.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 669157b..287de15 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -303,10 +303,15 @@ public class YoctoSDKUtils {
 			//TWEAK avoid loading default values in org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab
 			w_copy.setAttribute("org.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTab.DEFAULTS_SET",true);
 			w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROJECT_NAME, projectName);
-			if(!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID))
-			{
-				String project_src = "src/"+projectName;
-				w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME, project_src);
+			if (!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID)) {
+				String pathToCompiledBinary = "";
+				if (project.hasNature(YoctoSDKCMakeProjectNature.YoctoSDK_CMAKE_NATURE_ID)) {
+					pathToCompiledBinary = "Debug/";
+				} else {
+					pathToCompiledBinary = "src/";
+				}
+				pathToCompiledBinary += projectName;
+				w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME, pathToCompiledBinary);
 			}
 
 			w_copy.doSave();
-- 
1.7.9.5


