Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E65FE00B87; Thu, 22 May 2014 03:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f43.google.com (unknown [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01DFFE00B8A
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:06:08 -0700 (PDT)
Received: by mail-ee0-f43.google.com with SMTP id d17so2421241eek.16
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:06:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=lcqXrUfMcVPMM1c/i89gy6lE7k62kJK8/aDVlQyv35s=;
	b=Mf2afWm4PE1SEhpiVPwZ7d+haCjoqPuXkyXj8clqAk48/jpCXWSEqTb/NB6IXxxQVy
	3Owjauo1QxjbV6SXdBjufrphQXwywGuhxGX0GyfKwdtOeXWA1OTj55MWWYXz/uS7l+mX
	AWWW0G9vUljPuuED10FFqFwwUYhHqo/kdW2IvGfnz16/7eUFuqQU4JvgJA9blKYbZZ49
	vjk6UwJvWAmS/G2TI9+gRHNYXBv9vYYiwexR+beICncFTGqRilNAQIJplkcBGVUXUZjB
	20pW/m2wbbrV6b4jTi1vD0DNh9BKwR4UceRV5Xg07xJPDOySEilmNazMdTyWVCoDbyKP
	yJ8Q==
X-Gm-Message-State: ALoCoQkXu+XwanT/N/Iv72Eyi1v6cIVygbVjSE16mFKXnkrXV2FWZJN4FlezEoniiG5mNJmWtHKi
X-Received: by 10.14.213.193 with SMTP id a41mr12244527eep.68.1400752706138;
	Thu, 22 May 2014 02:58:26 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id i2sm18543199eem.11.2014.05.22.02.58.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 02:58:25 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 11:58:19 +0200
Message-Id: <7e2473c54ae347856e64731a3fa6d69bdb34505e.1400744551.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400744551.git.timo.mueller@bmw-carit.de>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 1/4] plugins/cmake: Allow multiple targets when logging process output
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
X-List-Received-Date: Thu, 22 May 2014 10:06:41 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Until now the stream pipe was connecting one input stream with one
output stream. This for example allowed showing the output of a process
in an eclipse console. If the output is required elsewhere, e.g. in a
message dialog, the only possiblity was to read out the whole console
afterwards.

The stream pipe is extended so that we can now write the process output
to multiple target while the process is running, e.g. a eclipse console
and a byte stream.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/cmake/managedbuilder/util/SystemProcess.java | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
index 9ca6e60..764a1f6 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
@@ -87,12 +87,12 @@ public class SystemProcess {
 
 	private class StreamPipe extends Thread {
 		private InputStream in;
-		private OutputStream out;
+		private OutputStream[] outputs;
 		boolean shutdown = false;
 
-		public StreamPipe(InputStream in, OutputStream out) {
+		public StreamPipe(InputStream in, OutputStream... outputs) {
 			this.in = in;
-			this.out = out;
+			this.outputs = outputs;
 		}
 
 		@Override
@@ -102,7 +102,9 @@ public class SystemProcess {
 
 			try {
 				while(!shutdown && ((length = in.read(buffer)) > -1)) {
-					out.write(buffer, 0, length);
+					for (OutputStream out : outputs) {
+						out.write(buffer, 0, length);
+					}
 				}
 			} catch (IOException e) {
 				e.printStackTrace();
-- 
1.9.0


