Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web10.10565.1613847030499586622
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 10:50:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CHERBu5/;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id n10so7502106pgl.10
        for <yocto@lists.yoctoproject.org>; Sat, 20 Feb 2021 10:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=CW24mzLKve8JfIOJIYRJ0Om0UBxmW5VIfH8328eR0Pc=;
        b=CHERBu5/MaurrnskTtjjYZR2gKfylXWd69xhB7zM/sU4bhE2aicPleD71lf6sElCUB
         LYtltdSjKhPbFZAaugn/k9U6Qa29GfvuByiHEC7Ti9dzCoEA59HXyflNsMRFbTn5aFbV
         xFlpCHag68gYK8tsW483TFPuWBb405I4G7cuJACl18DvUSlnAZf+O3/stH48FvcJkisg
         Tq1Ky1c6kGR2XngWcSrNzOIhgnYEcIdJNY8Ace2Y6RmFjYnrOait04ASFYz0uHSZ0wl4
         yrk+NA/3ExKoESQ6aK/h2NujGsqJY/h/mfKIReVIxeJ+Ue/xgqcSnG6USK8UzVCjdEZL
         UW+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=CW24mzLKve8JfIOJIYRJ0Om0UBxmW5VIfH8328eR0Pc=;
        b=PCJ0djHwXBXKjm7OVQAqIWWXNEBRv5DT70qCEBHeF+IhtnBrbBsNg7wyet2CO33RUc
         KR+EINoJ+tTm1B9i8IkM1/hzLl1z7jIW5ZxedWE8RY73n+TleRDgECRnFQnxkQL1iXzc
         BPX7yd49B9i3Z3Raq81TOYOquilV7kdTPrijnmjvzQdLjJJZK1t8F/6z13EHmo8awtNL
         gI+/NtjDGl90cOBcWEZ8SIo5S9MNVaQuS2kGdtSJZjfS/wCpqlygBIIwol4DgU5EPDbI
         gCv6ioOSakI6yRiFez3za9AVQgA2qvP+6xWZT7zazPKaBMwrwQQckiQWfe3frLo67xC5
         dhwQ==
X-Gm-Message-State: AOAM533j+A3LarwRhFMi24xrIRggpqJzNNVH+CZayoJ4/GmcI+LfOsma
	lNojDZTvw3dHDPN1eYFsw3s8Cqdtx+Oapw==
X-Google-Smtp-Source: ABdhPJw9xZjCQsW+UMztFjt7KuL8/7Ora6bDRiiPjDRhfRRWanm5IrR+LkVCYl3QT1LRHz5Kp5lzIA==
X-Received: by 2002:a63:5c9:: with SMTP id 192mr13420684pgf.316.1613847029665;
        Sat, 20 Feb 2021 10:50:29 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:70a2:885b:8c45:14d6])
        by smtp.gmail.com with ESMTPSA id s62sm5771162pfb.148.2021.02.20.10.50.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 10:50:29 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] softhsm: drop pkg as meta-oe has it
Date: Sat, 20 Feb 2021 10:50:28 -0800
Message-Id: <20210220185028.18795-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/softHSM/softhsm_2.6.1.bb | 30 -----------------------
 1 file changed, 30 deletions(-)
 delete mode 100644 recipes-security/softHSM/softhsm_2.6.1.bb

diff --git a/recipes-security/softHSM/softhsm_2.6.1.bb b/recipes-security/softHSM/softhsm_2.6.1.bb
deleted file mode 100644
index 74e837a..0000000
--- a/recipes-security/softHSM/softhsm_2.6.1.bb
+++ /dev/null
@@ -1,30 +0,0 @@
-SUMMARY = "SoftHSM is an implementation of a cryptographic store accessible through a PKCS #11 interface."
-HOMEPAGE = "www.opendnssec.org"
-
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=ef3f77a3507c3d91e75b9f2bdaee4210"
-
-DEPENDS = "sqlite3"
-
-SRC_URI = "https://dist.opendnssec.org/source/softhsm-2.6.1.tar.gz"
-SRC_URI[sha256sum] = "61249473054bcd1811519ef9a989a880a7bdcc36d317c9c25457fc614df475f2"
-
-inherit autotools pkgconfig siteinfo
-
-EXTRA_OECONF += " --with-sqlite3=${STAGING_DIR_HOST}/usr"
-EXTRA_OECONF += "${@oe.utils.conditional('SITEINFO_BITS', '64', ' --enable-64bit', '', d)}"
-
-PACKAGECONFIG ?= "pk11 openssl"
-
-PACKAGECONFIG[npm] = ",--disable-non-paged-memory"
-PACKAGECONFIG[ecc] = "--enable-ecc,--disable-ecc"
-PACKAGECONFIG[gost] = "--enable-gost,--disable-gost"
-PACKAGECONFIG[eddsa] = "--enable-eddsa, --disable-eddsa"
-PACKAGECONFIG[fips] = "--enable-fips, --disable-fips"
-PACKAGECONFIG[notvisable] = "--disable-visibility"
-PACKAGECONFIG[openssl] = "--with-openssl=${STAGING_DIR_HOST}/usr --with-crypto-backend=openssl, --without-openssl, openssl, openssl"
-PACKAGECONFIG[botan] = "--with-botan=${STAGING_DIR_HOST}/usr --with-crypto-backend=botan, --without-botan, botan"
-PACKAGECONFIG[migrate] = "--with-migrate"
-PACKAGECONFIG[pk11] = "--enable-p11-kit --with-p11-kit==${STAGING_DIR_HOST}/usr, --without-p11-kit, p11-kit, p11-kit"
-
-RDEPENDS_${PN} = "sqlite3"
-- 
2.17.1

