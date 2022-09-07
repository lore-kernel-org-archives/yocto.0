Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40495C6FA89
	for <webhook@archiver.kernel.org>; Wed,  7 Sep 2022 21:40:15 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web09.1500.1662586814203357942
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 14:40:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=pzkpsBtr;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 89E305C0199;
	Wed,  7 Sep 2022 17:40:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 07 Sep 2022 17:40:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662586813; x=1662673213; bh=l7
	wiyow8f/xRjlQi65IkYh+0tjGq9EQxUaebeDhyRhg=; b=pzkpsBtr5nSJLuLHva
	N7tXIL+y8HmLgIERRQ/aSDHx/uqWx44OZm2oXwmu3R+lLVzSfb4XmDPLBMWuE6+J
	bvZYRjbxrBA3ojVVPrl9yp6heOuxeUudf9L/Dq+ATFkAaWFW6UY0I4sb3cmgWqGj
	HXs+Db72VdPcr63BBgeDqu/Tg0d2eHY3Sotl6CSoLkD9TKD6FfnCfEmk8cn2kO9+
	rY6c2Gf2F82+86L1HbzC5NmP6OCKD7l55T9StVhjsAHIUMRH5TVivxv5Anmoejba
	sAlxJulQ2eFU9avxyo1pRn0op/ssLYXoZQZzSM2ERsYdu7Wm9z47TrkSA++TDf/V
	5+GQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662586813; x=1662673213; bh=l7wiyow8f/xRj
	lQi65IkYh+0tjGq9EQxUaebeDhyRhg=; b=mmtKPECH2Eub8KyD8/0kEMHEJpgK/
	ZPwN5pYul8Nwm1B69qVeSYrwDQ55MoWfeA5LIhSei4YBkNqmnIUEo3HbmZAZIjyM
	3nhptfZTSibRZDCu8HDak0prDAkdFlgxNLTM6Hp4UsNqQZsxqRh2ZTiQcSrHYoCP
	/7ZoNwsolgrHb+JOv9qa3hUnndOGQXmt+HoVLJ79MfNKBA4OOTxNnwCAmSsj8qge
	LbPfhBzFkZY8qJ6oDO5IgzIFUnUK58Pg7TA0+G+aXkE/hdh6KSvA2sSbzk3TvVYX
	xwjCu14DZMz8XFzb+vBHlgThf5Kj6bnB+Xudw85rY55X60wQo6/KKS3xQ==
X-ME-Sender: <xms:vQ8ZY_VfBT-49Q1br199CGG3_fQMXq9MzzJiMk7MbJtdzrK9YdINaQ>
    <xme:vQ8ZY3kVUt0Bn_dCI09EOrfF6tkZUwtoZCgUK_HQPoXW8t2cm1vXxUbdkpqozUV9N
    42uEHm-z0A0Of6vE8c>
X-ME-Received: 
 <xmr:vQ8ZY7YyKqzOJLMk8wNbXA28Jn6ladx2BSwAY94nqrCq5EG9F-_oHgIpHm_Z-RsucDrtq6odhxCrrNrGe-sP2rL-fHQvti4BevMngVGVsLckOxNXzPfVh8FQ>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtuddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepveeujefhjeetledugfehtd
    ffgfeuueejhfelfeegleejffejteegtddujedvleelnecuffhomhgrihhnpeihohgtthho
    phhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:vQ8ZY6WHMhBvkZRE9xrjNGHp9DdDSVZJ46VpthC5iyZ-katjBS_e3w>
    <xmx:vQ8ZY5nDwam4VrbkdGduSpvHgl_Jjq3cUKItvAppiRnG7371zqHXYg>
    <xmx:vQ8ZY3daLt1jAI_bihxj3jEjPPM-4iSJexDSWodxEsMwKJDwLaBmyQ>
    <xmx:vQ8ZY5sC86ncl86tzW2uMC6o6IFO_lXtl9bWhSdNn8lxUm6amUJ0Rg>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 Sep 2022 17:40:12 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 4/4] docs: Add multiconfig documentation
Date: Wed,  7 Sep 2022 23:39:59 +0200
Message-Id: <20220907213959.1115886-4-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907213959.1115886-1-andrei@gherzan.com>
References: <20220907213959.1115886-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Sep 2022 21:40:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58005

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 docs/index.rst      |  1 +
 docs/multiconfig.md | 40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 docs/multiconfig.md

diff --git a/docs/index.rst b/docs/index.rst
index 3f8a088..806ce87 100644
--- a/docs/index.rst
+++ b/docs/index.rst
@@ -14,6 +14,7 @@ Contents:
    readme
    layer-contents
    extra-build-config
+   multiconfig
    extra-apps
    ipcompliance
    contributing
diff --git a/docs/multiconfig.md b/docs/multiconfig.md
new file mode 100644
index 0000000..fecbfce
--- /dev/null
+++ b/docs/multiconfig.md
@@ -0,0 +1,40 @@
+<!--
+SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+
+SPDX-License-Identifier: CC-BY-4.0
+-->
+
+# Multiconfig Support
+
+The build system provides functionality for building multiple configurations in
+the same build invocation while also supporting dependencies between them. For
+more info check the
+[official documentation](https://docs.yoctoproject.org/dev-manual/common-tasks.html#building-images-for-multiple-targets-using-multiple-configurations).
+`meta-raspberrypi` uses this to provide the ability to generate images that can
+boot on multiple targets (for example, being able to boot either a Raspberry Pi
+3 or a Raspberry Pi 4 in 32bit mode using the same image). This is in contrast
+to the classic builds where the `MACHINE` defines the only target intended for
+the final image artefact.
+
+## Generating an Image For Multiple Raspberry Pi Boards
+
+Once you've set up a build environment, the multiconfigs need to be enabled
+adding to the build's `local.conf` the following:
+
+    BBMULTICONFIG += "raspberrypi raspberrypi3"
+
+With that configured, any image can now be build using the `raspberrypi`
+multiconfig.  Here is an example that will build the `core-image-base`:
+
+    bitbake mc:raspberrypi:core-image-base
+
+The final image will be available in:
+
+    <BUILDDIR>/tmp-multi-raspberrypi/deploy/images/raspberrypi4/
+
+This image will boot and provide the support for all the machines listed below.
+
+## Supported Machines for Multiconfig Builds
+
+* raspberrypi3
+* raspberrypi4
-- 
2.25.1


