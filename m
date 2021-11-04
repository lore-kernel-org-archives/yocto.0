Return-Path: <S.Mueller-Klieser@phytec.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AE3CC433EF
	for <webhook@archiver.kernel.org>; Thu,  4 Nov 2021 11:16:26 +0000 (UTC)
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
 by mx.groups.io with SMTP id smtpd.web09.10291.1636024584360082102
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 04:16:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@phytec.de header.s=a4
 header.b=UdphceKg;
 spf=pass (domain: phytec.de, ip: 195.145.39.210,
 mailfrom: s.mueller-klieser@phytec.de)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1636024581; x=1638616581;
	h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hRzC1l2Zgwm7TEKgKUkKr1fBGUCOu25z8OlxfeNjGrU=;
	b=UdphceKgjkcVdoDKWDXUadiLqr+mcXBFFdzs6lWn5ZVSVeSmX6Jc01G+1wArH7ks
	r6QqNabxipSY+RN1e/YyD6fsLCcaC/t/5pI2fluYA0FJDoH/bg+uOWOCAqXN9lX+
	DhC8ha2r6cl/ObnL1SnkqNyLl8LxdYUzMJfybEUwxsg=;
X-AuditID: c39127d2-c63ec70000001d24-8b-6183c10508a6
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id
 89.F8.07460.501C3816; Thu,  4 Nov 2021 12:16:21 +0100 (CET)
Received: from lws-mklieser.phytec.de ([172.16.21.68])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021110412162134-2052297 ;
          Thu, 4 Nov 2021 12:16:21 +0100
From: =?UTF-8?q?Stefan=20M=C3=BCller-Klieser?= <s.mueller-klieser@phytec.de>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm2-tss: fix fapi package config
Date: Thu, 4 Nov 2021 12:16:15 +0100
Message-Id: <20211104111615.26986-1-s.mueller-klieser@phytec.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
  17, 2016) at
 04.11.2021 12:16:21,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.11.2021 12:16:21
X-TNEFEvaluated: 1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: 
 H4sIAAAAAAAAA+NgFmpgluLIzCtJLcpLzFFi42JZI8DApct6sDnRYMJyGYuNHe8YHRg9Zp56
	xBzAGMVlk5Kak1mWWqRvl8CVcXTFV/aCFzwVC9vbWRsYG7m7GDk5JARMJM69amDpYuTiEBLY
	yijxd1EbO4RziVFi9qNepi5GDg42AR+JpTMtQRpEBBQknv8/ygRiCws4Spw68gDMZhFQkTh3
	+guYzSvgILHgXTMzxAJ5ifO969gh4oISJ2c+AVsmIXCFUWLhq+VsEEVCEqcXn2UG2cUsoC6x
	fp4QSJhZQFti2cLXzBMY+WYhaZ+FUDULSdUCRuZVjEK5mcnZqUWZ2XoFGZUlqcl6KambGIGh
	dHii+qUdjH1zPA4xMnEwHmKU4GBWEuF9vqEpUYg3JbGyKrUoP76oNCe1+BCjNAeLkjjv/R6m
	RCGB9MSS1OzU1ILUIpgsEwenVAPj+suythrLVuu9cv5yZqbGufp9dlzvGlNf5MsuaSqZu+Db
	+3vC/DuFuQveHHLRvxHjYPzSaHHw5rRjZwtVz8/k2+dcqeoUKf6rxSDOT0nn2rdHPI73T0Vo
	XDkuv7Um886m33FHis+d37D/AwPrjpppKW6GrqcedzkHPJsgez43kveHXRXvraMlSizFGYmG
	WsxFxYkACsa4BBMCAAA=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Nov 2021 11:16:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55239

When enabling fapi, the build breaks with:

 | configure: error: Package requirements (libcurl) were not met:
 | No package 'libcurl' found

This adds the missing dependency and bundles the additional config files
in the base package.

Signed-off-by: Stefan M=C3=BCller-Klieser <s.mueller-klieser@phytec.de>
---
v1:
 - tested on hardknott and master

 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss=5F3.0.3.bb | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss=5F3.0.3.bb b/meta-tpm/=
recipes-tpm2/tpm2-tss/tpm2-tss=5F3.0.3.bb
index 64708791f4a9..1a36a5b73b06 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss=5F3.0.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss=5F3.0.3.bb
@@ -15,7 +15,7 @@ inherit autotools pkgconfig systemd extrausers
=20
 PACKAGECONFIG ??=3D ""
 PACKAGECONFIG[oxygen] =3D ",--disable-doxygen-doc, "
-PACKAGECONFIG[fapi] =3D "--enable-fapi,--disable-fapi,json-c "
+PACKAGECONFIG[fapi] =3D "--enable-fapi,--disable-fapi,curl json-c "
=20
 EXTRA=5FOECONF +=3D "--enable-static --with-udevrulesdir=3D${nonarch=5Fbas=
e=5Flibdir}/udev/rules.d/"
 EXTRA=5FOECONF:remove =3D " --disable-static"
@@ -73,6 +73,11 @@ FILES:libtss2-dev =3D " \
     ${libdir}/libtss2*so"
 FILES:libtss2-staticdev =3D "${libdir}/libtss*a"
=20
-FILES:${PN} =3D "${libdir}/udev ${nonarch=5Fbase=5Flibdir}/udev"
+FILES:${PN} =3D "\
+    ${libdir}/udev \
+    ${nonarch=5Fbase=5Flibdir}/udev \
+    ${sysconfdir}/tmpfiles.d \
+    ${sysconfdir}/tpm2-tss \
+    ${sysconfdir}/sysusers.d"
=20
 RDEPENDS:libtss2 =3D "libgcrypt"
--=20
2.20.1


