Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B001E00A80; Tue, 18 Apr 2017 11:13:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7726DE00A80
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:30 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id q125so864245wmd.3
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=wlhkD36JTVVKdaueX7UPDIb74WsKe0bqvUoYmIOBr5E=;
	b=iDDKVubLY7QPVfsukq2MjQOKdxkSD/pvO6NJmMsoRekPXOhFVaKteTLTN6wKqyuI5W
	iuNYt09HJSd98Z/H/1BxAvW1Co+BXJ0noEh7Ko0zfe8rt6IfmUcetcagMTMEEJwkvDxo
	mF6GW6usI2etNIg8ugvYCyv4BZ7ZBuj5s5p0A5Qr/KSh3XCXiOOPW2WgwwsTQTLpzi+c
	zDDwj0tEtBIvW/WijLQ1ZVf3G3x3GApHl3+NW6pda/5JXk1RVDt9YuQ1iMwWil7SwDQs
	ikyEiJjjcsuVyCDAa4KSKrTXfmo6N/3FVpT4DVSt3fTC6hdQQB4/A0A7SafmNaMl3LB6
	caWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=wlhkD36JTVVKdaueX7UPDIb74WsKe0bqvUoYmIOBr5E=;
	b=odNT2PKYMvnV8WtIIa/8Ts3CnVSbDDSmGqP4upYP3aK/zpRkPTzEjMIMAzjfi1xtLi
	WaCbbJpnZ8zIsJCzBpgLRzfl6wseerkMFATtvnXxGBaXx1WIoASKqB4sM+WrJaGTU0gv
	iUP/ZsCGMPhGUQsmGELqW528gf8HUgouXwMhyOoZsBxqy3y+QI6XWJTPCmOp7xYsodra
	sUQtw90TD+xnNBMJaxafYcvtBOGOM7iUhLi2puuCl4rnSUZwYnCAENs7EivhUR61cXNo
	2YxTYOd1sKjJlVWkQ1qdbmNWICWm/bs5KVB3AtXc/Q+KKpkF6SfJB01DeN/vHZ573Hd4
	2Xog==
X-Gm-Message-State: AN3rC/6q3AuXERB3AltO0nlXJDrVFsDddXxjyScvLkUQyMkQP1sLYoMZ
	WKKRWv+KWJT9gj3dZtI=
X-Received: by 10.28.30.19 with SMTP id e19mr14188878wme.52.1492539209118;
	Tue, 18 Apr 2017 11:13:29 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id k4sm365104wmf.12.2017.04.18.11.13.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Apr 2017 11:13:28 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 19:13:22 +0100
Message-Id: <20170418181322.14588-3-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170418181322.14588-1-andrei@gherzan.ro>
References: <20170418181322.14588-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/3] raspberrypi*.conf: Be able to overwrite SERIAL_CONSOLE
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
X-List-Received-Date: Tue, 18 Apr 2017 18:13:32 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi.conf       | 2 +-
 conf/machine/raspberrypi0-wifi.conf | 2 +-
 conf/machine/raspberrypi0.conf      | 2 +-
 conf/machine/raspberrypi2.conf      | 2 +-
 conf/machine/raspberrypi3.conf      | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index ad3b061..ddd3801 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -7,7 +7,7 @@ DEFAULTTUNE ?= "arm1176jzfshf"
 require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
 
-SERIAL_CONSOLE = "115200 ttyAMA0"
+SERIAL_CONSOLE ?= "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_config"
 VC4_CMA_SIZE_raspberrypi ?= "cma-64"
diff --git a/conf/machine/raspberrypi0-wifi.conf b/conf/machine/raspberrypi0-wifi.conf
index 2b7cea4..41be06b 100644
--- a/conf/machine/raspberrypi0-wifi.conf
+++ b/conf/machine/raspberrypi0-wifi.conf
@@ -7,5 +7,5 @@ include conf/machine/raspberrypi.conf
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
-SERIAL_CONSOLE = "115200 ttyS0"
+SERIAL_CONSOLE ?= "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-128"
diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
index 7c2b811..3bd9e95 100644
--- a/conf/machine/raspberrypi0.conf
+++ b/conf/machine/raspberrypi0.conf
@@ -5,5 +5,5 @@
 MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
 include conf/machine/raspberrypi.conf
 
-SERIAL_CONSOLE = "115200 ttyAMA0"
+SERIAL_CONSOLE ?= "115200 ttyAMA0"
 VC4_CMA_SIZE ?= "cma-128"
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 9b4c02a..a17289c 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -7,7 +7,7 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 require conf/machine/include/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
 
-SERIAL_CONSOLE = "115200 ttyAMA0"
+SERIAL_CONSOLE ?= "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_2_config"
 VC4_CMA_SIZE ?= "cma-256"
diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1ac5928..b15621d 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -7,5 +7,5 @@ include conf/machine/raspberrypi2.conf
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
-SERIAL_CONSOLE = "115200 ttyS0"
+SERIAL_CONSOLE ?= "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
-- 
2.12.2


