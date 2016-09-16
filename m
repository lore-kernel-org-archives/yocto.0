Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DDB3E00C98; Fri, 16 Sep 2016 09:35:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09214E00C8B
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:34:57 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id l132so3360691wmf.1
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=/XC/LC8SrOv3b/oJY8ZTYAfIOBctTcOKCj2P9ddN2kU=;
	b=XCH4BTEJ4pbPFOIAUm8b2+NAsLVbqeTi+zszWEEUgZqCbpGV/VXWA56K9fomVnbdOl
	/VytbWu0sEbzGpKIAaKwlWskRglXj+r7cM8qskXt2dBqx6C4GV6UX9dCUzb217Z9VMhA
	rWB3KmZBmwxRGbPMoQ+QAvIDZf+slpI0cjbTwu1H1HxPJKBHd99Md5sABmMGe2OqwLgD
	7rVAswpGo47dHnMnpzfWN3SIY5eZInXeFRgY2pUtmuj3Roudsy7OS6sw48+gcgnN3rLp
	7RykrtMCQMRmEfltJJorkn372WKv/TSFw5eRj3k6uuu3Ur5IP1ezhT8KdGf4TeHmRd8u
	gAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/XC/LC8SrOv3b/oJY8ZTYAfIOBctTcOKCj2P9ddN2kU=;
	b=GV6dzAarkhDOa1vDlwyhGhAaq7G4NmLwHdjrlOk0Tbpz7VgVuKQ9frdgSDv5VwZXXk
	UehrTR8qWRK5C7u5Xi5T0KV0OCAyMWwQJj5SZQSsqqNMLLTTgHiLM9fn1yvIA7Y2i5md
	cacvv/cNarAh7KVD9t2ICKbT0Scin9GTPAiwX7P2W/MJtauU/VlQfmEzYhF8Dm785A3Z
	nlWxlod+b2d+Uyp68axIAFhYldoU4Rl/i/g1qgh8lpyZawmq2rh3F6zgmdLZotDRBa1B
	koiDFsELbDgvLXui2oVq2WAzUse1xaAbKQe3biLbW3k9ZnQr+pSkf0aK0f2NggdrikyB
	gj8g==
X-Gm-Message-State: AE9vXwOAivj897H9BD9GonkbnyHrla4tRVnRGp5CPI85yGezYZjc/6bzTmQhO120Wg2ZQw==
X-Received: by 10.194.145.229 with SMTP id sx5mr13245239wjb.13.1474043696113; 
	Fri, 16 Sep 2016 09:34:56 -0700 (PDT)
Received: from resin.Hitronhub.home
	(host86-158-8-21.range86-158.btcentralplus.com. [86.158.8.21])
	by smtp.gmail.com with ESMTPSA id f8sm9122197wjh.45.2016.09.16.09.34.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Sep 2016 09:34:54 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 16 Sep 2016 17:34:35 +0100
Message-Id: <20160916163437.18455-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.9.3
Subject: [meta-raspberrypi][PATCH 1/3] wiringpi: Update to 2.32
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
X-List-Received-Date: Fri, 16 Sep 2016 16:35:01 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/wiringPi/wiringpi_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
index 9d2206b..f2cacd3 100644
--- a/recipes-devtools/wiringPi/wiringpi_git.bb
+++ b/recipes-devtools/wiringPi/wiringpi_git.bb
@@ -4,8 +4,8 @@ SECTION = "devel/libs"
 LICENSE = "LGPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING.LESSER;md5=e6a600fd5e1d9cbde2d983680233ad02"
 
-# tag 2.29
-SRCREV = "d79506694d7ba1c3da865d095238289d6175057d"
+# tag 2.32
+SRCREV = "b0a60c3302973ca1878d149d61f2f612c8f27fac"
 
 S = "${WORKDIR}/git"
 
-- 
2.9.3


