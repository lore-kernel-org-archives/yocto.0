Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4039.1580180867442095726
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 19:07:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=Fu/7CRfO;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpewhacker@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99EB9E013EF; Mon, 27 Jan 2020 19:07:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32C9AE013EF
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 19:07:46 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id d15so12610518iog.3
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 19:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1N97bPPTahKOVaDrgBqx57bXLCTV6Ep2g99xpDsMk2g=;
        b=Fu/7CRfO7A/u53s5jxzxkjPASFfekTzYPxUW7cXuV2O3v8UHMbEeJQkHbzUiRF8VPH
         mOGNeana+5+LGlz15yT+XkAz4IlsSUoLrDIaIcFfqWQdhLxqW4HeY4UHugt2i2BqDjdT
         2vY00Xgra4NNBL1FuZvJD51wjFkVjRH7WsLS/OhDuIxwPf1ODsqqlL7ZLaw4+duBbVd2
         NKWRvtykWCREefj0/8OrQRWG+21qDWqatf1cysMWfAYDkHxYbvZ+GqoT884cuDQCSLdk
         krsKvIoSgTmvYGI4DC2sxY3sS+2rrM+tFQzMdh+MLyqs+CH9vNrHKEgncvfEVIsslDiR
         FP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1N97bPPTahKOVaDrgBqx57bXLCTV6Ep2g99xpDsMk2g=;
        b=OY8xi2FpSg0Y8GtDnPXNpY9hy1oO8hZxy7qgaG77xJ6tDMl7uTpp/Lp9rubBoKiHnW
         Qv+shG2G1su1viVk2LF8YG7pIBqrZOGDUJMUoTWXWFxUUpyZ9B7xtqQpCGNVr1jjQFGQ
         jZ4cUXuW4OPggkwoAo4CbLfHGFY+inslP/wVD4N9CG/SNgC9gy5+MYbqKttKHC0g9pcs
         6cMGPY+zSkiwSK1zxwjJE48wTsizBXe/1NrcWRdJ4SZ/T4cK3Fzt6E4RoGbKG1SynMYU
         Zk6lEurtZZ1Hly3dYHk35LwULfAY+1Yof6OLXu/uhmsXuNKdXAABc9QbZtel3rRV+7I2
         n9mA==
X-Gm-Message-State: APjAAAW8CQKBHVOnuvzNHgOcn2iGqaxzx9IP4/Suvp+GY5ovZSdI6nEp
	zy+I9vZlNj19Y9X2cyR3kY/Id96ZzpY=
X-Google-Smtp-Source: APXvYqxgUUspgY4GtwJeqFpbyd0SIAyNKTetNK0+48C3rnYYL6lqX6jRxAZpanOwFIsX2yC17ujwhw==
X-Received: by 2002:a02:c558:: with SMTP id g24mr15923122jaj.81.1580180865389;
        Mon, 27 Jan 2020 19:07:45 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id l24sm3923669iol.74.2020.01.27.19.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 19:07:44 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] rock-pi-4: Fix description
Date: Mon, 27 Jan 2020 21:07:33 -0600
Message-Id: <20200128030733.939917-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The Rock Pi 4 is based on a RK3399, not a RK3288

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/rock-pi-4.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/rock-pi-4.conf b/conf/machine/rock-pi-4.conf
index 4cbfc3f..4a0671c 100644
--- a/conf/machine/rock-pi-4.conf
+++ b/conf/machine/rock-pi-4.conf
@@ -2,7 +2,7 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
=20
 #@TYPE: Machine
-#@NAME: Rock Pi 4 RK3288
+#@NAME: Rock Pi 4 RK3399
 #@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockch=
ip RK3399 Processor.
=20
 require conf/machine/include/rk3399.inc
--=20
2.24.1

