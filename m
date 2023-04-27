Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C5C77B61
	for <webhook@archiver.kernel.org>; Thu, 27 Apr 2023 15:02:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.23157.1682607734556415713
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Apr 2023 08:02:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEB3D2F4;
	Thu, 27 Apr 2023 08:02:57 -0700 (PDT)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 682533F64C;
	Thu, 27 Apr 2023 08:02:13 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-parsec][master,mickledore][PATCH] meta-parsec/layer.conf: Insert addpylib declaration
Date: Thu, 27 Apr 2023 16:01:40 +0100
Message-Id: <20230427150140.3167648-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Apr 2023 15:02:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59789

From: Peter Hoyes <Peter.Hoyes@arm.com>

Yocto mickledore introduced the addpylib directive for explicitly adding
layer paths to the PYTHONPATH.

Standalone OEQA test suite discovery does not require this directive but
it is required to import test cases from other layers, e.g. to extend
and modify the test cases.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-parsec/conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 0a71694..7d272a2 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -12,3 +12,5 @@ LAYERSERIES_COMPAT_parsec-layer =3D "mickledore"
=20
 LAYERDEPENDS_parsec-layer =3D "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer =3D "meta-parsec"
+
+addpylib ${LAYERDIR}/lib oeqa
--=20
2.34.1


