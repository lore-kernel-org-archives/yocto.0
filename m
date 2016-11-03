Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02D0FE00BF8; Wed,  2 Nov 2016 23:27:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D62E00B9E
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 23:27:13 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i88so3863406pfk.2
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 23:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=vmJm72Rr9pwLcyTQ1T9y34rlSJ5/MeHnMFwKF0czmcM=;
	b=EqCv2HmDTp0NCKXakX12Z9iHqZ0tM4ft5jxEww9e3g8BUyfWNXmlDklzSE43NTqeVo
	zXG0UMzlPCDZDf1WiixEDzMJ1JlU4BikGSXc7l2HYTB4fLLLRPlxR/HixceE7iNvSQe0
	QnfC6XabzPlIj3aMmAV/RRKSw2xak1UO4dCvHk1GefQ3dyBmKfrJi/PgxjSzUP+m2a/j
	shHrrY/dCTnipg58l+5a1b3FLZsm8oRT6PQ3rzLABGMnk4UjlaH+QIEAzQTgl8AI87Bt
	VDunmA3CDuW/Hf0kYZ+CLicjp5MrYQLhJC+g7Rr2DuzQCKWPboM3/ALOXQ6/d1V4+iCk
	F4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=vmJm72Rr9pwLcyTQ1T9y34rlSJ5/MeHnMFwKF0czmcM=;
	b=KdQyXcWhp8dr4phNxK85gA6QGAtOAbx0GnGjbmgP1YxH/lhpph++A6MpeybVTtKbY6
	UgKtnpTP/RoukmX29AHRUuVwQvHuRqhFXb2PX9Vjxf+a1qYBV0Pv36tFH15otgEfCDkl
	f63LFLpWbAvHjeK9DzoX6F9338t8bt9Egrt6kKHqzRAD/vuZiqi7j9h6AMd3R/xnw/r5
	E1awxqw3ozC2lVfaYUYPCB+8QUa1zGPsFUzm46rDYQaqmgIvvLkgU3qFaPpNzGjp07Ag
	RNTk4J1iG2H+rqJIi8L+Nx9/hVuAFIMYcU7DZQbIrmjbENiwVu63lENeHM/pxKw+8HXW
	8yZQ==
X-Gm-Message-State: ABUngveq2Ss5vtoLinR081D9IwgW0j5UInlgBi7/MLO5PN1JkbysQsblFZuJQAl+zUj67Q==
X-Received: by 10.98.67.133 with SMTP id l5mr13964739pfi.170.1478154433028;
	Wed, 02 Nov 2016 23:27:13 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	d15sm9277898pfl.90.2016.11.02.23.27.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Nov 2016 23:27:12 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Nov 2016 23:27:06 -0700
Message-Id: <20161103062706.12667-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.2
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi_4.8.bb: Upgrade to 4.8.6
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
X-List-Received-Date: Thu, 03 Nov 2016 06:27:17 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
index 528cfef..4664249 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.8.4"
+LINUX_VERSION ?= "4.8.6"
 
-SRCREV = "d8f7c2da3d33ea4fb4f67411badad374b1160b44"
+SRCREV = "6abac13566786086cd912d87e4f1a922e2a391b2"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
 "
 require linux-raspberrypi.inc
-- 
2.10.2


