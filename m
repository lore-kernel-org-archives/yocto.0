Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BE3FE00A48; Fri, 14 Apr 2017 13:13:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61CD8E009B2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:26 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id l44so13528665wrc.2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=OA1DGX8TPPiJCYpCmlxsPIFVxjwBVQumAQkzQb8HNJk=;
	b=TjVgc6OnJrbGOjVGVBUYsBunYbwAv/4FsjZEOE6kBlR9lcZCFpFCtildg8BTEMzHID
	y0streEKbG+j1br5B9AHCgmHGqrqYXTxTU2zJ/Zw/k+pa0U/ElaDCpGmaF8wHWvWZO9P
	RJogDnUDgVyFfr74bgkfutHsyUl2gzZ0lndKCASusPQUOS2ZJEqYo0txguEH2XMLaWM+
	TIjDsOJgWJH9pwnsZ7UDOBTdyqgYyvsvRghGtElciFVeFyzWMSGRj8nntZ738YZdQ+qz
	CW/t00mNM7vvr2aFXwyPkeFkUJ1Y5h4xJODLMxKDZOPxhMPMuHJYe9OHBxIcqi+v7Be8
	KQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OA1DGX8TPPiJCYpCmlxsPIFVxjwBVQumAQkzQb8HNJk=;
	b=NGjOcLziSmWS+rrFqNEykSiYtncnOmprOtBPp1e/ddV+ObErWv2PAU/VhgWx8KFgvA
	0k6D9wVg+S1qreznsW8GPwj0bD4kmfOEzIG4b8A5Iyy7J7JcN5jXZTSQVv4wnXWMQxRd
	lWsL0sfkotnAz0rO2GlzHP49yE88U2GC8YtnyDofbrCN5DCwmwW/MhZU6ch/LpPQv9Rj
	3XeL+RwiUcD5CLAJUiLuzh6dKgP85+JtKcIN0klNZrW3B/Ub9W7xrVlgiRaUMgJOLKaD
	hwI90T5M+mpmhinvUt6HdllcXh2bkD8jVZmcOzncNBcIhGl1f104jLu5mLuRCRbV7VZL
	3IjA==
X-Gm-Message-State: AN3rC/7tjA464jOCzppYbKGbg1/V3BZYLZeYgf+++IQ2BcrPNAwcKmWW
	EnVz9l8IZox0NA==
X-Received: by 10.223.145.199 with SMTP id 65mr8172210wri.182.1492200805642;
	Fri, 14 Apr 2017 13:13:25 -0700 (PDT)
Received: from localhost.localdomain
	(host86-170-80-134.range86-170.btcentralplus.com. [86.170.80.134])
	by smtp.gmail.com with ESMTPSA id
	i144sm3983021wmf.13.2017.04.14.13.13.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 13:13:25 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 21:13:13 +0100
Message-Id: <20170414201313.3138-7-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.1
In-Reply-To: <20170414201313.3138-1-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 7/7] README: Add info about raspberrypi0-wifi
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
X-List-Received-Date: Fri, 14 Apr 2017 20:13:27 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 9fdd5eb..58a8ded 100644
--- a/README
+++ b/README
@@ -78,6 +78,7 @@ b. Add needed layer to bblayers.conf:
 c. Set MACHINE in local.conf to one of the supported boards:
     - raspberrypi
     - raspberrypi0
+    - raspberrypi0-wifi
     - raspberrypi2
     - raspberrypi3
     - raspberrypi-cm (dummy alias for raspberrypi)
@@ -251,10 +252,10 @@ WAVESHARE_1024X600_C_2_1 = "1"
 
 3.P. Enable UART
 ===============
-RaspberryPi 1, 2 and CM will have UART console enabled by default.
+RaspberryPi 0, 1, 2 and CM will have UART console enabled by default.
 
-RaspberryPi 3 does not have the UART enabled by default because this needs a
-fixed core frequency and enable_uart wil set it to the minimum. Certain
+RaspberryPi 0 WiFi and 3 does not have the UART enabled by default because this
+needs a fixed core frequency and enable_uart wil set it to the minimum. Certain
 operations - 60fps h264 decode, high quality deinterlace - which aren't
 performed on the ARM may be affected, and we wouldn't want to do that to users
 who don't want to use the serial port. Users who want serial console support on
-- 
2.12.1


