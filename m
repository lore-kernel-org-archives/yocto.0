Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58EDC433EF
	for <webhook@archiver.kernel.org>; Wed, 20 Oct 2021 12:48:44 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.7481.1634734123858908617
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 05:48:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2D731FB;
	Wed, 20 Oct 2021 05:48:36 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78B083F73D;
	Wed, 20 Oct 2021 05:48:36 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH] lib/oeqa/controllers: extend search path
Date: Wed, 20 Oct 2021 13:48:31 +0100
Message-Id: <20211020124831.406574-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Oct 2021 12:48:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55106

When multiple locations can provide modules in the same package, the
search path needs to be extended with pkgutil.extend_path.  Otherwise
the search will end early and not iterate through each of the providers.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 lib/oeqa/controllers/__init__.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/oeqa/controllers/__init__.py b/lib/oeqa/controllers/__in=
it__.py
index e69de29..df3c142 100644
--- a/lib/oeqa/controllers/__init__.py
+++ b/lib/oeqa/controllers/__init__.py
@@ -0,0 +1,3 @@
+# This is needed so that multiple locations can provide the same package
+from pkgutil import extend_path
+__path__ =3D extend_path(__path__, __name__)
--=20
2.25.1


