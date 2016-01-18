Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0E5CE00B9E; Mon, 18 Jan 2016 06:14:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F2AEE00BA0
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 06:14:20 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id n5so66054330wmn.0
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 06:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=pUnR1r8SCk9+xCNXBR8t9zt15ov3LZM5QnuojukcTX/PMf5K19oXZlrSnp6wpvVgYk
	AmmlLybyzv9pEJBlSV/TWuXkQin2c8Gblpw9omre2tPKONzlq94FE0saFim9rNd/zIIZ
	FNnkz/zpPUZLMEQC23HBlErbm+uuqdk9OANLJi54mErc/ulbS76PlB4wPuK3RB+4YWcz
	sTI/VLEnUT0+emcYjSwyXG+p+HQgjlpkJfWGZ+d1hZELx9hlubnk0GNzZYnxBr5Uwdrm
	zwdtOBxI5zIX/fyIYs+dRhrK2zWiGGQeKXAU1L9kwF956rdslOHkfeRU+eavGk1HVTn/
	2WFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=dOj579B/mL4976mBAEP6QO2cxYjhjX+rbWQqRTZPvcfubEMQbZ1ar9RfEbdEWf2apX
	BBGY2iHIeyg6lNMf1rL4YyuuporgK9qDMUalHtw5d8UqMvuKiPrA8NeNuW5f7VoZE7Yc
	H+QsP99A92BAX/az9llcnPe0fRSD4hfMh3lE/kUCfdyM6Pbd50+/0CHax86vG6gxp1va
	bhrd8BxQaszqGh6yM6aYa1I65jMYPJVhLO0bJbznnckFv8mywroBgWUHZOp/uY0H6/5U
	qs5bljQ8C4tWeXTwMFhVug+/dhSeEiq3qK0IlHZrdACK/HoWe6W+yPo1urwNmqJ1qmgB
	137w==
X-Gm-Message-State: ALoCoQk6WzehvjeTVQd3w/9mU3O6CoUewY3+Ag5GKy+arOQ4R+UxoIwSqe/M4TtP8e9mzJxPIqRG+nNdTX3pWylG5gyP2SrFug==
X-Received: by 10.194.121.167 with SMTP id ll7mr29522976wjb.113.1453126460018; 
	Mon, 18 Jan 2016 06:14:20 -0800 (PST)
Received: from localhost.localdomain (23-227-190-109.dsl.ovh.fr.
	[109.190.227.23]) by smtp.gmail.com with ESMTPSA id
	r10sm24003568wjz.24.2016.01.18.06.14.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Jan 2016 06:14:19 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Jan 2016 15:13:54 +0100
Message-Id: <1453126434-30548-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1453126434-30548-1-git-send-email-j.madieu@expemb.com>
References: <1453126434-30548-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH v3 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Mon, 18 Jan 2016 14:14:25 -0000

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index bea5a65..60f1bcb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,3 +12,7 @@ BBFILE_PRIORITY_raspberrypi = "9"
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
 
+# Let us add layer-specific (such as qt5-layer) bbappends which
+# are only applied when that layer is included in our configuration
+BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
-- 
1.9.1


