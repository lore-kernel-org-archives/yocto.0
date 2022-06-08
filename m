Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AA8C433EF
	for <webhook@archiver.kernel.org>; Wed,  8 Jun 2022 23:42:38 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.4547.1654731754891286221
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jun 2022 16:42:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B02xyUbo;
 spf=pass (domain: gmail.com, ip: 209.85.214.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id q18so18929987pln.12
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jun 2022 16:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=suqaPuylqGpzb4c8N67LNi7o+HMGq7QhLN2bRyyxZls=;
        b=B02xyUbo98eUIwarWubK59Tkjs1E5u2Pd/Z7JmaWdEQTUqp7UbonhKp+oHLCtdDlTk
         lERd4UEvR2tGBfnD8pIewOrpPYitkUtYYkRRjF/XlVN1KiaPzuNypKIACCo01oGY7SEj
         hn3hYdab0+kxuq2cDZ4siwBPOgk4ge/SOacuxEsALPopqA1xnXp+UJh9se72vwt/B8Jq
         ZtrSQ3gij/I7CHfx4zf8qbfGUlLLBHrxAKFVp7y09NDsajknT5l4HGXA5N1oJ5IY1tCE
         UJB9WpdHPk7KwUUIOSOzjbSSwzEjrkq9dM0suKFZo+labBv54zdnIWITBhVhRPQEz67p
         6E0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=suqaPuylqGpzb4c8N67LNi7o+HMGq7QhLN2bRyyxZls=;
        b=MxDDON1xR0UI/9d5OA/gjtKpymG/964YPzXdeDh9GCnz+Me6qvU24GRoqa4FVjeVKH
         Piivg19pffGOzN5Lw0eKbQLF3lQx3MOwOX+11NJrKw4P6QO78oCbJ9vL5W2mU6pZvZ+I
         JU0uJy1z+UiOtLkAQzNq/oFxA/LpajggGzm2cF9u4qgQD4pYzydIRUuWdLERAANZlHL9
         HNK+7jcwaTNXk7cu3Z/YFhot7Bl7I9zKAbSOP4tEiT0pjwSF/Es9j6HAUj++uBxgIH5F
         NDn/kiwEIKjs/wswAELTMceOSUeH/aaKU3D5O+Sv5ZhzMpQDBv7DGRXKm3AOfhtAIT1y
         6vfA==
X-Gm-Message-State: AOAM531gQAbvJ7gQ8L8NxRZcKKoA3ejEOcZLhSSSPWRRRm9GUVhEdfOa
	/zVnf4wReDPXQgfofgQi5biYgjBaMJY=
X-Google-Smtp-Source: 
 ABdhPJyZxfUnr9iOjoA62z5bCAYRpyy5nfISa2xCuHOAi6VlgqSqwldH6eLr18x7cgYCmomSIPYSYQ==
X-Received: by 2002:a17:90b:2482:b0:1e8:a80b:c5bf with SMTP id
 nt2-20020a17090b248200b001e8a80bc5bfmr478614pjb.14.1654731753793;
        Wed, 08 Jun 2022 16:42:33 -0700 (PDT)
Received: from keaua.gch.lax.wayport.net ([12.186.46.6])
        by smtp.gmail.com with ESMTPSA id
 128-20020a620686000000b00518b4cfbbe0sm15459174pfg.203.2022.06.08.16.39.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 16:41:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] apparmor: fix ownership issues
Date: Wed,  8 Jun 2022 16:39:39 -0700
Message-Id: <20220608233939.939424-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Jun 2022 23:42:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57307

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_3.0.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.4.bb b/recipes-mac/AppArmor/apparmor_3.0.4.bb
index 046a3a0..896abfe 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.4.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.4.bb
@@ -101,6 +101,8 @@ do_install () {
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         oe_runmake -C ${B}/parser DESTDIR="${D}" install-systemd
     fi
+    chown root:root -R ${D}/${sysconfdir}/apparmor.d
+    chown root:root -R ${D}/${datadir}/apparmor
 }
 
 #Building ptest on arm fails.
-- 
2.25.1


