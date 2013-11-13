Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f48.google.com (mail-qe0-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24378E017B4
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:42 -0800 (PST)
Received: by mail-qe0-f48.google.com with SMTP id a11so386341qen.21
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=7ECmUha+om5aYbIM8lUzN5Jxy/vaH+pCp8YldoOY7DA=;
	b=NBjpcY46CzwsppR1zdoVku5rExhNZHyICLYmJneIt34R7Ys0S5QW5zYVuE2ewI1xgI
	s1EEpNXXDFGf0P/IYA6aj+zpPZG+M+XVodjFPLXmXUYZpXyRCUJi/GgK6N4kTHzMvpIZ
	4PSkhARhwKYCHTKB6i5RyS3fUWBNphIreQHsUc1ZBEH8w4Dj8JlCeLUjnO2BZ6krcaNf
	rGYTkGgxNP9gqx70/MTFuZPTMb3vH8iiCm8Xj6OzuiYIifEq1lHejXTV++AE80Cx3Ea/
	pdj11k/KNo4LeWidA6C0ueX+jmdyQYLGu02XkJcDs20YkmC8iHOxGWKWaaaNBa8SBvtz
	Jb5w==
X-Gm-Message-State: ALoCoQmopLmxPfWIN3JsA3hcOL/yR8wNayMhyeibkN+dtJ8015rtwjni2/1KVgmvp+q5urMt6uk/
X-Received: by 10.224.40.138 with SMTP id k10mr67479577qae.67.1384359581636;
	Wed, 13 Nov 2013 08:19:41 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id p17sm77086894qak.4.2013.11.13.08.19.39
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 08:19:41 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 18:19:23 +0200
Message-Id: <1384359566-32315-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 3/6] linux-raspberrypi: Add version 3.10.18 and 3.12.0
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
X-List-Received-Date: Wed, 13 Nov 2013 16:19:43 -0000

Change-Id: Idd59fed4f2ab975c50b3727e436b4a0caeb0ab16
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb | 4 ++++
 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb  | 4 ++++
 2 files changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
new file mode 100644
index 0000000..399a978
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
@@ -0,0 +1,4 @@
+SRCREV = "ae937f99fee8a37f2ddd7270f6bcc0e497e8c903"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y"
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
new file mode 100644
index 0000000..25877fe
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
@@ -0,0 +1,4 @@
+SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y"
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


