Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDB8CE00E0E; Thu, 21 Apr 2016 12:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A19BCE00D67
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:19 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id l6so24012980wml.3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yGmnrZfFRPQBO2EaqyTZgEcwKsDl9+GCAO3InSvUx/s=;
	b=yHV6h576LB+tKxOEDPP2F1SpjHfg1DA7MVFm/ufbJ5gIQqfWLoaDPKuT7SZGL6MwX/
	UjLOGeRiJ6rw7ErUIXQtbJM8kgSnzxVbdUrfjD0Jdbp+5s1DvzVt1mmy5pzuM9qKfM3d
	GBj72OjvsvWtvsNbekafhwNfjFE0Z2nsxl5KwYAKeS7CH77cPTkvxWg+YWY+rcmFd/V1
	XWJ6qWbDvn36OKbE0t+4xyng1B1S6z5P7xkT3MRaNSswWjvrNhRq10O623Z4E+nnHtr0
	FzBp9hB48CsOrKDuBuGPcfERsRBAuKhsbgAZo1H4qic0cNj6YtnlkyO1Ju47ylUbbZru
	rZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yGmnrZfFRPQBO2EaqyTZgEcwKsDl9+GCAO3InSvUx/s=;
	b=f3rKNnqnkJJZaRujPOSHFOAABUz1DWqasVKwkDGDP8Cl49FUUV4MOwDgey6yJZ5Os2
	Li2c1BuG5npAnu+LlPYxS5WxL49C+Gi39tYa5/5icMFCdnO8OEsmae1bCJuwo0CAhNsR
	ggaScyEBt9q/mx5mXT0cpk/9Rl3RGhFI+0DJtL4MRh3322ADOUgq0JGLXqsKwr1YFUjS
	bT8P0xOdk7ciuJg6gpBLKxOZSyRWoLVzbPhd+gFiogLQt0j1R+S3BS6g2jFTj/3Vskbb
	D2ZmPxunAxMyNsWI7IjB0vqK4JJPYSbvl2u6ESxRoQziAUC+/HIuY7m9VXcU8RXPLzDS
	A1Xg==
X-Gm-Message-State: AOPr4FXO5SUvPJyr3WkhWGPvRPfUsd3MNQgUrk6Ze0NZZQjUwQDK0K2H9/iL184h7bfVjQ==
X-Received: by 10.28.182.195 with SMTP id g186mr16436242wmf.72.1461267077755; 
	Thu, 21 Apr 2016 12:31:17 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id m14sm4744524wmc.4.2016.04.21.12.31.16
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 12:31:16 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 20:31:07 +0100
Message-Id: <1461267069-9448-2-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461267069-9448-1-git-send-email-theodor@gherzan.ro>
References: <1461267069-9448-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/4] rpi-config: Add UART enabler
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
X-List-Received-Date: Thu, 21 Apr 2016 19:31:22 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 2941982..0fbb17e 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -95,6 +95,11 @@ do_deploy() {
     if [ "${PITFT28r}" = "1" ]; then
         echo "# Enable PITFT28r display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "dtoverlay=pitft28-resistive,rotate=90,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+
+    # UART support
+    if [ "${ENABLE_UART}" = "1" ]; then
+        echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
 }
 
-- 
2.1.4


