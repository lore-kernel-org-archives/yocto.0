Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C1AE00B7C; Fri,  9 May 2014 06:09:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-ee0-f41.google.com (unknown [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFCA9E00B7A
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:19 -0700 (PDT)
Received: by mail-ee0-f41.google.com with SMTP id t10so2679245eei.14
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=IoCKmpF5juMplnultgOFraKfAQHPZC61boo8sKW2/J8=;
	b=UH27ck4dYoLcLlU3VuS0JgoFVU3FaRaB7G0Z/YtB2jJ6bVLfhW5oiJnV3ZKDSKemY2
	+DMycqV0NEBSoebfLhf4QbxeOJ/dSLvbS2uNjLtgZB5lTxwFvhRcSdZ7Sy26pnOUwXgk
	jlVHw7TcIFgsZjfHrX0fOPVYH6ZBS3nw41+b+OaXB1BARgMy+jdsqWK98C5mfnUvIYWT
	yrg5nO+6K+eL3Qa2wYcVWM8MZcFdft+2CVarH29HQl983Ym5W3qQooXcaoQRVWYqzsh7
	28u2ajTI4oCBBg4nuj7FJH4UN848VcPZNlNqqloKBJLrDjGLFQHl6sOJ2hkkbbNT+bH3
	PbrQ==
X-Gm-Message-State: ALoCoQlbquomfmUFBWoXS+cRJ3i6d4x+5UvLbnYM0lbyQbyZoJkhV/rmaJnBn5x6Fl7QRHh9a57Q
X-Received: by 10.14.198.197 with SMTP id v45mr13423045een.9.1399640958287;
	Fri, 09 May 2014 06:09:18 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.17 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:17 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:09:02 +0300
Message-Id: <1399640946-21680-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/9] linux-raspberrypi: Replace v3.13.3 by v3.14.2
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
X-List-Received-Date: Fri, 09 May 2014 13:09:30 -0000

Change-Id: I2ceb950d30f984ab66de79085b30b541d20e6e25
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.13.3.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.14.2.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.13.3.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.14.2.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.13.3.bb b/recipes-kernel/linux/linux-raspberrypi_3.13.3.bb
deleted file mode 100644
index 078c031..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.13.3.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "660b0008f5d318d8a29187b64c8717e75ad14c1c"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.13.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.14.2.bb b/recipes-kernel/linux/linux-raspberrypi_3.14.2.bb
new file mode 100644
index 0000000..9cb7c64
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.14.2.bb
@@ -0,0 +1,6 @@
+SRCREV = "b0da29026e2bd5602fed7f650124838696f9dda6"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.14.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.5.3


