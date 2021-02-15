Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.29415.1613388067316748183
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=k49ATMd9;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id B60F5230;
	Mon, 15 Feb 2021 06:21:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 15 Feb 2021 06:21:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=EvELrJVzOSv5y
	VIHk1f7sr9sTySV8PjmAe7D4Hfk06o=; b=k49ATMd9+jzS3IPYkiwtncqKsZvzT
	A9rHHbLJMYPQizFr0rzHGyYRjnh70X+31EL/1mJsSwPxO+q34lecavGZzxOnFX0K
	PnWWYLP7hs6AncjN6fCeaT9+ZtAiZehBnu5yG7WlK3xxw8qNr7LeBzITM6AvZkHv
	WCZ5Q91lLZF15/+BpNw1v5Kikf9d1TOQrbcWNau1c6mxGsoQszP/UQUmHpy3gRyW
	nP/OkQ3R/plqNWF2JKrEsPS8N05Q9KOBhaaNotU+hdyzoJ5lcRtzClUBkwfLbyuD
	4wjZoTRHo0qaRK7UY5Br/FpaBCICHPDBixSw6nRRTVysL1E7B6RSjoFaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=EvELrJVzOSv5yVIHk1f7sr9sTySV8PjmAe7D4Hfk06o=; b=hXrpL2dq
	FEHo6yOu0x0juOa2TxSV0iJ4q7U8SoUaJRbdEoPlHGrC13s4AuWs0sb31STbGLgZ
	tFrlvzc563aOb2mbtU9/sUxDqNFXAfONb8+LoieQPTcX7f+e8aRoLfBCR6RqrI2j
	k7QsCfnvCcRSe2mPbfAEaP1e2yuRtVPZplSUnEenmiSvECzwDMtKOPYv/VIr2DNP
	2b3Ng/wSeehE8vRZK8YQwkiBMJpMyRTJPov6T8hpIvR0cRIYrcM2rOkkLDfY4uxb
	nWTZ/YYH7UbmT9V9ayZ5e04hbkJYPEjK9YlkodScLe9iY1d8ELF538KBOoHr2oWi
	ASpFIwk+0tE7Gw==
X-ME-Sender: <xms:IlkqYO85Y0esxf-Hs3qI984D_4Du3tNx1PLrg4wVFUTnY9pL_pNo0A>
    <xme:IlkqYIUXNREkzVSzNBWWIu9efstRRQZRAiwAOcgNIk3uZ2b_cKuPM7T88rpVgAasK
    GOnJVN9HCW-TR7euwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepteegieethfekgeevledtveeftd
    ejvdfhieetvdeiteettdfhhfeltdehjeehvdevnecuffhomhgrihhnpegsohgrrhgurdht
    rghrghgvthenucfkphepkeeirddufedtrddugeeirddutddvnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghn
    rdgtohhm
X-ME-Proxy: <xmx:IlkqYEB5Kr3D78zUBmqRosma8QvE1mRLoaKwr4ZdxVBbCzBzx75JQg>
    <xmx:IlkqYJwogy_DjlPWE3AFgaA_KsIVTtNVEZrqmnEhVcot2AVnu7P0hw>
    <xmx:IlkqYBD27rEWTz3OeFRdQinkEjdAnlh2i1_Pb45VnV9q-I0wSdqp5A>
    <xmx:IlkqYMf-vk7iz2SxITEq3j0t1fs4tXQoCEvPaa8_QY-RqLd90GVohA>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id A09EE108005B;
	Mon, 15 Feb 2021 06:21:05 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 02/14] zephyr-flash-pyocd.bbclass: Add missing do_flash_usb dependency on do_deploy
Date: Mon, 15 Feb 2021 11:19:51 +0000
Message-Id: <20210215112003.2025053-2-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-flash-pyocd.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyocd.bbclass
index 04500af..eca30c9 100644
--- a/classes/zephyr-flash-pyocd.bbclass
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -10,7 +10,7 @@ python do_flash_usb() {
         session.board.target.reset()
 }
 
-addtask do_flash_usb
+addtask do_flash_usb after do_deploy
 
 do_flash_usb[nostamp] = "1"
 do_flash_usb[vardepsexclude] = "BB_ORIGENV"
-- 
2.30.1

