Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FC7CCA480
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:49 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.9244.1655559884983115860
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LmI1cUWR;
 spf=pass (domain: gmail.com, ip: 209.85.215.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id 184so6333290pga.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=eIaElLP1d4Za6qKp6SSqexDwEKFW5XOMu9kTJtcuwF8=;
        b=LmI1cUWR9eErFN6jI1hs3KDgk0Z362DbkifuP9isOyTvOVPDUWmfmf3Mcnteg6IWeM
         +9qRFAjnM+teOPJV/5a+hbYREjiWUYClxMrnOjuI6FS3kX3fbSvXXJ6J5cqQLVWNSSFU
         ygTG+8L3vdWB6CULZCSNsd+X5i0up5gACYv7acjdirbSS/oQFXDZuiFK7V2dfK0AEuI7
         WB1U49sIK5CLc5FjOorkKzNTNx0r8cJB5kp0JQVxTPH5MNAHIqErarK682d2CzX2eokS
         6H3Ro83m2i8WodG+ieezIgn+0plVcUsMyghdJXr/xDcO647+03HTK3h3P8VYNXjJmxFb
         0rkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eIaElLP1d4Za6qKp6SSqexDwEKFW5XOMu9kTJtcuwF8=;
        b=eeGAnEK5LpGpg7tRuaCNXw6YGpLvGiGSiNj4fA61Iz2F74p7fYY4K2oTejwhGs8yrK
         3ERY7ri12Wk7kYYCS1yqFdGvP5VB0/jLWNoScNf4ESsV0aTyvG9YilvVKkQjf7NvsPwM
         SArI6IgiPsvEnLXpb8njNLjIVTLQZuWA+Y/1BQTK8JiR/PJHimkSsdHU0y1CxTy8+9GI
         3fk8MfWqvZcrRCGejxI9lC0p6iq3699PIlq6i7MvIqRHi+nZuzMQKikuqybYNXvUcVWr
         D9CrwUkJtNe7hlieiFZ8zHXXcbU6UT3Ssl0sbO8QEPisvhi3NpkPwCw42OP/S2KHfvNJ
         In+A==
X-Gm-Message-State: AJIora8vtfWpoUgDF9muoPopa89SKYJBlEPrm0RZAwzUV9YiVLniTl0s
	1yKJh0yQNqAvMwOuZMuZalBDvkkyZuw=
X-Google-Smtp-Source: 
 AGRyM1u0QPs3TiW2QUGiV9q93SUoaO+yUHRbPlq05uKUdHJgc1H25cYEkNJzgBK0tyJJDRXEoeHsXg==
X-Received: by 2002:a63:4e21:0:b0:406:fb5b:a3 with SMTP id
 c33-20020a634e21000000b00406fb5b00a3mr13542191pgb.195.1655559886470;
        Sat, 18 Jun 2022 06:44:46 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/9] libmhash: add native pkg support
Date: Sat, 18 Jun 2022 06:44:32 -0700
Message-Id: <20220618134435.2370878-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57348

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libmhash/libmhash_0.9.9.9.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
index 35c5ff8..4d1f584 100644
--- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -35,3 +35,5 @@ do_compile_ptest() {
 do_install_ptest() {
     install -m 0755 ${S}/demo/mhash ${D}${PTEST_PATH}
 }
+
+BBCLASSEXTEND = "native"
-- 
2.25.1


