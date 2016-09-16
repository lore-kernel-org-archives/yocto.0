Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA7F9E00CA2; Fri, 16 Sep 2016 09:35:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96359E00CB0
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:35:18 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id b184so4535983wma.3
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=a9ovrsswd8+A+veZ7E1stBvYTaglalF6LmzJS9RyToo=;
	b=1RLWAh7fD152dj8c931cdtgRpRCw/b3aJ1ZlYc8O+5Fpft7iaTJJ6rFub0uKoGBCMn
	e24arF5KJbwdSioHeZmCUfUPYBx/Z1m8iQWDHxOYsEkFsWroJFXK0x/1lQJsT/os3qp7
	fTcLdCokuRuYTl4k/bhC/D/3TN9g1P6NQjxzQDyNtVVitjew2eh8/3seXNCzo27jgsJP
	cmEUtRw8gsMyN+309M6iX2Av98W3uAWLX0Qazc5QY0hbjIWP/ngRiwed/2Dsns9ttgPY
	84bMEok9rRwD39huPO2DIuZxsOkoz58yNAn0D4gFkP6VO7SigZRYkBTeKamP2Y3Ru7/J
	CZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=a9ovrsswd8+A+veZ7E1stBvYTaglalF6LmzJS9RyToo=;
	b=H+L0zuWctqXaUd35ljZFRVjnVe2ZqYseQD2jMlQFKFLpZG36Tal7yLDzcdT/HSIX3X
	1+afXAtpcL4JpeTqiu9kB4cA3nVZyFH76ZAbG/f55q/doQHeMiV0h5wkDkqCraGQqCsW
	3sPxGZ6+/waKvieVbmkYNE20bXYfp0KBsxyGPBv1vqPWn1GiuarFMqbGJ5f6cbSHpNeu
	yIlXwH+5jpPApzKn45t4jrrzP+cADPdfiS5xap7OBl53Dhg6urIHhAI2zweCZqWimRQh
	CnVd+Bb6VQ8fosoTsVG1ansR5o6kBk4TL9nyoBE1XON5ubz865BIbCDWEjtdRBEnPKQr
	qceA==
X-Gm-Message-State: AE9vXwP2FKSWz5GJLC1ONfzZID3fsJk5/gpAEsa4bH4MqT8qLPoWluxEOpEKFpGLWBRZTg==
X-Received: by 10.194.13.4 with SMTP id d4mr5962278wjc.218.1474043717491;
	Fri, 16 Sep 2016 09:35:17 -0700 (PDT)
Received: from resin.Hitronhub.home
	(host86-158-8-21.range86-158.btcentralplus.com. [86.158.8.21])
	by smtp.gmail.com with ESMTPSA id f8sm9122197wjh.45.2016.09.16.09.35.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Sep 2016 09:35:16 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 16 Sep 2016 17:34:36 +0100
Message-Id: <20160916163437.18455-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160916163437.18455-1-andrei@gherzan.ro>
References: <20160916163437.18455-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/3] wiringpi: Fix prepend space
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
X-List-Received-Date: Fri, 16 Sep 2016 16:35:21 -0000

Not having this correctly will get you into troubles like:

| gpio.c:40:23: fatal error: gertboard.h: No such file or directory
|  #include <gertboard.h>

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/wiringPi/wiringpi_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
index f2cacd3..c337b19 100644
--- a/recipes-devtools/wiringPi/wiringpi_git.bb
+++ b/recipes-devtools/wiringPi/wiringpi_git.bb
@@ -16,7 +16,7 @@ SRC_URI = "git://git.drogon.net/wiringPi \
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-CFLAGS_prepend = "-I${S}/wiringPi -I${S}/devLib"
+CFLAGS_prepend = "-I${S}/wiringPi -I${S}/devLib "
 
 EXTRA_OEMAKE += "'INCLUDE_DIR=${D}${includedir}' 'LIB_DIR=${D}${libdir}'"
 EXTRA_OEMAKE += "'DESTDIR=${D}/usr' 'PREFIX=""'"
-- 
2.9.3


