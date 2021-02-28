Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web08.4804.1614552973772283091
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iGlS0/Si;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id u12so10213472pjr.2
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=wgvhixDBcZh/aSA43ysb4g7L+IBGn1LRboLU+674D9s=;
        b=iGlS0/Si67HG8yHaPZGx7rGs7KjqBN4tid+KjhkTgogq5UsklmAfZ2W7zk6HXbEeDb
         AOkvwSUwCSkaj39ol4UauS+MQpCnGDB9Mvv+U70nQ2djI3/DUjZ87a4+wvU8adGqaEDv
         GKT8T/HukXSlTK8/viEcaSta+BFLFt0tbI1tWwZ5UQSTZHQ4rUFxWRmsJFEk75g/Lje2
         VESYxOnHqtyav/DtaXF2fabqLU9kJhEYC8/W8XqFEkRr6r0Ml3PNLKknTXG93vQUMW74
         PFaBNvoeQZxoM3rz6SZHvBovOBkgFop/5AtLqWmi9L8HGZpozwW+lWxYyL0fqqXSwma9
         jdPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wgvhixDBcZh/aSA43ysb4g7L+IBGn1LRboLU+674D9s=;
        b=njLO2yahS7UJjB17KmzvVowfg+CJ4+9HkV2EncS4WDPDq+QcXYkMXSWmbXU99GjuvR
         qx8DHs0EIlXd0qtNwNFipHy8UHrkSLsVopFklqeA6G3oefFf0DWoADcK31wQdL6HoKOA
         uHXa0emTwjF8+TdY+1nX3/HLg3iSzp6ADwEN83uNZe7cHXQtMio8xGQheuAWOJW/Zpx1
         sweQ0EjGrjCOh/yUd9ETSIh5a+X3yFJrKaMg6CReUW3ynbwXjZnlnccv7MnR590agRL5
         sawtXTU4bcBjQr+D7svy7W9TIh/zA9aPboAz7LQAmyR91PZJiTlSSPsjoqBdK293E8K1
         pU8A==
X-Gm-Message-State: AOAM533/LaqK3Su0RxXjuw8WH774Oo8Q8jSX1u4HB+Q1EyIK32TLzxMe
	/995vF16vuEVpJ7TQNKo4EuqSvsMOqc=
X-Google-Smtp-Source: ABdhPJzwSRjULuZopR0Xzj1i6ITr9D7nygCJUp8ZYI5m3mXtyraq/PZMhz+DvfmuHknohXa5trzrlQ==
X-Received: by 2002:a17:902:e54e:b029:de:8c70:2ec4 with SMTP id n14-20020a170902e54eb02900de8c702ec4mr13170018plf.56.1614552973188;
        Sun, 28 Feb 2021 14:56:13 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:12 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 09/12] opendnssec: update to 2.1.8
Date: Sun, 28 Feb 2021 22:56:02 +0000
Message-Id: <20210228225605.3442507-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../opendnssec/{opendnssec_2.1.6.bb => opendnssec_2.1.8.bb} | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)
 rename recipes-security/opendnssec/{opendnssec_2.1.6.bb => opendnssec_2.1.8.bb} (87%)

diff --git a/recipes-security/opendnssec/opendnssec_2.1.6.bb b/recipes-security/opendnssec/opendnssec_2.1.8.bb
similarity index 87%
rename from recipes-security/opendnssec/opendnssec_2.1.6.bb
rename to recipes-security/opendnssec/opendnssec_2.1.8.bb
index 5e42ca8..9137743 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.6.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.8.bb
@@ -5,18 +5,16 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=b041dbe2da80d4efd951393fbba90937"
 
 DEPENDS = "libxml2 openssl ldns libmicrohttpd jansson libyaml "
 
-SRC_URI = "git://github.com/opendnssec/opendnssec;branch=develop \
+SRC_URI = "https://dist.opendnssec.org/source/opendnssec-${PV}.tar.gz \
            file://libxml2_conf.patch \
            file://libdns_conf_fix.patch \
            file://fix_fprint.patch \
            "
 
-SRCREV = "5876bccb38428790e2e9afc806ca68b029879874"
+SRC_URI[sha256sum] = "900a213103ff19a405e446327fbfcea9ec13e405283d87b6ffc24a10d9a268f5"
 
 inherit autotools pkgconfig perlnative
 
-S = "${WORKDIR}/git"
-
 EXTRA_OECONF = " --with-libxml2=${STAGING_DIR_HOST}/usr --with-ldns=${STAGING_DIR_HOST}/usr \
                  --with-ssl=${STAGING_DIR_HOST}/usr  "
 
-- 
2.25.1

