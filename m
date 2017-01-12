Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 113F3E003E4; Thu, 12 Jan 2017 10:29:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B64C4E0033D
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:29:16 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id y143so4559914pfb.1
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=1IidtqVNJVzIr7O8cXAOgOujeXaTvpkzfaylWtml+nQ=;
	b=QC1Mb75EM6arc8AvczpnrRn7Nu9LqNfogMNUMHjY1oQ50ictkDR33d1w85ZOQDp2nk
	s9fviicAymV7pJnyXhH8vgjZYnzqD82qApPQfE8jCseHsNwnUjxu6usY+FjETIPj0RTn
	LWztfYRKuepJFFmccP06kffCRhrXKm8MNE1pWfmbe9oPXpknMQgZmaQoh2cQ09BQyC/z
	VE+LaaUvIrQTF08mgfyjiN3hV7H+1tj0yra3ZNkI/MzmTiF/kt8VX9P17Gj7yGXtwuxg
	5WrNNEHppwnMtV3gS724IzTc69k7UZvv8xa446Nw05AhS9/rAkwB8jwI8q+j5Y0K2hBK
	OUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1IidtqVNJVzIr7O8cXAOgOujeXaTvpkzfaylWtml+nQ=;
	b=k8+9uC/rLIlQRM7zGr2cWacXvlqAYHdDsqA0e9IBmrVy0RuIJWJsdoSerS8WWqYtfh
	Iu0+0eINo3lAfJCJIOgMepKypnTGELQlJMzrsr6NBMQIAD+4XScYwrKXhqGyfN2ZKTlk
	6SPSn472tg7z5Rna+uXl8PwefiMl5WTrvouNi+kB1VFSLco6kKI3DosNIk/0bW4mm5K7
	bDBm2bUr+c3dUbMIj2UehaQqpldnxD6UbNkGk++7NBf8EkhViugic94AiXmXDrPZ01f2
	Qglfbf/OQxEeFtTH5osJr3HAvUc8LAPENEcT+v/M+/nHSNdYYVdyDKpuIGhVn+/WZFgk
	Q9FA==
X-Gm-Message-State: AIkVDXIZ47tqhJDUYTSUIMnmi12Qq9dolifr8sx0ndEdDJney4fmw24bfHHePoBp6e2zuA==
X-Received: by 10.84.193.131 with SMTP id f3mr23554112pld.26.1484245755922;
	Thu, 12 Jan 2017 10:29:15 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z77sm23376751pfk.47.2017.01.12.10.29.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Jan 2017 10:29:15 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Jan 2017 10:29:05 -0800
Message-Id: <20170112182905.15203-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170112182905.15203-1-raj.khem@gmail.com>
References: <20170112182905.15203-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi_4.9.bb: Add recipe for 4.9 release
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
X-List-Received-Date: Thu, 12 Jan 2017 18:29:18 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.9.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
new file mode 100644
index 0000000..20f43aa
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.9.2"
+
+SRCREV = "4052b0da7dbab0df22ca8733cf50b3e573e221e0"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
+"
+require linux-raspberrypi.inc
-- 
2.11.0


