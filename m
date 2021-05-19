Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web09.12741.1621436153419227917
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 07:55:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AfgtzL5e;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id b15-20020a17090a550fb029015dad75163dso3573789pji.0
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 07:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=43WL6qWUZdY2JL0rF477gV1lC9pp7DggXMyfYlNwUK0=;
        b=AfgtzL5e9ZCUqiI+mGW1LUvgMWRFllpPdqONIPDtbHbWCmCMSEigVaqUicnu0aPcjZ
         ncNnbGFl90f1pRtTDwzUuIvRgkLKABUfvdK+JIyTzUCGoDEr7FUg2diBG3kSbug7AjH/
         DGg9OmNhSI3UlgysKDrzYDd1Gf/jBUW0fnRCd6Wiwvx82FWtzlza7Muc/kQU3EUkLd4u
         ARIOyUF4dk099KoEaFEhgoEhAXmiZCZyHrvTCfKKC04mWj0ACKx83Wl58Y/AguvX+rn6
         o2+fcEqJG43Ln7XJQQ2RRxKvQYI7nwwlUVBnSWziDRaIEubIeztIGjb9QWrSmk92kCTC
         z6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=43WL6qWUZdY2JL0rF477gV1lC9pp7DggXMyfYlNwUK0=;
        b=BU+bxrH0T3UPZNkPp2oEoARh9pBpcObgseWIFnklptzKCN7U9d9SIezQrp9rOxvmBU
         6Y9ZEGsb15XYjmamm7d5d5m8XWrb9JZAkyywlXMeeHySZwEOyPA+FTMTBG3fXb/5+69M
         a/dra3hb5jKSaqt8JoOSrGF2TjRj+b+dkDJDw8udtezYsioyXCN193VZaXnxuatPoyxp
         jr4PutPvvwpLBNluAig2Fpca7bZ3lavPasFiNX5r1cQcb3cRErEBwLuArSNdRjuMrFjB
         z4r0a+xSxUgqdHcX4+1X3Id6Vo9cW3Dab4I+mUKsPkYpw0xP04fLyOHYEilQBO149Aqr
         De6A==
X-Gm-Message-State: AOAM5306tQSIBjeCbx+RfkAA/E3PHQ3UvZqMIPL6xUM/WVwZQkvXwOA2
	w6vOdkBU4i2HU/Y3twvbY8Btjn7iu2E=
X-Google-Smtp-Source: ABdhPJyW+JeI3Bu9Vejnb3B+lMJ25GTAwWT2F7tetbXusZf9mN6kVj7kQ4guzT9jd4ww8eZ7apSSeA==
X-Received: by 2002:a17:90b:4812:: with SMTP id kn18mr11938431pjb.188.1621436152670;
        Wed, 19 May 2021 07:55:52 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id b65sm15975181pga.83.2021.05.19.07.55.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:55:52 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] packagegroup-core-security: exclude ossec-hids from musl
Date: Wed, 19 May 2021 14:55:48 +0000
Message-Id: <20210519145550.1312699-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index d7349b0..cf9620f 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -74,6 +74,8 @@ RDEPENDS_packagegroup-security-ids = " \
     aide \
     "
 
+RDEPENDS_packagegroup-security-ids_remove_libc-musl = "ossec-hids"
+
 SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
 RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
-- 
2.24.3

