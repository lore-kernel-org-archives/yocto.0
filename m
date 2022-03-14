Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEC5C433EF
	for <webhook@archiver.kernel.org>; Mon, 14 Mar 2022 11:12:37 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web11.25102.1647256356904983597
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 04:12:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm2 header.b=rk6sCa5u;
 spf=pass (domain: gherzan.com, ip: 64.147.123.25,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id A56493202069;
	Mon, 14 Mar 2022 07:12:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 14 Mar 2022 07:12:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm2; bh=1qe7yWw2I7a54GZUfZIG6rwjHH+22QcrS186c5aqk4I=; b=rk6sC
	a5u31sw6D+ceWg4cX4S/uMiml48BVQ4HEVG86IZXz68kTCXNSxxxgW0dj/EDrwdI
	frcqtQtEdG7N0bnETza/MgeVaQ/qJOMFLTGckZmmvVY2PUIXUffxBFy7fUQ5PQ0Y
	W30ejrgKvX4ziOpjoL+pBgpq6o8LWm3ukWQ1zDmPS2DieKskWSGTIgNOw1BhgWzn
	kOeTnxNryuH4JO0OS/PIUZeRw/8pliP012JpR+VOy/26ToTXg+1LMcOJCR4We0Db
	zvbRHkAuDKk8rB4wQjuGG2LSuFxdgLVsFLgTkWkRXkJdAhvXFKykHUidmMXdjGqO
	bmX1x6xMrdrlM2ZKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=1qe7yWw2I7a54GZUfZIG6rwjHH+22
	QcrS186c5aqk4I=; b=WOvDrTbJPpB1OUSYWNGrhnb92OrBieZ/k3X72CZ3r6yFP
	yiNfkF1E2EpVsZavectv+q+DIIuFUfjIedm7ZCvf6Ynn7e/QoV8gBWEiT6Kfophy
	5r6tLjMNCtJyXkDVAn1K45in830K742WTtmgUfpZM1pUjR/S6y/+6ZCZn7ulcNzs
	WaX5wcKFRvuhtv3IHy4NKJRn8xMs6bFE3WSwHE1FUz01ViwBNKU3QVNIEMLj8Cva
	iq9tiDjaiyIz410mVziraG+Gb8u/UG/f9aUJEYjyYzA5BE6DQTYgaorAufx+wc5N
	n4rCQXQl6i804w9dWelxEGlew4Q5n+SAnBMPF43gQ==
X-ME-Sender: <xms:IyMvYrN4LYZK6DGpcVtJnZ7htFA4UYvXSwYXl6mbWAj7Vg5OHvirvw>
    <xme:IyMvYl9Sx8Isr4p5zVBgcr9m9Gw5xpeHlbe_nGEVlH526f0CSg3YrZ2vfzOt-fk0A
    O92ZOsbstGmr34dgd8>
X-ME-Received: 
 <xmr:IyMvYqTE00u_wZLdh_zvSjqDuMJFtTd2O3sS0EzQ7hiJZfZ3VIYwkNUdOtOtj5EVjIQRNvdnstINUtgxrmi1lCnmCoG39QFbt6xAxM7mO18X3lC79A6EtyjC>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddruddvkedgvdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghisehghhgv
    rhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeejkeetffevkeelhfevleduueekff
    eihfejgfduhfeiteeuleeltdegkeefieffieenucffohhmrghinhepphihphhirdhorhhg
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnug
    hrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:IyMvYvt96U8KQLut6yfDbTo86dWi_TOB1RrWGA8x0SVX6j56Wn2vYQ>
    <xmx:IyMvYjfqQdfRlmN39TclQCJHfmA1n1uRHh5SbkxA8H_h0qdh98hrVg>
    <xmx:IyMvYr2_GP293xAsvnD_djwXJdc_F_31bN60-zAO6YurcgQ7M0-DOw>
    <xmx:IyMvYrEt9ofM3TYupZS3tMyNwv2uncPPpKZl-XgdIgtKg8UtO95QXQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 14 Mar 2022 07:12:34 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH 1/1] python3-pyelftools: Drop recipe in favour of
 oe-core
Date: Mon, 14 Mar 2022 12:12:20 +0100
Message-Id: <20220314111220.1725808-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Mar 2022 11:12:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56427

From: Andrei Gherzan <andrei.gherzan@huawei.com>

All the LAYERSERIES_COMPAT versions provide this recipe in oe-core.
Also, west seems to only depend on 0,26 which is provided even in
dunfell.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 .../python/python3-pyelftools_0.27.bb              | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-pyelftools_0.27.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-pyelftools_0.27.bb b/meta-zephyr-core/recipes-devtools/python/python3-pyelftools_0.27.bb
deleted file mode 100644
index 1405fc5..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-pyelftools_0.27.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY = "Python pyelftools"
-HOMEPAGE = "https://pypi.org/project/pyelftools"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=5ce2a2b07fca326bc7c146d10105ccfc"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE = "pyelftools"
-SRC_URI[md5sum] = "061d67c669a9b1f8d07f28c47fb6a65f"
-SRC_URI[sha256sum] = "cde854e662774c5457d688ca41615f6594187ba7067af101232df889a6b7a66b"
-BBCLASSEXTEND = "native nativesdk"
-- 
2.25.1


