Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7850FE00E05; Tue, 16 Aug 2016 21:58:19 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C75BE00DF5
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 21:58:15 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id y134so6818230pfg.3
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 21:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=2cF/ZHHjelk4T3Nwxv1Iz7VjzV35yxxMYDPnV8Fiq+E=;
	b=EDgVbhC4p9Cqj4tS3E5KbC38qTUBwk0EVJZqyICXcuMyJlh0KwRQnRC0ulzksndv2b
	lx/M3nSjUrFF+eYmbT1yNPDdsPM3cFvFi2Oo36oyEcFwoCPaSHz6x+mGxcZnBXsJhES2
	92khpkraEZTCaS3dxnLZWV17qoqMGD67e8Eu00y3i753Ud4tryD4gZlhmruTHuYiigkA
	V9uU5jcEmjfGvLdYbTItLvPDnFrL39hHimxaJXn/mVdqQFbAZD0tQCSvEQ6RJaIMIKz2
	F75FgO+35DKLEVdJ8jE++lN4JmpSeXAUNtfY99gyoCW7YbIhnYumPmiuJN8nDMCIu6eI
	P+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2cF/ZHHjelk4T3Nwxv1Iz7VjzV35yxxMYDPnV8Fiq+E=;
	b=ZEuuGi14G8mVOW7MNyOFpHytgQQaWp0Ufu6NXl37oW026bAkHm8s6y69tCnr28Q6jT
	4S5JeR/zq3tqJ7uhdudSOopbYqKuJC7Cxsr/RQf3iQuoOuLWlDrJbLo+X2xt4jKX2TUF
	t6mD84RNp1/CSzfQCl5SjI5THsxroVotY/Emnt7ZlACzzvnfLgkDxcnEDWcxPhoZ28uE
	NN4C5CXxEuGoUGq97XeGEFqJcMeONea1HDKSLoiKLD7qKvqA04G/1S6nA4LMUmjj1o9T
	izNOlCFZ77ygUtVPylyZZDuFU8wHDAHo2biRQKy3dofokWoCyEBas888aZgFVEIpxBuw
	cWLQ==
X-Gm-Message-State: AEkoouv4lconegC+ilvYWboX16ckWmIZuxYmT5vu0y19gM72T5atcl6ZxfMmiRhxneB71w==
X-Received: by 10.98.201.2 with SMTP id k2mr19341540pfg.95.1471409895401;
	Tue, 16 Aug 2016 21:58:15 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t126sm43123935pfd.28.2016.08.16.21.58.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Aug 2016 21:58:14 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Aug 2016 21:58:07 -0700
Message-Id: <20160817045807.17275-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.3
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: exclude IMAGEDATESTAMP from signatures of do_image_rpi_sdimg
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
X-List-Received-Date: Wed, 17 Aug 2016 04:58:19 -0000

Fixes taskhash mismatch e.g.

ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 78b2e0830a66052318e5e7ffffeba193 versus 4b9bbe5dba1b48cf5cb5ad365d991de9 for /a/builder/home/kraj/work/oe/openembedded-core/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg
ERROR: Taskhash mismatch 78b2e0830a66052318e5e7ffffeba193 versus 4b9bbe5dba1b48cf5cb5ad365d991de9 for /a/builder/home/kraj/work/oe/openembedded-core/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index a04204a..62df0b3 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -74,6 +74,7 @@ FATPAYLOAD ?= ""
 IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
 IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
 IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
+do_image_rpi_sdimg[vardepsexclude] += "DATETIME IMAGEDATESTAMP"
 
 RPI_KERNEL_VERSION := "${@get_kernelversion_file('${STAGING_KERNEL_BUILDDIR}')}"
 
-- 
2.9.3


