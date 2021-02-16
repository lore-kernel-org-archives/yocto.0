Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web12.9538.1613489672188338169
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=oVhOBDJA;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id AA280B59;
	Tue, 16 Feb 2021 10:34:31 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=WQSzmAQeluZu1
	oc6LHr1NdZk6Nv3tl+Nrr7dDfn6wp8=; b=oVhOBDJAuFEEDdQ/GlxQjhoLgWfG7
	OfQfP9Hfa6f1XFKKzyV7MUCqRFScZL2ULSw05N+69RHqJ5hvc0XVBBqBZcAONS5l
	1rOfF21j46LaKexvP41aBLSBSGyLlv12URzdk/YfDD4voet1CdwKWVp/f4mJfbTy
	BAzhKRsKsW6ARu7k1F06AB3fWtMBX87PBazoVRZuc93VPcaO+XQvQ5/lLAfutBG0
	nYl6M4BpU3tI+R3Cc1G21ynnrNom6yWVnkS/T0tkng0RkBaEwkFi8we47dRORTCd
	oSMUbYHgPabLJ/wqcXOGOmW0KEhrhPKqjGu7O3mkZBurbP+PQ+2pOJRBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=WQSzmAQeluZu1oc6LHr1NdZk6Nv3tl+Nrr7dDfn6wp8=; b=mohJM/vd
	D07cOOv3VRzOXOwCNKhdHQJ8HT223fScgvUYjwxqEs9TR46edRCSuPCtCIsvCxTa
	bhBEpUQ8scDs2p4/TesnO/SLoBiQK+ZtA+eej8iDq9WTjaXQkTf91qv+4hPnPh03
	WYyhxm7VjJOncIFsPV2eJCe/e7bwkqG37J4cpR3f2ZAd2YpRe16CEsimVrz73WZ0
	VNieq679aCt2UaaZhojAWniVtbhFI1PN2CvGQhOQa438UN/xZbOMe0JX/gh3CAqJ
	tK7mil82zZSXis0l25AFoKGiPY7ZYTd5JfpS8QwGezKcB8wJ5oPCmtASTho1gkPk
	uuvHcI8nptVvxQ==
X-ME-Sender: <xms:B-YrYBORosfXpq26vWR7Ym3N70DtxgKoOQc7Jzikn3eTJdTgj8Da1w>
    <xme:B-YrYD_zCI74ENJMePQXHjOnd2kOBSJKNaZMsunIJo0TlJODtNFhsQdzgvY0C5x4V
    z3t-coXQW3VGNyjRpw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepleffjedutdfhiedthedtudevle
    duueekueejudelgefggfffkeeitefguedulefgnecuffhomhgrihhnpedtqdhrtgefrdhi
    nhgtpddtqdhrtgegrdhinhgtnecukfhppeekiedrudeftddrudegiedruddtvdenucevlh
    hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihes
    ghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:B-YrYASEzlsztUad4Pr7FZPTdvpGqhhxORDQgWiPVdV6nNKDdiZ39g>
    <xmx:B-YrYNs5HRIqqZSjbvs3HMjilZ5G52q3vbXcTv-3yHc8QlZg_w9rBw>
    <xmx:B-YrYJcolHQCZtNzjzj5XetR6AMz3Ettt-e70_wxjA7ik_gKOLp56A>
    <xmx:B-YrYPquGpdikzSsitM3lRlt217PwGZkvuesAknMpxp2MxpBcxQOog>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1E875108005F;
	Tue, 16 Feb 2021 10:34:29 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 14/15] zephyr-kernel-src: Upgrade 2.5.0-rc3 to rc4
Date: Tue, 16 Feb 2021 15:33:09 +0000
Message-Id: <20210216153310.79138-14-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
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

