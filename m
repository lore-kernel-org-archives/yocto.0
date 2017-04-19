Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30D93E00AC8; Wed, 19 Apr 2017 10:02:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14443E00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 10:02:39 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id u18so4028797wrc.1
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 10:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=ZSkrL7x09ePknviFdI3dsof0gtoHWPPu2qfPgACipJ4=;
	b=b46DxgYCGldiJRib1t1HF8VxWKEWXcnqcE/s9at5vRKmCaTxAKDCMB/0vr1lXdcXQb
	Sx56h3ul5BDn1DXFy9PaN9jbfRhgQ0rRYF3gvVVjb0SRxwoURfBrcIhtN8AmPK2DmRr6
	ncQh8j/t0L7AwZZlc3yX2F/u0Beh2OdQeF02DMvhxp5JHbeR44NNE23BvGW7ixN93jQ3
	vXp0bIIeMZpPFtlFS0drtq0Pj+pAeoJ8I28SqmbRdaQ1xi4XwKaHq6+3QMM0ximSZlei
	jfo1q5tuZ9mk+q/fo6aepIn0yVRIvT5s/r/3C2K97FXAeCDrRfUmSMFmzdZgs0B7t+nm
	VUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ZSkrL7x09ePknviFdI3dsof0gtoHWPPu2qfPgACipJ4=;
	b=CFiNFXwGFVvWZ2BwLM4crBak/TlD5J1T+Qp/9pfKTETntq1OroCDdyPd2901EDzKt5
	rl4C/fCHDVDoKXUSpjIhMB3otqvJhy7Jhp0S6keXhNTvd1UZEMvPYRbwFc8I6ofa25SB
	P+LCLOFvm74+kA/jF/CXasaAz1+PTFDqD8VxStnA2JD6QlR8gDu6pdhRUCw9BUhYQazB
	y6fu8v6A8ZO0BFXOuRBeFXrjQmouamNGOvNZhgmHVeXLR+lIS4W+tHWDAiWetI0oZt5M
	PHBqkzhqcbXS1P4p46bZgDXeoRJiE7wuVSXUQqesbD7Sb6qc/mpdF0ebO2MdLNK/KlWx
	hRUQ==
X-Gm-Message-State: AN3rC/7uxrUBfbkbbwmIXmhaGRd+lD0dm99EFXEZvi0lyFXLHb/dKo2A
	o1iW33I8lYgtH2FxkLQ=
X-Received: by 10.223.136.66 with SMTP id e2mr3902571wre.14.1492621358755;
	Wed, 19 Apr 2017 10:02:38 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id u9sm20148030wme.8.2017.04.19.10.02.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Apr 2017 10:02:37 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 19 Apr 2017 18:02:32 +0100
Message-Id: <20170419170232.20677-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH 1/1] raspberrypi0-wifi.conf: Use a stand alone machine configuration
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
X-List-Received-Date: Wed, 19 Apr 2017 17:02:42 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi0-wifi.conf | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/conf/machine/raspberrypi0-wifi.conf b/conf/machine/raspberrypi0-wifi.conf
index 2b7cea4..d694d9e 100644
--- a/conf/machine/raspberrypi0-wifi.conf
+++ b/conf/machine/raspberrypi0-wifi.conf
@@ -2,10 +2,12 @@
 #@NAME: RaspberryPi Zero WiFi Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi Zero  WiFi board (https://www.raspberrypi.org/blog/raspberry-pi-zero-w-joins-family/)
 
-MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
-include conf/machine/raspberrypi.conf
+DEFAULTTUNE ?= "arm1176jzfshf"
+require conf/machine/include/tune-arm1176jzf-s.inc
+include conf/machine/include/rpi-base.inc
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
-SERIAL_CONSOLE = "115200 ttyS0"
+UBOOT_MACHINE = "rpi_config"
+SERIAL_CONSOLE ?= "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-128"
-- 
2.12.2


