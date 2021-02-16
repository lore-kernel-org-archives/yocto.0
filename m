Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web12.9529.1613489641046847246
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=UfvnxoOW;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 48B91B47;
	Tue, 16 Feb 2021 10:34:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm1; bh=pXtcTKiY0YHH2+mdoWQTjkI8dr
	r5YfMporokPt5bMdc=; b=UfvnxoOWtYYmMCRkocp/NlleX8+BuPVAjOxg9CU/5j
	SNTSBapUpJkAvJpjHGOMs07cFdDazepInRIB8FtgN+uSRHW7CW8z0wQ/VZjQJ3Kx
	HzUqziyYrnv470xEJi15JiEkIFWADY8bsz9Yzbln65P3k4Vab420V43wtZZMV1OD
	JjI+kE4FXGBWj3kG1nR4Usb43JUeX3C6Ta0DC+Cr79Aemw9xQXyEx0Kht2wp5ipR
	pRTvBgi02OO0Lbh7py+AZ94iRt7hAM8ffUVxyHapl/xk6FGfBl74rfRSgNCYUv9c
	ytHcbJXLMPKXr/C4BVuNsWlkOBOWDPfklHv7rWYkJaEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=pXtcTKiY0YHH2+mdo
	WQTjkI8drr5YfMporokPt5bMdc=; b=rSqFbDQBwBFm/Jy+qe+EtM+pBX/rTpwhO
	KZuo/cqBw/rHrcwOxiFj3847SmQDyKrOplS256RieFdx/TdLv5QAjmIBri4UtJJZ
	j1bZWTFQADDrtO/T+FWjs2ciadcrY9iUxRLuP8jHF6giA8dAVIzqstfQMEZt0kps
	GpV76jOksoyVe3O93dMQGKwzlhcaBeNFykeRFjLOuNDHG8mk5cLPzEA/YhV1wVkz
	G9F3aOateksbv5cSsLCIj1T9gc4qU7bDPKvmJ/u4myM4o3hyT98h18vNEjzjLmKb
	EhU2shkh3zvJCTqVuuvrK+YumXQFSw4x/pMTvkH/xJacAAFq89xWA==
X-ME-Sender: <xms:5-UrYK-v1nCOMIxmNATTnmymPGrPE60NGpQscRDQJKDXqbIcqKDgZw>
    <xme:5-UrYKIr-7-DglUj_-ulF_OCbjbHA0nxuL-KHfJW2UR79wTXLvZ2BRS206I_4pJvw
    fObUalVIxYl10yGdzM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhhvghr
    iigrnhdrtghomheqnecuggftrfgrthhtvghrnhepvdetuedtuedthfevgffgieefheevte
    fhueffkeegieeigfekhfehheejieejjedunecukfhppeekiedrudeftddrudegiedruddt
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
    gurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:5-UrYBElqLAd0yS8ASV_ZKNGaFjxyIvo38-7rWLHvP43rV0dgpv8sA>
    <xmx:5-UrYGyBO2Z1NExL4YIvXOFNq-Ytn1JU_DvzdV45mo2DN8xu1vCswA>
    <xmx:5-UrYC6TEFY9t5DQRTDSXkvU2Q7dVSxcSJl4ZoE1grKduS_ApDPkFg>
    <xmx:5-UrYH_IKmizREXiixc5kx_q_CWgqsh1dNpIUbt-LlEJ7eUPCQCekg>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id EE1471080069;
	Tue, 16 Feb 2021 10:33:57 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 01/15] zephyr-flash-dfu.bbclass: Add missing do_flash_usb dependency on do_deploy
Date: Tue, 16 Feb 2021 15:32:56 +0000
Message-Id: <20210216153310.79138-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-flash-dfu.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/zephyr-flash-dfu.bbclass b/classes/zephyr-flash-dfu.bbclass
index 32f589a..b4f3d49 100644
--- a/classes/zephyr-flash-dfu.bbclass
+++ b/classes/zephyr-flash-dfu.bbclass
@@ -59,7 +59,7 @@ python do_flash_usb() {
     bb.utils.unlockfile(lock)
 }
 
-addtask do_flash_usb
+addtask do_flash_usb after do_deploy
 
 do_flash_usb[nostamp] = "1"
 do_flash_usb[vardepsexclude] = "BB_ORIGENV"
-- 
2.30.1

