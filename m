Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C3CE00288
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:19 -0800 (PST)
Received: by mail-ee0-f54.google.com with SMTP id e53so1394080eek.27
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ucDkrWid7lraMI8nf8xwWuGOk2rXgd3ehBekzXjoGng=;
	b=XqBt8qK40oMI2r4U2ryvydMH1nQ9L7dkrrciFAsuk3ttnZix1ShzdY1IKqLPLeMiqy
	o3eN4rSC0Tdm+lhbZtLDzab+jGn+WDa2a7l1Mf04K0sT7mQboL7IIhP3PS+/krKgZFiH
	c6WpBF4TCl7DVuCQckE8M2KboDVGz3DQi65YalM3j4+Pk3no4c0Yi/VTjXLfai6illON
	Eg1umShhmDEyV7WLs3NxzGC4Y9/FLetZgz0dckq+yf4ASMrHtx0BhOjQHpDVyADmgtbQ
	0S1V+iVIaXKMD4ZCp8qsYTkgKv0FnYCABXnVHVP8ZrQIczhA7IoVYJAyt8j6Lho6D4hZ
	rgbg==
X-Gm-Message-State: ALoCoQkwfVEc9A1fwIxoTkPlRWA0x9m/4Jhj7fcRuXr6NM+bXep8Hiyaacki7O6CnWhrC2zI69DE
X-Received: by 10.15.54.72 with SMTP id s48mr16640738eew.3.1390647438801;
	Sat, 25 Jan 2014 02:57:18 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.17
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:18 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:55 +0200
Message-Id: <1390647421-4818-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/9] rpi-default-providers: Use u-boot-rpi as u-boot provider
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:21 -0000

Change-Id: Ic537cada66ff09cde592da977a109415e05cb19c
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-providers.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index f86aab4..65cda07 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -1,9 +1,10 @@
 # RaspberryPi BSP default providers
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
-# The default kernel version is the same as used by Raspbian
 PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
 
+PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
+
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
-- 
1.8.1.4


