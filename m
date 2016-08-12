Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CE52E01248; Thu, 11 Aug 2016 18:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC260E0104C
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:22 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y134so582555pfg.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=q27zeLpj/YUj7a/v4NhF2h/lilcWL1mT1ocTWtxj8w0=;
	b=FHaynmD1Kxjka5HRMYfmcwtaKnj4OCygz6MKmQ5U/472Xe+F4Y77z8mmzPAhX2UJrd
	G0sGcfyvKINjqsfGFEtWJvAlbS09mxAxThPmnP4LXwvHlzXZG6oPqesI9DnnJe7K5odI
	pvU6rmLW4n3cAFea2SIw8+q/VZdTUNUkwwGcelp7R2M9W3FxHXNNg0tbDMVR0x97n8Tj
	FbGQHClqGIzKpFngK+mnOB5zaxNyAtTz186ghFYChxRlos1ZtPBrevvVa3IOOSnxXPbR
	KE0qUplY2feyZHJ4WcPiGCBbxwmlpor7m0u6Px2IzyIpftnbWdIhupKkHvGfQaLVqTJd
	KIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=q27zeLpj/YUj7a/v4NhF2h/lilcWL1mT1ocTWtxj8w0=;
	b=LvZ5hYY0Px4Q9bmSoGYcNB0VBbBJ7PO3IIwusDpbyQXdiW75H1Z9fK9BenR7kaCpYn
	I+zScm921xoJ+nx1g29WIoMv8i+WxNc8pC1yKEXDMlHq3uZsa/X/NQJsZK8VG+4BvFE5
	BhSvW0W9/eO/BKRHJ37WKXa/szA6F3/80c3N3ttjGAGZZpeZlDh8yT1MIFBkoSCLmpMq
	s7PwT9FaZuWW2zG9DM4sPJL7gqLXSeKBngKtsb6YUno9NwDfBRN3yZkNV9+M0zsJmrMx
	PQZd+XY91Zv3imZNDu/zLjqvCFA689UiC2bEs48rA/GBBQYEIRiw/oeK52gNPGbPXXMp
	4xEA==
X-Gm-Message-State: AEkoouu2PXkQD2cnuGxcCd57FJiQXGI2Jax37XdPHbdZ/mHRFrY2SZIaS0ELm8WmnnJuiQ==
X-Received: by 10.98.13.84 with SMTP id v81mr22496021pfi.108.1470963982515;
	Thu, 11 Aug 2016 18:06:22 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:22 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:52 -0700
Message-Id: <20160812010608.31182-7-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 07/23] raspberrypi.conf: set the default value of VC4_CMA_SIZE to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:23 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index 72beeb8..df8194c 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -10,3 +10,5 @@ include conf/machine/include/rpi-base.inc
 SERIAL_CONSOLE = "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_config"
+VC4_CMA_SIZE_raspberrypi ?= "cma-64"
+
-- 
2.9.2


