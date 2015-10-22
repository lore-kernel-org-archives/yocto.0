Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A235CE0049B; Thu, 22 Oct 2015 07:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW, URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.193 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f193.google.com (mail-wi0-f193.google.com
	[209.85.212.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A3B6E00343
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 07:53:30 -0700 (PDT)
Received: by wibvt6 with SMTP id vt6so19814736wib.3
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 07:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=R9zP+OIYTgj5WixfZd7K5bOfMD20ZnTaY2Cjqd1k/jE=;
	b=aes2CWlapwMhmolwX0jYcAt8eX5wfYYVE13ATFKjRTxPVB+9FO+oi1tW7XWZn/5lZL
	IVF9MfHiZSCZ9mfdIWFHfBWGIeQTzYaEpTMceQovDlAhqKlz5iRMx2zVxdVJZ/jN4Bm9
	1tut2gNuNgdO6IjcQPzf7qX1ac//aSXo8auxiPeZCVCgksM2AI0LXfRtbI+DJGpU6Ei0
	5nVmCOHSKLCvUuQBRqSOwiz3CtdHnwcsAUjuqc7Wahv7VsKqhUzaZALhm2N/+x6VshvY
	+E8v+6kzyJOin20huXhsh5o1LJ4lwTSMVma4S3o+e/v8rveZ7idykR0iwC06XT2tJ1Ba
	PRxw==
X-Received: by 10.194.206.38 with SMTP id ll6mr18443431wjc.116.1445525608750; 
	Thu, 22 Oct 2015 07:53:28 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	jj3sm11058293wid.21.2015.10.22.07.53.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 22 Oct 2015 07:53:27 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 22 Oct 2015 15:52:57 +0100
Message-Id: <1445525577-14694-1-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
Subject: [meta-raspberrypi][PATCH] README: Add section on audio routing
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
X-List-Received-Date: Thu, 22 Oct 2015 14:53:32 -0000

See http://redmine.gherzan.com/issues/55

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 README | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/README b/README
index e32de3a..e16dee9 100644
--- a/README
+++ b/README
@@ -199,8 +199,34 @@ able to compile omxplayer you will need to whiteflag the commercial license
 adding to you local.conf:
 LICENSE_FLAGS_WHITELIST = "commercial"
 
+4. Board Configuration
+======================
 
-4. Source code and mirrors
+4.A. Audio Routing
+==================
+To load audio driver
+
+    modprobe snd-bcm2835
+
+To test audio playback
+
+    e.g. aplay test.wav
+
+Note that without HDMI connected this emits audio from the 3.5in jack connector
+as expected. However With an HDMI display connected there is no audio output from
+the jack connector.
+
+To force the audio routing via the 3.5in jack connector use
+
+    amixer cset numid=3 1
+
+Options to amixer cset are:
+
+    0=auto
+    1=headphones
+    2=hdmi
+
+5. Source code and mirrors
 ==========================
 
 Main repo:
@@ -214,10 +240,10 @@ Bitbucket mirror:
     https://bitbucket.org/agherzan/meta-raspberrypi
 
 
-5. Contributing
+6. Contributing
 ===============
 
-5.A. Mailing list
+6.A. Mailing list
 =================
 The main communication tool we use is a mailing list:
     yocto@yoctoproject.org
@@ -241,7 +267,7 @@ When sending patches to mailing list, please use something like:
 
     git send-email --to yocto@yoctoproject.org <generated patch>
 
-5.B. Redmine
+6.B. Redmine
 ============
 In order to manage and trace the meta-raspberrypi issues, we use redmine:
     http://redmine.gherzan.ro/projects/meta-raspberrypi
@@ -255,7 +281,7 @@ for a bug:
     [Bug #13]
 
 
-6. Maintainers
+7. Maintainers
 ==============
 
     Andrei Gherzan <andrei at gherzan.ro>
-- 
1.9.1


