Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5D61E00B6C; Fri,  9 May 2014 06:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-ee0-f47.google.com (unknown [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09601E00B7C
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:16 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id c13so2660423eek.34
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=3qM0NjKWcGP2uZ6zPi+DfqCbxtekdP74pkjYPfbKgKY=;
	b=UOhNbJQ8rcfDn0CJTcz/ANKOjzdbVomtNbU6YSWlmdY7hloqVP3yTHxn67lcm4Rk4n
	gH7ip2ZPTLbanf6h9TqFc5qcnyrukUluJbi+cMUU9CT8WzssFQz/ahTDZk7z10l2j8YN
	jwFgI8MhEU+htYBvstWxzfZ+nNr6h66Ku7rH7v39cW0qVYHywg9AVTN8HNY/3LgXDRSF
	pyYRTgP5u5PqyhnINHO9QhZ7oriNtGqSoUuCiMCFjwg6wbgrdb2xWSLxKLgEvYujxNNN
	iTPxHBlxkiAvdPOa5C3MDG06LV7FMLu/veSYcRw8CeR/C6gZNgngPlNp4r2zzY9NMUZb
	6jpg==
X-Gm-Message-State: ALoCoQkngbhibTlgVxYGqO8UFgkKSMW9LdbzBQupTHsNpQ9IEfpuhuyi/fVAe3FtA74/kbaae0op
X-Received: by 10.15.34.197 with SMTP id e45mr13272897eev.112.1399640955025;
	Fri, 09 May 2014 06:09:15 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.13 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:14 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:08:59 +0300
Message-Id: <1399640946-21680-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/9] linux-raspberrypi: Update v3.10.30 to v3.10.38
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

Change-Id: Ia620e8fd6928f9cd2c625b87599cd6d6a405a344
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.30.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.30.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.30.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.30.bb
deleted file mode 100644
index e1f2a1a..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.30.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "26d1de2993c81c01f91ebc93a1fad8957c9ece17"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
new file mode 100644
index 0000000..a0c5012
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
@@ -0,0 +1,6 @@
+SRCREV = "1b49b450222df26e4abf7abb6d9302f72b2ed386"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.5.3


