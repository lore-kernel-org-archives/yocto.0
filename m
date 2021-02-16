Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web12.9533.1613489648503496748
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=Ouztl0im;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 02A36B0C;
	Tue, 16 Feb 2021 10:34:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=nQINRAdPMQWEJ
	CYKD1TmI3XhD6+5JV7E8DcT8dwybF0=; b=Ouztl0im9QDJA6lZrYe0efzQWQpoJ
	kRGcYsk9jtAlnWz59UBNztU8AbXntveSD3NV4EIQr+XnJFuswzHrkBQF1A5XFM/l
	kjhROEEttY5hfDWxZ2MxaZ50ppFyhiF1l7wqZC8L4ebGeNoUHXSKbSzV4S/Ta/AD
	swHb4SjumKnUx2TwwkVJDh6UuMbXotJWCiF00mqKt+XYNuRstfkq9Yvm7rJejm0g
	83hJe4XR5+yb+N6S/KJNc9aQzAWh54Cv53cO4iWVX1ZUkditNTc5JkRHHd4/gfgV
	JfpnYcxGYCV2rEmywbr/gavkYbGtXRtodwzgqOTEcoIYgTxFknASG+UYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=nQINRAdPMQWEJCYKD1TmI3XhD6+5JV7E8DcT8dwybF0=; b=kj0tOci1
	XqFSyrjC8TcmIJNqQhMzqZtoxQ92hlmNagUoYJNYvg+PaNun0DinXqxwucEqSvfF
	m62xNsRlUXghEqlnJiNUhsNjjmNV2F92oND6tHlT96v29k+xtX68Mez0kCFh3115
	1QLLnF3O2dwX1E4WB+Svb/vawEh5Z73OT83Ow3MUs0Hy06FuIqBmC1btaSN4wOpn
	+DrR3PI5XHXYNftxmqPY33hf1voiCX/b2wWHX9zjHcZRh4JhthdlSBVTlteHz2Ui
	NJtmcgP06ypvGwr3nfpKVMdqqiCcHGbxBnQ6d/GpBRxlfz9HJYhhHxg5fipwL7/Y
	NVs6ql6YEanCBw==
X-ME-Sender: <xms:7-UrYIrgxz2vd4dcQxrWsFkMR02vR8roUG7M6rWIK6YH_VzFDKhcZQ>
    <xme:7-UrYOqyBNVmqk7MOMHNj7O5MDEfB87gbtxJ7Ss7lG1UBLmHdJRURLKjtV40k4DZw
    dBcX3wY-jCyzFSI5uE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepfeevteefieegtddutdefhfeghe
    duledthfehveelteehudfhheetudefvedujefgnecuffhomhgrihhnpedtqdhrtgefrdhi
    nhgtnecukfhppeekiedrudeftddrudegiedruddtvdenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtgho
    mh
X-ME-Proxy: <xmx:7-UrYNPB1r6NRwdfsmDD5CqTbImr2gac2yKXH45U1ufnWSyiVitPtA>
    <xmx:7-UrYP6E-yA5Rq3lZmqyKL7DrhydO0f6lIWvVpqxEfmeqJD56Gny4w>
    <xmx:7-UrYH6Y_x7TBAdLqjLQgyAd_sQg5729mO4eoKaIzc793w2HVzXUvw>
    <xmx:7-UrYAWZUAKOM3c9ftZxlR0730tD2P4492ZxlzZYz-HOAwTQ21mhug>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 4E71E108005F;
	Tue, 16 Feb 2021 10:34:05 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 05/15] zephyr-kernel-src-2.5.0-rc3.inc: Add support for zephyr kernel version 2.5.0-rc3
Date: Tue, 16 Feb 2021 15:33:00 +0000
Message-Id: <20210216153310.79138-5-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
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

