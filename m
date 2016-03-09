Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43814E00C3A; Wed,  9 Mar 2016 06:15:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1C34E008C6
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 06:15:20 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id l68so10281009wml.3
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 06:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=xw24PDSo3wvGN4lf9cB/2ZxBeiZ5RX8E+ri3VCX4Lsc=;
	b=iyJvm9BgSbGwabUNGjJ0jud23Lz6cFHJ18BPd4VS/34E0iXeQAFeOZkMZY3pReAuGw
	6/oPH9mw8Kp8BJawyOG3K1gV9nrNM/gKs0WuZd4PsoSHlD/FmctgLjLPQvI0o69mV8zP
	vOZzlqsgsDnzoqY/qjW4Eo/63do1XnwdNSHTX0tCPlVtEBKTq9rL9rUgkZ+5CKwl40XH
	byal0uTy55o2zVFl92envyTFo6/jnVsJokQoL5Xj9hvRJucQXkHiwyYbGO9VeZvaZWiT
	gX0+bb5iZa10KesQTC3QSLlb5VJogy0QJZkSesUQECMFfQEi6Gtz/Gf+979eQi6d00ve
	hoGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=xw24PDSo3wvGN4lf9cB/2ZxBeiZ5RX8E+ri3VCX4Lsc=;
	b=W1qkZ6PxPqlE5gXnDGdhNemoUuO9qE9dXaN9Z7Rt0ygmnPUC6AKMMhQvtKHbaAeZg+
	C8PtErhTBdLm3VaEdS49zifZRDhJXts6fripIJLmVpIRDc0LdPhJWIZtgUYDYIUVnxAz
	2hkI4OSu/Xd2D6ioy4V1bP8r0l97hE+px0dm8ZDk1VEaTjRpa4E4TmN1dUfrwyL1tvdL
	/nh1sl6lNhpxKkRBEksSoTI5oFudUf5nM+jFF3MIfAHmqcXJNMhQd/lkM6WRRVOTW/of
	RrhHeOZxilxCrHS1K2u/Jn/oMHlmUCJUHAQqYD6iagatbsjdKgxoB5AlpsrA6zTKuVGX
	NM/A==
X-Gm-Message-State: AD7BkJK4ymXO5OiRSZkmsVDfXuVIXgwxyFAd6IfCGbjniB1t+E3ixI/dQc5yYmBu3lyS1Q==
X-Received: by 10.28.139.147 with SMTP id n141mr26973384wmd.53.1457532919597; 
	Wed, 09 Mar 2016 06:15:19 -0800 (PST)
Received: from localhost.localdomain ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id
	e19sm24214662wmd.1.2016.03.09.06.15.18
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Wed, 09 Mar 2016 06:15:19 -0800 (PST)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  9 Mar 2016 16:15:02 +0200
Message-Id: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.3.2 (Apple Git-55)
Subject: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Update revision to include rpi3 support
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
X-List-Received-Date: Wed, 09 Mar 2016 14:15:25 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index e26019e..b55c9ff 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.1.17"
+LINUX_VERSION ?= "4.1.18"
 
-SRCREV = "cb2f10196a9b718a2d94bb4ac0887c2ea14988ae"
+SRCREV = "fcc9ad149fbe78e9931b8e769ac54d5430587465"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
            file://0001-dts-add-overlay-for-pitft22.patch \
           "
-- 
2.1.4


