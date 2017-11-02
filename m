Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80507E00D8A; Thu,  2 Nov 2017 08:51:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53A7EE00D4A
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:51:49 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id z3so12375779wme.5
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 08:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Qh9koQQeOX9KeTrcOZTM2/R7lkG0Gwy90MBIcQL12zU=;
	b=CnuAdEUWjGx9M5MToqLMivj2T7zvnBDfirke3/4nZY/CV9Y+hGbcCNE5FqVcZ8qfPT
	UOfPKwmyCkMDs+GqbBqsx5Cmw1nu+0RkDef+zWVXH8RQj/8n/kc4WkzlVSbzQkPhlBot
	F3FwuNrv/Y/49FsCn9uik1nKto3yTieyKRGCwF6GzXDy/g85sxXftDGBDuPdjcS0/ZZ2
	HKBh9qIOVhPicGtO5VTFYgQqxrz76k5q1LRArSoVjsJYQQKEzyYg9SfAMez+o1238O5Y
	BAlUnzW1TKx9j/hJjo0ySzetAb3zOwdAvWzzoBRTtMA1NZtkq/7V88xDIbbk3azesVGD
	rQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=Qh9koQQeOX9KeTrcOZTM2/R7lkG0Gwy90MBIcQL12zU=;
	b=pkQjeaoc9ROz+21HRNrhMbLmwtCE/PzMcHFD1pbN6VVjILzua3rlI95LrIE7bZ9lSP
	Q6usxx+tHjMm1UG72Y+sEdufRPkbfSWRUJbVX7pBIVKNKfsrXQSSTaTQ6YxCHe56wI60
	Cc+HDI1Yoe2q3gUbtf+bp8mZdXybQPay/pVaudli/YhTaJldWFn6c5pOQUG3BFyoWNWU
	jxXeh4k6TMT+hpjPWfbrE3z5eU/u8JV4UIdQ3djKEtPaOi+fDg5CDqFdviMIwNktZrCK
	NrzbBHgL3xORsy2RvIHUp53lMa3NIf4GNJ/sJxLlwfsrzqEZPy9dY/LcJJjUFUvdkinN
	FQ6w==
X-Gm-Message-State: AMCzsaUf2homn4medAhNG66dfxLKpDREDnH2S9h0jYz+kMyrfp+scRex
	8oB0T5xAaTWvHAM0CVGtlWXANJfOw0M=
X-Google-Smtp-Source: ABhQp+TLq7uIL1kQZ6+Ft7L9e3l07TEGKeWM0Yetnl4F6scgmtfKqUYgutjO2fYLTCU4CWq3ISA4bQ==
X-Received: by 10.28.199.4 with SMTP id x4mr1865056wmf.124.1509637908445;
	Thu, 02 Nov 2017 08:51:48 -0700 (PDT)
Received: from localhost.localdomain
	(host86-154-149-85.range86-154.btcentralplus.com. [86.154.149.85])
	by smtp.gmail.com with ESMTPSA id 89sm1481975wri.79.2017.11.02.08.51.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Nov 2017 08:51:48 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Nov 2017 15:51:09 +0000
Message-Id: <1509637869-29982-5-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
References: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH 5/5] firmware.in: Update to 20170811
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
X-List-Received-Date: Thu, 02 Nov 2017 15:51:56 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-bsp/common/firmware.inc | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index ac2bd82..67078c1 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,9 @@
-RPIFW_DATE ?= "20170811"
+RPIFW_DATE ?= "20171029"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "afd09f9a6df14e32b6d832fd9f51d087"
-SRC_URI[sha256sum] = "a25f6281d64732892a2e838cc2346f1a88505b5c77a57a6540755362ea64043a"
-
+SRC_URI[md5sum] = "4d27c1888a7bab3097471906e7b4a319"
+SRC_URI[sha256sum] = "46ce28c8d87ef22bdcc57ac1836ca3f04d1ec6f46580ff5a30bf76b3c0822117"
 PV = "${RPIFW_DATE}"
 
-- 
2.7.4


