Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC84CC433F5
	for <webhook@archiver.kernel.org>; Sun, 14 Nov 2021 01:10:02 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web11.4304.1636852198332914830
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Nov 2021 17:09:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm3 header.b=j4awsN+5;
 spf=pass (domain: gherzan.com, ip: 64.147.123.25,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id C6EB23200A1E;
	Sat, 13 Nov 2021 20:09:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 13 Nov 2021 20:09:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm3; bh=EkEEzpG/0OiMl8Cxg1c4qbc6qD
	mWspYzF8R1wokWyZk=; b=j4awsN+5bVXtdQpo28JhtyYyQOb3Xkc4JbEyAeoROz
	i2GBwF+6up0FafUEjGfLKcnGzpHroGi4TYPxm2KZxs3unHCoU+SOwuTC/eHAcsPd
	i+Ge1kG91VUTDBrKL481ZAgnDYSe5sc/+E+ipBi+MQZTrUNJXQA+Z3CBQeIZ/UhA
	1Tu/ADYcCIJPTlnpd6njJa0/54QU1ELVZzDO38XcJ/DzpL/4jX6JeRIMyvB5m6lG
	7Uvw2VaaadLE059ynJeMIySBeW056NzNyp/uBnqdp7T1gZcayN6KWB8h1+Qu3Fy4
	tVnkmGYzjoqZGF0erHJibg7YrK8dvN0Mr8aBbAgm7Dvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=EkEEzpG/0OiMl8Cxg
	1c4qbc6qDmWspYzF8R1wokWyZk=; b=IyWEAgfQmxx2xTjyVJ1DmaxyeLZM2ksEx
	PH2pl6fEkY3ZN78incsg0WCGxFkzapg2ilOtta8NgEh4JBot92Tl9gN9p4CQE5xE
	irdLInimAdV7rZsoIL/GdNDq8rHvpDTy01RCnu1u2vOFZZVtj+navFqEcaML4L7g
	QT6cHa6KKhpTg72e87mKyY0bHQIsI2gNqIP6/L+e9TN6t3CY8gl6DILLntW8s1o+
	DpJgUZ7OPgi5rhfU8USiriWNVYFRdq++rJ5k8FUEHUqWeqiOlPkMLetKwzQQXhzd
	348nMAMIk77GmIn94UQ8kWGEitQiUwU8hZ/RjkfKrjPjVB01IpMWg==
X-ME-Sender: <xms:5WGQYRpgBgJw6OTt8-Gc3F2bNmm6I9oWA9We3sGLlLjdXKcy1CNZJQ>
    <xme:5WGQYTpj_AK1L_9QmmRqv4aqpOLclg4oUCR8sGW-F99jlXGHxX2lNvnTn3CzvVup2
    -DN8JNEsn0i-d8hG14>
X-ME-Received: 
 <xmr:5WGQYeOzdMOUMULUEsF3PqOFLeWTcNc3xF5MVbUkg7J1kgcubqvVY22-N6zLfIr68-MQG6rHQw>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrvdeigdeftdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhhvghr
    iigrnhdrtghomheqnecuggftrfgrthhtvghrnhepfeffffejtdevjeekvdeuheekjeehie
    efleelfedtueejuddvgfdtkeevffettdffnecuffhomhgrihhnpehgihhthhhusgdrtgho
    mhdpohhpvghnvghmsggvugguvggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:5WGQYc71dQauER-i_bY1em9ayFvScHfPoukUZvjJR9foFHXLVKDdQw>
    <xmx:5WGQYQ6BPDW9sit2Ea65EMHDMWjfoXQlNFvDUocGHrZFu2SrlpftnQ>
    <xmx:5WGQYUgjhKTItFuUI-6mvRo9BWdUEtLQtnpsvDpw41RuHJhPhNOsdg>
    <xmx:5WGQYVhK4dI-XtkHwSQajgBiEka44Qwhs3MhVW4pdnnKia4GcEKI9w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Nov 2021 20:09:56 -0500 (EST)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH] libwpe: Migrate build workaround from
 oe-core
Date: Sun, 14 Nov 2021 01:09:35 +0000
Message-Id: <20211114010935.919492-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Nov 2021 01:10:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55326

This was removed from oe-core[1] so we pull in the change here where it
should have been in the first place.

Fixes: https://github.com/agherzan/meta-raspberrypi/issues/893

[1] https://lists.openembedded.org/g/openembedded-core/topic/84653556

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-sato/libwpe_%.bbappend | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-sato/libwpe_%.bbappend

diff --git a/recipes-sato/libwpe_%.bbappend b/recipes-sato/libwpe_%.bbappend
new file mode 100644
index 0000000..fe1e59b
--- /dev/null
+++ b/recipes-sato/libwpe_%.bbappend
@@ -0,0 +1,2 @@
+# Workaround build issue with RPi userland EGL libraries.
+CFLAGS:append:rpi = " ${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '-D_GNU_SOURCE', d)}"
-- 
2.33.0


