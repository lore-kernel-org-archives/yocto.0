Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web09.9523.1613489650349578185
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=QZOZqSeY;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id D1F1DB4A;
	Tue, 16 Feb 2021 10:34:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Tue, 16 Feb 2021 10:34:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=WYMz3amIf12LM
	lGOx5XqR92+8MYq0V0KBOyACGG+NS4=; b=QZOZqSeYz0VQxtc9i5eCSbsrobmu8
	6jJ1AdOvVMQBHIJp4LMAPQBdQzhIWCBzKSNOrp+o3/WwxIRrRnek34SGspT2QsPz
	NuaTgGPuLscqZwaGpfJngXaswwK6OIslraEqbFwwET6DIf39Aci3xSIKrYFeE48k
	7oNYCossW6UtTSYTvuhb0gYwVwxhek+EOyO8qF/bzCnx+P6cKULHkBw/Ke8rt6c9
	xTIfQ4iOJ0F7FHNYeyzs+jKiEm4kdFqNgb3B32hgyuEe+l9YZWQfR0vTc8rO+1nu
	NFKFyEwnDsA8jEpXvSmTVE/I7gpnltXezzc7KYFEYQ3qURlRdVNQiYk/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=WYMz3amIf12LMlGOx5XqR92+8MYq0V0KBOyACGG+NS4=; b=to2exC29
	6AoGjXpRiyqlcQ/WsL6knHEbtmiR0PbOkwNBlKo263Ki1vraqf8FTIqBNYqYlool
	z+/TPo83KmjIxiCQhJJLcWimau8U/uETcjjYFnjAUcyfoeeBy83XZ8BtXu7M3OFl
	iS/ae40/78s2O6Irh6lUd3qBgSIuaUBbJx8GgSDpRKsLCcj9EstRdom5PyhU6jv8
	ats62j2KLv0aKkqfA214jm5ucSUT/5FfLHDki0aAaFFnjgRjvRvnG4+RqFVoOvyk
	M607rCShZU3+wUUZDLwmIfQEg5baT4ApHwrpJY9ThVbKIsbSKtQrL/NAC+AlMR0I
	rFFSdJPWQIKimA==
X-ME-Sender: <xms:8eUrYLGc2TOctuzai8TABfodhvLZ5Ru6ZNJx3eNiYFOTyFbRzjzI7w>
    <xme:8eUrYKUovQOZoxSfvceGG0kJmJjLuod_2ew2WEv6wNiXf5yegRMJEu1a4BffxvkBV
    jTouSnjUBEzJtmHMRk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:8eUrYGgNoICBJ5dtzJx3c9ZHPBSmmNUyddTJLjLf1gvf2SDiKLeuBw>
    <xmx:8eUrYLQaNr13Vd2EKoLN_YgHtEqz6-J3_GWBO_OCAJTc_HuxkVifAA>
    <xmx:8eUrYJEDoqPs2kauya3Pc3zjl3xtYuzLlS3AY0o8MXnQ67VIxrTcGg>
    <xmx:8eUrYEavW6K3rhWHn3WDNvWqmaQ4JucwGDcSVn1hMr6laGzmC27pFA>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id EFAA01080066;
	Tue, 16 Feb 2021 10:34:07 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 06/15] zephyr-kernel-common.inc: Fix configuration CPPFLAGS warning
Date: Tue, 16 Feb 2021 15:33:01 +0000
Message-Id: <20210216153310.79138-6-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Configure warns when CPPFLAGS is provided as environment variable and
expects its value to be passed to cmake. This patch does that to
surpress the warning.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 5313030..abc55ba 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -13,8 +13,7 @@ ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
 ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 
-
-EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
+EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto -DEXTRA_CPPFLAGS=${CPPFLAGS}"
 
 ZEPHYR_MODULES = ""
 ZEPHYR_MODULES_append_arm = "\;${S}/modules/cmsis"
@@ -26,7 +25,6 @@ EXTRA_OECMAKE_append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
 
 export ZEPHYR_BASE="${S}"
 
-
 DEPENDS += "gperf-native python3-pyelftools-native python3-pyyaml-native python3-pykwalify-native"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
@@ -51,3 +49,8 @@ OE_TERMINAL_EXPORTS += "ZEPHYR_SYSROOT"
 OE_TERMINAL_EXPORTS += "ZEPHYR_GCC_VARIANT"
 
 IMAGE_FSTYPES = "elf bin"
+
+do_configure_prepend() {
+    # Zephyr expects CPPFLAGS as cmake argument as and ignores env variables.
+    unset CPPFLAGS
+}
-- 
2.30.1

