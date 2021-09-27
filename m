Return-Path: <kristian@klausen.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C11FC433F5
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 11:07:15 +0000 (UTC)
Received: from mail.klausen.dk (mail.klausen.dk [157.90.24.29])
 by mx.groups.io with SMTP id smtpd.web10.29617.1632740833668028660
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 04:07:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@klausen.dk
 header.s=dkim header.b=opvlr4NT;
 spf=pass (domain: klausen.dk, ip: 157.90.24.29,
 mailfrom: kristian@klausen.dk)
From: Kristian Klausen <kristian@klausen.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klausen.dk; s=dkim;
	t=1632740829;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GTmVuq5gb49YMjAFhMfE5dlX3QoKflj+qYENydhs9rw=;
	b=opvlr4NTBJmfIlRUJfBkSuFy7o5Yy3oGCRTnYRFDj3ramBuqDxS+7JthrqeFvJhDJD1VQe
	z7EDleqtaxJyxb8jHgxsEX+1B/nIWoGS4oXNltCe5TvStEWqtonvkRuJ3XvyfqXjskoyTX
	HQpe/3KEFbEYED+b0ThXOMB3HrwXaNo=
To: yocto@lists.yoctoproject.org
Cc: Kristian Klausen <kristian@klausen.dk>
Subject: [meta-security][PATCH] libtpm: update to 0.8.7
Date: Mon, 27 Sep 2021 13:07:03 +0200
Message-Id: <20210927110703.31806-1-kristian@klausen.dk>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 11:07:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54875

Signed-off-by: Kristian Klausen <kristian@klausen.dk>
---
 .../recipes-tpm/libtpm/{libtpm_0.8.2.bb =3D> libtpm_0.8.7.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.8.2.bb =3D> libtpm_0.8.7.bb=
} (88%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb b/meta-tpm/recip=
es-tpm/libtpm/libtpm_0.8.7.bb
similarity index 88%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb
index 9784aa1..95ba5c5 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb
@@ -2,7 +2,7 @@ SUMMARY =3D "LIBPM - Software TPM Library"
 LICENSE =3D "BSD-3-Clause"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De73f0786a936da3814896df06ad22=
5a9"
=20
-SRCREV =3D "f66a719eda0b492ea3ec7852421a9d98db0a0621"
+SRCREV =3D "f6dd8f55eab4910131ec6a6a570dcd7951bd10e4"
 SRC_URI =3D "git://github.com/stefanberger/libtpms.git;branch=3Dstable-0=
.8"
=20
 PE =3D "1"
--=20
2.25.1


