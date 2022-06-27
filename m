Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2728EC433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Jun 2022 11:57:38 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.41417.1656331052656141740
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jun 2022 04:57:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OoPG2WCJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.54,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id
 i67-20020a1c3b46000000b003a03567d5e9so5718029wma.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jun 2022 04:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MDws0yXkqOBXpTAYhUF5aY7c+7YEx+DdPAXP9b7Kg1E=;
        b=OoPG2WCJ96TeTbazx3AosQ7uGO4uIIm2/uyP7+XcRDvHLNMzoNYBpxPSR0zMQ08j9E
         hEIz3gk2psMPbczDHplsOUTaKslcNDXNvLZSCxztMnpzM/rsb4xGIK4342R0QzpwrzKm
         jWXAFZZflldiBdmyjayclwHgP5uU0g6mtjDRY0RfJTCF7jG8NJ61hRhlKZHaVKy5J7x/
         zK+ct+foPbtboqyGp1SR47zm6iWfKP3rz8iXIopSV56H3wLvDXQh/KOM40cM1ivPvPOM
         WCe8/1sE2sUe1AvFBlI46CDwhIvkcm0TxU3kJRzfj8a06INUEvlq/ZfaJcE8DImmQwga
         UDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MDws0yXkqOBXpTAYhUF5aY7c+7YEx+DdPAXP9b7Kg1E=;
        b=w9riXyEgnamTjV+kzYfAyFFZpSOg+OK8E6DxI0/M5qNxSzE9otLtA0ekEMEZlALGgz
         7ujHnDTRW2H8Exz4q5pNfcQvknShMcgGcDpLGx7+DsvKipJPtazqpoddH7Wmbr1f1xFm
         Cmm9PpSkAHgre5U2CxeAM7vBxguS6opjnWiqonnIF+64CVFuwaL0XAsefm3Ld9S5EmJH
         q93T9AHoDJ/pdCKISTE/Zn76WIAJmxUu7v4irO6Khe8o9wswcelm/fT7yf1k5sQnwacg
         v57wW8SraqkQWhwAgJNysSZ0SoABY+SPP42j73Zw4mdD/i1pHZTCkIexSs4jGWsV5Cbf
         l8GQ==
X-Gm-Message-State: AJIora9kyqTMyD7NZvjlc1HoFgK8+Ov53eJ1+9CzMICCQOCEL1dO4y9z
	UTyMvxPpb1CVdEoPIAWqU3/yKQgHU5w=
X-Google-Smtp-Source: 
 AGRyM1t4y8g4a7fYmPEz+FVy2tcVSymj2qRGL+oRFZnxH1qfhcnxOAXEIzDTz9/DIOvavm+lOp8FiQ==
X-Received: by 2002:a1c:7903:0:b0:3a0:3936:b71f with SMTP id
 l3-20020a1c7903000000b003a03936b71fmr20462504wme.168.1656331050789;
        Mon, 27 Jun 2022 04:57:30 -0700 (PDT)
Received: from fio.lan (176.57.115.89.rev.vodafone.pt. [89.115.57.176])
        by smtp.gmail.com with ESMTPSA id
 t18-20020a05600c199200b003a032c88877sm18250395wmq.15.2022.06.27.04.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 04:57:30 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH] meta-integrity: kernel-modsign: prevents
 splitting out debug
Date: Mon, 27 Jun 2022 12:57:21 +0100
Message-Id: <20220627115721.21816-1-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jun 2022 11:57:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57390

Starting with [1] kernel modulus symbols is being slipped in OE-core
and this breaks the kernel module sign, so disable it.

[1] https://git.openembedded.org/openembedded-core/commit/?id=e09a8fa931fe617afc05bd5e00dca5dd3fe386e8

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-integrity/classes/kernel-modsign.bbclass | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity/classes/kernel-modsign.bbclass
index 093c358..d3aa7fb 100644
--- a/meta-integrity/classes/kernel-modsign.bbclass
+++ b/meta-integrity/classes/kernel-modsign.bbclass
@@ -13,7 +13,9 @@ MODSIGN_PRIVKEY ?= "${MODSIGN_KEY_DIR}/privkey_modsign.pem"
 MODSIGN_X509 ?= "${MODSIGN_KEY_DIR}/x509_modsign.crt"
 
 # If this class is enabled, disable stripping signatures from modules
+# as well disable the debug symbols split
 INHIBIT_PACKAGE_STRIP = "1"
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 
 kernel_do_configure:prepend() {
     if [ -f "${MODSIGN_PRIVKEY}" -a -f "${MODSIGN_X509}" ]; then
-- 
2.36.1


