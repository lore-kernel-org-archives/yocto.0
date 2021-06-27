Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web11.2169.1624822486164471577
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Jun 2021 12:34:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y3tLOxBl;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id y17so1138332pgf.12
        for <yocto@lists.yoctoproject.org>; Sun, 27 Jun 2021 12:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=b7+LzYd0iPCJQprlsl763v1CW5yglmgITKr11xtIk5o=;
        b=Y3tLOxBl3UC/wcEFakH8MsjCyUO7emBriz77tbDC0BpBEkU89O5Fk9wl3+EZiCcrXz
         ll4XVD0fSewPePx1JY8FSBZD+QXxnbO7jovqmHgO9BG3DVrb0qNgt6ujyPFK2hsiwuzT
         wiTwYFg7NvIzAT8jvpEwlw2/lsXIFtV5yx+Z6zyCWaRC+pGV7+B7dVLXTRKT4CM9Ag9F
         KRojNE4kjL4gTgHEO9yPCvTkSJ9st1scwodSk+AcA0PekuTgsWznvdmUHcrPhu6Shjc4
         yZwuPhl2Dk4vMp0HJ3KrXMPgI3TK6Yejv88KRaA9z05iPKznTKqVXb0dnDMRC8HxNrJA
         udzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=b7+LzYd0iPCJQprlsl763v1CW5yglmgITKr11xtIk5o=;
        b=jcdXhzKuv/Nl3aVpoNcAOcYDgLpL2mWWvMVP9QTOZOo0B9H4Snq/+fvWqm5vRps8R/
         a1gSctWIOMwTBdwL4LbDDw0PQDf47T7KZ6mkWovLf4leG23p2c50QPSu72L6lm7QRMTP
         Cpn0KIn5tni/3ki/03LEf8pburea9Yqz3XfiMQ+O8BcxTtBBN3GvWdQL0fsUbz8xhflq
         OK/rJHEIHjoiK37ZZStDyrBHQgSpmXzGuZ6uwaoWKJgS8l6PUMPX9P+/dS8xUb7hu8XA
         finFUG9d5ksr8XJu5jBz9zuzzb7DzCZORaiCjH4LhwmoeMN158sAtHEpuugePtlOFs5d
         z0ew==
X-Gm-Message-State: AOAM5308PhaiiE521ReztGOxWSImcRfuYw6XjrLUvrPMdbNZAKHW4h8B
	DkYL+YdLxZnJazl+8UkdtgQiDWqXvAmWoA==
X-Google-Smtp-Source: ABdhPJzWSfG0fp9Yj/X2DiDYB1gCRkJQLGcEbfQYugK1FsRf+sKif9SEpgU4YI+OSiD95tNU+CKPPA==
X-Received: by 2002:a63:7404:: with SMTP id p4mr19600108pgc.405.1624822485685;
        Sun, 27 Jun 2021 12:34:45 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:90a0:cfd2:ffe1:efef])
        by smtp.gmail.com with ESMTPSA id e1sm345670pgr.37.2021.06.27.12.34.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 12:34:45 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] packagegroup-core-security: add sshguard
Date: Sun, 27 Jun 2021 12:34:41 -0700
Message-Id: <20210627193442.18651-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210627193442.18651-1-akuster808@gmail.com>
References: <20210627193442.18651-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index e7b6d9b..8e06f30 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -40,6 +40,7 @@ RDEPENDS_packagegroup-security-utils = "\
     softhsm \
     libest \
     opendnssec \
+    sshguard \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
-- 
2.17.1

