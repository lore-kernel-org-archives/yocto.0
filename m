Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7368EE006D8; Thu, 16 Feb 2017 10:46:56 -0800 (PST)
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F59E004A0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:53 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 13so1720068pgd.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Emybrd22u6WrNd6aaxB5wU0cE8WDbYM81BuQYR6QioM=;
	b=klYfjWcpn3/WGPpV5S06LhjpVXECMDhE8nkYgB6Pag//eigd4qipujxQKfRbmKPQY+
	ujKLIOlNq9giEUpjzMu+Vj4ztE6dZrdhPk+qKoROtt6F3tq8mTqMQSHouBJq9nd9g4Qj
	d7okcSlar02iSoE7X4LYmzisbYSJvTgV701jkwkEx5G67O2p4JbIjWf4EJ0uqSdM6Dy/
	htzpWgc6b0kZSIKelK+5C+vAg28Wn5olBhrK1GCQ/Ma2YSNTPuZLhotuNpnEuNzcCwf7
	Bk7NrH2rJJnV9alfLfoea1ABL/mvHav88QusPgzuauVsgLxaX92eh57SrmxIRD5MwT0R
	valA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Emybrd22u6WrNd6aaxB5wU0cE8WDbYM81BuQYR6QioM=;
	b=cDIP5G2+jNw19SIPMy+7sJPDuPxaBKR7ir5P3mjigdiAPZqj5Us4gQUyk21MsPbg21
	6n9SNmg0NHPoFnM1YvUVOgDtgf/XJp2Za52FtX1latAn0LpOMkiSX7fhzv28J1EaKWqe
	gpNn8YS/NBEAdVQ1al+QzogIvLOPNPLMRxDfy0GBQNFV+FSBETvn9pPww0QaR1W7AOp+
	ELnwjn5jT6aOfYF3mQDYoUbqUCAOiN7AMBA0ZJyNPxlfZO27D6rKwmVj4uLa7Am0k925
	CrdomGxxpTHezLCLX0maFXaasWuioZSnGxv7pcZx+6Hz1Um1UfqobxDJy9r5yl7PFD1H
	yt+g==
X-Gm-Message-State: AMke39kjjmmVVx05qKOsRW8AMtUrgYdYgFV1O38ezZtLKYilo78+O8O2OiR7UhsfpY1lhw==
X-Received: by 10.99.109.140 with SMTP id i134mr2469614pgc.11.1487270812757;
	Thu, 16 Feb 2017 10:46:52 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:52 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:32 -0800
Message-Id: <20170216184645.6258-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH V4 01/14] Add raspberrypi3-64.conf
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
X-List-Received-Date: Thu, 16 Feb 2017 18:46:56 -0000

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


