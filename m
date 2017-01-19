Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC0EE00510; Thu, 19 Jan 2017 02:10:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A1BEE004E5
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:09 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id t6so3841771pgt.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=7DinBVqcyYsO+vKORlbyeMEZHSnXmrrrYRew8cYRKPQ=;
	b=IFm9Zc6nuXBDodNR/n54r5xeGp8/9f1wSxPkrajsz8X33Q9OLbTUaQIzDgly61vAWM
	Bi75n4/sAjTk87ThTGdFWFF3v8rhVwSGIAnnjMdYaR3lM1+mX6wP7ccBAL9BpUuqJkYV
	sgA7ZablWuJPf+Rp75chsogDr7N3WIJJrZ47qs2MbDKg0fExej1+9LOVTmARvzsw1GzP
	umLBW6iEx6YRM7svkRTF8+2h/fkfldWZVBPtVnMzRqrdS5wjgAeTq3mvVTCQl0XnVRy6
	dbjgYv/H33gzYdwgqetc93i2p3AMR/YNcA+KBofdYXlAr+l3SMfTy5vXAFI0LzcwvSGa
	UKwQ==
X-Gm-Message-State: AIkVDXJLu3BbW3wYoZney4jETvSdSs55D0h9z6yVzzKupUgOWbkEd/BLRapRsK29dD0goA==
X-Received: by 10.99.54.79 with SMTP id d76mr9180121pga.91.1484820608723;
	Thu, 19 Jan 2017 02:10:08 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	w125sm7440387pfb.8.2017.01.19.02.10.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 02:10:07 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 18:09:28 +0800
Message-Id: <1484820572-11891-4-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [PATCH 3/7] machine: firefly: use linux-rockchip by default
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
X-List-Received-Date: Thu, 19 Jan 2017 10:10:12 -0000

This is the kernel vendor that supports all hw components for this board,
so we use it by default.

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 conf/machine/firefly-rk3288.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 8fa005d..47e63e1 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -7,4 +7,8 @@
 #http://www.t-firefly.com/en/
 
 include conf/machine/include/rk3288.inc
+include conf/machine/include/rk-linux.inc
+
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
+
+UBOOT_MACHINE = "firefly-rk3288_defconfig"
-- 
2.7.4


