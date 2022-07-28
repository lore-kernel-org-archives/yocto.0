Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE64C19F2B
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:18:09 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.1539.1659046681226188486
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CKZYv+2g;
 spf=pass (domain: gmail.com, ip: 209.85.214.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id b22so2962031plz.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5bXKz6S/V4jY95mkShRCJtJbUhM4ZklbP9wmDtINRco=;
        b=CKZYv+2gScGfmP06RMYRiuKbfPaZT9D8lDv7WM1A2+1GgUwwY84MF+6bRBhaDdrFEp
         Bz+QZSnLyRWLS3/X0Yvbk1zPcb1qQ1I0bdGzxIZ1t3cDv1NFTAUcdkH/GBEhkSagsq8R
         a/6bqGDY0Q6dk0/Ny/p03OJHjjryNiu9XqedisdocoENr9pqN1Jg3psdd89y8Tu4Kkji
         QK7ZnN5IuHHHRu9/RMIxqHoUv8QvGAF/567yR+2C/MZnAnfsejPBCDEMZlJ5YAY4TJJn
         GHnpGFS8CN5Q4C8rEbnGA2nWq0tC3B5b6MmTRE/f33L3Rwqnc2qKLRsBUr7Et9NHk0H9
         H9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5bXKz6S/V4jY95mkShRCJtJbUhM4ZklbP9wmDtINRco=;
        b=VtctgrhjE18skb3blZlPj0XN4HUCRkPjJ514+r+kcUWzR0uue4/qYVKvn9dXDjV9I2
         NjpROwmXqPfYZHCNJIDboTypZijRYl9Tps1GaMoNUjw2Ug7aT/UBL6fBwMw94ruy3rHx
         XokjHYE0K9IwXkJBVBb5YAZEiRYXrv7JWx7Ms8+v9QbdtCJ+3RNjUo8tNe3ZPBl1RyFh
         8qt5ICrrZpqnCyL8B4lEVd3zj6ecf38DiVHrbJV3SfvMLHiIeesdo3TuvS8FKIX4QD8e
         4XENsrUaelG6TE97ScGc2tKQB/iDmeOTdnTHf5RAUkxGiLtoDsLQGPO0zXffZXJABiS4
         YK1w==
X-Gm-Message-State: ACgBeo2GqRahhW4Apc9eFt6V3/vmWZ3A4bGaKtKoEkZ4YUzaxppH+M8b
	GEfQvzxd/rFVsBeGEe04eEybqm1ZTgA=
X-Google-Smtp-Source: 
 AA6agR4oRgzxFJVKtw07actCdjBo20/B/PwiobBn8/VaORwewOIPSDjC7nEMrFWAt0WmnDkckzJsfg==
X-Received: by 2002:a17:902:eb88:b0:16d:c99f:ed59 with SMTP id
 q8-20020a170902eb8800b0016dc99fed59mr885286plg.33.1659046680266;
        Thu, 28 Jul 2022 15:18:00 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.17.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:17:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/9] tpm2-openssl: Add UPSTREAM_CHECK_URI
Date: Thu, 28 Jul 2022 15:17:48 -0700
Message-Id: <20220728221751.48428-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57674

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb b/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb
index 55061c9..263ca2c 100644
--- a/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb
@@ -8,6 +8,8 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
 
 SRC_URI[sha256sum] = "eedcc0b72ad6d232e6f9f55a780290c4d33a4d06efca9314f8a36d7384eb1dfc"
 
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
 inherit autotools pkgconfig
 
 do_configure:prepend() {
-- 
2.25.1


