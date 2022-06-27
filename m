Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20D91C43334
	for <webhook@archiver.kernel.org>; Mon, 27 Jun 2022 12:02:58 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web12.40871.1656331372771664312
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jun 2022 05:02:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ModJGJuG;
 spf=pass (domain: gmail.com, ip: 209.85.221.48,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id d17so7099115wrc.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jun 2022 05:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aYax8Q+770f4aI9xMgpLqSPtlo57f91LMi8NZMXa0eo=;
        b=ModJGJuGeyuqQErx6SMKzJI/a6ry/VfNT1gQM9KKS+PTSdrQLJczo6XlVslhSmloBf
         aIsenBf8XpeFXVnhTJttJBJrvDluXs4GnqRT2EoWbq3CWh77VrbVfwHXtpB1XaMnxYuV
         Ay7P0RHNiV1dqMS5t5aPdRY8Y2pvXUVWJYXevbwkjPzWPuBHEPTsX9iDa801p/AOVM6q
         mZGxXQj/w29v47lJPUWVbmFPVZ0b/6Kg19cUr/EEMx0GFoGNTt5uJmfloRk99w7A0X6Z
         S1KPV27e+8bwehxKwjQcGwYcduMdxt0786R92S4ZuGrQvfLhosHbs+HeSp1YiUahiuGK
         zVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aYax8Q+770f4aI9xMgpLqSPtlo57f91LMi8NZMXa0eo=;
        b=MiT8UaIjtdhAurXUbmdkDZFY16DhAAFFC5sd5mmvGnh2+MFIW8NrCSpKipw5p4qPRh
         p5+V/Ed0g011L+qcaSMZicVE/LVZtzciuQXPenCrEhE5/DbU7RkmXjoccaI/Izu44s2h
         vR8EeIiP5gRr2gFHlxYEZbGP5gmS9KsQhmFMEww6GNhT+PJnGtDjJZWi9QVkNfz63oGH
         vpCDmHftcbevIGBCY+uKd2ouoOpwzZapW0xJnsUTfPL2Lqcmv+qmduJ6R8nBss7EM+lK
         DQ7jRVg2IzX4ulINZcX9uB2W3FPYU2dcsX5+uhyDx7RxYs5blg0U4uI3EUQ4LAZ0YnxK
         zrdA==
X-Gm-Message-State: AJIora/95h8huRCLP0DIUkYOzfyEk2C1P+P2Wgdv1uSWYzUlhWGIpKMq
	mtTnO2d7OQJgr4seZLM25zQsXPVoxvo=
X-Google-Smtp-Source: 
 AGRyM1uZh03F+DXzFTTeGmDYtIQmJCu5wcgOMsP6NnoLrf6965w7yQmUgCBbRc/TZ1Q4nOiLOAOYCQ==
X-Received: by 2002:adf:f186:0:b0:21b:960b:8f9 with SMTP id
 h6-20020adff186000000b0021b960b08f9mr12685357wro.70.1656331370840;
        Mon, 27 Jun 2022 05:02:50 -0700 (PDT)
Received: from fio.lan (176.57.115.89.rev.vodafone.pt. [89.115.57.176])
        by smtp.gmail.com with ESMTPSA id
 g12-20020a7bc4cc000000b003a03185231bsm12743870wmk.31.2022.06.27.05.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 05:02:50 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	daiane.angolini@foundries.io,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH v2] meta-integrity: kernel-modsign: prevents
 splitting out debug symbols
Date: Mon, 27 Jun 2022 13:02:47 +0100
Message-Id: <20220627120247.22464-1-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jun 2022 12:02:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57391

Starting with [1] kernel modules symbols is being slipped in OE-core
and this breaks the kernel modules sign, so disable it.

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


