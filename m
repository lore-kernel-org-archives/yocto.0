Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web10.29746.1613388068629823040
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=To8Cl0en;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 0E5D2438;
	Mon, 15 Feb 2021 06:21:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 15 Feb 2021 06:21:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=nQINRAdPMQWEJ
	CYKD1TmI3XhD6+5JV7E8DcT8dwybF0=; b=To8Cl0en93hov8hBed6UzmHPakLgm
	RSfGREx6RY8+KlSocPU4DX3kmdfzmfrIy2T21+04SSvcudpZsrXtMc3jfuO+IGCm
	az+8a2vbLozSQx01yoBpWHWb8US5Lk6LsNc3A7w2QDCjYWQ32Gq/+E0J5cB4+XD8
	cfh8s5HBXSBVjCHsaP9P76NJiYLgefkiZ5dBihLLGQDP2/CApqACexQOIaQ0HLDQ
	kFcYjfkUJStjMIqgm6TSpXz7YHVeJwRmEH9gOdHXDScX8gfi7MtabXq6/sgeeLGr
	4LDHdYWlYpZYgyXOeDFpoAR7bUsIqfitVWaAAGJnAd2x/97tdsgyz8dVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=nQINRAdPMQWEJCYKD1TmI3XhD6+5JV7E8DcT8dwybF0=; b=uBIf4PxV
	zm4mcepHEE4LXF2xPVKgp63wC+4cfAdjJ7gRYVSsZbYsa0DizIhq+JO/8fwIHdZy
	hcikvyLE54b+cTGZyyhRlGatD4ppmLtjsaiJOf466GN8IClT9IJDaO21FS/ptQ+Q
	JhS8dKzajRoppTVQKDaemel/D0jc9v2sSLqSbl697yuSB9MRMu9TH9Fjoow4NO1Z
	mcN0XnHqFOr7z243JapE2C0nz7jMse35Hyg1kofaH5SBOkcGcEddpx7omj7lgYCP
	6VJXVk67kSCjVsAIDXjDHxboE3f/QqZn226ZZgIKZCSY/LIImTENAHw1Ft4oPmOp
	TvO2B69A6oNWuQ==
X-ME-Sender: <xms:I1kqYHwRrmuYAMVwwghBVzP87P6s25t6GGmQpszTjCdyQbwix0Rh9A>
    <xme:I1kqYMOXr3YP-Ex7VYeDhLFg1W9OzCvAZfVmsKI2wyaeStaNXXvLmkW2Q2HZux6IY
    ixHXHkLiBT3dhTIZJI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepfeevteefieegtddutdefhfeghe
    duledthfehveelteehudfhheetudefvedujefgnecuffhomhgrihhnpedtqdhrtgefrdhi
    nhgtnecukfhppeekiedrudeftddrudegiedruddtvdenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtgho
    mh
X-ME-Proxy: <xmx:I1kqYM_tycHbe1PiVsxxu383qCK9wwJGGg7sm7pUwrwVgBJGIfsm0w>
    <xmx:I1kqYJ7JtNOx-7YpNwEPFfCN4Kv-0aB7Xa23f9HxdIpmMeYbKBOnuA>
    <xmx:I1kqYC7KfVOsx_F4I0J8I2m3sbUDHwKIBTDoMKYE1upkQdUteDL-PQ>
    <xmx:I1kqYHLisrKycaJu5n2yuwU84kh_oU0oON3XSwDjUWEk3YJWUMIumQ>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 4A59D108005B;
	Mon, 15 Feb 2021 06:21:07 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 05/14] zephyr-kernel-src-2.5.0-rc3.inc: Add support for zephyr kernel version 2.5.0-rc3
Date: Mon, 15 Feb 2021 11:19:54 +0000
Message-Id: <20210215112003.2025053-5-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This version can be selected defining
PREFERRED_VERSION_zephyr-kernel ??= "2.5.0-rc3"

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 .../zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc      | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc
new file mode 100644
index 0000000..4ee9883
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0-rc3.inc
@@ -0,0 +1,10 @@
+SRCREV_FORMAT = "default_cmsis"
+SRCREV_default = "v2.5.0-rc3"
+SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
+SRCREV_nordic = "f3434da6446380fcdd426dbe2866af21d0d549b6"
+SRCREV_stm32 = "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
+SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
+SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+
+PV = "2.5.0-rc3+git${SRCPV}"
-- 
2.30.1

