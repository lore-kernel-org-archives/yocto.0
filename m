Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC99AE0030A
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:20 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id k10so1418523eaj.15
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=UXlack95YhxqJ1oUAvZtoRfkGTi4vX50SlUpfDcaxKw=;
	b=RvlgbjVoPksEf63iBOqhGUyeITFVPgv0H/mmTnyEPFTk8ZRSqZ6wI5oQFZOID5Dw/U
	+/zcdvV04gudrz/GwCHricFbNVVe3huC+FasWkZ0GTYKbB81bALw4T+6zIvojHeiytsZ
	O9k5HvxLs2X5KFISUHSVC6e4FXrmqvAiUfroki61y6OTB+b1NzdMC1lKR9SyWK/I4R5F
	98rXNspWoTd+WXs7yMK/fkJaNI4zXo5ZdogQIVpM9g10onXvQbWTqXZ8MEf1yFmNZxVC
	qeGq5OId+E64XJv9wX8vQ06lKya9qR9iHic5bzPsN6Nyq2+ma0U92z75MvFXX4M9kx+2
	rpWA==
X-Gm-Message-State: ALoCoQnd5WZNMVM3aWlOoIU/YEH/kg3BNmqGFZ5V+ZVtYeGs5LFiwlMbDcNKjiEvyLKNnH3kJZNA
X-Received: by 10.14.126.1 with SMTP id a1mr12941567eei.81.1390647440002;
	Sat, 25 Jan 2014 02:57:20 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.18
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:19 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:56 +0200
Message-Id: <1390647421-4818-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/9] rpi-default-providers: Move PREFERRED_VERSIONs to rpi-default-versions.inc
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

Change-Id: I61c32aa23eef86cb9861776b37c4ecd8f7c8052c
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-providers.inc | 3 ---
 conf/machine/include/rpi-default-versions.inc  | 1 +
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index 65cda07..3c5b294 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -1,10 +1,7 @@
 # RaspberryPi BSP default providers
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
-PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
-
 PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
-
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index fe60791..04297ba 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,2 +1,3 @@
 # RaspberryPi BSP default versions
 
+PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
-- 
1.8.1.4


