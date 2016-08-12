Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83BDDE01241; Thu, 11 Aug 2016 18:06:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3136CE0104C
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:21 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y134so582535pfg.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=levjmlgthwZVVfSvdaH2UBDmjH7JVtqY+4Wxvb/Vq2c=;
	b=HqD6e0f5g2Kh7+quzbven7jKYETu+V3ZnKQea1PAM2P1KlU4PnIJxLCkL/oAV2Cd+q
	UV3udgix0BrUd975dVdmo6vTuN5ds6Zg7LaJXh+peCkqj9lOSiq/bb3p3zoRBUrdAW0K
	R699qslqOU2r2yYCBYNwqQL8LM1JfZ3tTTrO8+o1FzwNugs+J0/5/9pW/7Je16N47n4r
	cROvLLHCwxXUhg3bJGMO6+iJGYM4ANKKTk32aUmxPRU4rSK0G/urEezJhDCBOBJK1ew+
	+idX5nfUINN3vC3A569HtD8L9lBNRqgRjscZoILzDQ908srPzHza8YFcZzQhXS+lQjow
	TgDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=levjmlgthwZVVfSvdaH2UBDmjH7JVtqY+4Wxvb/Vq2c=;
	b=eonVMTaIX4CYIYF3miPcyQASfZyV/fyqBE898j0M4i8RvTpM1UWsZNtHCDYGbT5QyT
	EmH9sbUorn/ttKHRo8BLd7lK4MZ5iyEfNAo3XmalydyBXQaaLaxx3dj97nPnXQapU390
	gtiwm1fCeM2jmerWd4zRYmWYKAfz4D9utrdi3H8i+nTTC5frzbUCWPsRvffspX/WpT5E
	e/VLJDKwBAwa8vrOY1xM2J2eTpBRNbgdgqdMRNaXGP9abnPmcyNb2O4vbJ9ga1inRsTn
	PfC7iv1LtCGO3v0Dl4XVqrwV4TO2y89tlAKUviYCFTZPXBsoyUcxjNoDSAcIfD1eBXlG
	nFsA==
X-Gm-Message-State: AEkoousQ/xln39w0c2HFmqBluYhP9tce+iTfQJhWJtxEFl7xcgYmvBwW38mt0Cf7o/5vTQ==
X-Received: by 10.98.17.83 with SMTP id z80mr22732172pfi.38.1470963981271;
	Thu, 11 Aug 2016 18:06:21 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:20 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:51 -0700
Message-Id: <20160812010608.31182-6-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 06/23] rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:22 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 47eb23b..aabc131 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -37,6 +37,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/w1-gpio.dtbo \
     overlays/w1-gpio-pullup.dtbo \
     overlays/pi3-miniuart-bt.dtbo \
+    overlays/vc4-kms-v3d.dtbo \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
-- 
2.9.2


