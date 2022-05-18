Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12A35C433FE
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 20:48:13 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web12.1859.1652906889867050482
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 13:48:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AdQEr9qK;
 spf=pass (domain: gmail.com, ip: 209.85.214.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id s14so2884127plk.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 13:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=GDr3VBQr7h9+12dfTjFw3m1y1pzHf+Fs/Cq4+CBTEzg=;
        b=AdQEr9qK1Nnnlr/XRDEABdh2rp4xiNW0z+ahaN8bnTr3p3PoKJSGM3ovqG2W7rXTYK
         e+oPUWQMMSDqRRU2YR7fKSwCE3Ou/sEIpxaNQelbolWsQCTwtDghPGxkEHFql3ycou9M
         cyHmS0quTl9bWeghJo1NhAHeTSwjvMGAuYAboJ+cMBxw8SiRszXKYaMhD4Xw4OU0k6dO
         nrJyOerEV9KyM1PgOlYLuXFXoI0M1VhmFcpCboLSE0QIa7ugSvpdk2SwhyCNZF3Q0jTd
         2CMaIt57iHwuiJx6LShIyJzEvrE3WN5gzARtMeEwQL2M1N5qu7rCDQ78/BQhkrgg1R/S
         XmKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GDr3VBQr7h9+12dfTjFw3m1y1pzHf+Fs/Cq4+CBTEzg=;
        b=Zn+99zqRJitEOpF0TFnxTUpfR6caMvEZ15hEmhSjz7pjJfQmAGfkVc6RzNNOqvUDeF
         hbmXHp5DP5v+NFB0EZxhxfbNQguKq4E0lPxBYRnDGcFa6Do936uTtgZKFKofr1kEJkZB
         HZiUb9s9DwFgROUl5LUgymikDoxfasM4ZRt6EU1+6zFyAYSAotGqoH8iaKKKN5dcJFOk
         v+lSHjNhH93SVNk+SoVoJjPz94VojPRUR14TqSi6C0mMG3SBH1vZo7EKRdRoKoFD0SJp
         4WXkmaZKgqzQb+Y/VUCizfcrflQY56SixGvRMS0Ct2bCWy0EsEGT3kGA19mVXY7dRVqp
         flKA==
X-Gm-Message-State: AOAM530iybWRPNXsgYTe7ZNY/T6o7q5Hx/I6UBD5RLEvf4BFs12fugdf
	4xiWwfe5Gqfacv6LnTuTDv5PoQDOKTebdg==
X-Google-Smtp-Source: 
 ABdhPJxyHbYwJt68J0DQbVKzEb68qndMFrAF43kYSc++Ul+KLqGnCcin5lRy1Y2KBTYaUjImMb7qXA==
X-Received: by 2002:a17:902:d88a:b0:156:1609:1e62 with SMTP id
 b10-20020a170902d88a00b0015616091e62mr1352858plz.143.1652906889072;
        Wed, 18 May 2022 13:48:09 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:fee:4904:d15c:6dba])
        by smtp.gmail.com with ESMTPSA id
 p62-20020a62d041000000b0050dc762814dsm2415565pfg.39.2022.05.18.13.48.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 13:48:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] suricata: update to 5.0.5
Date: Wed, 18 May 2022 13:48:04 -0700
Message-Id: <20220518204804.2840071-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220518204804.2840071-1-akuster808@gmail.com>
References: <20220518204804.2840071-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 20:48:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57135

libhtp rolls with it
---
 recipes-ids/suricata/{libhtp_0.5.39.bb => libhtp_0.5.40.bb}   | 2 +-
 recipes-ids/suricata/{suricata_6.0.4.bb => suricata_6.0.5.bb} | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-ids/suricata/{libhtp_0.5.39.bb => libhtp_0.5.40.bb} (91%)
 rename recipes-ids/suricata/{suricata_6.0.4.bb => suricata_6.0.5.bb} (98%)

diff --git a/recipes-ids/suricata/libhtp_0.5.39.bb b/recipes-ids/suricata/libhtp_0.5.40.bb
similarity index 91%
rename from recipes-ids/suricata/libhtp_0.5.39.bb
rename to recipes-ids/suricata/libhtp_0.5.40.bb
index 80c9014..08e285e 100644
--- a/recipes-ids/suricata/libhtp_0.5.39.bb
+++ b/recipes-ids/suricata/libhtp_0.5.40.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=596ab7963a1a0e5198e5a1c4aa621843"
 
 SRC_URI = "git://github.com/OISF/libhtp.git;protocol=https;branch=0.5.x"
-SRCREV = "6b70803c45894da7a591b2305498335e6df4f9a3"
+SRCREV = "1733478f7fd09e936fea2e024f1d228d40741df2"
 
 DEPENDS = "zlib"
 
diff --git a/recipes-ids/suricata/suricata_6.0.4.bb b/recipes-ids/suricata/suricata_6.0.5.bb
similarity index 98%
rename from recipes-ids/suricata/suricata_6.0.4.bb
rename to recipes-ids/suricata/suricata_6.0.5.bb
index 968da21..913e64e 100644
--- a/recipes-ids/suricata/suricata_6.0.4.bb
+++ b/recipes-ids/suricata/suricata_6.0.5.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
-SRC_URI[sha256sum] = "a8f197e33d1678689ebbf7bc1abe84934c465d22c504c47c2c7e9b74aa042d0d"
+SRC_URI[sha256sum] = "0d4197047c84ba070dfc6b1d9f9ee92f52a71403bfac0e29b2554bb21fe00754"
 
 DEPENDS = "lz4 libhtp"
 
-- 
2.25.1


