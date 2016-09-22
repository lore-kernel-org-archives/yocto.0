Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F86CE00BE7; Wed, 21 Sep 2016 22:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF5F5E00571
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:09 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id 133so12095118wmq.2
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=QqpX7mHUV31TZA6Ifx1d2wnjC51e0LliaLNxiLyNInM=;
	b=WX5YJd96Wcw+5wlsHjNtg7wrRVhpEOmvfNwNplW2YA+rZXUB0DsIsa4mmucLDBI0hV
	T5DxlCYoiURzB5jPBI/8r8eMVJWkBn+RMM+lytiBHs874jDf5aLRcvQMqYC/VBbaXC/N
	h6nDJJbhDOlWPoLk/0huXMcuQNnOhrnffv8C3MfWN09JuqJKYGXJYXvlnp517qMnc8Vv
	O/5z97+kAv2YVVvHb7HACI341XagpdTQa7qQRkK+gc95xm7bgWDL3TN7SKvzITBkce1n
	Nc8Yiwzz8PJIouzSJCsNGuxJXuaa+GrhWgFBatXnarH39OxHZBIWU5XTpr4JbGYNv3/w
	yhpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=QqpX7mHUV31TZA6Ifx1d2wnjC51e0LliaLNxiLyNInM=;
	b=FyOXMcelZ/idgB7hSsfS/NHThpBiQytONfH5ysWzrHAjGw/G2MnyJDZi3dHoxBZqv5
	tyIw//OmvdeKBw9tglIOtMqpusVj7TOTHXv3cPZaCjdZlN3kRU6uAGQEWWGJ/u+iwjZA
	W6pV/sIhozEItb1iQ/zNSbVivibvwVUGM6vxkukzERqKnx7pTFDnX9WiVyZWjviCogkv
	Nn9IQKpa1fUBcAD/oRm66dMlaBxo7h5D4khNxcNVrzl/CpH8JW4614OfnRS+BC7wtC/m
	3jrcPq8f+28TZMBR4kgXeZAvJvhW1ct1Qo9FJ4i4dij5IE/2Vvjv7YUTaAVCx14soOi8
	rh7A==
X-Gm-Message-State: AE9vXwPgAaisu/P2wjSAKDiw9BpNiLR1rQ3l3dpWMQYNSG6SKhpQU/TJ8QWOW/id9hQIkg==
X-Received: by 10.28.91.11 with SMTP id p11mr6003334wmb.98.1474523288788;
	Wed, 21 Sep 2016 22:48:08 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0CCA.dip0.t-ipconnect.de.
	[79.223.12.202]) by smtp.googlemail.com with ESMTPSA id
	n131sm35913003wmd.3.2016.09.21.22.48.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 22:48:08 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Sep 2016 07:47:54 +0200
Message-Id: <1474523274-3883-7-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 6/6] rpi-base.inc: build vc4-fkms-v3d.dtbo
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
X-List-Received-Date: Thu, 22 Sep 2016 05:48:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For those who want to run closed source driver with mesa. See further details
at [1]

[1] http://anholt.livejournal.com/47717.html

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 69774f4..737e842 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -38,6 +38,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/w1-gpio-pullup.dtbo \
     overlays/pi3-miniuart-bt.dtbo \
     overlays/vc4-kms-v3d.dtbo \
+    overlays/vc4-fkms-v3d.dtbo \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
-- 
2.5.5


