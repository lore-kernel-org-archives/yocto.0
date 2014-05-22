Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66295E00BEA; Thu, 22 May 2014 03:05:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f44.google.com (unknown [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 033EBE00BAD
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:05:18 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id c41so2428923eek.31
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=V42NSxX8HWsbudbW62VzbT8dNZVnFEYx/S6Ze5Ugx/o=;
	b=E0wBrR0oBUzbuuzTElsN+8N6jT8H/bAZngTQ3JLTYUm5PM04WCJQoTdiGNxmB2/PB1
	yCrJqQ/2IM0TV41gdy3b1XO8XT/jGBEAwvH3zoTWumxxkrDQ7hcgMNCdrCqao5f1T0/y
	kb2qXNFro7g/hb9rjE4x/r9LMCZIZb0lbKsne7g/Z82Xtww6YWVCvuuNzOHvlSaJGh67
	pT2iQlT742Y7Q9g52/hi60Pe+YUY4cufvy0fP9EumixAJP8hSKj8vkV5AyFJmwsBxVwo
	Cks888x83KvxJzusyfLka3Xd4oxFfSshMgkBIU0cWqzjkpLZUKEKZ5sxlpaKxRDG/EUA
	Srhg==
X-Gm-Message-State: ALoCoQny6DP9B/Wq2L30K8dO8qMQDZVykYOngDJK5jpOE1WpM74bb3OUWIRI0/bZSmjUhZ3L754p
X-Received: by 10.15.44.134 with SMTP id z6mr7838358eev.61.1400752709677;
	Thu, 22 May 2014 02:58:29 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id b1sm18540680eef.15.2014.05.22.02.58.28
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 02:58:29 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 11:58:21 +0200
Message-Id: <23b5b63ebd014d8bbdcbb5f66d8445aa1813bf78.1400744551.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <4b3c0ee5bfc6268b5540b6bdd1f6da7672108915.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
	<7e2473c54ae347856e64731a3fa6d69bdb34505e.1400744551.git.timo.mueller@bmw-carit.de>
	<4b3c0ee5bfc6268b5540b6bdd1f6da7672108915.1400744551.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 3/4] plugins/cmake: Use generic output stream
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
X-List-Received-Date: Thu, 22 May 2014 10:05:40 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This enables logging the process output to something other than a
eclipse console. e.g. a log file or string that can be reused for
dialogs and messages.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java    | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
index 354d930..f90a2d7 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
@@ -11,6 +11,7 @@
 package org.yocto.cmake.managedbuilder.job;
 
 import java.io.IOException;
+import java.io.OutputStream;
 import java.util.Arrays;
 import java.util.HashMap;
 import java.util.LinkedList;
@@ -157,7 +158,7 @@ public class ExecuteConfigureJob extends Job {
 	}
 
 	private IStatus buildProject(IProgressMonitor monitor,
-			IOConsoleOutputStream cos) throws IOException, InterruptedException {
+			OutputStream cos) throws IOException, InterruptedException {
 		monitor.subTask(
 				YoctoCMakeMessages.getString("ExecuteConfigureJob.buildingMakefile")); //$NON-NLS-1$
 		configureProcess.start(cos);
-- 
1.9.0


