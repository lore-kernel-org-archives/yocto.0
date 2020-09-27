Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web12.23747.1601245000604079589
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 15:16:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bioC/IYx;
 spf=pass (domain: gmail.com, ip: 209.85.215.195, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f195.google.com with SMTP id 197so6581394pge.8
        for <yocto@lists.yoctoproject.org>; Sun, 27 Sep 2020 15:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=BDkblC4etvHQehtbwJaH/sWgaX/J5F1GxLQ5bt463pw=;
        b=bioC/IYxVQgHixzVI3HCdk80vUkmnZPNDH7d9ZM5MIooKnNJbXR1WP9V4SWYllCYma
         x5IVF8ik/Uz5L3YadM8Epv8UcIXcZgbExkqW/s6Y8GhNlaiqppFw+YGApzcCvMFYhtPr
         PCgAsN11k7nESl5mu8/zoFt36Wvig0DRGoFs8zWUrb9T5guit6ksgIt2fgaVSipolU/R
         Oo9bZzzsOTLMGSy8QtRlvSr7HO8YFSElLhV9lk0uxjKgv/6XFD/epVY8Qcyp/Q6AarI+
         gsErgGsMmc4ZRQ0ISJK1cfCM2PIuKv9GNGBu8XnEUPyIAA+162CPJNP7HbTO3fIs+L/Z
         Hz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=BDkblC4etvHQehtbwJaH/sWgaX/J5F1GxLQ5bt463pw=;
        b=Brg6vMyBcEJLhDL2Al6Wi5wNWAYBC9CU46EkcZ74x7zaCS5kARkmAggV/Gu5xTuK30
         TZlslytSI4FMbEOsb48OGPR4f8oO5iH61ukKHB4mMtbDxblFr5MliegKybOZdC/bzttD
         7UDbobNkAbXmiO+toDkwG/Bp23X0srxL0SLb5o+boQ619hzoqOdOYym+8njuSDJ+iQ7p
         4JAvl8kuWUZCaS3O/yYnJXOM1HlxEpxtBwNF+vujiafe9rGw1oZLoCPTCtvt76dBszMp
         C7kblkHnLhN92TlkCF5bmt4OBEuzPclRZDdPMGcsXi0PnSzUvd2nHj7ON+qwvC6NIOTg
         Kxbg==
X-Gm-Message-State: AOAM533nnz9/bO1kx067QaQl8Ai6YsUh5FxDygPBajGDT5FKzUYz9zf+
	A1SNVhU+G5WlMpisuPX25PkWS6EoFhA=
X-Google-Smtp-Source: ABdhPJx4ZuByhiKXq8vuR1YHmv9u1GsZ7SyJvvOKE6deq31VwW9Y5CDoC+vPdYdHjuZnaJo5OTIcpA==
X-Received: by 2002:a63:36cc:: with SMTP id d195mr7073599pga.426.1601244999756;
        Sun, 27 Sep 2020 15:16:39 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0::41a6])
        by smtp.gmail.com with ESMTPSA id 138sm9553916pfu.180.2020.09.27.15.16.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2020 15:16:39 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] softHSM: add pkg
Date: Sun, 27 Sep 2020 15:16:36 -0700
Message-Id: <20200927221637.6725-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/softHSM/softhsm_2.6.1.bb | 30 +++++++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 recipes-security/softHSM/softhsm_2.6.1.bb

diff --git a/recipes-security/softHSM/softhsm_2.6.1.bb b/recipes-security/softHSM/softhsm_2.6.1.bb
new file mode 100644
index 0000000..74e837a
--- /dev/null
+++ b/recipes-security/softHSM/softhsm_2.6.1.bb
@@ -0,0 +1,30 @@
+SUMMARY = "SoftHSM is an implementation of a cryptographic store accessible through a PKCS #11 interface."
+HOMEPAGE = "www.opendnssec.org"
+
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=ef3f77a3507c3d91e75b9f2bdaee4210"
+
+DEPENDS = "sqlite3"
+
+SRC_URI = "https://dist.opendnssec.org/source/softhsm-2.6.1.tar.gz"
+SRC_URI[sha256sum] = "61249473054bcd1811519ef9a989a880a7bdcc36d317c9c25457fc614df475f2"
+
+inherit autotools pkgconfig siteinfo
+
+EXTRA_OECONF += " --with-sqlite3=${STAGING_DIR_HOST}/usr"
+EXTRA_OECONF += "${@oe.utils.conditional('SITEINFO_BITS', '64', ' --enable-64bit', '', d)}"
+
+PACKAGECONFIG ?= "pk11 openssl"
+
+PACKAGECONFIG[npm] = ",--disable-non-paged-memory"
+PACKAGECONFIG[ecc] = "--enable-ecc,--disable-ecc"
+PACKAGECONFIG[gost] = "--enable-gost,--disable-gost"
+PACKAGECONFIG[eddsa] = "--enable-eddsa, --disable-eddsa"
+PACKAGECONFIG[fips] = "--enable-fips, --disable-fips"
+PACKAGECONFIG[notvisable] = "--disable-visibility"
+PACKAGECONFIG[openssl] = "--with-openssl=${STAGING_DIR_HOST}/usr --with-crypto-backend=openssl, --without-openssl, openssl, openssl"
+PACKAGECONFIG[botan] = "--with-botan=${STAGING_DIR_HOST}/usr --with-crypto-backend=botan, --without-botan, botan"
+PACKAGECONFIG[migrate] = "--with-migrate"
+PACKAGECONFIG[pk11] = "--enable-p11-kit --with-p11-kit==${STAGING_DIR_HOST}/usr, --without-p11-kit, p11-kit, p11-kit"
+
+RDEPENDS_${PN} = "sqlite3"
-- 
2.17.1

