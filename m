Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5C54E00546; Mon, 17 Apr 2017 05:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E53FE003E1
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:20 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id o81so8678665wmb.0
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=fFaJWBiPSQkhbxDZdLPgV84MUJ7Rj8WQmtRWyKBhZ/g=;
	b=lpGIa/cqtpuJJTfLtm/i/K+a566ag2ZISpBWpxbJ6N9pEw8ktCr4QI1v2cv4Atotrw
	qBeEDWPz0zOFwWFKZftDtgpn9pOCFwChWzCJfFF6yWZQHvQ95eyIrLRcl/zLTCUGm9d7
	1OnHT6AsH3a9t+E49KAVnseMqBHJlcVHa/JQLbAExVfz5KWgMcbM1b2LaX/RC/unlogn
	m3ZlbNlFyRNR6Oqr2Wn7CtlE1ThC1S9QH3UqXt86ZHQmcFe8JYKBDhV5SxaUy5TGFTTr
	F5TDSjcc/HIz9rXiUYxdSUPYOguHnxMI+hlITEIqissDft2atsD8glKNRlkcRCusm7VQ
	gIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=fFaJWBiPSQkhbxDZdLPgV84MUJ7Rj8WQmtRWyKBhZ/g=;
	b=gEtFyng+LXEOIMk66/TMfDCZtu82cs2y7VXt4HVDZJQfsNTKo9MBQXeVKAwq+IRBwC
	AbfQFATl0nQ/76zQ8XvVFhdZR5oKzOwQm/xZqMB9Sp87HR/iSw0+i98tSVfOLBmtimUS
	ngLMjEhZWd+UXhQ8hcyEvIEJPWCKYXuPDfSaTaUB2iFcf5ZtjJJ2uVGzZwHu6o3+j6Wp
	Z/HG1g7021gqfPLcYSvra2GhZkwB4BxD1EFs/kuo30qp95NGpbmR+gpHaxRT875k3T+S
	gjjNMWagR8HoIUw/qU8DVEyUZDanCPCDHDiF19MrnsrC6urGVDZHScnH3B/3Gj45r9lb
	wOzQ==
X-Gm-Message-State: AN3rC/4+nrhFikxHGgwar/xy7g2qWy0pzW8JZjnNv8CfcFxeFmKqhZMp
	E52sk3lDyBCuB0YsH1s=
X-Received: by 10.28.168.130 with SMTP id r124mr8914967wme.134.1492432639064; 
	Mon, 17 Apr 2017 05:37:19 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id d23sm8194524wra.6.2017.04.17.05.37.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Apr 2017 05:37:18 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 13:37:10 +0100
Message-Id: <20170417123710.6374-7-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170417123710.6374-1-andrei@gherzan.ro>
References: <20170417123710.6374-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 7/7] README: Add info about raspberrypi0-wifi
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
X-List-Received-Date: Mon, 17 Apr 2017 12:37:21 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/README b/README
index 65a1e5f..17f8273 100644
--- a/README
+++ b/README
@@ -77,6 +77,7 @@ b. Add needed layer to bblayers.conf:
 c. Set MACHINE in local.conf to one of the supported boards:
     - raspberrypi
     - raspberrypi0
+    - raspberrypi0-wifi
     - raspberrypi2
     - raspberrypi3
     - raspberrypi-cm (dummy alias for raspberrypi)
@@ -243,11 +244,10 @@ List of currently supported models:
 
 3.O. Enable UART
 ===============
+RaspberryPi 0, 1, 2 and CM will have UART console enabled by default.
 
-RaspberryPi 1, 2 and CM will have UART console enabled by default.
-
-RaspberryPi 3 does not have the UART enabled by default because this needs a
-fixed core frequency and enable_uart wil set it to the minimum. Certain
+RaspberryPi 0 WiFi and 3 does not have the UART enabled by default because this
+needs a fixed core frequency and enable_uart wil set it to the minimum. Certain
 operations - 60fps h264 decode, high quality deinterlace - which aren't
 performed on the ARM may be affected, and we wouldn't want to do that to users
 who don't want to use the serial port. Users who want serial console support on
-- 
2.12.2


