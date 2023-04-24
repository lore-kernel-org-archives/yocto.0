Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35A8C7618E
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 16:01:32 +0000 (UTC)
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.55790.1682352083237571301
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 09:01:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=f5KM8KVL;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1682352083;
  x=1713888083;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=BX6fRX9k86lcz+psNnGG+vd4O2hc1YAo4hFMVc5DA/c=;
  b=f5KM8KVL1IHrwQG4JsAgha5aAFyn/yyeHeYCZRl8qGvrltpKM+71lCEH
   Y/ZDCoEbTZrPntMG1ogSPJ3KWpNOlgS/afTAJXhLwoRnnCa+lG1u+z63c
   CiCKzP+oX6x4Jbe01wfSwVak8o1OL9WStO+YNnbnE0Pfumq2NWZPW4akh
   vjgex5VQLCGVXGfuU4b+uTNu8/nKBOxeM0akTFpS7F6ZcesAFUIWviNI4
   hwt6ter7FbsVoTuEAx5CphFqUJDEXveiNuVGdVXNgXwVAMhVA+6sTrK9v
   sRFJ8vLyOXGThCkTPXLd/cf2EoR6CEBY/KB2VCHcmwkLbJ4MXMX7vKpUG
   g==;
From: Peter Kjellerstedt <pkj@axis.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] tpm2-tools: Remove unnecessary and optional dependencies
Date: Mon, 24 Apr 2023 18:01:11 +0200
Message-ID: <20230424160111.1362974-1-pkj@axis.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 16:01:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59768

* The dependency on autoconf-archive is only needed when building from
  the Git repository (and it should really be autoconf-archive-native).
* Removing the build dependency on tpm2-abrmd does not change the output
  in any way, i.e., nothing is used from it.
* The runtime dependency on libtss2 is added automatically by bitbake
  since /usr/bin/tpm2 is linked with libtss2-esys.so.0.
* The runtime dependency on tpm2-abrmd is optional. Such dependencies
  are better handled at a higher level, e.g., by depending on
  packagegroup-security-tpm2.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
index ef73238..8119bb1 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
@@ -4,7 +4,7 @@ LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://docs/LICENSE;md5=a846608d090aa64494c45fc147cc12e3"
 SECTION = "tpm"
 
-DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
+DEPENDS = "tpm2-tss openssl curl"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 
@@ -13,6 +13,3 @@ SRC_URI[sha256sum] = "1fdb49c730537bfdaed088884881a61e3bfd121e957ec0bdceeec02612
 UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
 
 inherit autotools pkgconfig bash-completion
-
-# need tss-esys
-RDEPENDS:${PN} = "libtss2 tpm2-abrmd"

