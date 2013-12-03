Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59480E00563
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 13:20:43 -0800 (PST)
Received: by mail-ea0-f178.google.com with SMTP id d10so10547958eaj.9
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 13:20:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=OlNeXfhx3RUV2CbOq3G9RK22EN/d8JgqPUJvfHXewrQ=;
	b=IzokKp1/a3eolv2TF61d0v2DISIXCZcYHTXXSYwJRgcBosm+OV30hkxv+1/YqWNwP/
	fKSqB5nfdJ+guqMvYuBs5VhF/XjMZJzhRB7Q/ClIIag2jANJrihKb2TT/egqPyHo5ffv
	06/YDPxCrJcuOKS3jNB0ApVKxjBWFLcjktEMszvNjSJybc2s8kux28l/WhIF6IPKx3OL
	OHDIEoUyhFmWp6c4EIoCEw/6OHWvzripmD6nGleIJINWq89HJ3GdKJT4KXF29F2+kC2+
	0dBXDnFgkReIYvdW+2jebf/tRgEkuvyG+HNPh39auTVQ/hcWNnd5hfU+2+R/2ZxuRvSr
	+kSg==
X-Gm-Message-State: ALoCoQnoQTmbB1ARx3tIM+6yBt/EF74pWsrQQSoLAZ9uH/t0TlobAleY7A0Zr+h9bKAZmgJdnKUr
X-Received: by 10.15.44.4 with SMTP id y4mr4425011eev.71.1386105642406;
	Tue, 03 Dec 2013 13:20:42 -0800 (PST)
Received: from localhost.localdomain (5-13-147-220.residential.rdsnet.ro.
	[5.13.147.220]) by mx.google.com with ESMTPSA id
	z42sm14694435eeo.17.2013.12.03.13.20.41 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Dec 2013 13:20:41 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue,  3 Dec 2013 23:20:35 +0200
Message-Id: <1386105635-4102-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/1] rpi-default-providers: Use jpeg as default provider
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
X-List-Received-Date: Tue, 03 Dec 2013 21:20:46 -0000

Change-Id: Ic7f1faa3ed60a3ccd1b0b08ed366cfb71df06536
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-providers.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index ffdb4f9..f86aab4 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -7,3 +7,4 @@ PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
+PREFERRED_PROVIDER_jpeg = "jpeg"
-- 
1.8.1.4


