Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA974C6FA82
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 22:36:28 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web10.4698.1662849381729419775
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Sep 2022 15:36:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=nxLPrHkT;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id A2890320034E;
	Sat, 10 Sep 2022 18:36:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sat, 10 Sep 2022 18:36:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1662849380; x=1662935780; bh=BZjuTxkd6fAKtlRptCXX3EV3E
	ehHQWbHNUIDFf01hCU=; b=nxLPrHkT7EHB84PdHLrBYlqXLze11nYICVW0lzsVJ
	LOCvtRrfZDsrjGHY7khskOvzym8iSPEZtHvzUrGajaBSsg3a/ctqA9fO688ZwB4t
	nDYqiYLzOZLM2UdG4GFIvNpC/KGLPUtwNKd/27meecUtWPl1qcRxuEdCUiHoYvij
	wsuIyn3IsIURfnkLJ+cqjmtwp8KZeaSiuvjseB1/stD6L1SBs9NrUXrdOVd0OEgO
	lE19hsJH68nBNtAOgsjbGoZ4q+6dXUrzlTkUof7NfSfyuIoJu81FNVy1oxpW2/7S
	iSXro39vebkZeTMhOvXNJDAP/3TlhmZpTwj2wRiixuVxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1662849380; x=1662935780; bh=BZjuTxkd6fAKtlRptCXX3EV3EehHQWbHNUI
	DFf01hCU=; b=fSfb77bvSSDFPSsBzB1zZEaNBR/J5IHDaIQvhQrWRyXPsvVIQow
	Q1Yz9Fnjer/LMsXuBeCr49TtF13NyJ9cQBvSUdqNU9I4DdlVNtVNHyk3wcc5M+nU
	Gc1qgKdXAsOK8ACDk91D1bRP7TKMXSZ5VEu4c8js0QvCrQQQLFReMkAwAsKDUSZ0
	/pAo6XiOD/X7oiNaJmImhYHeqE5Cv0fCBkyt8e2q1bq6CBXGsm4/eZ68IA1sAqN7
	xV81UNy9VGSzMBLsPjKuKcB3uHWvVcdbEd4t0c0w4u7kl31EVcFHNvFoyUCzU7nj
	4pQsxJh83ygkVr0MS0KG98ZGP7EJ0nvSOew==
X-ME-Sender: <xms:YxEdY7pxrMmJoDIirI2ScDXV5MvjVAfgqeSfnjVVO8oFBtj85jTNYw>
    <xme:YxEdY1qkBzg5jhTmnyOz9fiPN-nX9y8rpaVhIUTlxt9oaYL-UYSph38l8fqLs7ez0
    -usNWlTwIHxqBDsBX4>
X-ME-Received: 
 <xmr:YxEdY4MuQj-mTBYadBpSU_Mhc7pfy2ktG8xdQd5NYGB1I4BRRTplQ-rgNzUdF0KCu_EsBCGzryeyIb0FStJghrOQ8ed1HCUccrgeJzuOsfJIipq8L99t-IG2>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtkedguddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjeffveelleeigedvieeiuddvtd
    ffleettdeitdfgffejhfeigeekvdduvefhtedtnecuffhomhgrihhnpehgihhthhhusgdr
    tghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:YxEdY-7rniSpVpTsXg1vQa3gDfLjZc1p1101DvMGUslyDp-IoEJFCA>
    <xmx:YxEdY64MTn8BgnrDn6je4RzBBTF2pbmFRjZaM9Uf5sYO4yBi2nrfUA>
    <xmx:YxEdY2hW7miD8sXGIsqyOPfAo8PyVXUqN0UcorGs2KH0zhb2SxLZoA>
    <xmx:ZBEdYwRHwnOPY2PArYeYs5_ShepSW7lOklThRdHSr4I5pDIwwyPFFQ>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Sep 2022 18:36:18 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 1/1] linux-firmware-rpidistro: Fix wireless
 on Raspberry Pi 4
Date: Sun, 11 Sep 2022 00:35:45 +0200
Message-Id: <20220910223545.3808059-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 22:36:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58011

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 ...t-43455-firmware-to-standard-variant.patch | 28 +++++++++++++++++++
 .../linux-firmware-rpidistro_git.bb           |  4 ++-
 2 files changed, 31 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro/0001-Default-43455-firmware-to-standard-variant.patch

diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro/0001-Default-43455-firmware-to-standard-variant.patch b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro/0001-Default-43455-firmware-to-standard-variant.patch
new file mode 100644
index 0000000..f67d95b
--- /dev/null
+++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro/0001-Default-43455-firmware-to-standard-variant.patch
@@ -0,0 +1,28 @@
+From b9db43e36ad0942d33cb4db5b394abd722862568 Mon Sep 17 00:00:00 2001
+From: Andrei Gherzan <andrei.gherzan@huawei.com>
+Date: Fri, 9 Sep 2022 20:28:06 +0200
+Subject: [PATCH] Default 43455 firmware to standard variant
+
+The firmware for 43455 is loaded as a symlink: brcmfmac43455-sdio.bin.
+This symlink is now broken as the debian package handles the right
+target of this symlink through a postinstall. We don't have that logic
+here so we default to the standard variant.
+
+Upstream-Status: Inappropriate [issue reported at https://github.com/RPi-Distro/firmware-nonfree/issues/26]
+Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
+---
+ debian/config/brcm80211/brcm/brcmfmac43455-sdio.bin | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/debian/config/brcm80211/brcm/brcmfmac43455-sdio.bin b/debian/config/brcm80211/brcm/brcmfmac43455-sdio.bin
+index 9c39208..b914838 120000
+--- a/debian/config/brcm80211/brcm/brcmfmac43455-sdio.bin
++++ b/debian/config/brcm80211/brcm/brcmfmac43455-sdio.bin
+@@ -1 +1 @@
+-../cypress/cyfmac43455-sdio.bin
+\ No newline at end of file
++../cypress/cyfmac43455-sdio-standard.bin
+\ No newline at end of file
+-- 
+2.25.1
+
diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
index d39340a..f491241 100644
--- a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
+++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
@@ -15,7 +15,9 @@ NO_GENERIC_LICENSE[binary-redist-Cypress-rpidistro] = "debian/config/brcm80211/c
 NO_GENERIC_LICENSE[Synaptics-rpidistro] = "debian/config/brcm80211/copyright"
 LICENSE_FLAGS = "synaptics-killswitch"
 
-SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree;branch=bullseye;protocol=https"
+SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree;branch=bullseye;protocol=https \
+    file://0001-Default-43455-firmware-to-standard-variant.patch \
+"
 SRCREV = "541e5a05d152e7e6f0d9be45622e4a3741e51c02"
 PV = "20210315-3+rpt7"
 S = "${WORKDIR}/git"
-- 
2.25.1


