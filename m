Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ACF7E00E34; Thu, 21 Apr 2016 12:42:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D405E00AAF
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:42:47 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id e201so19701928wme.2
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=2oT8tD/M0UpimaqRoqLFgd/21mRG/1UWq8J3ziwmmdM=;
	b=UQBRkGC4g4k3mzP7M2ugXgOrxuQgPjshmvTcfwoFOyvWv9jYCqFnqRDhF0oIK1e6gd
	oBmf4nwX8riEiqsTCLXJ/7/SCXGmyYzwA0ZyDNqbEw21kAvNYsuTJiPT2D2lS2X9ecQN
	GLwfl/MnGuEDlLtH8XoXXptHnfz8RKonnT0TwHoI8uQ+OF4K6QUA70N92UjHB/8wVPpt
	P2QAqzHtvvyXGtwuLCW4xltSmprR/yQsE4FAonJ8Zu9aZgl/oZDeF6xzLmukQ3YEr7SW
	+Q2d7/ZRnf4UFXaPoHXAA/p0khTtNakReWTIb0XSqnDCiDhfkEDIgWU4Vb52VVTjDraD
	IMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2oT8tD/M0UpimaqRoqLFgd/21mRG/1UWq8J3ziwmmdM=;
	b=Xlmvrd+2LAss9k1C303Uc6w0AMHfK28YDQ7dudo1iLL3V1GqxZTH8Sx3cVYL5kWLZT
	3lbXEABVruVHtRDT9PUVo0aXCwielcCMeM3iBrO5vBwMIvmF4j/kX/bJplz09kIqnaTI
	4/5hnvywK6G0oe5QNdOFA62tF1pIm/FyN5KoLUHOR4tU2fW6QqNOCxaVTtdWdoMn1Mdo
	ZC/Vtj0SotSSo7VK/Gi/7KRLTN6Y+mQOOtqyaYEN4UCQW6cK9baExlICev+2d+qNhWEi
	+skZYuITetd0ylHq/dzn30zUZwk0e+cEu+SEyIxsCFP2od0We96CE+c+8xrxLx01JNFs
	LqAw==
X-Gm-Message-State: AOPr4FUK2gE2ckxujLCBCqNduq2AotvlTk5Hp7VuUIc4rNaYyp5BjkGcu1KeSsKXI0gFIw==
X-Received: by 10.194.14.130 with SMTP id p2mr17349584wjc.173.1461267766430;
	Thu, 21 Apr 2016 12:42:46 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	u79sm16375815wmu.8.2016.04.21.12.42.44
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 12:42:45 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 20:42:36 +0100
Message-Id: <1461267759-10268-1-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
Subject: [meta-raspberrypi][PATCH V2 1/4] firmware.inc: Update firmware to include various serial fixes
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
X-List-Received-Date: Thu, 21 Apr 2016 19:42:50 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index c1117d6..abc7d06 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "046effa13ebc4cc7601df4f06f4834bd0eebb0f8"
-RPIFW_DATE ?= "20160326"
+RPIFW_SRCREV ?= "c5e131971c323f5658c7c5d4b1dd105d37903a99"
+RPIFW_DATE ?= "20160303"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.1.4


