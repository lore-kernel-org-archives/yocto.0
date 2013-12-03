Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE259E0071A
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 13:21:05 -0800 (PST)
Received: by mail-ea0-f182.google.com with SMTP id o10so13702356eaj.13
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 13:21:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=QBPrzVobw2UAyeC7/p2Et3Kboqz7gIUTNNB8bQtnH1M=;
	b=U8/h4eLO/aeaZnx2P55JH4jxsPMExWoMTCxVXYWZBFu13gpqFcuT/K6TUH+U95HZ+a
	6zjtEZcYFbKo0K8qjaCR//PoLDIs4uUqN42hiiuU40nMSL7bAdPdQ1M2D09whw8iUuOv
	GYwBoyiAfCeKv9yMf/SrC35HpVTPrix2RE7Hk0COlIkGdBJbml5WPLn9xohb4BrjmS+a
	PRTFwZa6J7ZA61uKLfKMiWAuZ3VgUO5LSWwuD4ir2Rpr3XD+kvL3HgOVabadadcnJm/Q
	WEA/85ELMydmZE4gCs+BfYilb25DQFgj6VfULwJWhCNwPMOEc9dKcik5LPwcXxDyfZdV
	MM7w==
X-Gm-Message-State: ALoCoQki86TnpThMZ5iGAFfMb+A9pmed6j8Tc+VIKln3Yc+p1C71ICxpFWeTW0Vpz+/xy/G/Y9es
X-Received: by 10.14.194.195 with SMTP id m43mr72919974een.13.1386105664559;
	Tue, 03 Dec 2013 13:21:04 -0800 (PST)
Received: from localhost.localdomain (5-13-147-220.residential.rdsnet.ro.
	[5.13.147.220]) by mx.google.com with ESMTPSA id
	b41sm63491633eef.16.2013.12.03.13.21.03 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Dec 2013 13:21:04 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue,  3 Dec 2013 23:20:57 +0200
Message-Id: <1386105657-4166-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_3.10.18: Fix commit SHA
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
X-List-Received-Date: Tue, 03 Dec 2013 21:21:10 -0000

The remote SHA used is no longer available in github. Move to a
usable one.

Fixies this build error:
fatal: reference is not a tree: ae937f99fee8a37f2ddd7270f6bcc0e497e8c903
on raspberry 3.10 kernel:
raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.10.18+gitae937f99fee8a37f2ddd7270f6bcc0e497e8c903-r0

More info: https://trello.com/c/tQ7l8ftd

Change-Id: I9fcc571622cbe4adb8ed99b11e5d6889e791d555
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
index 84d6fce..83bf253 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
@@ -1,4 +1,4 @@
-SRCREV = "ae937f99fee8a37f2ddd7270f6bcc0e497e8c903"
+SRCREV = "b49aafd02fa7572d387acd34550beea5b4c3d239"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.8.1.4


