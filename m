Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67415E00854
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:27 -0800 (PST)
Received: by mail-qc0-f182.google.com with SMTP id w7so3259968qcr.41
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=votGlcJkwzO7NYdmJGMiHIwf1AVnIoJ2OctecCJsvi4=;
	b=Lq82TNXhN5jxDVP0HybuILlTyIc4yzdw2mtOaK0vC1BZWjydkubwrZjouQmZ1PBB1+
	59WTsvYTmVauYRLYSgpLl1bnMAcZTLjQK20F+P54gSMnLQAQ41rB+FfBl0/tdqd0CqUs
	+LBvYpHJwd4kU+kHqtesFWi0d4kqO1dUTl4BohuJff0KrerR73uW5xm+IWnJUlkj+chp
	3cL2LFu/qbkfoWW0s94ca2rxVJpCk3tKMUtT95rwTsTYIGmDJlI2EnGHHft0kSdNfvEy
	Lq4KPZC8A6yUGdWRq9kfi3V5BZ9bIOv3u7ZSEenl7Nad/p/uOfpB0swM0SVlENwhjpEI
	s3Ag==
X-Gm-Message-State: ALoCoQn5Pw8GOFpKU0cy1KBExctXFghHOqQswSLTtIJ1Z4UdOIOPgU+tCU+ZNohp3Pt0fM/GAjKP
X-Received: by 10.224.97.73 with SMTP id k9mr994508qan.14.1392978566374;
	Fri, 21 Feb 2014 02:29:26 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id
	k61sm11862511qge.12.2014.02.21.02.29.24 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 02:29:25 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 12:29:04 +0200
Message-Id: <1392978548-31880-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/7] linux-raspberrypi: Update v3.12.7 to v3.12.11
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
X-List-Received-Date: Fri, 21 Feb 2014 10:29:27 -0000

Change-Id: I4358434c036eb8285f60dafac961c5734da1320b
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.11.bb | 6 ++++++
 recipes-kernel/linux/linux-raspberrypi_3.12.7.bb  | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
new file mode 100644
index 0000000..ff8ed2a
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
@@ -0,0 +1,6 @@
+SRCREV = "e297b214d77ce06a321e5ff98d74ae511ce18696"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb
deleted file mode 100644
index b71363c..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "7b3d6227aa8285f7cbd5b8ec767a840b6ac42477"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
-- 
1.8.1.4


