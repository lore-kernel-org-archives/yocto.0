Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CEECE00AE4; Thu, 20 Apr 2017 04:24:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D42CE00ADD
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 04:23:59 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id u65so2476836wmu.3
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 04:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=I1+BLuPPXH58XQh0ChUtmGvWTaM2pgDOuMPCZJMm+oM=;
	b=INTGxZkJweVeWVGNTHBoSuVHt8FfdeDEZg/E0dmU+UHl86o6jjEhvY6UiDve5cvAm3
	lJiFawdzTnV8zEH2r4XjjFJ1XwcM4kZhk99T1w/F4y+AepXkpO0MyhsN240AIY4qN6Vk
	h8zlTfons7PHbnTL9Yrr0qEqwG5MgRxMtEH8MI+i0aKioYnnHpLxRvPjov5/0l5GXpwC
	Vr5U8er6bKHWPra+ICFTvclMGtLb3k4tzjqdKYXbn09cptVS59VR3U9K4S+jMCp8mA8r
	MVQPHnbRp7vHnoxqRgzP2Qja4zqBwKi6HZqQVq8tmZ5UOiF03yfJx3G5LcrWCYayA9TZ
	HNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=I1+BLuPPXH58XQh0ChUtmGvWTaM2pgDOuMPCZJMm+oM=;
	b=mzbBL41d4ytbXy5ZKGonc8RlqJvr11UuTUDYYVHKk03/Bk3DtybFKzL0lZtfUumEz2
	WrfSEzcKYAdS1kCk0+TF0e45GJIRyi3ZnIuxwmHNh3KNidzk9rtVsfW6imwBwO2jAFwG
	T6NhqDXeahDI4zyKppZ3C6UKPn73CWZ1IZ0vAuoJDHt/AnuKS8J00TPYAF/vDMAJlme2
	ec5CdVAGyOgM/YSuwz0eND/DfdJff6YF8rMT+OmAmCk45Q1MEeRHQHEj1189NZkVlkqI
	AqpK3r5+rlR+OJBUVbX+4sG9Rs5SQIVJ+th830+B0MW7PMEA8cC06HPogLtZ5npAaGyx
	990w==
X-Gm-Message-State: AN3rC/5NooTClivOLFVlZsak1f4p+zHNHX6JuNpsRMMK6JANTRiJg1l4
	T3L31+RZH71OgnRHKS4=
X-Received: by 10.28.203.132 with SMTP id b126mr2840880wmg.90.1492687438700;
	Thu, 20 Apr 2017 04:23:58 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	s27sm7182580wra.25.2017.04.20.04.23.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 04:23:58 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 20 Apr 2017 12:23:46 +0100
Message-Id: <20170420112346.28646-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH 1/1] raspberrypi.conf: Have the ability to overwrite SERIAL_CONSOLE
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
X-List-Received-Date: Thu, 20 Apr 2017 11:24:04 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index ad3b061..ddd3801 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -7,7 +7,7 @@ DEFAULTTUNE ?= "arm1176jzfshf"
 require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
 
-SERIAL_CONSOLE = "115200 ttyAMA0"
+SERIAL_CONSOLE ?= "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_config"
 VC4_CMA_SIZE_raspberrypi ?= "cma-64"
-- 
2.12.2


