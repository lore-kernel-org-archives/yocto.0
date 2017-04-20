Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAED2E0092B; Thu, 20 Apr 2017 10:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50ADCE0083C
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 10:18:24 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id w50so3626854wrc.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 10:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=lUKoKI3SEPxAiAQE0EkuG/7s3W8H4ak3+PQb7gkOWSc=;
	b=L3kRiZwbWtrK9XEKv+E0ZlCMUN9q9jOJXQXynF14cmY6T9noHAWx4y3REaZorXHARq
	xHOk99K5AyXLzjrHauZKcBeqtcllml1QZGD8JTo0QBl0uZZ337GyIdMXZ0FWGCGOkQTW
	MVzXPerMDoGwdCUSmy/NPH1xaQY8nCjfuIbAIGGcCXpwBhpwghXs9iBYeBXjpuNmmr64
	pdl58sbxI5Yp79CFr83CsVtzx8fHZnckKovGUN2ADvXC4Y9GeCu6Y8WPWwZz7D4BVvCf
	RjDdLpDb1fCGh9dkc6ATlNtjJd3uoryLONcY/Ej2HP3k6FfA2yn4nerAYFIvdW9fUUQT
	LLfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=lUKoKI3SEPxAiAQE0EkuG/7s3W8H4ak3+PQb7gkOWSc=;
	b=M6p6wahYRb9FDM7xEtqg6Rrw1if0qmm07Gie/GybI5HwD/8PBz1CHc/qBz+hrVt1bP
	Lo0WM/hw/I/W+At1fNbN+W6qoP5eMe6uYRnwEnx2lPqbmC8Ugd2d9PC/4t4qm6eUuiVG
	L8cIYPoEN7kHu3RukeH+QrQcwHsr/tZgQJpntWR5E7On4fH9XD2ByFV3VI3OYSr7YYve
	n/dqq3CGBn5XgGSWQ3YxoG8hIsWme0NBuLno+HGNEOLIEopl2o6qpUGywSAJUfztwWXG
	1hg7sU5bUVeM3UIVjw7D4E5kRTyKnKp5TvZYGYuNJwaQNV9ZuITzn3VF+TdGCbOEjwaP
	axFQ==
X-Gm-Message-State: AN3rC/5q00Gm+tBs72tIg3p0iwyTMXZwOtkB4R6TsVDszp90aCPs8jP7
	MiFwZh0zCXK5EQ==
X-Received: by 10.223.146.225 with SMTP id 88mr8954759wrn.161.1492708704030;
	Thu, 20 Apr 2017 10:18:24 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	y126sm7395309wmg.29.2017.04.20.10.18.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 10:18:23 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 20 Apr 2017 18:18:15 +0100
Message-Id: <20170420171816.23407-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170420171816.23407-1-andrei@gherzan.ro>
References: <20170420171816.23407-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/3] raspberrypi3-64.conf: Make SERIAL_CONSOLE overwritable
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

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi3-64.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index 7e99da1..5e2b80c 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -35,7 +35,7 @@ KERNEL_DEVICETREE = " \
     overlays/vc4-kms-v3d.dtbo \
     "
 
-SERIAL_CONSOLE = "115200 ttyS0"
+SERIAL_CONSOLE ?= "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
 UBOOT_MACHINE = "rpi_3_config"
-- 
2.12.2


