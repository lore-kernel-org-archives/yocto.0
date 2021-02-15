Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web08.30049.1613388073509546295
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=bbyLYFV4;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id E55BFA90;
	Mon, 15 Feb 2021 06:21:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 15 Feb 2021 06:21:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=WQSzmAQeluZu1
	oc6LHr1NdZk6Nv3tl+Nrr7dDfn6wp8=; b=bbyLYFV4A+AKlD0M2LWwmngydapkA
	ifaI1Q7ss20HbOTMSaT3hCgwHvpIS89AhcO8mIbsR+f3DNziZPUnj4D1sk30MXBQ
	aTi3KxzW4a2TJhuRVXd7SQVWmK0E62e6HPzHu0SX5bXmzyQv8P710TpBiYAsW5WA
	wgNtn7zOQyHWRssI8PHoC+iDTgReC421oHZmngV1142927qmrSAxpkeGKnEp1cGN
	pDtobwE3HsKClndXsIwUfLdBJMU1WY4Cz003UIaHujfQVXGS9ehPzuElDPiNEurG
	SJRg0YjNuNMjrLIeWw6bXrb1vJqu8pTXdlsOnREpjdouWb3AIznLaKhew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=WQSzmAQeluZu1oc6LHr1NdZk6Nv3tl+Nrr7dDfn6wp8=; b=YdfzFB95
	RNORRZYBpksLO3OylgRCPF0hoVmf3XVGTsdhbfzEtqKxqU/Pw1KNw+0y9YUhVDsB
	E1YYSdpTJlIN/OcxKlR1WAoq7dLCPqx6RXlhdBnsy5RzZLNhTk9djYgfC45GRldw
	2T+Mxf3zoTOO+1nMhM/+0+oKQ2onZyWB3BMKhHK7ipj/m5X6Qt2UJ6wYjut8HF4K
	JzLCqFDbu5FmTT9XtBKZ50/Ix3ZZRgM8Dfo8Pgr46bc6NfROndQPudd5FKmb3WRG
	/Z95zOfDm03RFOpuCrGeEo1tEo4RvpEWSuCqSmhnzGCO37pndSHAfyuytLoE3kEe
	Rtfbxv7824a+kQ==
X-ME-Sender: <xms:KFkqYIFubbGaYaBJgqqfo-C_GUIeMB5gG6aoDkAHqTza7IqEDXmUxw>
    <xme:KFkqYAbuNCiFytSnzSol8qND-CBndGdxfd79cqX4VgUMxRHkOPLDpgoyLl1w7_XfD
    edR_FWFOWb8HB3wiP8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepleffjedutdfhiedthedtudevle
    duueekueejudelgefggfffkeeitefguedulefgnecuffhomhgrihhnpedtqdhrtgefrdhi
    nhgtpddtqdhrtgegrdhinhgtnecukfhppeekiedrudeftddrudegiedruddtvdenucevlh
    hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihes
    ghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:KFkqYIV6d-HcIYBu5z6s9iAqEJMZViGj3vXS30b3z_7XUi-rq9VSQQ>
    <xmx:KFkqYGnGdxVpJlXH0PhlRl9QvdK0zWI0bOGqNTtSGInSbzEfxQDKsg>
    <xmx:KFkqYDBfTN9QSRZBXEslq9QinYvk0J-SAJ6wT7dAKWfpXAaLXoCRPg>
    <xmx:KFkqYOp8cFdMEwkGYsL-B8krdF-uzdgk4I50hgY3zT1IMRtBhLe_NA>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 2C9E91080068;
	Mon, 15 Feb 2021 06:21:12 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 14/14] zephyr-kernel-src: Upgrade 2.5.0-rc3 to rc4
Date: Mon, 15 Feb 2021 11:20:03 +0000
Message-Id: <20210215112003.2025053-14-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 ...rnel-src-2.5.0-rc3.inc => zephyr-kernel-src-2.5.0-rc4.inc} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-kernel/zephyr-kernel/{zephyr-kernel-src-2.5.0-rc3.inc => zephyr-kernel-src-2.5.0-rc4.inc} (86%)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc4.inc
similarity index 86%
rename from recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc
rename to recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc4.inc
index 4ee9883..b8aa4dc 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc4.inc
@@ -1,5 +1,5 @@
 SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "v2.5.0-rc3"
+SRCREV_default = "v2.5.0-rc4"
 SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
 SRCREV_nordic = "f3434da6446380fcdd426dbe2866af21d0d549b6"
 SRCREV_stm32 = "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
@@ -7,4 +7,4 @@ SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
 SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 
-PV = "2.5.0-rc3+git${SRCPV}"
+PV = "2.5.0-rc4+git${SRCPV}"
-- 
2.30.1

