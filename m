Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC527E00E33; Thu, 28 Apr 2016 18:58:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72EF7E00E2E
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 18:58:55 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id c189so41898252pfb.3
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 18:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=edKdRJJdOYclHOPwGOMnWLOwgOkE38Uke4ioHt3I60s=;
	b=kQkXdb/ofAMb0Pa3ZKwGlk5t6jWiMx7fw++Mczwbq1e9y/FD61Ua+BaNMDOJUM2Vxi
	DWzQzEwxBeK2fSyAJVydOqm777b5HHAKlCnLIYyGW61gjrXBlPFkcl8OKfb1ZFxjJV9W
	g/4V12pkxTM2P+exbevBcA6/a+FNYmJBg15ZOTGFVK6sw4vlKc0mEKPcXlakdyXoQEnS
	OU0rktSk7woSHYm32e2t3W7/41mpo0eI3NUtH7ZTbdCYHtcu6YE9QnYeZeKxWw8mM/li
	fgmqDP13xZakgVwgBpE46+R6JKi6UYkFaEIT3o8XGBdeab9HlpM2KRM2VyqcwwuCoetg
	f02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=edKdRJJdOYclHOPwGOMnWLOwgOkE38Uke4ioHt3I60s=;
	b=VC68rulVuPoNQc9kHZk3Sduhm89rWf99VZa6/7oDB3zsnqh/s/EvaXrUNxiBPc6hG3
	QlBovmbvpiJ/It7BxuTPxoj7x313Vol1mnQmQz/mH0Ekq78HAim/aFXNkgTXanwKjBvI
	1xfHL1fS7zrl0hHpKGKFkjWXxVJ03GEX5WORd5Iudz5A3kUJWsIejcwN8iYzlvCYJp/E
	YVPLYBOcKt/+MsuoDwdu9vXf77ZycTxeXWTApuYmD/cGH1eYreiMBoJ037KMc95+mqcd
	cF9ZOyIci+u11274eJogiscm+LbxJ8QIoyTm3sTNW8/wcWm7Ri2pLKkPO9CsQHSm8TuB
	TsbQ==
X-Gm-Message-State: AOPr4FUGmET27nnJCWfFDBbv0lZhQrWzzN3zMd4DNu0patWFomoC1O4V0m02H56sC0OeJQ==
X-Received: by 10.98.69.132 with SMTP id n4mr25062698pfi.53.1461895134649;
	Thu, 28 Apr 2016 18:58:54 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	184sm18354088pfd.43.2016.04.28.18.58.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Apr 2016 18:58:53 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 11:57:43 +1000
Message-Id: <1461895063-25231-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.8.0
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Fix do_image_rpi_sdimg tashhash mismatch
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
X-List-Received-Date: Fri, 29 Apr 2016 01:58:56 -0000

IMAGE_CMD_rpi-sdimg() uses the IMAGEDATESTAMP variable, so the taskhash
of the function keeps changing. This results in a taskhash mismatch
error.

Fix this by excluding the IMAGEDATESTAMP variable from the checksum.

Change-Id: Ie6f30ad29e279d5312ec655ac4a3bf246c8a04de
Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 1b055bd..989d77a 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -67,6 +67,7 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 FATPAYLOAD ?= ""
 
 IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
+IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
 
 IMAGE_CMD_rpi-sdimg () {
 
-- 
2.8.0


