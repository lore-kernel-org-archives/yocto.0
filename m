Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web12.20895.1617020640885259477
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 05:24:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=miq+f0LJ;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 204F25C00F7;
	Mon, 29 Mar 2021 08:24:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 29 Mar 2021 08:24:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm1; bh=TkTFtQq/dsK++6dGNv+cW9u2SL
	f8710VIGLrq4gqhY8=; b=miq+f0LJ3mR2IxO6aN+J4RPDz/cX8A7oMYox9ByoxV
	DUp7FyFzBPoX6ZFBKnJIZhehKKr/npEqTrHBoxw50RATimeBaKwFyf0HC4EORKa/
	u5dFVjHkCreRf1wx8MYqgywavpIVGSp2WRpBBufRzPmfPMdGlkt1XuOsbXfLAH9N
	YQFy3crm2WJBh6Pmj2bzou0oSuCJB8U8L6Scv3xKwXvsvBtas9B+VTJj0F4U+6mT
	FQ2CjWjyJpsW2xxznivD2GtDep1uFG9lodktdVOpUncCJjU5pF643xhkXhez7Dj9
	IbKLaPK/ltDaajcalAbMa9Trn/qENDSplKg74ZEHW90g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=TkTFtQq/dsK++6dGN
	v+cW9u2SLf8710VIGLrq4gqhY8=; b=gTFhlRqmGIRHpSuk2vUK7+lNuZb5wJJtH
	NIwV2Qn9Bk/GuuoPbvO5uAo0JmoD4xGNmpBXMdGJVt7hsN/pNByx7FSd0MnxxNtK
	HI4jXKbGPug6xIz735DJHoencw3z+03NcCWiLbbDbmZM2N8Ren9IVIBW3YeZDOql
	GAKausoPUAOdfji/7ef2Ee+/9OFQxC8ADYfUBiXXT73fXR8lwpZasnSe2uXaLyOf
	Z465ljnTrfFrHxdhGRVVZZJOg4vpw8nIpl2oyK+gD9JsxH9D/CtmowFW8B9pPJWG
	9Ew8iMa1B2QgClNL7gAsRlEJ1bK8OgoSmpf9K08CE8kVhmm/0iWGA==
X-ME-Sender: <xms:38ZhYDJeRgbiw1DmjH71erA_8p-zoNPz9ysiCVZ189YXG0mrezDKzw>
    <xme:38ZhYHIjpV4sgYCeSJIko5mFZKD7dyu6A6V08nDXhLFkqA2_5FvwMBARZwpLN3_gG
    yRfCJxZgHDUvi6_w4I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudehkedghedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghisehghhgv
    rhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpedvleefteetkeekvdfgheelteekje
    euueetgfetvdfhjeetvdekhfekledthffgteenucffohhmrghinhepghhithhhuhgsrdgt
    ohhmnecukfhppedutdelrddugeelrddvudehrdduvdenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtgho
    mh
X-ME-Proxy: <xmx:38ZhYLvboCp9GRVWQfofunr7SxKOngD_PPNyc6yEFCIjIh--J7XF2A>
    <xmx:38ZhYMb8Lqsh7lhZ9WGfYYZcGXpgA4qrSVVVETKVUqrDlsSd522dKA>
    <xmx:38ZhYKZI5xBwfqN2q7HIELmpEjI-OLCZak3KHs5lvxpAQw5gcGiVSQ>
    <xmx:4MZhYDCViXZ7VtO2S0nIv-Slb4Cf8R6SnpCv3oLab6XTLUHVE5gmHw>
Received: from qwirkle.internal (host109-149-215-12.range109-149.btcentralplus.com [109.149.215.12])
	by mail.messagingengine.com (Postfix) with ESMTPA id CF4AA240054;
	Mon, 29 Mar 2021 08:23:58 -0400 (EDT)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH 1/1] zephyr-kernel-src.inc: Support samples from external layers
Date: Mon, 29 Mar 2021 13:23:07 +0100
Message-Id: <20210329122307.909580-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

The inc file references patch(es) local to the inc file. Including this
file from another recipe as part of an external layer, will make bitbake
fail finding the files referenced in zephyr-kernel-src.inc's SRC_URI.

By including an explicit path to the files directory in FILESEXTRAPATHS,
we make sure that any recipe including this inc file will inherit the
needed path.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 39cbc10..8c987bb 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -7,6 +7,11 @@ include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
 
 inherit cmake
 
+# This file might be included from other places (like other layers) and not
+# having an explicit path to the patches directory, will make bitbake fail to
+# find the patch(es) in SRC_URI.
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
 SRC_URI = "\
     git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=master;name=default \
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
-- 
2.31.1

