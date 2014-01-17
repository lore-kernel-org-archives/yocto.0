Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B4DE0087C
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:55 -0800 (PST)
Received: by mail-qc0-f173.google.com with SMTP id i8so3700467qcq.32
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=A38s5y5V/3hFOAgg5UI+2MH5C+kMawe6igOybaveA4o=;
	b=TXbORj5auifRWJd1B4r6CPyuKx8Ia8RAjWvvi7E/rlWje9zlvjUtVDZCB+na4taWGD
	cwcwWtNWlAgh8VsSEslIgUTFlATl8eWm69xvjAA6qxqNLcCnkpaGiPFxUr9+sUvEGcq0
	Fkj/m/nK9ywMws4VHark3/lKQpkXHpqYK38fjRuHCRzvq5F5OQ7jWacNPe7FlrD7Ohc5
	3ZLDbA6oDZhorPyT6/O84Mmur/QpFciOzsacdWHAPY5fLzbVsTz44xC+Y0N/UpaU/eXl
	vss+/s3ooEodCuJHKxiBML21V/DZPakP5Jm5njtPetOUPBAXhdFj/FgBWQ228UBm1UmD
	ZP2Q==
X-Gm-Message-State: ALoCoQl3ECCBUcS0q1ZYbLg6vho8eo8BNDFGdCg91JL6NvRvSV4VmZUTOG3om8sU5XfWHO8Tdmue
X-Received: by 10.229.249.66 with SMTP id mj2mr4134722qcb.4.1389971814986;
	Fri, 17 Jan 2014 07:16:54 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14478940qag.15.2014.01.17.07.16.53
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 07:16:54 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 17:16:38 +0200
Message-Id: <1389971801-23724-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
References: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/5] linux-raspberrypi: Update v3.10.24 to v3.10.26
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
X-List-Received-Date: Fri, 17 Jan 2014 15:16:56 -0000

Change-Id: I1fa7211af2d0c80ed49e6b3f70565ace88088601
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.24.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.10.26.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.24.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.26.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.24.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.24.bb
deleted file mode 100644
index 2adf7aa..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.24.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "ff9f6d87957877265086ab8368bdabf27d35f491"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.26.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.26.bb
new file mode 100644
index 0000000..03f0bd0
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.26.bb
@@ -0,0 +1,6 @@
+SRCREV = "8c92f4407b5fa8b2a1c843e6c8c0ccb5c5a0b762"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


