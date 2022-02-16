Return-Path: <patrick@stwcx.xyz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B4AC433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Feb 2022 21:46:12 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.1773.1645047971030939862
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 13:46:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stwcx.xyz header.s=fm1 header.b=H/b9iFvc;
 spf=pass (domain: stwcx.xyz, ip: 64.147.123.21, mailfrom: patrick@stwcx.xyz)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 11BAE3201DFB;
	Wed, 16 Feb 2022 16:46:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 16 Feb 2022 16:46:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stwcx.xyz; h=cc
	:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm1; bh=K6j3+w5jzQpZhu55YPwKBRBqXbplfsFGugLKzMIFWPw=; b=H/b9i
	FvcmVqy7EDIfeMGgCDZH6MPJsyDgt9SlmJrloyfBCowQIzr0Gkty78Sm2ElHbK42
	3001Rfq5PV/AF24GzVT8nf8uMzKscBMFG2JgFMWDPAEs3ZdVZOHgtBq431qZivru
	BDeocHpIBgbTMOcuw6V+tQMW1JROxkKeY/7bodlo53E6B4k6c1UrN25erhvBL0p7
	jCQ+6G6DKGG7PJC+ejRlp10ipkzSca2Q6w+ZZs+haP3o7Z2RAKC3/tqNUu6Fs4/z
	q2IvuoEMjTrsS1drxTlZHYieUSciBVohTGeX1HpZkpaoKskV1MtQoAlTQxvvQfAP
	Hh+lpczvhVtsRr91Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=K6j3+w5jzQpZhu55YPwKBRBqXbplf
	sFGugLKzMIFWPw=; b=S4uZNJArBYl6oiBVZ2FIBBvYEe+0euKL7bDDTCDqDfHGX
	BBdsxsq/pzlVG26BQwtGDOqpjv1fnDJusdCsIJpPnrSas4/IH3LM7k3VVyzRIlet
	Pv1Rw2lMOTGqNZSoIlVwuXw5XB/en6Xu/Eg8W31VSTBGy5H+cJSVZH2Az6DKwNYD
	4BnlazUHQa7NSk4Q6TSJ+wcTNeJe0e1K73pJss9Fq9gATW0ue9QLegxtEpf+MENR
	BXYvNAFKq9HnNdXkGF6zp/jjutOmpmcB4bhKg/y2BkkXAsDkqL0pvrobaaKc66Z+
	kcZS6y7mmAbcs6v6JvQQKO7ATJB3LZO9UUklo3WBA==
X-ME-Sender: <xms:oXANYrPr2wZOS1tRw6JfhOB5JFZ7xGCDCNODa_iP6o6eTFJ40-xvDQ>
    <xme:oXANYl9JYExkewNbrGU0_0H5VUX2oDQ9j0BS9YDjH6qTF_mmjG4n11yov9UvDMwt_
    m361XSOU0uIUoQqLEs>
X-ME-Received: 
 <xmr:oXANYqTv3gMUR8xOzDH6S0Y2BsTVgMsx8Lm3BpA9PE8u_OazIYo9D1s2PtmMsLDjNw4ZesPPUwH5N2IOSZ-mLkm8Y7gFCtOa>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrjeeigdduheduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgfrhhlucfvnfffucdljedtmdenucfjughrpefhvf
    fufffkofgggfestdekredtredttdenucfhrhhomheprfgrthhrihgtkhcuhghilhhlihgr
    mhhsuceophgrthhrihgtkhesshhtfigtgidrgiihiieqnecuggftrfgrthhtvghrnheptd
    eludegheejteelheduudegkeehleetfeekiedtfefgleeifeelhefgveejhfffnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphgrthhrihgtkh
    esshhtfigtgidrgiihii
X-ME-Proxy: <xmx:oXANYvvMTFmP692Ts8TbXMa5V9vyWMPKguR6BkSROG-8EBE8BmKFsQ>
    <xmx:oXANYjeNhOML-SfbU4IwG5lJ-y8wn-x252Km4h3SR1MYkENO6h3nRg>
    <xmx:oXANYr0m6ldBDKyJOZa3u3sR7ZNI2YGdz6GfjuhjkRM9H-fbDyxXKQ>
    <xmx:oXANYjndlJ3JQWBmc1AwexRu_vHJSHGMLyKZlm_aRLdKvs4ey_HjSQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 16 Feb 2022 16:46:09 -0500 (EST)
From: Patrick Williams <patrick@stwcx.xyz>
To: yocto@lists.yoctoproject.org
Cc: Patrick Williams <patrick@stwcx.xyz>
Subject: [meta-security][PATCH] tpm2-pkcs11: fix RDEPENDS variable
Date: Wed, 16 Feb 2022 15:46:04 -0600
Message-Id: <20220216214604.2993433-1-patrick@stwcx.xyz>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Feb 2022 21:46:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56212

The RDEPENDS variable was misspelled and as a result was never fixed up
with the `_${PN}` to `:${PN}` transition.  Fix both aspects.

Signed-off-by: Patrick Williams <patrick@stwcx.xyz>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb
index d70dbfa..177c3c3 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb
@@ -52,5 +52,5 @@ FILES:${PN} += "\
     ${datadir}/p11-kit/* \
     "
 
-RDEPNDS_${PN} = "tpm2-tools"
+RDEPENDS:${PN} = "tpm2-tools"
 RDEPENDS:${PN}-tools += "${PYTHON_PN}-setuptools ${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
-- 
2.34.1


