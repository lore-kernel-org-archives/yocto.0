Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38ED5E007B5; Mon, 17 Apr 2017 05:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF3AE00524
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:18 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id d79so8692716wmi.2
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CwCgBY0qxbjJf1ISkzxp4HFtvpqW/vKLlE2DBmrQHkc=;
	b=D6zCq7swIHsaTj5a4e9hvvzNAZhYs5yb981fXGZjmAiKNqHmx7XcPWTT14wQSmg25l
	1vUkVMz6byrZvz5x8nyAhQG8GLrTyt0KY6Nv0wWFGPU6xJcp24X+OBJEV2t2HGVHK8LX
	x5M8QO4YpywgyC3FxXUJgaVcNDEuxGHr4LicWIjVNCVMyMHqyeQqnEdnbKKaZD8PkIBd
	gVGp5LiR7ZwF0NLjrQAxeEeIWEwZtZZPbld6XrKnYu/Jj705//TCvoqW2Bouu7Kz0Hig
	nKhSTOQSCQpUNZyQwZzXJr4UmlE2AjpMzXQf5gtY6EsWkFDcuzJKlstSa6GFwOxngkgU
	EPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CwCgBY0qxbjJf1ISkzxp4HFtvpqW/vKLlE2DBmrQHkc=;
	b=IMfOhqOO2/YivAAjbOIuC9muLJuTGClGQAL0SBsssZGdJMxP8+vRrBNR4WYJ5+IEV4
	m0pZRMFAa2FwKVx1id9E6TsG+uLIr57OjRebBe8Wa81mh2ru66r8p7Z5kEtaSOeI5640
	RGDsHiNP5XBdAP5rcwEI26Sl01b0bxT+UbVdWADmjg9nmlQywyGlK7URKuO61tBowHKp
	OPewikFENocRC065RrGupP3YLHwSawhXzmG3OgVJMNoTjyofuBm9mTAKPsNH6W6P/W9L
	+QMev30i3wZc6BTdNOc49z3mzMmDYcQrenjxgYMR76Gya7RvzYse338QiyNN5MkhkDvB
	Mjqw==
X-Gm-Message-State: AN3rC/4A9iScewyp10uJLCxiWIYE7pZ0bxuq6oAHbU2LMTjLIwddgsVp
	PShKGatwvp+L7w==
X-Received: by 10.28.47.205 with SMTP id v196mr9340373wmv.20.1492432637364;
	Mon, 17 Apr 2017 05:37:17 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id d23sm8194524wra.6.2017.04.17.05.37.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Apr 2017 05:37:16 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 13:37:08 +0100
Message-Id: <20170417123710.6374-5-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170417123710.6374-1-andrei@gherzan.ro>
References: <20170417123710.6374-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 5/7] rpi-base.inc: Include dtb for RPI0 WiFi
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
X-List-Received-Date: Mon, 17 Apr 2017 12:37:20 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index e069e70..dc98099 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -14,6 +14,7 @@ XSERVER = " \
     "
 
 KERNEL_DEVICETREE ?= " \
+    bcm2708-rpi-0-w.dtb \
     bcm2708-rpi-b.dtb \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
-- 
2.12.2


