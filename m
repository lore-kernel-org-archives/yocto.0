Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 0317FE012F3
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:11:24 -0800 (PST)
Received: by mail-ea0-f178.google.com with SMTP id a14so2266804eaa.9
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:11:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=unRkG2QGEl1Il/jnod+I+IJEHeSvD/Oh+7DZUuZK3NY=;
	b=kdIAAq6qaiK4zxnMkBKeVrgySmKLZLhKPuA8uUpX6cthc4+bdIxCcl8s6mjlMikLwL
	Am9fOdpIItTs2yW9A8Mhq08BBNU1SY5eFiyBQAvYnP8EVBbi+IQQbluWYqld3mp4VpWW
	vbsEgCfCyFWHGCYkrl4GqWQVFLeowhWroJ2+MM3WqZE/FNUFhmXn4AlfIi6aSk7USG6r
	u5BhZhEFJjbsdtWevC1TTrbe+h/KoTyFZOV+lRHZAzFebsCDWlURdZfdX8bDubueF9/9
	eSEZkHW/WYuO83AJTZS7Jv7m8nqINovw6FhP9WytgUrNgMWcdGl7Z3yGP49i8a28qYrU
	Gi9Q==
X-Received: by 10.14.200.137 with SMTP id z9mr31244283een.20.1360447883417;
	Sat, 09 Feb 2013 14:11:23 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-217-124.residential.rdsnet.ro. [5.13.217.124])
	by mx.google.com with ESMTPS id z5sm16022941eep.16.2013.02.09.14.11.21
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Feb 2013 14:11:22 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 00:11:06 +0200
Message-Id: <1360447871-10982-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQnpEQLJecAvKocuE0j2oi9QRU5r0cZjKlnuIzB9/bZXPlsQ73wMQrIZuXoUATZkUTWJyv5R
Subject: [meta-raspberrypi][PATCH 2/7] rpi-default-providers: Use userland as provider for egl and gles2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2013 22:11:25 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-providers.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index 6abab60..86330e8 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -2,6 +2,6 @@
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
+PREFERRED_PROVIDER_virtual/egl ?= "userland"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-raspberrypi"
-- 
1.7.9.5


