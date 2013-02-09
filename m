Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F2D64E00736
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:11:23 -0800 (PST)
Received: by mail-ea0-f180.google.com with SMTP id c1so2052177eaa.11
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:11:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=rGm82N1N15xCkLl+RGBhpbm2OqzPWrmmkWzAGBrLN08=;
	b=D2SAO/zNXWnxoXqGTN3GPIuhPnhomMu+LrQUew5r3mrdvU1xuzi+yF3fEB/6cUoznC
	3paLy8thQ7eAt20mECE+YRvwzJWN1D8sIs4jaSInY5or2f49bjzh8xI3sLqlp0aSEtlm
	/kGPVACz+3PGq4ct6T36UlPMqbQhjQF5iNjG1R/pLeGwDkDytEIWf59UpXzTBp5og4jG
	IJXnLbB+UypWwSPP3m6PXhzGErjI8ay/Zk86OxEWkndsvor4vKyI832s8Lkbm9kRfsDt
	0ozliHfDpbYBR+B+/YYBtluZCynuct35EjfFzcrNdgMkDpdB/5AIkfTenYB8fWlQmjeG
	FvXg==
X-Received: by 10.14.183.67 with SMTP id p43mr31400801eem.10.1360447881784;
	Sat, 09 Feb 2013 14:11:21 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-217-124.residential.rdsnet.ro. [5.13.217.124])
	by mx.google.com with ESMTPS id z5sm16022941eep.16.2013.02.09.14.11.19
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Feb 2013 14:11:20 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 00:11:05 +0200
Message-Id: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQkxoaceAJYhExr1Gjbv8pp76texYYZqIu2JGhdNIHbHIQcDLwJri8mk636trL9eipDrYBJ2
Subject: [meta-raspberrypi][PATCH 1/7] rpi-default-providers: Remove virtual/libgl provider
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
X-List-Received-Date: Sat, 09 Feb 2013 22:11:24 -0000

There are no libgl binary shipped in raspberrypi firmware repo.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-providers.inc |    1 -
 1 file changed, 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index ce963b3..6abab60 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -4,5 +4,4 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
-PREFERRED_PROVIDER_virtual/libgl ?= "vc-graphics-hardfp"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-raspberrypi"
-- 
1.7.9.5


