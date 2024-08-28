Return-Path: <vanusuri@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AB4BC54EE3
	for <webhook@archiver.kernel.org>; Wed, 28 Aug 2024 11:44:04 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.11268.1724845434734313217
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Aug 2024 04:43:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=NEcF6RjP;
 spf=pass (domain: mvista.com, ip: 209.85.214.177, mailfrom: vanusuri@mvista.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-202508cb8ebso44684925ad.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 04:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1724845433; x=1725450233; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6AzMyaRtsH5E85aJS8OX/aqZIxEG+zemakEU4ahy2ts=;
        b=NEcF6RjPEdFjGUYINBWcH+td/mqypKeJ+mJKtKAILgJcyLILJsrKVO7oD7Wymm9JND
         +Cbja+fElTgcSBPTAOfK3yXatNVzuGx9nTP20H9vyowDRjdO3kkx/dUE5pK5o6qy3nMl
         tUe39d8gE9rjSGdkU/l4DVJzhCOYA8jX0bIJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724845433; x=1725450233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6AzMyaRtsH5E85aJS8OX/aqZIxEG+zemakEU4ahy2ts=;
        b=J2EJDdcdlO8YIloW4h2pKYCw5mOvkaWg5tzOxXe6qquF0wGeXVTVt02IuC4FnSSDUv
         us04czAF0zUbjurehXBy0wQ/YaC8z3uB+klSuqqEiSMG2JnA/ZyKyHPq4/LmRJx6xcID
         dR4iNV6ZIMKjJp4VNI5ISSH6U27BigWMLCqTyIijYaXlz8JMGuPu47HjUt+oN0rRmioK
         7pSwFk8oH2z2uBM9kZtUaMHbNp+l0mPbzC4VGOBHGpmDsO8fM6Dnnd34PRGM4JaNWQGz
         cjJZr/UmVYD7VqNQAe1UZAw2znwZxX250dG4uAohKBNCOIBxuFqOVrNG8pmPrBtCcfQl
         ZJXQ==
X-Gm-Message-State: AOJu0YysRwmRJxB9ZOEsf8+36DX548VsTLX1AqJ4PbqveRRj2Zg6iizj
	g+qFS5sSasD9GLn3FQxRXeFZQXiD8zD4V1Vglg7HfO85/2+H5lE7sAbGAdwdmov0QrYk2R4tpqb
	pfTE=
X-Google-Smtp-Source: AGHT+IGlOXeg/ko0gzYuihPMtbodFrlPjuAz4gUGvQTUQtG6Gmpe78caiYrQ94/7RucHCoCCepnUvQ==
X-Received: by 2002:a17:903:3547:b0:1fc:4f9b:6055 with SMTP id d9443c01a7336-204f9a60e54mr16629135ad.1.1724845433462;
        Wed, 28 Aug 2024 04:43:53 -0700 (PDT)
Received: from MVIN00020.mvista.com ([2401:4900:882e:d10d:44e8:323d:994b:bdf1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-203856099efsm97435095ad.200.2024.08.28.04.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 04:43:52 -0700 (PDT)
From: vanusuri@mvista.com
To: yocto@lists.yoctoproject.org
Cc: Vijay Anusuri <vanusuri@mvista.com>
Subject: [meta-security][kirkstone][PATCH] tpm2-tools: Upgrade 5.2 -> 5.7
Date: Wed, 28 Aug 2024 17:13:36 +0530
Message-Id: <20240828114336.436725-1-vanusuri@mvista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 11:44:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63757

From: Vijay Anusuri <vanusuri@mvista.com>

Include Security fixes:
Fixed CVE-2024-29038
Fixed CVE-2024-29039

Changelog:
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.7
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.6
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.5
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.4
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.3

Signed-off-by: Vijay Anusuri <vanusuri@mvista.com>
---
 .../tpm2-tools/{tpm2-tools_5.2.bb => tpm2-tools_5.7.bb}  | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_5.2.bb => tpm2-tools_5.7.bb} (51%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
similarity index 51%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
index c20af7e..bd3d34b 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
@@ -1,21 +1,16 @@
 SUMMARY = "Tools for TPM2."
 DESCRIPTION = "tpm2-tools"
 LICENSE = "BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://doc/LICENSE;md5=a846608d090aa64494c45fc147cc12e3"
+LIC_FILES_CHKSUM = "file://docs/LICENSE;md5=a846608d090aa64494c45fc147cc12e3"
 SECTION = "tpm"
 
 DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe4d8909ff64119f7a630"
+SRC_URI[sha256sum] = "3810d36b5079256f4f2f7ce552e22213d43b1031c131538df8a2dbc3c570983a"
 
 inherit autotools pkgconfig bash-completion
 
-do_configure:prepend() {
-    # do not extract the version number from git
-    sed -i -e 's/m4_esyscmd_s(\[git describe --tags --always --dirty\])/${PV}/' ${S}/configure.ac
-}
-
 # need tss-esys
 RDEPENDS:${PN} = "libtss2 tpm2-abrmd"
-- 
2.25.1


