Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2D37E00C86; Thu, 23 Jun 2016 14:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C74B6E00C82
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:56 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id i123so7533639pfg.3
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=SkH6VXjaVRbG3yGTLCed1s8qr3WXSjFeH2ioVWEect0=;
	b=Id83atlL2q9ttJsANcSMAj+ftVp5g6lySjz5R1k8HLLDLqm3vMJlkuphPqUHUkk+2U
	COT3pQExbWrtMDtjReXi5e8HvAFd91Z9skgCk0EsBTPpZ2oWFL3qjnsv5bfh5l11m0yq
	rGGXO57mW0SEroyXLeoHWkV0eJjtWqL99JaFgwWvOoPbThyyIpbMchjpUyGnp7CRFdJB
	YurNrIzfBMeTtq+GNL0ARxDJan673/oHTZzXdG5nSXUbzIlbcQSFVUodX1+va+1yHV/T
	gLtea12gDo54jJoVFcqg3SNuzeK9w0FHh3s+j65W4i4UoRpdasasGKGtH2yybbozCfTV
	QCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=SkH6VXjaVRbG3yGTLCed1s8qr3WXSjFeH2ioVWEect0=;
	b=QmoQyNSCB5NPsNF6nPSW/5l2C+sfr/qv4WnQTZw+jkRFPX/IKxPS1BOrrVICDGuabF
	ck1MS9+Kq7uWPILpWf+8z5tmQ86D6G8OK96Hx3SiYS9usB1M1ucQ65TTrnFK7b7z9Syy
	UR32TdGgGA1Gp7X9P4oA3ChdD4ielXm6cQgVWDC5Z/EF9+o4GkDMoDHUXj6lcowkQSJC
	8Nw7XbAGlZkOFWAjjjTyUhE2JApPwWimuD6dOnyOmB2HRq+rHxaAoPY1CefjWPffGJRH
	kMk5cKY6EOjtaErdWIBJz1OXz+u4udskP828AYwkARWI4/7ah5hpkA8l21BnPPHWEz0f
	8aZg==
X-Gm-Message-State: ALyK8tJncbMi2bKXH0N9EA9Cy7K4K1va7F2w/e8DqggssjGIwSJefT67zLe0+0WZwlOHNA==
X-Received: by 10.98.95.197 with SMTP id t188mr944282pfb.162.1466717696209;
	Thu, 23 Jun 2016 14:34:56 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	q127sm2277847pfb.34.2016.06.23.14.34.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Jun 2016 14:34:55 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Jun 2016 14:34:31 -0700
Message-Id: <20160623213431.5513-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <20160623213431.5513-1-raj.khem@gmail.com>
References: <20160623213431.5513-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/4] sdcard_image-rpi.bbclass: Exclude DATETIME from task stamp
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
X-List-Received-Date: Thu, 23 Jun 2016 21:34:57 -0000

This helps in fixing occasional error seen quite often

ERROR: wpe-image-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 7ea6b505bb7a2cc5ca03552bcf3333fa verses 3be7cdad8c4532430d96368c5ca523d4 for /a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wp
e-image.bb.do_image_rpi_sdimg
ERROR: Taskhash mismatch 7ea6b505bb7a2cc5ca03552bcf3333fa verses 3be7cdad8c4532430d96368c5ca523d4 for /a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wpe-image.bb.do_image_rpi_sdimg

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 4dfd7a3..e566669 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -73,6 +73,7 @@ FATPAYLOAD ?= ""
 
 IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
 IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
+IMAGE_CMD_rpi-sdimg[vardepsexclude] = "DATETIME"
 
 IMAGE_CMD_rpi-sdimg () {
 
-- 
2.9.0


