Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web08.30047.1613388070270518626
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=ndS7JOj8;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id A78BF6DC;
	Mon, 15 Feb 2021 06:21:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 15 Feb 2021 06:21:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=7RHs4SN1FCyEu
	zaEDSAxaixEaYNV/nP2OtRVHXKH1ZE=; b=ndS7JOj8Xd55EgPJ1rEdRMxkwk5XE
	mLLsp9yHirYtLy7YLcQ0SU8iIBVBENVxqXx+o4TZ+nHnvXcAJb9KYxSMKYqwNyRH
	R7dRrGyzZcuK3mrIxQmOCCvCYDQwb4Glg+iXUcMDPMer/4c+dcJU9hGJB/bWW+H2
	XoMTxIxYU/meiSZIrhj76oqg+/S1+IqbjnS+JQJ35DsuQJ09W2pRYqDHYdgDlgXU
	szVFhDPE/2ugvedpK18PF0z1z8Fi33x4dm5uIhg+vZ/wxd+DrrL7i7XP/9kipKK6
	/bqQvPTyrP6/jctYclPUAbZ2lmx7+FC7MvgqfKSNLF44B4PlCpJIjYO0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=7RHs4SN1FCyEuzaEDSAxaixEaYNV/nP2OtRVHXKH1ZE=; b=C3LuELUa
	Nv54HwLWYo1JUb15vrCEvrhsIFQakq4huYoVNIeMMyKzyc3E731SX7WPdeohx5S0
	kkImWT8VNTLqBtd8Ju//CO6HSWhBjox9UUO8B2hP0EfiLbNDptVmb6lhmkLzviNU
	dMKIH1RVBfv4mz9RSLXlJJL7qeeOVp7rFFhzGFxtNJmr8gwA9O/d0x/RrReYepn3
	DVVo5eWXg1RFTfQ5eQg1PY8pVGkMagSLaA6jXIlm0PfDm7M12ROnYk5tOtoEHzIG
	8Kfc+VgcQ+w/7F5DF1PV5NTjB4G8+JHIFaf0Ji8RNL2WOXcaKwYEUqhpJpw2q1iL
	20eNmdm9mnQwNQ==
X-ME-Sender: <xms:JVkqYIthQHNspPJxxMml0fsvyW4nDgQ93jh4aNMbOP9AE1tRK-5oZg>
    <xme:JVkqYFbrpcg04Vc1pWcI_-Nk2enbRYwNKIOjPpT1dOjt2x-6mEhXIb4k8TLyXGMVR
    Yn3Er57xqB1nsBvx_8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:JVkqYAptgagEi5gFWekE_5w6mBq2Tq8OqZm3L6NW9_DTqUb6yQxw9g>
    <xmx:JVkqYC9W9fkb6ny6WzqcIBrVazrIzar2F87mgSHQTCpKC44bxtX1Ow>
    <xmx:JVkqYH_1Nh2az2jPtoD3xfY_Id0jUH4wJzwP4PDLBwYmNzA7SINqRg>
    <xmx:JVkqYOndoDkQ3Y5HXlbCRIZsqoHQZOrl7ubyZarBRM6jLl6lTvIJug>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id DEE08108005B;
	Mon, 15 Feb 2021 06:21:08 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 08/14] zephyr-kernel.inc: Remove include file
Date: Mon, 15 Feb 2021 11:19:57 +0000
Message-Id: <20210215112003.2025053-8-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
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

