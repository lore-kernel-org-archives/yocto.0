Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FD67E00BC2; Thu, 22 May 2014 03:07:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f54.google.com (unknown [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E16E00B94
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:06:42 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id b57so2493616eek.27
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:06:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=uiZeDuLTY3d8JIGpWD+cjHxaiQTxFDonq/QHk96tM1E=;
	b=ByMwC0yDlh0cAfJlKIFTtiwa6apdLpa5DQ7JDb5vwmfmZL2vDvyUE6u3Df5Epcb154
	NkHq55o5RihHx8Yh+HGYQ8A1mw+w08mbJa86zdyQ9WQzOFg3TJQSE331rHU+Jd6bKD2L
	UKk8dK+RzAPBXKpBylL2dUBT+Bt+rjwja80XQ6McIXJ0ohX+OfeQuS7klVtgp7X6LRJ5
	ORO3CVT7M9G8984dWHGrbOrzS9l20W1NDp9nGzDYcGYJD5E3EYSQ7vF5tX12iB6w1ZiA
	xt2GdP64kaJvrCJrsjlsovHyRsnJ5aHxLEmgY8hFQzoO9b+ojt7SGfcylgxXbSqPw8n5
	Ke9g==
X-Gm-Message-State: ALoCoQk+UYBISiHMrVCfbMMoNFex+gLDeCb5ru7/4EybIqVnvXanvqKL02IJcYu8GU42zeZR8TGj
X-Received: by 10.15.25.65 with SMTP id k41mr12104818eeu.36.1400752711195;
	Thu, 22 May 2014 02:58:31 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id z5sm18530275eee.31.2014.05.22.02.58.30
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 02:58:30 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 11:58:22 +0200
Message-Id: <496c43b71ab9320d145b1894dd6a02a9552ac2cb.1400744551.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <23b5b63ebd014d8bbdcbb5f66d8445aa1813bf78.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
	<7e2473c54ae347856e64731a3fa6d69bdb34505e.1400744551.git.timo.mueller@bmw-carit.de>
	<4b3c0ee5bfc6268b5540b6bdd1f6da7672108915.1400744551.git.timo.mueller@bmw-carit.de>
	<23b5b63ebd014d8bbdcbb5f66d8445aa1813bf78.1400744551.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 4/4] plugins/cmake: Add cmake error message to error dialog
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
X-List-Received-Date: Thu, 22 May 2014 10:07:07 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

In case cmake reported an error during project configuration the
resulting error dialog showed a generic 'build failed' message. The
specific error message which can help the user find the problem was
hidden in cmake console.

Along with logging the cmake error to the configure console it is now also
captured and added to the error dialog.

[BUGFIX #6313]

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../yocto/cmake/managedbuilder/YoctoCMakeMessages.properties  |  2 +-
 .../yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java   | 11 +++++++----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
index 55773ac..651ace5 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
@@ -15,7 +15,7 @@ ExecuteConfigureJob.consoleName=Configure using CMake [{0}]
 ExecuteConfigureJob.buildingMakefile=Building Makefile
 ExecuteConfigureJob.warning.aborted=Build of project has been aborted
 ExecuteConfigureJob.error.couldNotStart=Build of project could not be started
-ExecuteConfigureJob.error.buildFailed=Build of project failed
+ExecuteConfigureJob.error.buildFailed=Build of project failed with the following error:\n{0}
 ExecuteConfigureJob.cmakeWarning.dialogTitle=Unable to run command "cmake"
 ExecuteConfigureJob.cmakeWarning.dialogMessage=Please make sure that cmake is installed properly on this machine.
 
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
index f90a2d7..84e8c62 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
@@ -10,6 +10,7 @@
  *******************************************************************************/
 package org.yocto.cmake.managedbuilder.job;
 
+import java.io.ByteArrayOutputStream;
 import java.io.IOException;
 import java.io.OutputStream;
 import java.util.Arrays;
@@ -124,10 +125,11 @@ public class ExecuteConfigureJob extends Job {
 		IOConsoleOutputStream cos =
 				ConsoleUtility.getConsoleOutput(YoctoCMakeMessages.getFormattedString("ExecuteConfigureJob.consoleName", //$NON-NLS-1$
 						project.getName()));
+		ByteArrayOutputStream ces = new ByteArrayOutputStream();
 		monitor.worked(1);
 
 		try {
-			return buildProject(monitor, cos);
+			return buildProject(monitor, cos, ces);
 		} catch (IOException e) {
 			if(e.getMessage().startsWith("Cannot run program \"cmake\"")) { //$NON-NLS-1$
 				Display.getDefault().asyncExec(new Runnable() {
@@ -158,16 +160,17 @@ public class ExecuteConfigureJob extends Job {
 	}
 
 	private IStatus buildProject(IProgressMonitor monitor,
-			OutputStream cos) throws IOException, InterruptedException {
+			OutputStream stdout, OutputStream stderr) throws IOException, InterruptedException {
 		monitor.subTask(
 				YoctoCMakeMessages.getString("ExecuteConfigureJob.buildingMakefile")); //$NON-NLS-1$
-		configureProcess.start(cos);
+		configureProcess.start(stdout, stderr);
 		int exitValue = configureProcess.waitForResultAndStop();
 		monitor.worked(15);
 
 		if (exitValue != 0) {
 			return new Status(Status.ERROR, Activator.PLUGIN_ID,
-					YoctoCMakeMessages.getString("ExecuteConfigureJob.error.buildFailed") + " " + exitValue); //$NON-NLS-1$ //$NON-NLS-2$
+					YoctoCMakeMessages.getFormattedString("ExecuteConfigureJob.error.buildFailed", //$NON-NLS-1$
+															stderr.toString().trim()));
 		}
 
 		return Status.OK_STATUS;
-- 
1.9.0


