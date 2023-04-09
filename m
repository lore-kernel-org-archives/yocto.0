Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7EEC77B6E
	for <webhook@archiver.kernel.org>; Sun,  9 Apr 2023 16:16:24 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.22764.1681056982194428186
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Apr 2023 09:16:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=Vd7YOSpq;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-54c12009c30so170127707b3.9
        for <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 09:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681056981; x=1683648981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oubNqfQPvbvjxygiKItqxmfbMSiXXhd1ohXhG67/uhU=;
        b=Vd7YOSpq5C++YoEO+unwMsiRYV7WnK3WZK2pIuW+Bfw79sNUzvl1BR4bzF5bF4LfGE
         RMWMqDUZbEoSCxJwIJ5hBjemmiAYPFd+TbQOTe7EgBx2/xt82owIEg952muUzxwjWwBk
         2TGaTOGL4mzx+yxNhk7DlqCp2yfGakbMY0VTcIDG1h3T1ws90B1RF6YLR21b7a57+tv2
         3MJMuAgbVLXCzCzz0vcdli7dUQ/9Ddi8v+RVgdXW2xbL/oUa3fn+QSs/FDutEm/GOL8M
         hDZ//5vICRXYTOIyQfL4oKSK5Et5wt0dCD7QAZ3sUaNeZDEmP7+Ys1dipJSEIOneGNh5
         meRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681056981; x=1683648981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oubNqfQPvbvjxygiKItqxmfbMSiXXhd1ohXhG67/uhU=;
        b=R29gmb1bcCcvlF3DGbdYK5Fgm8CG4DpQHmASS3evQR3FgHAOBDefjaI1vR9oWG0xNu
         yQK2QpsiAh9icwTPBEkUgfIdVDCF83jUVxSYgMCHsfEHKEq67jVrPXOQTczEAEjjw7q6
         riiqqfULieZ740XPZkHGx4Wz1yZIx605PmSX9PW+EDiRaOKO5oO51ffs7AGuBO+wC7JI
         uvBbK0I+Ot+xkbuxhcpbHoSCprrvXvMVbF0Ai5kKG74wtUl9eSQcqeRuxwjnHuqz4avl
         KmW6g/eM8nHvZGuy0pbhh7QQhnSMzZT5saVlNxaSrAVXOxhncqlfJzHA0Bn0Y/ovws+t
         5CLg==
X-Gm-Message-State: AAQBX9eZe07GBwAAhT2wA+YEcNZKVGjs2gOHPZo6yT2ihjUHvGXqXl08
	RDiuAoqpl63iXIidp5jZKShvUe3A2QWemA==
X-Google-Smtp-Source: AKy350amV4u2v5KCx1Z0yXVSO4vNX7JzSOu5wfiVj98U0vWCV0lDU9dWp0k5CexTpB5BgtZWS+vfxg==
X-Received: by 2002:a0d:d40e:0:b0:541:a34d:a6de with SMTP id w14-20020a0dd40e000000b00541a34da6demr6018243ywd.47.1681056981091;
        Sun, 09 Apr 2023 09:16:21 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:47d6:87b6:cfbc:dcc5])
        by smtp.gmail.com with ESMTPSA id j135-20020a81558d000000b0054f2d0a7008sm46894ywb.2.2023.04.09.09.16.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 09:16:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH 2/2] parsec-service: fix SRC_URI hash
Date: Sun,  9 Apr 2023 12:16:19 -0400
Message-Id: <20230409161619.120499-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230409161619.120499-1-akuster808@gmail.com>
References: <20230409161619.120499-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 16:16:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59647

Fixes:
ERROR: Missing SRC_URI checksum, please add those to the recipe:
SRC_URI[parsec-service-1.2.0.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-parsec/parsec-service/parsec-service_1.2.0.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
index 5f4ad5b..bb78f78 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
@@ -12,7 +12,7 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
             file://systemd.patch \
             file://parsec-tmpfiles.conf \
 "
-SRC_URI[parsec-service.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
+SRC_URI[parsec-service-1.2.0.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
 
 PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
 have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
-- 
2.25.1


