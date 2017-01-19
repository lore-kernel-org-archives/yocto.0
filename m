Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 583C2E00A51; Thu, 19 Jan 2017 06:05:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA70E00A39
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:21 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id y143so3439587pfb.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=b7+rceSF2Z6BhSHeCdEUlnaq+oImNs/Twe1/JWxjJ7c=;
	b=m6BzLl6uepCr5MKdfh3Z4XQnFDoKTgc10SYbLofBK8NJ+uLz2PKY2mnGIEQggjc11w
	scXhJ6Xld0ogKN8eSk0EYQNX638gIzX2WKsmFmXX++yaQiiNa4wMbzRZPqrNk0DESnjD
	Hgp3aCekIGK1+vEp4zw5s1QWcLcb9GeSWGjgcQa4p6dT2jcMrz4nooZhUiQzIQcYvHl8
	Njz8iZy25zkGdq7JyaLV/vc0wJ90baMzJV/jTfnmnaBr6HMA5SxxvFgciTzxVK063jUc
	qXCENSD8Ch4OZa8U5Clv9F6qibXagK/nrsRoHggX49rtsh+x58zRnXAGyWTN4M0Fqetp
	XD5w==
X-Gm-Message-State: AIkVDXJlsmToTca6INLv6pZX1nDxDDasPiYrD08B3KCVCz+5GqcyX80uLQ/89k/ZINEtXA==
X-Received: by 10.84.206.37 with SMTP id f34mr13616494ple.127.1484834721391;
	Thu, 19 Jan 2017 06:05:21 -0800 (PST)
Received: from localhost.localdomain ([27.155.138.228])
	by smtp.gmail.com with ESMTPSA id
	u78sm9259496pfa.53.2017.01.19.06.05.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 06:05:20 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 22:04:45 +0800
Message-Id: <1484834687-15746-6-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [meta-rockchip][PATCH 5/7] recipes-bsp: add u-boot-rockchip support
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
X-List-Received-Date: Thu, 19 Jan 2017 14:05:22 -0000

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


