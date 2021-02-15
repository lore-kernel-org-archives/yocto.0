Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.29412.1613388050142391796
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:20:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=dv9dpbLU;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 4A957D19;
	Mon, 15 Feb 2021 06:20:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 15 Feb 2021 06:20:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm1; bh=pXtcTKiY0YHH2+mdoWQTjkI8dr
	r5YfMporokPt5bMdc=; b=dv9dpbLUyy2OsgvD9RASuD/bABks5o1P44sRtHXo5Y
	7l71Pg4OrhgPaXQOnIdQktlTsbLNYXdYXPWeJP1bRtaIwLc5PvA9j9JLGodULgqx
	pcT4/Ni9EDQW7FZKXFo3+012ZHBM1e4CUjZFwI4pWjK1PhY6k0NgQEmRSAED/mwx
	qzcW3jM7rLlFjRXZWkhs0TE2oG43cuSgvfLYJamRPyJ6EuPQRpK3qzHC+YCjAAdI
	GvaX1z0ARRX85egK8XzjAvrIQkwPmKVjQLjJ0f/4+6zp5tsOxMtJRoAZPcTeJnLg
	SZNgWEa3lJ8Aru01cOKRYEedtkP6INFKmbBuG+eAeBDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=pXtcTKiY0YHH2+mdo
	WQTjkI8drr5YfMporokPt5bMdc=; b=NJ90vYW8XFg/9+QIH0yd/jfkEx+kIgiiO
	IyGBaIYFmWhb+P77gpy3br+HQjppnJQ2oveB5a/b4St/uVh0oOoc48Mq3Lzm/V4+
	0cYXu6NRytw1Gmsx5S58UFUUwIq6pcolXq/V1qQ+g4CAHrM+zFH8o/dGlG945KWV
	lrsHgTYkNJUnzqOVJ3dN3n9OHHsijKwFzP8g8Zi5KA6jy9+grSJnLH+Lyhx3L9pW
	eZK73w2hFmAAelaDHchL8AQBw9+SUNFHDoP5srhM8a5qQNV7L4sYyuQQkn2ObeBd
	zy0TD3Jf951+ZV9uwgFuFtkJutRY7R9y3k1+DraKLjCSxpyxscQgA==
X-ME-Sender: <xms:EFkqYCvU4UIUxOON7h-LmilfbD10sxW6PJUOwaIyWOr_Hhl_E8FeQw>
    <xme:EFkqYHcUYIgxRvvlQCzxNuz1YNq2QmVuHM0wmEQhEAt_UDWXhqOpNyUTSzJ1D4q7C
    gEyxzuO2bZ8RwajVJc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhhvghr
    iigrnhdrtghomheqnecuggftrfgrthhtvghrnhepvdetuedtuedthfevgffgieefheevte
    fhueffkeegieeigfekhfehheejieejjedunecukfhppeekiedrudeftddrudegiedruddt
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
    gurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:EFkqYNz4X2ogMDTFPHwFG_xumZ_Vhz26fihxopIrD64U_L_Xe1u1pw>
    <xmx:EFkqYNMJJvwoK4tBmKO37YGRQBIjFIvLWNI-F2CaaFtMbozG-sjxNw>
    <xmx:EFkqYC-Fzc0uakCe4fjAT49C9brIK3w1lcY3VYBq46o8ikLhCOiFoA>
    <xmx:EFkqYDK_D4-pjBKP_pwEqy3Z7zw9SqMiXathPTWRvMGVTOlqSpTR3g>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id E473E1080067;
	Mon, 15 Feb 2021 06:20:47 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 01/14] zephyr-flash-dfu.bbclass: Add missing do_flash_usb dependency on do_deploy
Date: Mon, 15 Feb 2021 11:19:50 +0000
Message-Id: <20210215112003.2025053-1-andrei@gherzan.com>
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

