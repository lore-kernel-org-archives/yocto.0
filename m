Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06F0FE0052B; Thu, 19 Jan 2017 02:10:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CF1FE00510
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:16 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 204so3842372pge.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=b7+rceSF2Z6BhSHeCdEUlnaq+oImNs/Twe1/JWxjJ7c=;
	b=k4FqMnjBU8720FJOLdK61YHoketyP6uOzwe5BgbEU/ix1uiZKYfSWf30cNoGJX1sWQ
	OD5LQq+N5X8JDsalUHd6lTUjBQWuof4zTeQlMKgS4b1xt7g5rcktQGnL2Iu3u8rT7sJC
	q2bQibDgjbdYu3tykVn9uHOieM1tk25DzVaPJjR3MqzuSTCM9TN4spfjoiAy/NEtiz15
	53IUbYSUrF39No06Qe5WpUqV0cmB0RmcsBAyprsuFJmZuUibFoHN8GAMGk7dV5+k+03m
	xOsyXOLcxSElozY6J6AI0RJm+eE9+RqzdL5Jbq+cd5PdK2uEnkxo4saAvk5hHPPApCDx
	sE8Q==
X-Gm-Message-State: AIkVDXKAiTwuSgaw/hhpGEWWz+DB5OpDdieTlyXpeS7VN9SQ2jn1a5w2AdpdojwaCbRWQg==
X-Received: by 10.98.210.3 with SMTP id c3mr9047712pfg.7.1484820616223;
	Thu, 19 Jan 2017 02:10:16 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	w125sm7440387pfb.8.2017.01.19.02.10.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 02:10:15 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 18:09:30 +0800
Message-Id: <1484820572-11891-6-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [PATCH 5/7] recipes-bsp: add u-boot-rockchip support
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
X-List-Received-Date: Thu, 19 Jan 2017 10:10:18 -0000

Rockchip next-dev U-boot is the next generation of rockchip u-boot, will also be an upstream tracking branch.
At present, this branch is just a rebased upstream u-boot.

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 recipes-bsp/u-boot/u-boot-rockchip_next.bb | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_next.bb b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
new file mode 100644
index 0000000..30d16b0
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
@@ -0,0 +1,17 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+require recipes-bsp/u-boot/u-boot.inc
+
+DESCRIPTION = "Rockchip next-dev U-Boot"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
+COMPATIBLE_MACHINE = "(rk3288)"
+
+SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
+SRCREV = "${AUTOREV}"
+
+do_install_prepend () {
+	# copy to default search path
+	cp ${B}/spl/${SPL_BINARY} ${B}/
+}
-- 
2.7.4


