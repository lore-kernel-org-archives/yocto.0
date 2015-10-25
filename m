Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EAA5E006EA; Sun, 25 Oct 2015 05:44:42 -0700 (PDT)
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
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F04A1E0050E
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 05:44:38 -0700 (PDT)
Received: by pacfv9 with SMTP id fv9so167871433pac.3
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 05:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=NRLENXGuGGxTQP6P8BkK42ThUXNAsTEgawJslCajZpg=;
	b=yavgU+RGHaZfi+/Q4i6SZI/z/XaJeaYxv4FTsmLMCHtuiwo5cZAL8cF+o3Amf72BHJ
	Os6A3gzh5mmyk7Wm+5eRpBqJlhPXzziA6Chz/mWxd4fpvknK45iopT3Nrt6DlcpS+2J7
	WH0tCTzxmCIUft3vmadM0KDJxGBJMsooRswz3Hw6pGDyiXLV8rph3WizZzA+2CHmxGZA
	uAo3nJqpzlP/iJMrGdVlN5H1E4yXdgLnDazTegFwAD8J9b4nxtpLgAD/W8z6p4Nj6/Ug
	luEQX2mplRtXFlQw81pLbymAdyAmzvMi4OwW5a5bHJ+/YjWFjoD3C8l0o3AWxE+7nLil
	yN/g==
X-Received: by 10.66.167.101 with SMTP id zn5mr16652979pab.48.1445777077876;
	Sun, 25 Oct 2015 05:44:37 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	ch3sm28555670pbb.18.2015.10.25.05.44.36
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 05:44:36 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 25 Oct 2015 23:44:32 +1100
Message-Id: <1445777072-13955-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
Subject: [meta-raspberrypi][PATCH] rpi-base.inc: add i2c-rtc overlay
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
X-List-Received-Date: Sun, 25 Oct 2015 12:44:42 -0000

The update of the kernel in 10a5bace87c19e50014f838031e8f3db334b45b7 to
3.18.16 missed the separate rtc overlays being replaced by the i2c-rtc
overlay.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 8caa5ba..e097702 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -27,6 +27,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/hifiberry-dac-overlay.dtb \
     overlays/hifiberry-dacplus-overlay.dtb \
     overlays/hifiberry-digi-overlay.dtb \
+    overlays/i2c-rtc-overlay.dtb \
     overlays/iqaudio-dac-overlay.dtb \
     overlays/iqaudio-dacplus-overlay.dtb \
     overlays/lirc-rpi-overlay.dtb \
-- 
2.6.1


