Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web12.9534.1613489653535654916
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=m47VhBiZ;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id 088B3BDC;
	Tue, 16 Feb 2021 10:34:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Tue, 16 Feb 2021 10:34:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=7RHs4SN1FCyEu
	zaEDSAxaixEaYNV/nP2OtRVHXKH1ZE=; b=m47VhBiZgU4XVVMaXZd3gQ8aIENVY
	HFVvKmNE44mGx74J3Ci10ACOiNjwSTliTokMBX97sacaN7+45GNbzFUdMoIyZ8RC
	T0sa9Lv4FwGdCWOWNb5TguLRaZjrYWAnLl1gyPAv7EKmTJL2gkpfWnDN3Llt9//h
	hqd5sOMPAj5EB94xIOWERklWV8fIAEbdp2gB5IL/HMmAK+rtfRWOqCnWyw6QkJ9w
	+6DfkXI+WIqZOWkno2/3obOCZkIpdrBHujVTgTj0Qw/goABG1p2l77brSW0fzK/1
	C0d3b6K2L3jLiRii8xZ7TjQSPf795BaKEam6v2xDI+sH3Xrd7wM2ICJ8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=7RHs4SN1FCyEuzaEDSAxaixEaYNV/nP2OtRVHXKH1ZE=; b=wm6l57tU
	mjxUmS6tTfi5EMMP58JhBAMyI+LrAeyV6CoPqc7DLrgaFOZyGC5WMjs8i2p6hVZX
	BHIrsNNXZIpLiyXlhWyqQG6b7X6Qt2q9sUZRjg4WxRKdZ1NslzYV4OR7t+B0gAhW
	KfiymN/7LltstibyhjFZgiH6U7a7oTSA2b031nb6szL7Ja+mxdw+B+p1prjNU7lT
	SLI+/38K5yXcvJWXwT7Zy7ALxRE4VAIYK9qwEnLk8kRu9PdstJM6P/D0CFjngmYQ
	BvQiX3Xs++YI4oF9jYjFFUgS+mrkJGBRNI1fc8qqsorJAVSYbCM7TYV/hX39sKKX
	gn7Pc610FfpgQw==
X-ME-Sender: <xms:9OUrYGZ3Y9yKvs33thrCtnQw1dEvDDtzKXLwhQOKF10JFdYYNG3z9w>
    <xme:9OUrYEGAVJjw99Z5TXD-8vuqjF1E62ensV8WPwUD_KhEKQyXqIJ_UkmnxBYqoRzDO
    p-ymVkKd0mK8A8bI30>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:9OUrYJrLog5hS57JpdZTRSS1DuQf5_0CSM8EXlPh_FEWpwe3mSG6-w>
    <xmx:9OUrYPyuKnY_yIB-n-qRAcVzh2P7Qn0d8XCXjMykG7YsjFfZMufpqA>
    <xmx:9OUrYDOo98rTR-cC0nmd7yNdJOfH9mA-w9eWCrXaLQefJsC3kX9sTw>
    <xmx:9OUrYGa-Fm0FehrWuyV1XEK4AgLcRIT2p1ejRR1beZ-JRfMPGYXj8A>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 64D1A108005F;
	Tue, 16 Feb 2021 10:34:11 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 08/15] zephyr-kernel.inc: Remove include file
Date: Tue, 16 Feb 2021 15:33:03 +0000
Message-Id: <20210216153310.79138-8-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This file has little advantage and can be easily replaced by just
directly including the src include file.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-image.inc  | 2 +-
 recipes-kernel/zephyr-kernel/zephyr-kernel.inc | 4 ----
 2 files changed, 1 insertion(+), 5 deletions(-)
 delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-image.inc b/recipes-kernel/zephyr-kernel/zephyr-image.inc
index e8b8871..c77692d 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -1,4 +1,4 @@
-require zephyr-kernel.inc
+require zephyr-kernel-src.inc
 require zephyr-kernel-common.inc
 
 inherit testimage
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
deleted file mode 100644
index 903973d..0000000
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
+++ /dev/null
@@ -1,4 +0,0 @@
-
-inherit zephyr-kernel-src
-
-S = "${WORKDIR}/git"
-- 
2.30.1

