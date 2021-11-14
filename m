Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA8EC433F5
	for <webhook@archiver.kernel.org>; Sun, 14 Nov 2021 01:10:25 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web10.4412.1636852225096000748
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Nov 2021 17:10:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm3 header.b=QaD5ZeaN;
 spf=pass (domain: gherzan.com, ip: 64.147.123.25,
 mailfrom: andrei@gherzan.com)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 7977F3200A2A;
	Sat, 13 Nov 2021 20:10:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sat, 13 Nov 2021 20:10:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm3; bh=rfoPBXkXJ7M333JHWqjyUqZBz1
	VMNUKLYFdzpDSdGi0=; b=QaD5ZeaNp4f9sRzWyN89FmM4zmPbb1Vape8OK09bhp
	k2m2dmBn/6mA/Yco0jc9kIAGZgnGNg5M3xXOWQhg5zQ13VGF3xAjAsW4BrGpksK7
	3/6ZvTkuleiU5Ots0QYPG9HWmVlwxFzkdlodvkk1cYROE40h8Uy1n+Cee/6OkZOC
	vNitp2tWO7CJBcTxRXMXfRV0ypMsfPTQ5SpvrtdKVVOC5wc7/EyqPA21EcHUX0ci
	K0eOhT1w4w7iat2A6u+7M9WXpaRI3KztMBS/GM9KKKH5wtcLLbX51jSdRo7I8pu6
	zk4KpnY71KHZ8yGSZw7+2kZzz/oAXk4OJq0IQsw642OA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=rfoPBXkXJ7M333JHW
	qjyUqZBz1VMNUKLYFdzpDSdGi0=; b=mUSkCEUDKJTVEmF4/9sAGNWv5vrAsWsf8
	mGcL6VWokb9FuYZPiHig8ImuF2Gk9W/jwcDt9A67u2eSHLzFBLp3azfCcxgagC4B
	FGoqZAMXAaIk4zYyfauPAeuVb6M+jrEDTGgDJsf+YpMsy96BT3VRf7EkE+lBWBov
	91HOiF07SsDEsyLE9y6nr3EzpMB7YOQq+GzWayugMLtTrlxhinTTsT29hNwBmknR
	v4umveGJWmWNiB/+jobGwytEJ/fKEeDoJmFou89k8Ryarv02dtCM4UFs5LmCqxZY
	9ZoKGurOJW/pqIn1q3hhigFzT9yVMO4iMvQN4yJgDCcRtu76PHaKA==
X-ME-Sender: <xms:_2GQYTSivKd4DeHN5d3cxtSlJUV1tQB1Rj7SUjfN8BLT7lH3UO5xsw>
    <xme:_2GQYUzk8cwF3W1LtQtiKP4Fk513Nfjv4HpAS1DvKiCHX1gSMYHQwDP0zdZsTKxwi
    0GImCcH2oEE7gw01-4>
X-ME-Received: 
 <xmr:_2GQYY3UiuuHkK2qD43RQMBc2w2e5WVlMT0rDNd_yVC7nubVdHzDMCtqe_6cRIKw8Kk_NLvfog>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrvdeigdeftdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhhvghr
    iigrnhdrtghomheqnecuggftrfgrthhtvghrnhepvdelfeetteekkedvgfehleetkeejue
    eutefgtedvhfejtedvkefhkeeltdfhgfetnecuffhomhgrihhnpehgihhthhhusgdrtgho
    mhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
    gurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:AGKQYTCa8oF1Gfojijzjv8f7AuWh0RHYYLGfxtWIQbpliH6Ri3TfUw>
    <xmx:AGKQYciKVkvIJZygzWB-zX_g7YGUq5wWaZ2iRV67KppbchrjurdMGg>
    <xmx:AGKQYXpjz7UOgNNbIH5PYjWroMF9BW_zZrO8yIpUdA1PixYIZAU8Yg>
    <xmx:AGKQYUIWlwoN_jmEEb8pIB02BeYAHTtm081dUL4eBNGb7bLT7vZouQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Nov 2021 20:10:23 -0500 (EST)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH] rpi-config: Take into consideration
 ENABLE_UART value of 0
Date: Sun, 14 Nov 2021 01:10:18 +0000
Message-Id: <20211114011018.920402-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Nov 2021 01:10:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55327

Also, validate if the value of it is not 0 or 1.

Fixes: https://github.com/agherzan/meta-raspberrypi/issues/567

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 13a0714..fe18884 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -174,9 +174,11 @@ do_deploy() {
     fi
 
     # UART support
-    if [ "${ENABLE_UART}" = "1" ]; then
+    if [ "${ENABLE_UART}" = "1" ] || [ "${ENABLE_UART}" = "0" ] ; then
         echo "# Enable UART" >>$CONFIG
-        echo "enable_uart=1" >>$CONFIG
+        echo "enable_uart=${ENABLE_UART}" >>$CONFIG
+    else
+        bbfatal "Invalid value for ENABLE_UART [${ENABLE_UART}]. The value for ENABLE_UART can be 0 or 1."
     fi
 
     # Infrared support
-- 
2.33.0


