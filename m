Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 426B2E00349
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:21 -0800 (PST)
Received: by mail-ea0-f173.google.com with SMTP id d10so1421998eaj.4
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=HNF0ybFkrPG0hYnoTYJhl4kJVLZyBUpgG8YoLt2HO0w=;
	b=HhmClNEJTk0tJVzXA0Wyhrq14ECqlluCM3PrY8kMML27O8VygW9307l0E/B4PUnWY/
	kDXHTOLbk3xD2k+SjH8FQYDQLSc/Q/wuVqiB92CYR69OCfQ+QjCvQ5euyJ/oAEsgxP2m
	hvoXoOX582a+noAq3Ne2IVN1+aBzd3YdCg+AbpBL9CmXm6YUin29eRcTzvy+z//pYeff
	f08rOFxoMnmpp9q88iWpAC5R+6Pqe35nYB8f38HCmBReQ7ju0NpBJlmKO8Ru9VfTdGGV
	JxwGyeFfmHnd2pbQ4uE9tRLya1o9RvcAezHOaQSqe+zoDJDfT+1HtDTIm5XL4Azx2YsL
	LJpQ==
X-Gm-Message-State: ALoCoQmiK1Z0an1sECIemyDKv80s1j+4yzvSopu8+LV83ZiKAJjFjFa7ptc7rr+5IB2bWsiZY1ZI
X-Received: by 10.15.48.201 with SMTP id h49mr16670735eew.43.1390647441197;
	Sat, 25 Jan 2014 02:57:21 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.20
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:20 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:57 +0200
Message-Id: <1390647421-4818-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/9] raspberrypi.conf: Let KERNEL_IMAGETYPE be modified
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:22 -0000

Change-Id: I6019c1ec77ed1ec5c00ab16cb57dd108e2bd5ba8
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index 1e619a7..1b3702f 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -22,7 +22,7 @@ XSERVER = " \
 	xf86-video-fbdev \
 "
 
-KERNEL_IMAGETYPE = "Image"
+KERNEL_IMAGETYPE ?= "Image"
 
 MACHINE_FEATURES = "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
 
-- 
1.8.1.4


