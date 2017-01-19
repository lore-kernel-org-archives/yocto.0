Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A64FE00546; Thu, 19 Jan 2017 02:10:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D4C9E00519
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:20 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 204so3842561pge.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=eohwmzJf9S8qDZo2bpBbM6CA1jJ8r5iubN1zhZPbpH8=;
	b=mnQqJ24//fEVJetsBcosvocBVd17yTnVxFRjjhAon07BEQjm3k86S5ffoTsUXimJ+I
	GWqJR9R2gSgHTVvtNMi/aVBVQkU7tzFmFNbeDLgZcXjAMYvoNfPa84yqhRJLW2MBr7i+
	4a3Fk57X8AtgMa973de2pIQH2PblppKnTXmmXAS5E7SJAjRwLlpZnMZLbgf9LEd60ufJ
	d25HdMDDLjSWFGs9J7Ao+3qOV7dvlAtmuhbm0Q++gNZBseFEolFOBMe9xlQnqsLqOiOB
	1GIh8i0D0aX8lO4i7VBIOCkoAGtOQ3XdOKpTABf1aTkNoiyEL7tXCtB4Qyvmb2RXqZsZ
	NiwA==
X-Gm-Message-State: AIkVDXJon8JSNBxfvAj4O8mDmt7y21HM47pnBU5BlNxVIp26iBNwSoMh9tIGFzOeMac95g==
X-Received: by 10.98.158.89 with SMTP id s86mr8946882pfd.33.1484820620040;
	Thu, 19 Jan 2017 02:10:20 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	w125sm7440387pfb.8.2017.01.19.02.10.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 02:10:19 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 18:09:31 +0800
Message-Id: <1484820572-11891-7-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [PATCH 6/7] rk3288.inc: add some variables
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
X-List-Received-Date: Thu, 19 Jan 2017 10:10:21 -0000

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


