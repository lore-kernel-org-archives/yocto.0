Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 920BAE00B2E; Fri, 14 Apr 2017 13:13:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E899E00939
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:20 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x75so211759wma.1
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=M9Fw/cbzFPnbEhlyHuKuWozw4xGiKkP6uCvcDX5PUhU=;
	b=QTSBV/mq9D9G2dQPr6790O++5VwT6Tj8W/ko3toUhT3X/kZVNFGxc4W5IdggkxBRF0
	Rb4aT+eRrcYKGoKLBwI4e4xDQAPD9XERv+jgZNsMK2tAfGvNPXxPaY2PSA/ALIHgDnHi
	T6QqLTghN6c/l7DT7PoQm3J3IBJ70w4WTRR59dOUweFAyR6owHJIv0X82nkycjif/+y3
	Y2sj+zhT/kqB3QXO4DJ6J8ly6nGzGDRm/LbODCvfM7JDTO630m/MNrK2yQHoeuw44Qz4
	CrQ4YsLQacwsuTmInS7BbMmZQe/HIuvCnaj9lItpIh7EMtyH4TrutCzEHikoCJ4p4GHj
	py5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=M9Fw/cbzFPnbEhlyHuKuWozw4xGiKkP6uCvcDX5PUhU=;
	b=gzu7Q6cwhhjtTI6kiTeC1+vqiAplIkAMXYK/ZVLSwTfqo7K9TfrlWRcHOvf2Fe0sDX
	9LIFWN5By0fwzGqnDaU4+Cx+hUX7dOjPfXplSFN16gwAlT5pfpBWC5DSFhIke6ZZ7D6s
	39oUWgfeXbawa86urj4wa9BJBR79kLmr3h88O4c2T9uJssz929k5grYOPsO/SKY3qUeG
	RTIQzNopW2thScrJUTpXQjqQJWfWSJNmKXI61IYU1uWaXFAM1OzG/E6vAnmfzrrZXKRq
	lkmamwGq+C1DUFL497FVVBmbianYu5BsSkYyo5n+18KL0h16yP78waYd8gFLv+p2lRf7
	3PIg==
X-Gm-Message-State: AN3rC/6yu4O1HcDUYMTukxi7ZVO1bUm7op5cF14SzZEfReeefTgXxC0O
	ZKC+Cd2ymo47qezlgiQ=
X-Received: by 10.28.32.193 with SMTP id g184mr220633wmg.56.1492200799496;
	Fri, 14 Apr 2017 13:13:19 -0700 (PDT)
Received: from localhost.localdomain
	(host86-170-80-134.range86-170.btcentralplus.com. [86.170.80.134])
	by smtp.gmail.com with ESMTPSA id
	i144sm3983021wmf.13.2017.04.14.13.13.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 13:13:18 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 21:13:07 +0100
Message-Id: <20170414201313.3138-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.1
Subject: [meta-raspberrypi][PATCH 1/7] rpi-gpio: Update to v0.6.2
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
X-List-Received-Date: Fri, 14 Apr 2017 20:13:25 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/python/{rpi-gpio_0.6.1.bb => rpi-gpio_0.6.2.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-devtools/python/{rpi-gpio_0.6.1.bb => rpi-gpio_0.6.2.bb} (78%)

diff --git a/recipes-devtools/python/rpi-gpio_0.6.1.bb b/recipes-devtools/python/rpi-gpio_0.6.2.bb
similarity index 78%
rename from recipes-devtools/python/rpi-gpio_0.6.1.bb
rename to recipes-devtools/python/rpi-gpio_0.6.2.bb
index 89f601b..a08ea98 100644
--- a/recipes-devtools/python/rpi-gpio_0.6.1.bb
+++ b/recipes-devtools/python/rpi-gpio_0.6.2.bb
@@ -10,8 +10,8 @@ SRC_URI = "\
           http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
           file://0001-Remove-nested-functions.patch \
           "
-SRC_URI[md5sum] = "254d0443a436eb241367c487274e7197"
-SRC_URI[sha256sum] = "54e5fb06d9ea1a1389a497fb5a06dfa950c86303b0f4ba89b68c55999d1df064"
+SRC_URI[md5sum] = "9db86fd5f3bae872de9dbb068ee0b096"
+SRC_URI[sha256sum] = "82acff0ef6bbe3cdf6f4dbdd73d96add5294bb94baf7f51c1d901861af3c2392"
 
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
-- 
2.12.1


