Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AAC7C7618E
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 19:59:56 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.3804.1679169595374383544
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PgjzcUu/;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id m6so5549534qvq.0
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i63wNs9KhhP6vSm7A36AlewhesumTfBEvfh6iShbfOE=;
        b=PgjzcUu/R34XF9Fxl4henDZOAP6kngNpt2PaRn2AsE6aAwf1XNKcyLxK6zMyNyFSTh
         S5JIpTNiV5q8+q0GMf8N977HCNdPptBM9KF2Za1udoVYp+lWqLtAQ34EsAUv2C2aeKpZ
         qRPz7BOY3c9tF+Mj7lBhfCWNDyZIX2V3YyBpFW+InSGIERmyk6lvwQ9v2CZbDf6Uj+Y0
         KwH/AGZXNwshhI9KiB75bGukpeWFyJXEKrNbgzeEL4oAB/740RwF7m+6V7HiMxdmoWZo
         lHyRfYwrx0CmZUtbaCckPGjG/Z9wDjdLDtTFVEkxDwyEKm+PWfybwpDvPwT44162TQNz
         gi0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i63wNs9KhhP6vSm7A36AlewhesumTfBEvfh6iShbfOE=;
        b=pieFktLmbmgNSUZhSqI5t3E5py36nrS6nSqx6SeWcOyAAHU/TsbQa4ZkSVRAfpaw7U
         8vtvt4XfBWBjGdo/h/eccg/UqMt3uYrk9zf7uQKnngbE+hzADlfnZ0JllcLGLQLApFYp
         f3lXQqeFd18qHhS1PfFm4WPzbEcBkWNF9d6kSOk5cROryN50reO3UOpsCKaQTdFnBcqX
         /Op8KZr5EkPrKjtHbRSY9XnxBQpK+jxTAO7khvlMttkdlRzFCvNgoxNU0fvEDW7P+5Qs
         uSAzEE2T6hgBVEoDCVlrEwkpCTG8oUoetxr68TtZXmVTKfBSnQVokkhDIVEChmdRxnwz
         JOSQ==
X-Gm-Message-State: AO0yUKVybLzXtCXT1YOm1tFAqN61v0cUQTFLQ71UeN6gZRtQCFoAti2N
	hiNazNFj+H/qpVrUQ/YJxp22uUpmy8Q=
X-Google-Smtp-Source: AK7set8xIiMawS8VN1wPHwBaVYVTafioRDA1abIecZgBjI6qVPyrsiFcxWDBKHqNxSPxLtBPPsxjtg==
X-Received: by 2002:ad4:4ea3:0:b0:5ad:9d3f:b05e with SMTP id ed3-20020ad44ea3000000b005ad9d3fb05emr26514749qvb.47.1679169594314;
        Sat, 18 Mar 2023 12:59:54 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/9] python3-privacyidea: update to 3.8.1
Date: Sat, 18 Mar 2023 15:59:45 -0400
Message-Id: <20230318195952.538375-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 19:59:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59454

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ython3-privacyidea_3.7.4.bb => python3-privacyidea_3.8.1.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename dynamic-layers/meta-python/recipes-security/mfa/{python3-privacyidea_3.7.4.bb => python3-privacyidea_3.8.1.bb} (96%)

diff --git a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.4.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
similarity index 96%
rename from dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.4.bb
rename to dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
index b6a0e06..8bb88f1 100644
--- a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.4.bb
+++ b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
@@ -6,7 +6,7 @@ LICENSE = "AGPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "187b6aa61f8b27e1972512123c8295ea6d2501b3d90d975d4603e753f146b50c"
+SRC_URI[sha256sum] = "e0dae763575c6300ccaebe6dcc8d3f119cb3e25c11302b1e78a96a12e8ab2b38"
 
 inherit pypi setuptools3
 
-- 
2.25.1


