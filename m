Return-Path: <shyam.saini@amarulasolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E735DE006C7; Wed, 12 Sep 2018 07:10:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E201E003D7
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:10:27 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id f6-v6so1052231plo.1
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amarulasolutions.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=6ZhGSlDnYBLrOgZejlxkx4i9KIeQiNwxihAEAII6qp4=;
	b=fkN0LsQ6BR5Ij44OC/UpsGQSxtfuFIvzqkje0poSWfTcTtqMAysaaSIJdjGJ7Klb/a
	mPA/Z/1Ze6Nf3gWzSmkUGL6uEj8unbQPb4O4ZKaR3JU4cUna4OYLftzYCMHrPvCEE+wa
	sF+BkTuELkpJocosy8KE/nQn/I5xnGt6dxP/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6ZhGSlDnYBLrOgZejlxkx4i9KIeQiNwxihAEAII6qp4=;
	b=IIY4Ckf8vrcjTkDqoZpe9m6UIkm/vJMyoBb5ev8bqccBSogTgoUH5V+F+Z/Ii6OnUG
	Qceg38ETXneVYeYrR0oOR+x1YjWzYyXgMFi8r3TmKFDqZurEDjh6cFDpNJY3EYKh3nBL
	s6apMwctrHmAtWrxAzVOERitG5kduomOtsAFSXoa/MJVnm8LPUP81fnOs1URqSCTrr7C
	5GXu4U7W2pmWazeEsoIbHV9yPf9Sq3apvY0x3ams4OvcwyMToFVVJkZXORxZiTbNk8v7
	aJcgXVWAxUQpwdf8eZtcLwGKei/WTqZuh8ObyclDu/iMCdmMtN/DfQ0dmQ63I9nZewqO
	JsqQ==
X-Gm-Message-State: APzg51AgaBF8RGWEA71XyfNTZ6i9surKv3aMrl6R+eKgTxCrAecvr3vG
	4IMFgH5dgd9wu45kYBP9Tb5dxQ==
X-Google-Smtp-Source: ANB0VdaMrQf4P8Z8x1FMxGFgJ6/8qZF4hcy/v6k+sWZbDbBY7llM4BysBWkCjF6jo4fVdn8bQro8nQ==
X-Received: by 2002:a17:902:7145:: with SMTP id
	u5-v6mr2507754plm.259.1536761426961; 
	Wed, 12 Sep 2018 07:10:26 -0700 (PDT)
Received: from localhost.localdomain ([42.111.16.110])
	by smtp.gmail.com with ESMTPSA id
	r19-v6sm5934763pgg.39.2018.09.12.07.10.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Sep 2018 07:10:25 -0700 (PDT)
From: Shyam Saini <shyam.saini@amarulasolutions.com>
To: twoerner@gmail.com
Date: Wed, 12 Sep 2018 19:40:04 +0530
Message-Id: <20180912141004.7929-1-shyam.saini@amarulasolutions.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Approved-At: Wed, 12 Sep 2018 07:21:21 -0700
Cc: yocto@yoctoproject.org, michael@amarulasolutions.com,
	jagan@amarulasolutions.com, Shyam Saini <shyam.saini@amarulasolutions.com>
Subject: [meta-rockchip] conf: machine: Add support for vyasa-rk3288
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
X-List-Received-Date: Wed, 12 Sep 2018 14:10:29 -0000

This patch adds initial support for the Amarula Vyasa Board.
With this patch, we would have working images for vyasa,
single gpt and wic image support would be added later on.

Signed-off-by: Shyam Saini <shyam.saini@amarulasolutions.com>
---
 conf/machine/vyasa-rk3288.conf | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 conf/machine/vyasa-rk3288.conf

diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
new file mode 100644
index 000000000000..9c634325451e
--- /dev/null
+++ b/conf/machine/vyasa-rk3288.conf
@@ -0,0 +1,14 @@
+# Copyright (C) 2018 Amarula Solutions
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Amarula Vyasa RK3288
+#@DESCRIPTION: Amarula Vyasa is Rockchip RK3288 SOC based Single board computer with fully supported opensource software.
+
+require conf/machine/include/rk3288.inc
+
+KERNEL_IMAGETYPE = "uImage"
+KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
+KERNEL_EXTRA_ARGS +="LOADADDR=0x02000000"
+
+UBOOT_MACHINE = "vyasa-rk3288_defconfig"
-- 
2.11.0


