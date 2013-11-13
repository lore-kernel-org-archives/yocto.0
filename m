Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20B46E01844
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:47 -0800 (PST)
Received: by mail-qa0-f46.google.com with SMTP id j7so3859740qaq.19
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=UYB78FwcyxPa0ZKrBu0OORSHW3ll3oTEFjG1pzDH0es=;
	b=cZP/aC5KjOUZrWiSvcehEb9bz6trHN+joF2042o55SAOEmAxUV2oonT6sLIhtAu3X4
	VKQLLhhWPqvupSEbKGPXYqbN8YR2H3GL581xcSc3pIKg74CzxcXF7Khs25Mt6DLRGfuF
	z8WPOpOwHplA6Hev4cyruKcfmURZE1M5IaEDlSURivNAwXDZfBG044LEysCp/ke0XtZF
	lqQ7aYk6cQylFl98vwkbvgFY6a8KZaHs5KThQ9KBvFSBBh+1f8k5L4mUPK8gfM6ELIAj
	t9Hb1kevxx12nC9HsU9cJw3DzCkht8haoTNKfpuBIUGCpEigKRkSK8uco7EeZUIyGhFs
	N63Q==
X-Gm-Message-State: ALoCoQnNvzeDkRlLtQB9Sd4LMOEjFHUNMillQqvLPo5uwK3WOU+Mh1JVbG8Likihh0I9+3cLQdlC
X-Received: by 10.224.172.70 with SMTP id k6mr38218937qaz.100.1384357666905;
	Wed, 13 Nov 2013 07:47:46 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id j15sm10643621qaa.6.2013.11.13.07.47.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 07:47:46 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 17:47:28 +0200
Message-Id: <1384357651-26684-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/6] linux-raspberrypi: Add version 3.10.18 and 3.12
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
X-List-Received-Date: Wed, 13 Nov 2013 15:47:48 -0000

Change-Id: Idd59fed4f2ab975c50b3727e436b4a0caeb0ab16
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb | 4 ++++
 recipes-kernel/linux/linux-raspberrypi_3.12.bb    | 4 ++++
 2 files changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.bb

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
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
new file mode 100644
index 0000000..25877fe
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
@@ -0,0 +1,4 @@
+SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y"
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


