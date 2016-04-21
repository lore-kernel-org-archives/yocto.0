Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69267E00E22; Thu, 21 Apr 2016 12:42:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC42E00D67
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:42:48 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id l6so24083282wml.3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yGmnrZfFRPQBO2EaqyTZgEcwKsDl9+GCAO3InSvUx/s=;
	b=Ku9YPqtFDLr61x50+zHG3zTSJBqT1WDmwIeT7Xoq04WPROIbJJJGn+1yxRzhTOv+Ax
	eem+3VXsC1nJYyPLs4gEid7iDbJsbsDsqu1umqkfOQ2Nj0zU1yZ3JV+k1yUPiY5lAPkA
	ZOmjeVjBweeHW11K6X1TaNLDB77OMPhq1kWhx96fmIYTyy1re/nOm448Z4Mn1lMIkCyJ
	7ej8dh3nLDJS1bPvC3uLotfzjqD2C9+BaS3lN8SWiqv2PyuP3RY7AW/kNnjJ5pXRbu46
	BrOg194TkhJHjKsgizLXuRfEgUdXiukYyIt7YpiXUwlo9D4GsB313UXtGaVPQ8ZMpvr2
	A1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yGmnrZfFRPQBO2EaqyTZgEcwKsDl9+GCAO3InSvUx/s=;
	b=ORN4e6M4THLC1mHvuWzLdDP9O4UTBHLm+yzMunxsP8aoQtxPv9B/2SgSVltidqv4sB
	wrlArk2W3mSaSYucuv0E8CgLCa8ZH21LaE3rMKkFkty/FGXHWCTHxQ2mXqCGwll68b8y
	KLUaWuxBBnwCGxT+cFLLsBfB1Gx0+4gaS+u8Q+QlN0tbM7CJY1fpwZz+FdL7obwzUiqT
	aiWQ27w+/jKmYVaAzxBB9eKH5NI90aTvudL+aRTTK6FVbqwwrTp8/cuoTK1CBIQpidFq
	oZUC4aKa+3J7kpJyP61V/F23qHei/HiOE3I/JTnCFJEHhiZOmRR/kIE+b4Y5VqTMz7Wd
	yeBw==
X-Gm-Message-State: AOPr4FXyUvrlof5h4yKnE//5NXTDVNUpo5hMHhMGRV9tUipUxxjW3VFCZq1wRoFfE+7IZw==
X-Received: by 10.28.4.194 with SMTP id 185mr16066839wme.11.1461267767722;
	Thu, 21 Apr 2016 12:42:47 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	u79sm16375815wmu.8.2016.04.21.12.42.46
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 12:42:46 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 20:42:37 +0100
Message-Id: <1461267759-10268-2-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461267759-10268-1-git-send-email-theodor@gherzan.ro>
References: <1461267759-10268-1-git-send-email-theodor@gherzan.ro>
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
X-List-Received-Date: Thu, 21 Apr 2016 19:42:51 -0000

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


