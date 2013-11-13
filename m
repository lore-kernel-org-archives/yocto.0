Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7122E01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:45 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id 1so356803qee.23
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OTtTONzYnwP+9deeJ7WC1BB4ko9aQ9oFUdZ/6h+jzxE=;
	b=Jaj722qQOVDKOjO1SbIG/XmxoM45DPt9+3bB1VddLYI7mt71+sRJVOn+PkybLXftER
	R1vTouTBz1XVt97+DdHxehSHjxKzrYT+XYddWgJq+e1Wyh1e1OD1GMXedcQMu2i6LqYq
	5A5p41pxL9TkT7ePLBAFG3vKp3f5HNzbyvqF65IuDLA178zzVGHY21052T3f1p87VWRC
	mgLADig7tde2i6/AriqBtywFwT4b+mBAFNBPOlIkuce/8SeMICjL5WWwJrx4Pb8jKdB4
	MK3AaCyBdvllku796ZCQi3j2nOVXqFFvlFH3hrOYQzcmZtVIuJxvA0w5DGIMkMllUS/h
	rzaQ==
X-Gm-Message-State: ALoCoQnfetrOayue2vCYiRzNJ203NaRgA55mpmoQ0dKpLJMrH3sFaFNffSp200XfslK2DNMfg19Y
X-Received: by 10.224.92.81 with SMTP id q17mr68778929qam.51.1384357665035;
	Wed, 13 Nov 2013 07:47:45 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id j15sm10643621qaa.6.2013.11.13.07.47.43
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 07:47:44 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 17:47:27 +0200
Message-Id: <1384357651-26684-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/6] linux-raspberrypi: Update available versions to HEAD
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
X-List-Received-Date: Wed, 13 Nov 2013 15:47:46 -0000

Update 3.11.0 to 3.11.7 HEAD.
Update 3.6.11 to HEAD.

Change-Id: Iacd8f78b418b0bd6d8513b97ce57ce0108057850
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb | 4 ----
 recipes-kernel/linux/linux-raspberrypi_3.11.7.bb | 4 ++++
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
deleted file mode 100644
index b197289..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-SRCREV = "d7474694bdc9836af17f4b4d839509f9aad7ffa7"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y"
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
new file mode 100644
index 0000000..aa32829
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
@@ -0,0 +1,4 @@
+SRCREV = "b975d0aab6816dd1dc4ff938a0c95bc551831163"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y"
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
index 5f173f9..b73ee03 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -1,4 +1,4 @@
-SRCREV = "cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62"
+SRCREV = "10bc58289a7ebf6b1ab724636e0a16116278e339"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y"
 
 require linux-raspberrypi.inc
-- 
1.8.1.4


