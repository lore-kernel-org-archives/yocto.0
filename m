Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F389C433EF
	for <webhook@archiver.kernel.org>; Tue, 17 May 2022 02:17:29 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web09.2392.1652753838355559162
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 19:17:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=jQQUx0Ag;
 spf=pass (domain: mvista.com, ip: 209.85.210.179,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pf1-f179.google.com with SMTP id v11so15660303pff.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 19:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qRqDXrfPH8UnAI2A8VGkCJEI2yIgskLw+WC2oGglbFE=;
        b=jQQUx0Agpit7O5wkrVL5XoXQ3um6C+QSifgF5D0/nqJzNcWJ8TsUbwCg5u168U68mB
         XxXNG843sbjafOXE5w97FkNy+BB3PuzD7LGcuic30qcDyDM0WIsh+KDbcMrm3jodkazQ
         hGaN/KmYvmbDVk7xLyZOpBQFObmi3k508yOpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qRqDXrfPH8UnAI2A8VGkCJEI2yIgskLw+WC2oGglbFE=;
        b=uGajIrL6c7p0cyI85jD9/joYqqLNGv/54SGjCKggnBgjT/LU78GQmgGWnHyAwwhJ4r
         kkMR1U6u4URbC2OICDGjmDKIFsQ36w6h4vW0UL/sknleOb5LqONFdE+/WF4rzN8GyH5d
         ZiaatRdvVz91IQ+nvnutc6oZEhbtrzL33sHJP2hDe066aASpY6SaA7eetyO9hix3Cy9u
         VhbVN2dEw23xNO1md6n5QB0kHS6h2gO+514modiE7mXfYqbBffg6h/vgJyovfQk/vW5U
         JGu2QQON4I0Xkxn3DbGCRo3iUxwfHkzK0tdkRXjPv80SvgyNLzpJjCfYLb10lpSjtbqZ
         Fv2A==
X-Gm-Message-State: AOAM530mkTw2ib8buw0Y/qBX2adslJhjFIIHutcsRJVO/KrfRLuus3xG
	5GRVwsFA/okffSkvMf6n1Wme/7oWnCGAzg==
X-Google-Smtp-Source: 
 ABdhPJwou1x/0uY6ycfLstjWJJaQtifO9O8wWNL777G5M4LfDLcqRHS35BEY3CwJxcT0WMlF6dNxcg==
X-Received: by 2002:a63:9041:0:b0:3aa:f1aa:bb68 with SMTP id
 a62-20020a639041000000b003aaf1aabb68mr17625441pge.27.1652753837115;
        Mon, 16 May 2022 19:17:17 -0700 (PDT)
Received: from red (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 b10-20020a1709027e0a00b0015e8d4eb211sm7595874plm.91.2022.05.16.19.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 May 2022 19:17:16 -0700 (PDT)
Received: by red (sSMTP sendmail emulation); Mon, 16 May 2022 22:17:14 -0400
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][PATCH] aide: Add depend on audit when audit is
 enabled.
Date: Mon, 16 May 2022 22:17:11 -0400
Message-Id: <20220517021711.525224-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 May 2022 02:17:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57114

| checking for libaudit.h... no
| configure: error: You don't have libaudit properly installed. Install it if you need it.
| NOTE: The following config.log files may provide further information.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-ids/aide/aide_0.17.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-ids/aide/aide_0.17.3.bb b/recipes-ids/aide/aide_0.17.3.bb
index b1fb58d..fcab504 100644
--- a/recipes-ids/aide/aide_0.17.3.bb
+++ b/recipes-ids/aide/aide_0.17.3.bb
@@ -20,7 +20,7 @@ PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux, libseli
 PACKAGECONFIG[zlib] = "--with-zlib, --without-zlib, zlib, zlib "
 PACKAGECONFIG[xattr] = "--with-xattr, --without-xattr, attr, attr"
 PACKAGECONFIG[curl] = "--with-curl, --without-curl, curl, libcurl"
-PACKAGECONFIG[audit] = "--with-audit, --without-audit,"
+PACKAGECONFIG[audit] = "--with-audit, --without-audit,audit"
 PACKAGECONFIG[gcrypt] = "--with-gcrypt, --without-gcrypt, libgcrypt, libgcrypt"
 PACKAGECONFIG[mhash] = "--with-mhash, --without-mhash, libmhash, libmhash"
 PACKAGECONFIG[e2fsattrs] = "--with-e2fsattrs, --without-e2fsattrs, e2fsprogs, e2fsprogs"
-- 
2.35.3


