Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4137EE00A16; Sat, 11 Feb 2017 21:27:10 -0800 (PST)
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
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EA97E009FD
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:07 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 204so6503668pge.2
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4Krkfq2672Dinz6UpibRh4r/bZWDp5bAQ9CWTMVj21U=;
	b=Au6KghyDDuN9O10Wqc5bFEsKJESCqNsasD+5qioIjrImnneAAQ9d02Ubh6ihKYUcov
	3Cqc35lgB9vvcRODZU0jPrejWIAUCJu+xgIwuC8UZo/uyW5aCdCfyxO7YLDS8UTVLBDJ
	mb7z9cobMTadLmN1NNcqWsCLPSirsf4FWyT7gq0XGmSt8btCfao3gbWiA4TnwjsS70fE
	lU6USUIjA5Wj+Dklzh7pIQn9URFv2aB6fTh4Ndw40HkPbk2rSwrXzRKIBDgogBK84Ki5
	aHevOW5v4zdeiAr8/y7Zob18REwQhkuOSkViU0ioQwp66Sqt3Ha3IpWuXFWfQVQcEbhd
	wQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4Krkfq2672Dinz6UpibRh4r/bZWDp5bAQ9CWTMVj21U=;
	b=IExZ37yytJbwKU52bP5xbwIEmwXXwBitcpgfXQSXANZpmUEnGZ18C9jU2VGWy4jZRr
	l+6xMg2onF/T9cOD3kN265Lsc9A2OOyZjcxA5Hrc2TKyVLMQ281e0QH2nv5UHDB+bCRa
	3QFIA1TlXP6v2mCVz+QYp6L5H4si1K9jPpuFFxNnYQEr2rXavtb4YS+W+Zyw2sFXnjQu
	MSwpPBMj68BZuKcozzPFvjvgUP2Zo58/eTOOlafgnmprVe2UdYimN3st0VvV2dCzV9JQ
	FMUYbTcGilu60FToNKOA2HEmIAH39/S4s9NNvCXUHF+TKsFv3mEYaGVjrN9ZQz1zodBI
	1PqA==
X-Gm-Message-State: AMke39mv9yedACf15UGDII8WJm/INRq8CsGMHFquG/A3MYqh3BxgQHjVrN7oak0nS4y5/w==
X-Received: by 10.98.90.196 with SMTP id o187mr19005537pfb.30.1486877226746;
	Sat, 11 Feb 2017 21:27:06 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:06 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:47 -0800
Message-Id: <20170212052655.12342-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 03/11] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:10 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index 5598e50..cdcd726 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
 UBOOT_MACHINE = "rpi_3_config"
+
+PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
-- 
2.11.1


