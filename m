Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EF9BE00BC3; Thu, 22 May 2014 03:04:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f42.google.com (unknown [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD149E00B8C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:13 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id d49so2370530eek.15
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=hxbJNq92cy2gHpOE+vbQFA1LxCA/HhBJLsiVO9K28VU=;
	b=eFUOXbaFVDftv+eeikDiKlQg7jZmeej0gd1qVz8CRWK4NdznAkproRmyoWH5jnunoD
	dWpVSL9Pjn+H0VHatzcTxTQdQkayEBVwa8fzsIH1+BKG4MxqOsz5Uc0fs3IxtVbeVkNX
	QcRY70PJnku/F5BrfFsXBpglSGmMRLyQ0PzxgvMwKWWA8xqbUqFDoHqEDliadHrLuyDM
	Gv8Za0st429sLIYBh5FWnXVf4T49MchjFrPIkdfRy3alpskjctE9uR5HPmpgbwNH0eRF
	NRqy9xuJo2Rgc34LNlpUhbpITKedvOut7uCJmiyF9SvT8Pcw2JmKx8zLNqgT6tke6uHj
	ZpCw==
X-Gm-Message-State: ALoCoQnqEdTSGq3oMGUcEaN7PaIK2Gh4YMcLipE6zAcLi04JEjEg8LXfJHfhuAXwSWQ3+cVleWF8
X-Received: by 10.14.183.5 with SMTP id p5mr12289178eem.52.1400752708143;
	Thu, 22 May 2014 02:58:28 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	h49sm18536720eeg.21.2014.05.22.02.58.26 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 02:58:27 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 11:58:20 +0200
Message-Id: <4b3c0ee5bfc6268b5540b6bdd1f6da7672108915.1400744551.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <7e2473c54ae347856e64731a3fa6d69bdb34505e.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
	<7e2473c54ae347856e64731a3fa6d69bdb34505e.1400744551.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 2/4] plugins/cmake: Enable separate capturing of cmake stderr
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
X-List-Received-Date: Thu, 22 May 2014 10:04:28 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The error reported by CMake was logged to the console but not used in
any error dialog shown to the user so far.

By capturing the error in a separate stream we can use it when reproting
the error to the user.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../cmake/managedbuilder/util/SystemProcess.java   | 24 +++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
index 764a1f6..9fe0ce1 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
@@ -24,6 +24,7 @@ public class SystemProcess {
 	private ProcessBuilder builder;
 	private Process process;
 	private StreamPipe outputRedirector;
+	private StreamPipe errorRedirector;
 
 	public SystemProcess(LinkedList<String> command) {
 		this(command, null);
@@ -47,7 +48,6 @@ public class SystemProcess {
 		if (workingDirectory != null) {
 			builder.directory(workingDirectory);
 		}
-		builder.redirectErrorStream(true);
 
 		if(additionalEnvironmentVariables != null && !additionalEnvironmentVariables.isEmpty()) {
 			builder.environment().putAll(additionalEnvironmentVariables);
@@ -56,11 +56,21 @@ public class SystemProcess {
 
 	public void start(OutputStream out) throws IOException {
 		if (builder != null) {
+			builder.redirectErrorStream(true);
 			process = builder.start();
 			outputRedirector = redirectOutput(process, out);
 		}
 	}
 
+	public void start(OutputStream out, OutputStream err) throws IOException {
+		if (builder != null) {
+			builder.redirectErrorStream(false);
+			process = builder.start();
+			outputRedirector = redirectOutput(process, out);
+			errorRedirector = redirectError(process, err, out);
+		}
+	}
+
 	public int waitForResultAndStop() throws InterruptedException {
 		if (process == null) {
 			return -1;
@@ -69,6 +79,10 @@ public class SystemProcess {
 		process.waitFor();
 		outputRedirector.interrupt();
 
+		if (!builder.redirectErrorStream()) {
+			errorRedirector.interrupt();
+		}
+
 		return process.exitValue();
 	}
 
@@ -76,6 +90,14 @@ public class SystemProcess {
 		process.destroy();
 	}
 
+	private StreamPipe redirectError(Process process, OutputStream errOut, OutputStream out) {
+		InputStream err = process.getErrorStream();
+		StreamPipe stderrPipe = new StreamPipe(err, errOut, out);
+		stderrPipe.start();
+
+		return stderrPipe;
+	}
+
 	private StreamPipe redirectOutput(Process process, OutputStream out) {
 		InputStream in = process.getInputStream();
 		StreamPipe stdoutPipe = new StreamPipe(in, out);
-- 
1.9.0


