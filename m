Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C22AE00A51; Thu, 19 Jan 2017 06:05:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41483E00A4C
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:15 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id y143so3439448pfb.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=7DinBVqcyYsO+vKORlbyeMEZHSnXmrrrYRew8cYRKPQ=;
	b=PcQZhqYoXPUHffqs7oRRDEyJD4dFfYSJ6y68msLTKrq3dQ+jAtBSXp6/gE3lyKHyyj
	ciUr42xmGDzSdbbD4uL+dSW6VndmAdfjHip2HG55FuQ5/be5L9ylkH7rpExROhTUQdKn
	r9121AsWYMhPd1B+f/c2UrKR6vnmSzVBlvOyHwQRPhqXVIaiaTwEORsv2qryOUL3MAKr
	e8wdkPmM7roQSxMscIKTeUmsfUFdNSxtlY9XZ8Q1TOP3a+vIBrN4Z+Qlw5hKUsT32BD2
	WjxlBodY2Iabz/t3kYC1D0Xxmjj2KW9KKSghJ7eJFtlUrR/ROl4N9cfBlU+9f9ieze1L
	5Xwg==
X-Gm-Message-State: AIkVDXJPJ1nnydiktWfgJIBMR7fewCHq7emt/PIbLNyrnPs5ijozEA/S8/2I5L0X247I4g==
X-Received: by 10.99.253.85 with SMTP id m21mr10566918pgj.38.1484834715474;
	Thu, 19 Jan 2017 06:05:15 -0800 (PST)
Received: from localhost.localdomain ([27.155.138.228])
	by smtp.gmail.com with ESMTPSA id
	u78sm9259496pfa.53.2017.01.19.06.05.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 06:05:14 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 22:04:43 +0800
Message-Id: <1484834687-15746-4-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [meta-rockchip][PATCH 3/7] machine: firefly: use linux-rockchip by default
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
X-List-Received-Date: Thu, 19 Jan 2017 14:05:19 -0000

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


