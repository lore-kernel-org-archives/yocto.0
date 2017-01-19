Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19A29E00A5C; Thu, 19 Jan 2017 06:05:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C075AE00A51
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:24 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id e4so3436549pfg.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=eohwmzJf9S8qDZo2bpBbM6CA1jJ8r5iubN1zhZPbpH8=;
	b=i0DCKP/12SZaGD8Fj9xAen542MDUy8j5berC7h9skrLB9x9qLml0Cm/si5Z1m1uVX7
	jQrbHBE66jwq1u0QzQJZLUanA7VAmESK7TVxC/+yxuCOX+eLARwpCvK9OZ4IRwCthwqu
	A+BeEVDm2z8Z1yfEgcW1drLrznQpMacMoqCo57ZqdpvYoAlDdZzpiSD8iGZB75Py1S5L
	qrvhWptHK2yQLmws3yw1ZKkavC2cCttPmEuQqPdAfYKDi+KG2+G2vUUcEAFMq2SQ1qvm
	mVS9iRXSdUsMw7ZeUn6sIN120BnfxWZH1L5ad38FlUJXDdAKtRTARpJ8okUe/NpNKkI1
	6smw==
X-Gm-Message-State: AIkVDXIw/Ua6Ckz5Hj5H5fU+Y2HLXjnGsv4vz0speu4rJKQY319D1ASBkgYJHMYAtw7u0w==
X-Received: by 10.84.141.164 with SMTP id 33mr13512233plv.86.1484834724534;
	Thu, 19 Jan 2017 06:05:24 -0800 (PST)
Received: from localhost.localdomain ([27.155.138.228])
	by smtp.gmail.com with ESMTPSA id
	u78sm9259496pfa.53.2017.01.19.06.05.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 06:05:23 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 22:04:46 +0800
Message-Id: <1484834687-15746-7-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [meta-rockchip][PATCH 6/7] rk3288.inc: add some variables
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
X-List-Received-Date: Thu, 19 Jan 2017 14:05:25 -0000

change tune to cortexa17hf-neon:
Using the soft floating point abi is incompatible with some binary libaries.

Set preferred mali version to t76x.

Add APPEND which will be used in extlinux.conf.

Add SOC_FAMILY to help add chip specific changes.

Add SPL_BINARY to support build u-boot spl

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 conf/machine/include/rk3288.inc | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index e6c19a2..9e7804a 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -1,10 +1,18 @@
 # Copyright (C) 2015 Romain Perier
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+SOC_FAMILY  = "rk3288"
+
 require conf/machine/include/tune-cortexa17.inc
+require conf/machine/include/soc-family.inc
 
-DEFAULTTUNE="cortexa17-neon"
+DEFAULTTUNE="cortexa17hf-neon"
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
+SPL_BINARY = "u-boot-spl-dtb.bin"
 KERNEL_IMAGETYPE = "zImage"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
+
+PREFERRED_VERSION_mali-userspace = "t76x"
+
+APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
-- 
2.7.4


