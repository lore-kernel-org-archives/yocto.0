Return-Path: <patrick@stwcx.xyz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16D47C7619A
	for <webhook@archiver.kernel.org>; Wed,  5 Apr 2023 11:37:48 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web10.127447.1680694659813671903
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Apr 2023 04:37:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@stwcx.xyz header.s=fm2 header.b=rgUE9NxE;
 spf=pass (domain: stwcx.xyz, ip: 64.147.123.25, mailfrom: patrick@stwcx.xyz)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 086573200302;
	Wed,  5 Apr 2023 07:37:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 05 Apr 2023 07:37:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stwcx.xyz; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1680694658; x=1680781058; bh=fTZ5VEPnzO
	YTg4LEjMsll+HcYY4o/eLCw+kxsQuNPXs=; b=rgUE9NxEbclu0oX9XtGHadmnJZ
	BdKoG1kXBlwiYynT+DWFqUU+T7YqFm3m6WNlZFmhFT/ETvtoXpLQRX98dXylQ3PO
	T4QfzLynPW6oFTA3OjrHRlm7vT8wU37S5jZFCAvqum5eykO2T4Q9+uCOv0LS56pz
	e2Rd+ekL2WTqxa3RO2g6citwNYRNeZLPalEr65DOhQTxhndPXMaU90YrJP3f6AZO
	A525cCoWG4M65n4suJ3+2J3KMqlxrc8DEGDajkUujfMUIZh9ApRnTvQ6qYA8uuEt
	13MkxTNCC2JqpelnMt5zpSIL5dFFq0As899jx2I8WOhQ820Pk3zw9BRWRCpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1680694658; x=1680781058; bh=fTZ5VEPnzOYTg
	4LEjMsll+HcYY4o/eLCw+kxsQuNPXs=; b=KSN09w5ir6LOvSvkoChbSZSSk6vTP
	Ku/LFm+RAvfReEqTBcN6o5CxIei0yyRE9Yf5aYSAkQkAe5/RNe3Cd4LuEXLmj5iw
	BtqUIa4wHMdgz3lFVf5jhCtPenMauZ4jY85Vq0T/o87eF0cmM/uQeEG2alwDZqPz
	eR0BL2RKMBMquP88ed3oI5WjhkaljvVMgdCS59CSKy0yW239PZAnwJEYmZSHtLRk
	N8SN+rUcKcIpNYPS1A8vRdFu5YaFepVDm+ZO2xJN6xEWSDYheksSRofl6qAQh/8q
	R9+1IquA7qu0RDum6IFtt62vXfrufiodniYB2Hh/Ut1KQtLvG/Y3P4fwQ==
X-ME-Sender: <xms:gl0tZP2VA3XPgzpQ4bcVnjuOakvDnLbceZpOUJpqQOZwyInbj4aGhA>
    <xme:gl0tZOFGev5ntB8zGc1CVjtf75EfbiXehMNR-wOJb0yhDbkQ_F4YhI48d__7AsZO0
    MhJ76g5byc-BiVzcRg>
X-ME-Received: <xmr:gl0tZP6riqKUFqy4sP5V9ZXW1RlHmt1xmN4e5Jky2YAKRHg3KA7IF90fcVJXF9rAwMFz71raj1kHIMTwFwFbDb7h4lI42k20TU0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdejuddggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgfrhhlucfvnfffucdlfeehmdenucfjughrpefhvf
    evufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefrrghtrhhitghkucghihhllhhi
    rghmshcuoehprghtrhhitghksehsthiftgigrdighiiiqeenucggtffrrghtthgvrhhnpe
    fffeeujefgheetleduleegtefhgfejuddthfffffehueekiefhieeuheeghfdvtdenucff
    ohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepphgrthhrihgtkhesshhtfigtgidrgiihii
X-ME-Proxy: <xmx:gl0tZE3bnOJ62XHCUJFHpuiEY0DtFqHYsAgE1OHlA8Du0jCKu9_mWg>
    <xmx:gl0tZCFSEJf7QeVm8dLBC5xiM76JteFv8ffbY_R63m5r8Lkwp90W9g>
    <xmx:gl0tZF86D9GVGSF1fifwShsWWvOXyXPnIiW6j435F1whS7gXx4vyKg>
    <xmx:gl0tZNMKttr7qcFV3Mfwikn4Tg1kCr_kCmf_AA_758mjIEVSGChf8A>
Feedback-ID: i68a1478a:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Apr 2023 07:37:38 -0400 (EDT)
From: Patrick Williams <patrick@stwcx.xyz>
To: yocto@lists.yoctoproject.org
Cc: Patrick Williams <patrick@stwcx.xyz>
Subject: [meta-security][PATCH] libwhisker2-perl: adjust perl-version variable
Date: Wed,  5 Apr 2023 06:37:26 -0500
Message-Id: <20230405113726.469558-1-patrick@stwcx.xyz>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 11:37:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59616

The PERLVERSION likely has the wrong value in the native context
due to reasons discussed in openembedded-core[1].  The upstream
suggestion was to avoid use of PERLVERSION and switch to the direct
function.

1. https://lore.kernel.org/openembedded-core/20230405003850.384813-1-patrick@stwcx.xyz/T/#u

Signed-off-by: Patrick Williams <patrick@stwcx.xyz>
---
 recipes-perl/perl/libwhisker2-perl_2.5.bb | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
index 42c0b42..c58d883 100644
--- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
+++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
@@ -19,9 +19,10 @@ PACKAGEGROUP ??=""
 PACKAGEGROUP[ssl] = ", , libnet-ssleay-perl, libnet-ssleay-perl"
 
 do_install() {
-    install -d 755 ${D}${PERLLIBDIRS}/vendor_perl/${PERLVERSION}
-    install -d 755 ${D}${datadir}/perl/${PERLVERSION}
-    oe_runmake install DESTDIR=${D} INSTALLDIR=${PERLLIBDIRS}/vendor_perl/${PERLVERSION} MANDIR=${datadir}/perl/${PERLVERSION}
+    perl_version="${@get_perl_version(d)}"
+    install -d 755 ${D}${PERLLIBDIRS}/vendor_perl/${perl_version}
+    install -d 755 ${D}${datadir}/perl/${perl_version}
+    oe_runmake install DESTDIR=${D} INSTALLDIR=${PERLLIBDIRS}/vendor_perl/${perl_version} MANDIR=${datadir}/perl/${perl_version}
 }
 
 FILES:${PN} += "${datadir}/perl"
-- 
2.39.2


