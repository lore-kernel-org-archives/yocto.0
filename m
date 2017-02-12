Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30C7FE00A1C; Sat, 11 Feb 2017 21:27:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDCD1E00A1C
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:11 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id 68so3025498pfx.2
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Wk1M/SFEARk+N/WwZBHJ1/62LVfQgxH42KyN7W6mGys=;
	b=GhCevzYaRa2tEOi+c7bcrI/xJ4VJ24XKTi3V83K9+ITuzAVRBxIMOBC0ABxzxUWugV
	LlbNH2YUaIDNDgQodT5Iy4dSAnkeygR+7jfV8NwwaZ9bxZ2gOWFYkvtBp9WtYJOlWLxf
	4NT9P1JMoi9clUD5rJpZVm7aW3WEdq8foR1xFCWEWHUSBeiHQ24h/UHDzVGhmi8acrvd
	fNPAMSwVz4eE1fKsVejbA+e0eZrTDnQLzDaFILOmNu4t8D33xJMMT5va1dydbpr5tw7Q
	MM6DU0tVVEIHAfOldgrvvR6WGmksFtecLFxIzU4xvWZpxM/wKaD+XsnG3CyU8m4SfCcG
	nUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Wk1M/SFEARk+N/WwZBHJ1/62LVfQgxH42KyN7W6mGys=;
	b=DB48Dmc92mTNVTgbwmm2gwMMXeg3KGt7ZqymjAv6nPvkr4wAZe0rBZwqpGVbIKRqfk
	tlHdC7HDS5/+wOMiphx4/8S5ihI30CrgMyoiexQBCMv71nJS3L+ZNDCNfFa+q/d2nXih
	UWRBEhTsIID7beT0rpt83Yy6tlmZu7UL7swKJRCKc/O+l37I2eJ31q+1yYMnARMhIElj
	o1uX3qSVNO3lBDFmSy3Dd48/DROIsMPkvTUAUAHMKOAIuTJzdzVEdgDPZbdeyYxQ1wXR
	GPOolI2EE+zL06cpqfRBV+NbW945PY6VFPp3Z2/dPFOEg5TcLss+UaB4oeSvdEUVuUUh
	PJRw==
X-Gm-Message-State: AMke39kHI5B5zMFJs/OhawDfVOJFAlKN+QInH1Rq8+nF09OV+YkKIxmuCoIGoGc1Z86tcg==
X-Received: by 10.84.232.129 with SMTP id i1mr1989401plk.129.1486877231195;
	Sat, 11 Feb 2017 21:27:11 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:10 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:52 -0800
Message-Id: <20170212052655.12342-8-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 08/11] linux-raspberrypi: Add defconfig for raspberrypi3-64
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:12 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 19ebefb..cf61cce 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -18,6 +18,7 @@ PV = "${LINUX_VERSION}+git${SRCPV}"
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
+KERNEL_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
 
 # CMDLINE for raspberrypi
 CMDLINE = "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
-- 
2.11.1


