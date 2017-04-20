Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FDF6E00A0A; Thu, 20 Apr 2017 10:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBC5E0083D
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 10:18:23 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o81so12049913wmb.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 10:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=mxoIBo2vSf6v50/1wdB1PglobQ+ofIZ6jmrz5lqjBYM=;
	b=L1z+vV5EWxdunZgjPKhv2a5eHIL2QCjVzs2n9QZvkODbe6nLVewH6++WymOOEPUF5l
	SrKLYVlLrLezQYdF42hcakDVhkIl5ZI1NBZ40dVBioXT/Zt2wQrN9A9jAB/lfs23T8Qd
	Fu7jhDfE0QvDD5krdouPyKErJHipP2OjAwaH45Eo6ytQ2/k7NYt6/TVTFe2PoCI3peI2
	JNUlIOHLO/ks+38gYK5jTRxPS0qHSWPlNdHjqi5AhA5NguaLPcb3MvWlzpdnih8Beuna
	/QrlZXItQeLv81d6bEJ6f1hWdBEw5SoGDtGkCOeNjHIlCauipAZo4VbcjAed1SWz8kZD
	Wv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mxoIBo2vSf6v50/1wdB1PglobQ+ofIZ6jmrz5lqjBYM=;
	b=pVDY/5SIdst8iaJZILAQXuQTaKw0uTuq9qpq/Byuu1m2fxKchcEVOTZNVaWBlCOjVV
	/WjrKKkGmInzvAQUYLAuuS/vC8t9pzj5H5d/hFATe1QuJd7iuNnWFjHnvH3XTsWoPwft
	nTupvF3KgAwShxYj9EoBs3jDektcBqaX2QI0bB9tJ/7/fVN184mqL7dcj3f/hQN4hI2X
	uQ1KLkUTuf61hOE4QXJ6/kCjhKsutWw1I0XXDO95WjWJdgFSwLEFvRrQMIl+jrP5uNAK
	EynVr/T/ViyYEYjCnTU4P9za37twJ8+yFM2/xZWkyCdc5ufG1U3Wh8+smj20xzwmkFaB
	8M3A==
X-Gm-Message-State: AN3rC/5MbIR+nXgVYQADDG8W9Up38TPlFZ/9snJlzslwjVc0rjrtachI
	UxcwRQLgudN+MXF7csU=
X-Received: by 10.28.40.198 with SMTP id o189mr4473779wmo.108.1492708702908;
	Thu, 20 Apr 2017 10:18:22 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	y126sm7395309wmg.29.2017.04.20.10.18.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 10:18:22 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 20 Apr 2017 18:18:14 +0100
Message-Id: <20170420171816.23407-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH 1/3] raspberrypi2.conf: Make SERIAL_CONSOLE overwritable
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
X-List-Received-Date: Thu, 20 Apr 2017 17:18:27 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi2.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 9b4c02a..a17289c 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -7,7 +7,7 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 require conf/machine/include/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
 
-SERIAL_CONSOLE = "115200 ttyAMA0"
+SERIAL_CONSOLE ?= "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_2_config"
 VC4_CMA_SIZE ?= "cma-256"
-- 
2.12.2


