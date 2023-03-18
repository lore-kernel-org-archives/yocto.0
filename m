Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88F8C76195
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 20:00:06 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web10.3962.1679169597057063315
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=afpj/Irw;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id h19so9176595qtn.1
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jj2Y90a6qHeo3/DRnbgrqvLj2HGzxvk27HGV/oRU90U=;
        b=afpj/Irwtae1UnhYOGbb13DaK23KfqpUr3DhZRPaAGQsC6GL7ugDOFHpD2wL3+DlGZ
         T6au9DVdGeVimTafouGIQSDu1OW8wH2CfAfR3TKfRwR+I42+3Hv11yiZVtzPQEWT1jgg
         3/OfoUIrtl/1mqQdy4ZXrabwiQywaLgTuCkzxd+62QLml0Xlfh6qhaSyECpQ7mN+u6aj
         PCh0YmwaMDdTl8SS2cpx/C7K5lLmYDjoAGQgYyDOCw/FOWmxyB8TxeaIIXm6LgkjZB7I
         1EOedw7BMGbJh5AsLYysKXaL65GLDnADk3Aj+XDVsGOPrDu2xzKOyUJWoKBBtPVsO0cE
         w87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jj2Y90a6qHeo3/DRnbgrqvLj2HGzxvk27HGV/oRU90U=;
        b=4Jj2yWx+mybnuu7sASVjFlB1Nn3UZRah/FwVOntSRmFo7ip30ycw7YF+PHqUSqfnEf
         Ht3Qq9y7gB0g/92P7+lkFk6dvR4QbU6/e2PeKqwvvD+a8aVSUL6XlQr6p4kd3PYm3uoI
         4dXZ1nQQQWtsTK9Y7Wxm1cgdVjZAy3wdSOnxmtHJjxu9e/pzx5IoXDqmstvo+4fr/68H
         ARoYiXtka1Y58w1OCmGudKIwEJsM2gKzhwApUa1fXCuvyWUW0WXT8CBbjlymXqveUiBM
         GvYheORIeoeU6ZFxoahA4rxnwaRosyKlh/4bZPdDYNMACFhqLNqyJiP2fKX4v/5eZtOV
         p2/g==
X-Gm-Message-State: AO0yUKUUlT9bCcXkdzMhAXQG4QMLtJ7S834q/FHGlSpVwTzT9E5Cey2R
	5CuLUxcf5NZr0ieW+qJUDsud3BSMrQ4=
X-Google-Smtp-Source: AK7set8TfL+3ASD5LFcOFU7xA7QuEZhe3Ua6M/icM4a1R14JlUw3U31FF2bdkQND6/8IJf2O8iunmA==
X-Received: by 2002:ac8:5ad0:0:b0:3bf:ba80:b91b with SMTP id d16-20020ac85ad0000000b003bfba80b91bmr20860230qtd.1.1679169595974;
        Sat, 18 Mar 2023 12:59:55 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:55 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/9] chkrootkit: update to 0.57
Date: Sat, 18 Mar 2023 15:59:48 -0400
Message-Id: <20230318195952.538375-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 20:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59457

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../rootkits/{chkrootkit_0.55.bb => chkrootkit_0.57.bb}         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-scanners/rootkits/{chkrootkit_0.55.bb => chkrootkit_0.57.bb} (94%)

diff --git a/recipes-scanners/rootkits/chkrootkit_0.55.bb b/recipes-scanners/rootkits/chkrootkit_0.57.bb
similarity index 94%
rename from recipes-scanners/rootkits/chkrootkit_0.55.bb
rename to recipes-scanners/rootkits/chkrootkit_0.57.bb
index fe0e989..d35f5f6 100644
--- a/recipes-scanners/rootkits/chkrootkit_0.55.bb
+++ b/recipes-scanners/rootkits/chkrootkit_0.57.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=fdbe53788f7081c63387d8087273f5ff"
 
 SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/c/${BPN}/${BPN}_${PV}.orig.tar.gz \
            file://musl_fix.patch"
-SRC_URI[sha256sum] = "a81c0286ec449313f953701202a00e81b204fc2cf43e278585a11c12a5e0258b"
+SRC_URI[sha256sum] = "06d1faee151aa3e3c0f91ac807ca92e60b75ed1c18268ccef2c45117156d253c"
 
 inherit autotools-brokensep
 
-- 
2.25.1


