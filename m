Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA177E00924; Thu, 16 Feb 2017 10:47:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C68E008D0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:59 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 5so2658305pgj.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Wk1M/SFEARk+N/WwZBHJ1/62LVfQgxH42KyN7W6mGys=;
	b=hH8obwQ9xLL1p8ub7p9tO7l/2tccP4QWcgCcFRcylqVy7YZ58ItoHyW9ZXerhGPlMr
	rmaAzdfcgXsfMhfdNU1HnmOn+xz03Z0iubXRjwn8OjmzX0qm0z6Xp7xLn4Hkxu1PqQYR
	qV5K89ym1lNhRutFsUg8GMJttT0C15KYuikwOlTTDfev/zjOzTJ26N5w5OiVVA96kd/4
	HAVSLJsO4xmN2sXSTDoLTZqfPGPv4IRsIUdjo7KOaLNSfMHHs+voiE2a4OKVqELm5Jxh
	ovEjL8qEb/PNHYYcKROS2EVHQMpwtXLHQNRbieazXWPab9on7c9nW39ucQxXY7SqU8gr
	+lxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Wk1M/SFEARk+N/WwZBHJ1/62LVfQgxH42KyN7W6mGys=;
	b=DhGnwkNxPKmeEyy4BOXhWeA2EuNxbwSNWJF2nnj/5W1/gHGAafwpm15/7kUz9vL9qe
	5sRYEBovU8xI5w1NSRDZ+tmg5oDjs7SZfJKaZzYTgZB3vuCXjd89lWJyS8DASQiZWQ6Y
	g5w0Ag8eHxHdetviWyGisQysH3Q5M+AVroT9vthISCuIV+5oywN/yi4bhTrhHZailP3p
	MFv5CjR+rANPrStApgREPY8moQ0rRJCfFuYsYo9CoARoAAPwixvCJsGu9oPk74tDujYe
	4e+PpNiTLyNlLZc9Caiou2ijldS9C1rPizfNM9Re+R+nuVl7sXUdn+TnQ+1xWnByQdDA
	+MwQ==
X-Gm-Message-State: AMke39keoze3QoPnw+N1vRRhLTnfMrRVoo3Y1JLkp4/2j88jvE7jxJoeJ3DZr4aL96iLKA==
X-Received: by 10.99.226.83 with SMTP id y19mr4664596pgj.34.1487270819131;
	Thu, 16 Feb 2017 10:46:59 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:58 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:39 -0800
Message-Id: <20170216184645.6258-8-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 08/14] linux-raspberrypi: Add defconfig for raspberrypi3-64
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
X-List-Received-Date: Thu, 16 Feb 2017 18:47:00 -0000

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


