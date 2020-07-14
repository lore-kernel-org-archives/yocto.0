Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web12.13048.1594699213146000395
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 21:00:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=nWzRsuri;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.219.48, mailfrom: jpuhlman@mvista.com)
Received: by mail-qv1-f48.google.com with SMTP id h18so6895734qvl.3
        for <yocto@lists.yoctoproject.org>; Mon, 13 Jul 2020 21:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8qiL2+PRuJYRJP+RAjluqTuswgHs3CXyfmzcvrqhDnk=;
        b=nWzRsuriYv4Wj2HZyD1vXiAKUUBRc6XcM4SPGeoNfz0aDflDV6pRoNvA6XBACLnLXS
         GOV871MyyVsh78A7xcPHEfx6PNnUqO+glnnG5y5tWGSmjFh1RosAw6+0z/d0oA5aHyxU
         6O3FPmgJT9PIJWoDh3WrfL7v0Bj7zrrVsHKZtf5f2hF1zo/c7gmlJt2CDpAvxPZcCXDA
         vnnuHtJIMZmhzkv9pdrFHlw3v8oxKPJNASUoy8iy8sTSafZ2hLSP5Q9Th+ddWjB+dXVS
         tCWCDN0Ppnc1Ay6Y8zXsOAvpim2pX1oZF40Eb3v05moaSE+m7hnSzcVG23QFi6aeLbgQ
         W5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8qiL2+PRuJYRJP+RAjluqTuswgHs3CXyfmzcvrqhDnk=;
        b=To35MqrSlsZdoX0calpJ1ZP3izKAtgCvYuRJ0/zih8VpLvNKrHS5r7B2G86wGarel8
         +uRuXvdRFJRJkqxsFpWWt0IHIzpW5rfT5oZVNt3pDZ72qLIPpW6701VZDY7kIDZ13qow
         +DYWVd+2YhVSKVAa9CAEZeu/24Oiqon5np3pnwkoapvT5OZMAla5TdC8pYvuVv9cgSkb
         gOmMZG3SXXM4p1b9CrPTHCPEubpneLDdLKWJh7byRPNHMohQ1t8lkSLkC0D0aYgSYFFF
         lMqyRkrmkAWYgQ+YcoulNXK8b5ukJY06lDfv1YU9e9RXOoeWDhwXlBRVndrpDzTYAkGa
         F30A==
X-Gm-Message-State: AOAM531yMRM6F15EKj3e6vuP46KSC/cLximWV1i7TZzpd3sNN41jX3fY
	vk+7dVaPU4fjwJwiKVh3I+PM7HSf7Ss=
X-Google-Smtp-Source: ABdhPJzfllByjsYsq0aP/0o2QezPG7YGt4nwoY6/Qi5kzuW6V3XwclKXx6yowQBtFdOR3AwmIcyF1A==
X-Received: by 2002:a0c:f345:: with SMTP id e5mr2748299qvm.84.1594699211945;
        Mon, 13 Jul 2020 21:00:11 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id o145sm20810870qke.2.2020.07.13.21.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 21:00:11 -0700 (PDT)
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 267462A099A; Mon, 13 Jul 2020 21:00:10 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-security][master|dunfell][PATCH 2/2] packagegroup-security-tpm2: Depend on preferred provider for cryptsetup
Date: Mon, 13 Jul 2020 21:00:01 -0700
Message-Id: <1594699201-14545-2-git-send-email-jpuhlman@mvista.com>
X-Mailer: git-send-email 1.8.2.3
In-Reply-To: <1594699201-14545-1-git-send-email-jpuhlman@mvista.com>
References: <1594699201-14545-1-git-send-email-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 8f5c537..a553a63 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -7,6 +7,7 @@ inherit packagegroup
 
 PACKAGES = "${PN}"
 
+PREFERRED_PROVIDER_cryptsetup ?= "cryptsetup-tpm-incubator"
 SUMMARY_packagegroup-security-tpm2 = "Security TPM 2.0 support"
 RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2-tools \
@@ -19,5 +20,5 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2-abrmd \
     tpm2-pkcs11 \
     ibmswtpm2 \
-    cryptsetup-tpm-incubator \
+    ${PREFERRED_PROVIDER_cryptsetup} \
     "
-- 
1.8.2.3

