Return-Path: <paul.betafive@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17E74E01409
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 01:40:11 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hn14so3861758wib.4
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 01:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=ryeQjN/giIffQ9EAy7wFQM34UE8SxBKBDOgTtX/eU3A=;
	b=prmFjbBqRKyTEKU0cCwAWc1RJVFMZ+I9srpAT+nWgPyU3aB+Zay/VihdSMeZw6oUxZ
	AVg/hj04zq7bn40mAWl6EVbeW1GmoTvzNOPj23oP238R9C8qnSmun86bXc1o9zNh4PIT
	2JkzRLMeaJnOlAVLAziLYEjsyApOXZJsPUnxlAsv+Tvl6GEU10pNmcFXwH9cFGwqxIK4
	FJxWwVPiImk1lUsMcgU8fIU2iH+fhzX9nzJKKp7AUj/Lf+/Q1MrM4WhQJNJ2iXLmFHJf
	7tRC0x31ljNuwwWehsyq1GVvI53QDMJcCKF/K8oE4hk8aHWXiqamffGOx5hV2FauU0os
	9LmA==
X-Received: by 10.180.109.84 with SMTP id hq20mr12487003wib.11.1369212010514; 
	Wed, 22 May 2013 01:40:10 -0700 (PDT)
Received: from vesta.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id w8sm38199578wiz.0.2013.05.22.01.40.09
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 May 2013 01:40:09 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Wed, 22 May 2013 09:39:41 +0100
Message-Id: <1369211981-22033-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.2.2
Subject: [meta-raspberrypi][PATCH] psplash: only set image for MACHINE=raspberrypi
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
X-List-Received-Date: Wed, 22 May 2013 08:40:12 -0000

Instead of overriding the default psplash image, the raspberrypi image is added
as an additional image. It is then set as the default in the raspberrypi machine
config file so that other targets do not pick up our splash image.

Tested on raspberrpi and qemuarm: on raspberrypi I see to Raspberry Pi logo, on
qemuarm I see the Yocto Project logo.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 conf/machine/raspberrypi.conf             | 3 +++
 recipes-core/psplash/psplash_git.bbappend | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index 6e95291..e25b59a 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -32,3 +32,6 @@ MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
 MACHINE_EXTRA_RRECOMMENDS += " \
 	kernel-modules \
 "
+
+# Set raspberrypi splash image
+SPLASH = "psplash-raspberrypi"
diff --git a/recipes-core/psplash/psplash_git.bbappend b/recipes-core/psplash/psplash_git.bbappend
index eea8dfb..65dc30f 100644
--- a/recipes-core/psplash/psplash_git.bbappend
+++ b/recipes-core/psplash/psplash_git.bbappend
@@ -1,2 +1,2 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-SPLASH_IMAGES = "file://psplash-raspberrypi-img.h;outsuffix=default"
+SPLASH_IMAGES += "file://psplash-raspberrypi-img.h;outsuffix=raspberrypi"
-- 
1.8.2.2


