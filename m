Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7C7ECAAD3
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 23:05:58 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.4915.1662851149674805820
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Sep 2022 16:05:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=l0uCxebj;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21,
 mailfrom: andrei@gherzan.com)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id E5B9932004CE;
	Sat, 10 Sep 2022 19:05:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sat, 10 Sep 2022 19:05:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662851148; x=1662937548; bh=iG
	c0ScSASIrQRP0BKgHL5W+upzjyzqKYEpRDDi65RQA=; b=l0uCxebjm/iRIMueww
	7YKK62YqjL5k4FCAC3ynrjIj/MgE/eSQmhm/P2o4VgysCY6q6mxgW0J/PL7QpifH
	PMdexZqnYqa4/5nu3S8x5c8s17Gt4qKTYaFc5dYVHrb8BzcO6e/IUM/7PJbAkjkQ
	ay5y9dOl0C44OK13HdjekI2P2RDjFAyvtWFcjJiA0jzxddpCo2Ux2gmG6/bVtHze
	3PEB1zm276Mvmb8g3LFtdNizZABwFP4OP/70rmXKOJiOpadOsR6GBnJ9yUoX/pqJ
	wQbx5RhzSwFkiBbk4HSPYkcSOOBsqqiL1OXgmFPEzGRbpE1o3WxFG0CUzE4Y0rPC
	5VBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662851148; x=1662937548; bh=iGc0ScSASIrQR
	P0BKgHL5W+upzjyzqKYEpRDDi65RQA=; b=GEMknL1xuWUjoRgi9SloO9AiOGpT/
	74k+6sB96K8kh271xH3tu8m7dqYXXgKKtoFOSA6pKDkUMXw4ITA9Y6NXLPf59yXc
	e5PGbO9LGtOnb176loGM+u8ry4uIJcHDjxjKypjuXHuvMdlP3vaWvlBinQb5Bmon
	nBZ8l9JZ/vyagiKMGswOjaBmaEJyQn168k1TN7x+fwlVRMiIfXUaRHPUGk2re/pw
	QRWHHZ5Mfv6Fn3yuBL0KHYLC0hA6sTqS2Ogxqjplrq2/V377jEuiaS9KdMBCdE3Z
	S/tZBukehvKVFnw14EUEgBEdctYcV9pHk5nqZa4OhbVOduO0P1nlTpBrg==
X-ME-Sender: <xms:TBgdY2tPY9bD02J-vdFF85jfZ-dsoUtDiQeM6dU_veXfBsfwGD60UA>
    <xme:TBgdY7cOPcpL-WNpCvhNXrs2W-A3yRdTjxcfBz68XRuW57n5dEHmMmdgSmlOcOWF5
    iRU9-BkEXqQ6OlFrtw>
X-ME-Received: 
 <xmr:TBgdYxwGTDG7ZS4TY7VSkL5nVzJd5S05a3BP6IWgr8XXqMI0Sb6iFquThbpJ3mbkFijXfdM4aMtLbxcXxsO8-tx9deuV7NSS5poz0e7iFqywj1H2ILGQwua_>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtkedgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjefhvefhgefgffejgeelke
    ejleeiffejgffgkeeggfffgfffieeffeeghefhtdffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtoh
    hm
X-ME-Proxy: <xmx:TBgdYxMuj3ljqGb1kv-mqZu9_D1NiVF-Lu6U2SaK87hZ_ZtKDv5uAg>
    <xmx:TBgdY290I5WEsbNB1ZSI4UQodxlZSQAIzgtIR561KZSF-Ju28BRHlw>
    <xmx:TBgdY5Xp7nPs-UUsD093bKhrr-PaqCettpJigk633vU-rLGTQeA_7A>
    <xmx:TBgdY8nIKCozprkSCR5H_htxchsXGRNl-MdCLz5NS-rgUeWGHLFGqQ>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Sep 2022 19:05:47 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 2/5] raspberrypi0-2w.conf: Include the RPi
 0-2w dtb for all 32-bit machines
Date: Sun, 11 Sep 2022 01:05:28 +0200
Message-Id: <20220910230531.4084156-3-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220910230531.4084156-1-andrei@gherzan.com>
References: <20220910230531.4084156-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 23:05:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58013

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


