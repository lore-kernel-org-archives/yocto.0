Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56592E0095F; Thu, 20 Apr 2017 10:18:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33B08E0092B
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 10:18:25 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o81so12050110wmb.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 10:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=1+W7dTAjABq4+jz8CpSFLa0EPUVFslMSyy8SBManhbg=;
	b=n9dtjgcYjFPPc1NpGtqhJYPWGrZ4zOT7s8hTCEgU3ycKt4HcslFjd3XzLRqFUZ0Zfl
	MURMCGjUzaUPbQBLPjAbIR/p6FZaIxuD/2EDRDyV/wjHTudv32fhLtc/IPZo9idCD6n2
	YnvpppYx36eojBf2Kl+QxQ0eKN59/zFzRL3KysWUoPqbfGfVvPnLhO931PnxmKuP0YBl
	hWZ3dWnpEkPZOkbm9mKR5P6uDAcE1o4R/4aKTnpXpYtw6IBhFrXi5fwERksDMp4U9rw+
	ACaHxjykgX6IJVxKTRbrn5WWe2zFoFTpVMKzBgF8TlXyHL++cyGY1cVBASvzbwYHApTK
	t6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1+W7dTAjABq4+jz8CpSFLa0EPUVFslMSyy8SBManhbg=;
	b=TLgsNoUdtPyenCvjokqtRDpDG4gAqJe4zRaAj14nxuOTTiTj+4xl1HtlW0QPVKlaEs
	NoS2pILMUGIVMklSc4b8BIb2RQnsqG9kIlpvccKXlNMMcG4Gfeq4Fydf5MgsrIIy+rBb
	160rxAcLQWNzzekgnT5cxtq6GrJuyCEZ9MNfJiTuCvZH+W86w7ryPtaAVF5tB0v3pfPU
	Kp7sPkMp9izCXu/28JIvXXT+M/X8GdohKAjb9S1GQLkCQ74iMaZSe+y+E5ewBtEBjp/k
	mdZvlMgJxzRSlRedzbNF7EUUU46HXBwOERn8Gq4JC4+zjMHu2YeMVfPcG0MNZ/qg411d
	ty3w==
X-Gm-Message-State: AN3rC/4vEJodbG0zREr6xKJQpSwVQeCUtHFJd49VPVGYac6fgvW1QO5O
	ZmxGRtNkJowljg==
X-Received: by 10.28.92.65 with SMTP id q62mr4491908wmb.139.1492708704944;
	Thu, 20 Apr 2017 10:18:24 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	y126sm7395309wmg.29.2017.04.20.10.18.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 10:18:24 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 20 Apr 2017 18:18:16 +0100
Message-Id: <20170420171816.23407-3-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170420171816.23407-1-andrei@gherzan.ro>
References: <20170420171816.23407-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/3] raspberrypi3.conf: Use a stand alone machine configuration
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

As well make all the variables assigned in a way that they can be
overwritten so we can give maximum flexibility to distros.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi3.conf | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1ac5928..884d875 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -2,10 +2,14 @@
 #@NAME: RaspberryPi 3 Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi 3
 
-MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
-include conf/machine/raspberrypi2.conf
+DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
+require conf/machine/include/tune-cortexa7.inc
+include conf/machine/include/rpi-base.inc
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
-SERIAL_CONSOLE = "115200 ttyS0"
+SDIMG_KERNELIMAGE ?= "kernel7.img"
+KERNEL_DEFCONFIG ?= "bcm2709_defconfig"
+UBOOT_MACHINE ?= "rpi_2_config"
+SERIAL_CONSOLE ?= "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
-- 
2.12.2


