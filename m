Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35428E00CB4; Mon, 25 Apr 2016 00:06:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78D12E00C86
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:06:24 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id u206so111388464wme.1
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=PSqWXtTDFGKoIgbcZCvu3Y2VLbZgWYKEWp+ZUc6DC14=;
	b=mTBGtI1WgG/pBibYvpwnICf8QKWW3M5X5KzTnpk341sVpAp7YqFArcdr+I+/W1oYuC
	WyfbzZMcL4iWRxtmYdIeWbBIRlpRL5gY33zTES4+L2By6+g45WSDVleC67acdN2Qu11m
	N66yFlF3BrDH1gnPxtmRoVzcl2URFMWmDN2+hgJ8lw58zEmiYgsAZIyz0xcBC0v0YHo+
	7DfXHpDNjecL1CHe304q/eFJg6VBY3rM9o1CMmiZlGeOFrMWvFVqLb5Xsp8abe/wTZyc
	ZbcSlPVs4rqDLqYj3vw/5lz6QY1llFuIYjhn5M13/G3EC6MptJkPxmvR7heQy6JYVzAV
	Np1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=PSqWXtTDFGKoIgbcZCvu3Y2VLbZgWYKEWp+ZUc6DC14=;
	b=TblTCaDHK5siBErpWp/T9s12VfEpV0HuVwEo+iG/qpTVDKDes/UtwJK6s7mGyuRGT5
	qUHjjU0IvRSilWsYgArYoWVVrijpRMvgeCbJi2CI47ly6LZ2NDLluDgSkxsM7ORbhOXI
	e40BwuNHhWSewc28upcXHIvr+TPU4UrQRPMPbKX/YoKVieQcfWPR9BbZI9L0hp4aAHUP
	oONS0YmLWB4sa7k7gDRpB03S6XuybF1fqf4visScz82+xNHuRwa6npb8x2chpLlybGNT
	GujPuJIDkO+03Ccq1H3EBj1GewICcIuR5PdfmQ9BsDTy+r0kdiIENfW1XyGpaThv01t6
	SQ4Q==
X-Gm-Message-State: AOPr4FXG46+gw3MM+rOCHCPRLnaKvJZjhYo/p8ggVDsbCOp/saNQX6BRv4LepQvqZ/Cz9A==
X-Received: by 10.194.2.210 with SMTP id 18mr35393303wjw.55.1461567983906;
	Mon, 25 Apr 2016 00:06:23 -0700 (PDT)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	f135sm3858581wmf.22.2016.04.25.00.06.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 25 Apr 2016 00:06:22 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 25 Apr 2016 09:06:15 +0200
Message-Id: <1461567975-26722-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.0
Subject: [meta-raspberrypi][PATCH] rpi-base.inc: Include pi3-miniuart-bt-overlay.dtb
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
X-List-Received-Date: Mon, 25 Apr 2016 07:06:28 -0000

This is used to switch BT from ttyUSB0 to ttyS0 (miniUART).

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index f64bc9d..56ca83e 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -36,6 +36,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/rpi-ft5406-overlay.dtb \
     overlays/w1-gpio-overlay.dtb \
     overlays/w1-gpio-pullup-overlay.dtb \
+    overlays/pi3-miniuart-bt-overlay.dtb \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
-- 
2.8.0


