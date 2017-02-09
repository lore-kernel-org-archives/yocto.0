Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC17DE009F6; Wed,  8 Feb 2017 21:49:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB2F5E00939
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:22 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 204so16933328pge.2
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Emybrd22u6WrNd6aaxB5wU0cE8WDbYM81BuQYR6QioM=;
	b=f2e1zdQettJPnW2bIw4updAnadK0W6mjBndjeWkfdeohkij6acQeN326BoFWhLPOL1
	P4K/hioImFj8NYh2G7sN8zPWPBTDH+FJ/he+uGLGOb3eQXNnEcweMlCBnxWNYRWywY3j
	Yc82JPT8k5SkirVGyIF84ey3vPJ0LqeFRWXOfDbgzU2iz6L2FdS1ka3YhZ0xJ8GPoiTu
	TRG166VTcyIM/21g+eznvPRZwS+G0Zh0sfsVhreQjmhhjGfUmYa0LxG9YzFj+BHjqsUK
	vV6kjuHzZLgbhMfPuo8UfyWFQ1t2jvpTbK/EOWVDnwJ51ouPsSZDjuYjpfHCE8yVz0YZ
	hs9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Emybrd22u6WrNd6aaxB5wU0cE8WDbYM81BuQYR6QioM=;
	b=gxTMzh2oHaFnFOTQ2FrJWDmdWqtV12/XQ6F3fbDWQFAxb/jBThx7losdj/+4a1DQeN
	DxlTHRzHSiwzmmpzsmjReHZQ+KJh7EK8nFWQNOhYI1PiPlS6lzqVNBkxND3MbmppUQbG
	IY/5afroxSWlHEfAXMWUjpn73LOVkLI3/9WoIWrDaT3QcwDmqZCSenAjmv4Jd1ZsFtDc
	ar5QJlHypCuLoCM5JPYZypaX4RUivx5asEv3aQvhx/PJW9GvSNl06M2uCMmZi502nODv
	uFci8WZgHCxVZpFKxEzZ6G661NvqoF3F+dE/Lw6YreFnpGSTO59s8Z/j1aD8UE/PKWbP
	MAtA==
X-Gm-Message-State: AMke39leAAqbDuJ1fPhBKjO3+7UE7REGZJkz1L8pxbtXa7mQ2S6zPBR2OdZcrY7WMM27Lg==
X-Received: by 10.84.148.134 with SMTP id k6mr1965860pla.142.1486619362014;
	Wed, 08 Feb 2017 21:49:22 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:21 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:48:55 -0800
Message-Id: <20170209054903.31598-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH 1/9] Add raspberrypi3-64.conf
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:25 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 conf/machine/raspberrypi3-64.conf

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
new file mode 100644
index 0000000..5598e50
--- /dev/null
+++ b/conf/machine/raspberrypi3-64.conf
@@ -0,0 +1,15 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi 3 Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
+
+MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
+
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
+
+require conf/machine/include/arm/arch-armv8.inc
+include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-256"
+
+UBOOT_MACHINE = "rpi_3_config"
-- 
2.11.1


