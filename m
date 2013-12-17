Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FE8DE007F4
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:42 -0800 (PST)
Received: by mail-qe0-f47.google.com with SMTP id t7so5419537qeb.34
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=TLLqArKGhbIIV/RIkca1iSWuDlq+bIe63b5q48vyt74=;
	b=FxZLAeUfirgjKDIAEVnSHHktdslyGwlF+k7n+H+psEyXnZD4Q3+dqM1dTEjTbl67lL
	X212l5t52VXh4PHqrmq/qCCLZljxMSWmBGmgDJ2vmabOCOSUq7jhau24U5q2N0+2r/dg
	93OWK4aTlQqUdcgNwZcUDlK7flLzomyvQTP3bCKTi6PXfPSudLL9HdbZHG3XnBgRrUxx
	U7dwh8/PHaS+BScfqaemrTNSSlBC+Y4pS5GgC7twZXtm9kmYxA0TS5u3K56ElhyRXrbV
	wM7Nx/C+8lpm3mHAoyHWql/jiwJemq8qHsZZW2BcRhIAiei4i3i/XUZlRXH/Zp3x2onv
	TUOA==
X-Gm-Message-State: ALoCoQkPFiBnquzPn45po7vOEF5yS241KU5IoIMzi02GjApVazCcZHMMowhALEL9GFO9047mNrHV
X-Received: by 10.49.48.69 with SMTP id j5mr44142951qen.71.1387295981697;
	Tue, 17 Dec 2013 07:59:41 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id 4sm57745643qak.11.2013.12.17.07.59.35
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Dec 2013 07:59:40 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 17:59:12 +0200
Message-Id: <1387295956-24899-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
References: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/6] linux-raspberrypi: Update v3.11.7 to v3.11.10
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
X-List-Received-Date: Tue, 17 Dec 2013 15:59:44 -0000

Change-Id: I8ba4b853a9e3f07517c401c9a421c65c53c25977
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.11.10.bb | 6 ++++++
 recipes-kernel/linux/linux-raspberrypi_3.11.7.bb  | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
new file mode 100644
index 0000000..d3fa310
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
@@ -0,0 +1,6 @@
+SRCREV = "639f74acc37561caa67abeb9fb61adc7e6a49aef"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
deleted file mode 100644
index 68c890c..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "b975d0aab6816dd1dc4ff938a0c95bc551831163"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
-- 
1.8.1.4


