Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69D4C6FA8B
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 21:22:38 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web11.780.1663104150119820523
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:22:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=PIorTASv;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 5FAA9320093F;
	Tue, 13 Sep 2022 17:22:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 13 Sep 2022 17:22:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1663104148; x=1663190548; bh=iG
	c0ScSASIrQRP0BKgHL5W+upzjyzqKYEpRDDi65RQA=; b=PIorTASvhMzvdXbup/
	4JhxMuKPH6NV99J5y8aRe9xHoDSbGRvnDprbhTYj/rzAF3XS6eySSP8cgPxah9PY
	e3zMHlywmHE0f35IHGe2elrqiiPNi/D5fmXQCrw0TJgPlqHkHAG9wduYPtqWlNYm
	x+xal1nKVgeXl81vjJS+LgNzFPRdi/KkSk/uPqcXe3TBmr2dxnyuVVW10RVpK0Qv
	eFpxZjgPJfO3f/LfzdsiCX/vE6IUIlM/67aN32ON2n8IWDI9byzt1eBkik1BP3yV
	RhLZwQsnKmrlcN4GOLwxIgl5mGXxPs2qXklJOFg0Nq98UMu5onYkv6ot6rS+ISyo
	tCOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1663104148; x=1663190548; bh=iGc0ScSASIrQR
	P0BKgHL5W+upzjyzqKYEpRDDi65RQA=; b=NLYGVAaQSx+RTt7thHl66i9ZK5OCw
	5JfhPY5YlorAoP+HrrxD6KmdHdCOAgUPkPHFUaj2g7JVYk9S+BwPKlbi7o6+G83x
	0Yr6WTTRTLLIPi0hj5vtPQSMXKggd26+A0Z9XTQThLMFs4MV7yEpAKbS6Eve1Ne/
	KEnVHZbApa3utKXio0rveS+ioVC7o4mCQuzVnwpJm35FXuiMhdRPhx7ZxDCgWUxU
	rcLvA/79MQ6xlmizbT3I2kAJ1O01s3689JyXnGQHwDbZocSboQH/tr96R6ZCAJDV
	T5wIiLyw9h1DeYVz67a+0Tey2SmsGGN1erOuAOouX95GqAAj+aHMcrEUw==
X-ME-Sender: <xms:lPQgY-m-UallJFOfrF6he7DDXNhSQhZ0TrcB4kK87lxS-J-oJIBJig>
    <xme:lPQgY127Fd5pq9s6BhPT3Ys9TlzTuvbE5t9yo9JseX4LVUSongDEhkhYHcSx_47ij
    mfgKuzxsPnM2icdxMw>
X-ME-Received: 
 <xmr:lPQgY8qssmxX1KusFW2v0ZY-CKKBYXioacRgYHnVDBXNgK1SxxiquhGx3L1VsXF3-TpxEe4zeKm4uP0QE_1lA8XuGI_91O0jx6gX3wnlltN5vEzMgve9h2Kl>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedugedgudeigecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
    ekredtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeejhfevhfeggfffjeegle
    ekjeelieffjefggfekgefgfffgffeifeefgeehhfdtffenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtg
    homh
X-ME-Proxy: <xmx:lPQgYyl6bIoykD2ikbW7O2QIJqs3U0xzBMxJCYdrGlRxNZANSngXtw>
    <xmx:lPQgY82dAM4oLF1xAyycCBD05ktwTRjOWFoamp99Rl83Z_1Oao55Cg>
    <xmx:lPQgY5v66wMgxQGB-Iuqf6vAUjxv5eqfNUCMDS_UAJ6joY61aQEK_g>
    <xmx:lPQgY59BH3JL7rb-liMPWgTP9Jfhw15V8jH19QrgQn64mfG7j5x-bg>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Sep 2022 17:22:28 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH v2 2/7] raspberrypi0-2w.conf: Include the
 RPi 0-2w dtb for all 32-bit machines
Date: Tue, 13 Sep 2022 23:21:59 +0200
Message-Id: <20220913212204.3210494-3-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913212204.3210494-1-andrei@gherzan.com>
References: <20220913212204.3210494-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 21:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58031

From: Andrei Gherzan <andrei.gherzan@huawei.com>

All 32-bit machines are sharing the list of machine dtbs with the
exception of raspberrypi0-2w. Move this away too to unify the
machine configurations.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 conf/machine/raspberrypi0-2w.conf | 4 ----
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index a2edf06..beb1f08 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -68,6 +68,7 @@ RPI_KERNEL_DEVICETREE ?= " \
     bcm2710-rpi-2-b.dtb \
     bcm2710-rpi-3-b.dtb \
     bcm2710-rpi-3-b-plus.dtb \
+    bcm2710-rpi-zero-2.dtb \
     bcm2711-rpi-4-b.dtb \
     bcm2711-rpi-400.dtb \
     bcm2708-rpi-cm.dtb \
diff --git a/conf/machine/raspberrypi0-2w.conf b/conf/machine/raspberrypi0-2w.conf
index c360d90..63c7bfb 100644
--- a/conf/machine/raspberrypi0-2w.conf
+++ b/conf/machine/raspberrypi0-2w.conf
@@ -11,7 +11,3 @@ MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-rpidistro-bcm43436s \
     bluez-firmware-rpidistro-bcm43430b0-hcd \
 "
-
-RPI_KERNEL_DEVICETREE = " \
-    bcm2710-rpi-zero-2.dtb \
-    "
-- 
2.25.1


