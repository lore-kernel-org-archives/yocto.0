Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7E19C761AF
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 20:00:06 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.3963.1679169597620882144
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lhyqKZ39;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id x8so5513028qvr.9
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uXG3iW7Lj7MlKNIS4wCTtELFpqDgWbe9I/1hkmpgO1w=;
        b=lhyqKZ398O/zNxmH2nPSrkltXxRffjLQDTn/+8zUshRu/nCd7W5AQgQ8IHjZmMBrjR
         //+YXzC2BDRq/Tm219FoUXwe+ZhKNRvdBCjKQIS4EBdMUhUOSiPwCPv5hHUmKDkCTqQk
         y9mlkLJyQAwQamPp3SFpat3u8/7OGxQZ0wWHE4mpwIx+X1jZl48Y8gE+lQX0Cv1oCW9p
         /dbnJ/N9Z8PJ/PHwQcsfIVjWrzejKcDqR48P9U4ydS8QRxem7BV/h4fx7wK52DRiMAZA
         XJQ9v+metKGf+gwI7i5tqjl9KdhxsRFeiXioi7yakrXGzelLHaOer6ZgIA0coEaQC2GG
         ahuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uXG3iW7Lj7MlKNIS4wCTtELFpqDgWbe9I/1hkmpgO1w=;
        b=dI6c+g0e4djbOoWqfPZv1vZzNteTsuDIXaIZgP6GEYdqbAzM1TtakJcPEHMEYk9tF6
         Z8ORV94IVWCZxJXe4aEof3NF1uzvM9AaIFhGgKzNDAEr0l8H3B2gAcWoC97WcIPuc45B
         1CBtoyCbRGLD5NqGjDpbsdOkeoksSn44PFPDEWYuQlB5PepIGIC7d8yTwlK9IIGhg5Bh
         rFJbDi1OYll8yXEfRTBfgh/us0qxo7YmC+5DzGrMmkY7pPpe4uKvsk8v7slWnKHqml6Y
         66LDHqPoA2ollX+IrXV16zvSx2aP6tn+DANoDsKXTugm47RX6uWQq2ZkFVbCBBmoh04Y
         foeg==
X-Gm-Message-State: AO0yUKX73HxsGmi4vhS/CnlW21gwWxO2Hmc8b7LgJGMZzIdGRLwpX6sq
	DDgqse9Wnv2kdmmx9z3gwNJg0IFLDdE=
X-Google-Smtp-Source: AK7set/4shDWBtv04x6lSzeYHD9WOsbBPxz2SNH+gRNOflyoXzXvxs1z9C6lNQqZN/Ty/UlYpvuFfg==
X-Received: by 2002:ad4:5c6f:0:b0:577:522d:5d11 with SMTP id i15-20020ad45c6f000000b00577522d5d11mr47637957qvh.8.1679169596589;
        Sat, 18 Mar 2023 12:59:56 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/9] chipsec: update to 1.10.3
Date: Sat, 18 Mar 2023 15:59:49 -0400
Message-Id: <20230318195952.538375-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 20:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59459

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../chipsec/{chipsec_1.9.1.bb => chipsec_1.10.3.bb}             | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/chipsec/{chipsec_1.9.1.bb => chipsec_1.10.3.bb} (94%)

diff --git a/recipes-security/chipsec/chipsec_1.9.1.bb b/recipes-security/chipsec/chipsec_1.10.3.bb
similarity index 94%
rename from recipes-security/chipsec/chipsec_1.9.1.bb
rename to recipes-security/chipsec/chipsec_1.10.3.bb
index 9fbdaa7..b6dc944 100644
--- a/recipes-security/chipsec/chipsec_1.9.1.bb
+++ b/recipes-security/chipsec/chipsec_1.10.3.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bc2d1f9b427be5fb63f6af9da56f7c5d"
 DEPENDS = "virtual/kernel nasm-native"
 
 SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
-SRCREV = "d8c2a606bf440c32196c6289a7a458f3ae3107cc"
+SRCREV = "094ce48082844788789e05b5f4e840ebec0e661d"
 
 S = "${WORKDIR}/git"
 
-- 
2.25.1


