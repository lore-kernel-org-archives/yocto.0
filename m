Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web11.786.1601389032342547704
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 07:17:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTv1v/tj;
 spf=pass (domain: gmail.com, ip: 209.85.210.194, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f194.google.com with SMTP id o20so4664861pfp.11
        for <yocto@lists.yoctoproject.org>; Tue, 29 Sep 2020 07:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=CGh+VP9pHkPAhGB8huRPnpVnv7b5SHV9qsCKqg4PH4Q=;
        b=cTv1v/tjUbC2oGwm2JDnHWY8sRkvk/kliKgq3uYYrpQMSKhhpV0YQ4SeY9gtAbilGc
         yZzfseA1XJUc9PgHHRhoC/qo+ePtVz56ONB0Z2PVBWpeJrZ51Ju0uRxASfxMi4ve/B80
         YYi1LLJOaijuGizbmU95wLk/KL0ZoCtV/duOvxyjEs7gc0hYibVoxwhRLFwV26F2l/vt
         d8NjvO7+qlqC7l12nadilZIlGQDM/+kdsJiz08RdpT5G6HuYgtDiQqtyaaIh+++ANHTx
         k+WcDNxw7PsIiaNJKHFayTm9QgqUgqZ/r8HZ38EPN7FJNegJ8JIy7EUwEAsKn2tXnsoj
         3tbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=CGh+VP9pHkPAhGB8huRPnpVnv7b5SHV9qsCKqg4PH4Q=;
        b=YXh7Kpdexf3KntVGfHMns66EZ7ONHJypEY79a3i4icAWvK1T0XgPVvkZYwc+Ig9MJN
         ZxcdCfsAW7H8Ie5i/4cisO35XY0w5yG5lEZfdR04uTEXDy7EmvjPuxJDz7WHXwRlJ9DD
         voT9npS9re/TVD6dwDBGV13xnjmmbEu1qbRFvfFcXRJAYWEYH5MXNzqw3gJwYFg4u0tU
         nzC8FJ7ri80o0m/p0uEgtWKuCWt/C+bUj9pTX2MKH2ttzpMJCLegXY9MsCZB3KTOE6Gp
         LX9kIxGqCkvncKQwu/PHekPuw5a7Xd1iQoiIqg/oqi/VeKWtLnJxrwcF7Iy2VOR3Yizy
         7tFw==
X-Gm-Message-State: AOAM533rBf9FpX91kYMwuD2YvnQOrR+8pVqjfAuR+n7r2wF11pz5/e1x
	VFLxdcTBShWbHdYSdmvfZW5eOHDPNew=
X-Google-Smtp-Source: ABdhPJyYV/R6+hSkqWlo+5FOwjeeUaj/RgHGWgVcvDMd29iZm6aVw+5/JNUUttvQ4556YhP233yZ1g==
X-Received: by 2002:a63:cb0a:: with SMTP id p10mr3569366pgg.314.1601389031580;
        Tue, 29 Sep 2020 07:17:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:9d97:e0e:5802:c8f4])
        by smtp.gmail.com with ESMTPSA id g4sm4722527pgg.75.2020.09.29.07.17.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 07:17:10 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: add opendnssec to pkg grp
Date: Tue, 29 Sep 2020 07:17:09 -0700
Message-Id: <20200929141709.5564-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index c69e3b3..789f4ea 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -38,6 +38,7 @@ RDEPENDS_packagegroup-security-utils = "\
     python3-scapy \
     softhsm \
     libest \
+    opendnssec \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
-- 
2.17.1

