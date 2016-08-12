Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C15FFE0125E; Thu, 11 Aug 2016 18:06:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9FCBE01256
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:36 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id cf3so557898pad.2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ZbnkZvfJS+tHQlIEJwnXjb/j+FRsgthk5elHwjLelM4=;
	b=jC10tJ1agUrtuBYCD7M5GV10yWup6yVCzDaAPNW8vPBl3Ift0ksT0l9QXfCpT618OT
	Vm8YxPVXRVzZs+JI3RtimeiZ56gYbB0VRHL6iWs5KeDSD5znZjLNC2CF8snhR49RWwuQ
	wj9CTNxvqlD4bxb+shYzNN7owYzFLS3oF8U0fAu7DQcdJzQ7xvOGcemyCPkh/Z7M5loA
	Alx7P9f+mH2fWt1VitlXGG8BeWSZPpDNlwizjrZr58zLkTab18zVlhLzHAo/Dg5OGJ1E
	7L9f5ebwaynKi+7r38uscpi4ZmiVhjr4rMho+1CDLl+vwxO8HOek20YVDxkx5Ym9yCAH
	uptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ZbnkZvfJS+tHQlIEJwnXjb/j+FRsgthk5elHwjLelM4=;
	b=gOQhtCkN7de2G7kD0f5ChtjHTJBWdMEF21PIZ6jNUdHHVQaxgCiMNVpIUTb4zx8M1E
	/X+Duo27VLoCCsdyMRallkSJQ3ijyd9ANeKSoE3woaKWO8GB93VSYJ6CajzpBCKQ4ItK
	Hn88eirD3YsDJzCDnUuE1Rk/qSVCPbEF99b5qqFCb/x/+u1VluxNkQRmEhaZMLS8SNcw
	THTrb1kaG26tJ0bOrmVMhbqdDQfgtoYMw1oDVxCD0O+1qxhJOWKGdee0svgmK6XXFKA4
	qEo5WcYpP5LqcfYysyxeblKfkDbrd/UjM4fkuEfv2bMUg81ROM30X2I3jHUXzaXemsAB
	u34Q==
X-Gm-Message-State: AEkoouu1uTzFnpkCpscoUBqqtnUqTGHyJP2nGJYOjXtUZYcz/iLMigF4FsHzI7W8frFGMg==
X-Received: by 10.66.144.200 with SMTP id so8mr22184647pab.94.1470963996480;
	Thu, 11 Aug 2016 18:06:36 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:35 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:06 -0700
Message-Id: <20160812010608.31182-21-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 21/23] vc4graphics: Support X11 with the VC4 driver.
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:40 -0000

From: Carlos Alberto Lopez Perez <clopez@igalia.com>

  * We need to use the X11 modesetting driver with VC4.

  * We need to build at least the mesa swrast DRI driver.
   (its already the default so don't overwrite it to empty)

Signed-off-by: Carlos Alberto Lopez Perez <clopez@igalia.com>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-base.inc     | 2 +-
 recipes-graphics/mesa/mesa_%.bbappend | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index aabc131..69774f4 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -12,7 +12,7 @@ XSERVER = " \
     xf86-input-evdev \
     xf86-input-mouse \
     xf86-input-keyboard \
-    xf86-video-fbdev \
+    ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xf86-video-modesetting", "xf86-video-fbdev", d)} \
     "
 
 # Really supported starting from linux-raspberrypi 3.18.y only
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index b182388..9c5df99 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,4 +1,2 @@
 PACKAGECONFIG_append_rpi = " gallium"
 GALLIUMDRIVERS_rpi = "vc4"
-DRIDRIVERS_rpi = ""
-
-- 
2.9.2


