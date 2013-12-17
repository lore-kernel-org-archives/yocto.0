Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f45.google.com (mail-qe0-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCDE2E007F5
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:48 -0800 (PST)
Received: by mail-qe0-f45.google.com with SMTP id 6so5354108qea.18
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ymgUAR5+MJ3xIb05NJyRzyHO3F9ryGxAwShugC0ltHk=;
	b=M5boNniXG6TERDHwm3z0Io/JKS3sntPADwvOiwD3HMa5DCPv2+Dluva7d0ThkoIW5d
	OAlc+5YokfiSQ++HFtgPhWn/WZBt45XxczGS04se8PYoeqveim7Ghwa4Dqcj9rhcAlAM
	Pnn2ZGFunAph+Y6v4W7cPCs13zDHh85OmgdHC2YsS/9LHqq8ujzh9DbxYU5Y96X/KW+7
	HpHyFIZ7dPXAQlaOm9Saxs9UHcw6ktUCUeWY/bx7of03LLl6rTGtW+jHIdA5k1zajPK4
	uXHFUoq+/06eX2wusQYcRTNoCVb+IcxUn4RopD6IP+O5Y3rZSIZCtgswLZwmXVYXSVTl
	3J+g==
X-Gm-Message-State: ALoCoQnPlXN/xnbsZjSGIBq++Bly4ezlAB8moS9rOXnKKv7ZPuFMjWDMoLKHLyJtbdFtojvuP4ZO
X-Received: by 10.224.148.9 with SMTP id n9mr45176739qav.32.1387295987870;
	Tue, 17 Dec 2013 07:59:47 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id 4sm57745643qak.11.2013.12.17.07.59.43
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Dec 2013 07:59:46 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 17:59:13 +0200
Message-Id: <1387295956-24899-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
References: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/6] linux-raspberrypi: Update v3.12.0 to v3.12.4
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
X-List-Received-Date: Tue, 17 Dec 2013 15:59:49 -0000

Change-Id: Ia2c5d0674fbd7c592aac4e347901b25919ce6dbc
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.12.4.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.4.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
deleted file mode 100644
index 3631da5..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
new file mode 100644
index 0000000..17025f2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
@@ -0,0 +1,6 @@
+SRCREV = "9fbb114990c409406ae20c56871727ff8d4fa6ca"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


