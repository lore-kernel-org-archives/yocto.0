Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C4EC433EF
	for <webhook@archiver.kernel.org>; Mon, 24 Jan 2022 12:43:41 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web09.3070.1643028221014446226
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Jan 2022 04:43:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=XvTXda4N;
 spf=pass (domain: gherzan.com, ip: 66.111.4.26, mailfrom: andrei@gherzan.com)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 59E165C0127;
	Mon, 24 Jan 2022 07:43:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Mon, 24 Jan 2022 07:43:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm1; bh=zOaJ0HIOCKCrEa7ZgwYII6/WqbTGgd
	eol6ELDQnLhoU=; b=XvTXda4NWCUZv29FNZw89MFaxIwmO+IrXAjIPrMBNiSoo6
	ot0idzZs7MMzdLcHXqaCXBUdtcvaUfpEzgS0QIkDGwsEafkZlJaOHF4EPOCO/nCS
	W0z2LiLTtPDCAJjrm0NKDq1XhDnuLafG0VBidkt+QWyw19aisrcMwoCe7Ne8UCZ3
	iDN8qzwdqCJgGmhi2T+0ZTvoouElM9L0LbmWBb5UPRxi5Tv0VVZ0CxnbjG+TFO3G
	QmWDhhk6fzWOhFYptDY6xYAFlSHTXcp+rMD9nJwOKrrtY0BPQqNMyx34Wq+zXboE
	h5vE4omly5YNDBghchkW0UwYQi1udy67TNrwpyiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=zOaJ0H
	IOCKCrEa7ZgwYII6/WqbTGgdeol6ELDQnLhoU=; b=A0c/0qh2MbzzxYeNwks7mM
	t8B9h3pt3xI4FjC6rUAvjgyhq0TBe12ngfF2Z1lS65us76jdXvkylpgRCJobElAQ
	/VwXqRYw70059t4UBZHbXaYCPkllSt7STxmd8xZ4FPJ5FZBE9osVURtQD2RCixnt
	r6p2i4MjeRdsHwyBDP7xp0Vr6jouyzZ8yPduDRYJzv8DwjGcXQ5avZGTlb7JR3+n
	UOOcT1isiCK5nyFPoVT2bhlfQs8LgbMPYL/YroQ/TtHjv9OJB9mcdYhowL2hdbmw
	RtoVTcafjpGNCGVf4QE7X7BjzWbRCs2V19wras184MZNNvS4GYqWasfMAw+NgsQg
	==
X-ME-Sender: <xms:_J7uYUR_upght3Uf7X8HTvRhy7QbzapdS9D7tIEUG3pMOnMT5zp9bg>
    <xme:_J7uYRxkZSiQN7rx-Y9WlHhiXSisjC4KRe5GJXhdxc60jm-3Au6avN8qENWHiWfqp
    oKpEycjxho89z8dpUU>
X-ME-Received: 
 <xmr:_J7uYR0gTdSot5uFoY_0Q5pHK7rkhhneeNMygT2l5oDQunowEJB5TXfH-M1g37S3zh9-f2L81W5VKg16184LfdrwRio4vGNB6VJT8tsMUTIEME7neS9ot_lp>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrvdeigdeggecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvghi
    ucfihhgvrhiirghnuceorghnughrvghisehghhgvrhiirghnrdgtohhmqeenucggtffrrg
    htthgvrhhnpeettddvffefkeetveekteeiveeggeevieeiudejfeeitedvkeelvdekheej
    lefffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:_J7uYYAmULUZQp95hT8ijVIG-tOBM-0J_0Rx8bNzDp-OWe9zWS70cQ>
    <xmx:_J7uYdgo--9llFQwdB-gTHmwcWPMd9NTcwQo9vvile5gVQ2qvNDBUQ>
    <xmx:_J7uYUoQqUy-WiW8mDduLfpza-AkbqSgOdjhrDzjU4pzZ3-KJBMTSA>
    <xmx:_J7uYQt5wblxrWOmSEd8Vt0Wgr_f3MklhAmY1NMRF69s3qGpSVqdsA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Jan 2022 07:43:39 -0500 (EST)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Stefan Schmidt <stefan.schmidt@huawei.com>,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH 2/2] zephyr-flash-bossac.bbclass: Use internal
 bossac tool instead looking up PATH
Date: Mon, 24 Jan 2022 13:43:04 +0100
Message-Id: <20220124124304.2492266-2-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220124124304.2492266-1-andrei@gherzan.com>
References: <20220124124304.2492266-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jan 2022 12:43:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55954

From: Stefan Schmidt <stefan.schmidt@huawei.com>

Instead of looking in PATH on the host to find bossac we now depend on the
native variant we build and set the path to our yocto build tool.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 meta-zephyr-core/classes/zephyr-flash-bossac.bbclass | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta-zephyr-core/classes/zephyr-flash-bossac.bbclass b/meta-zephyr-core/classes/zephyr-flash-bossac.bbclass
index 50222d5..51f2dd3 100644
--- a/meta-zephyr-core/classes/zephyr-flash-bossac.bbclass
+++ b/meta-zephyr-core/classes/zephyr-flash-bossac.bbclass
@@ -1,17 +1,17 @@
 #@DESCRIPTION: class file to flash boards like Arduino Nano BLE which depends on bossac for flashing
 
+DEPENDS += "bossa-native"
+
 python do_flash_usb() {
     import shutil
     import subprocess
     import serial.tools.list_ports
 
-    # Note: make sure the installed bossac is set to PATH before running flash_usb()
     # Check if bossac is avaiable for flashing
-    origbbenv = d.getVar("BB_ORIGENV", False)
-    bossac_path = shutil.which("bossac", path=origbbenv.getVar('PATH'))
+    bossac_path = shutil.which("bossac")
 
     if not bossac_path:
-       bb.fatal("ERROR: bossac not found, please install first and add to PATH")
+       bb.fatal("ERROR: bossac not found.")
 
     board = d.getVar('BOARD')
 
@@ -47,4 +47,3 @@ python do_flash_usb() {
 addtask do_flash_usb after do_deploy
 
 do_flash_usb[nostamp] = "1"
-do_flash_usb[vardepsexclude] = "BB_ORIGENV"
-- 
2.25.1


