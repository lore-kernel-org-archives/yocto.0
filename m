Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DDDBE00C3D; Wed,  9 Mar 2016 06:15:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D85E00C38
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 06:15:22 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id 1so10300399wmg.2
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 06:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=y8mzW6N+ufsGFJZmQXVJlbl5aUVYFEa84eCXJd8Ot90=;
	b=c8HHrhdxk11fgv4aeQQ3j4XgvEewqA48q0aYd/UwpP7D+N6zdQjB3Mji+1MHug67Er
	6dVpDYzKygPHPfE1Vy1rVAVkqLLaZyGukVokmrYfuMHtOEVYnPrLn+ZeIKKkgM2eLT88
	nbb4wzV5XLbCeOaT8CcuDIn5mBPmN9GDkmnWKFjxkBJpLo8DUH9AYr2T50Kj24Ges8s3
	AVC2mVVPX7eVf+xGY8yKo6GUmCQt+bODTUtfw0fI/blpCepNDfv9de2bREoqdS1oQ45p
	wq4Dma0FnIzVlLCuK9fYrSDzASljcXivr+d8b4MCq59RvBbpMN0fok4jJvQ3yUfyF44S
	WLMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=y8mzW6N+ufsGFJZmQXVJlbl5aUVYFEa84eCXJd8Ot90=;
	b=VTiGd6Ycqq2dnrHQX/OZnG7zQpebQLwmmIPnhNBBPzlCsB3xKQ8Jkel2UBb8IF+2pG
	fNgRMZwp+wxDYDufFGJL/6JpluWArC5jwgxZe44HJby4TbvTEgYlca1jT5xcl3ebgo9x
	ffnhzDhdPaUkdbzZvc2ZGtmCq1q1xk0dEYenxal+0T3WAM0keriYkUO9a52qELl/cqWA
	ummqLF2tQaNFTBYL5JrAMStYe1rbXeVxWvsmqlGHWeZ9RX/M5AWSDCqA1RxvJDuusIId
	qG0FGwmeQoJfy7fPpJl0XPs04LVMbyBkrCkAXvOtIrm3h47R3OV+zM4kj24LzpjVcAYW
	9hRA==
X-Gm-Message-State: AD7BkJJsEvmbyAVaCM9Yl/NDan4iw+br0KlgbcNPTPQrOSILmOxJLu1WykNDCedCkF4PvA==
X-Received: by 10.28.107.9 with SMTP id g9mr4793294wmc.34.1457532921464;
	Wed, 09 Mar 2016 06:15:21 -0800 (PST)
Received: from localhost.localdomain ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id
	e19sm24214662wmd.1.2016.03.09.06.15.20
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Wed, 09 Mar 2016 06:15:21 -0800 (PST)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  9 Mar 2016 16:15:04 +0200
Message-Id: <1457532907-49811-3-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.3.2 (Apple Git-55)
In-Reply-To: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/6] bcm2835-bootfiles: Update LICENCE md5 due to firmware revision update
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
X-List-Received-Date: Wed, 09 Mar 2016 14:15:27 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-bsp/bootfiles/bcm2835-bootfiles.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/bootfiles/bcm2835-bootfiles.bb b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
index 0665944..b279e15 100644
--- a/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
+++ b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Closed source binary files to help boot the ARM on the BCM2835."
 LICENSE = "Proprietary"

-LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=e86e693d19572ee64cc8b17fb062faa9"
+LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=4a4d169737c0786fb9482bb6d30401d1"

 inherit deploy

--
2.1.4


