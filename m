Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.5483.1613466442356238307
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 01:07:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a3O10iTH;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: samuli.piippo@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id u4so10853269ljh.6
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 01:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CkcpFssOrqZpD0oEPmpg/T7CnyXOu89ENX7IyWQSsC0=;
        b=a3O10iTHZaVHggagIBOt5c0vUXfxkSk48me4uoVkmfDNY4kMjAaN6V08lYiKX1zx0m
         okgHePT89YM5Qtb4gzpG3Dq8rfCuh4Mf1Q4ZIwoUIlHzTcEAlKwKXU7adY48Xw/dxRjG
         NLKOa6WPtC853hI9eZtGK+E6x+7aCXn9eurtAHYf7mNvCKrKx39m19jZ96mkuJ3IeZaP
         3UG5Y/s9aSmlOZJUvMAfKZiXSnvcZ0V6ztoQtl5CpXzdb7tTnTuo63wmFSjJzGAQdZU+
         /OAr0v4usFssGaSey8fLNuoJ9H0dU4NnpDVnRUW2CnijFCdf0fPaK3hyLgfY5xiHe+bS
         clGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CkcpFssOrqZpD0oEPmpg/T7CnyXOu89ENX7IyWQSsC0=;
        b=W7YBnKIcJrKuCE3BbS96+7Y0HK2VTFyZM66C0wuo7leFhSsO/GBPcE5QGBxpLw9gq9
         H5WJpv1C531+oPCUHTP1Ob/hqUjWBFenxuZOC62KWv8u8nmTynJHKHu8Rym6rekDNVge
         Aou2SrlOYDZrVfNbiiq5xQ6bj1MKBvQOZVQBS01UwzZDvFxQYN/GleKDzujUbJ3kUTPZ
         DNIpYU8E6AsFbcSIyclQhDmK/kyR5sKCy+RqehXssN7doWX5E8lH5enTq5OTW9+3yezf
         YAgXNBRbSyjSF0ex/cjRBLhXUE2elOEPAsZyfpTNKf9Evjl7+sOKBEPlEBnFAANsD9Cq
         2Kpg==
X-Gm-Message-State: AOAM532kt5u/oZ3tQ2pgGEdB5eR7wBVavHDuYzS8dmGvfJx43YLXuKPZ
	aV8PJEo0rBy/JN1BOSz8y+72hfTO/zmFYQ==
X-Google-Smtp-Source: ABdhPJzkGOtktVFRAuedOhFkMXZ2Hx8kGX+al9vlM+Xb0VtxH5W5S/6wVQ0uGH1Oe1uhq/5UIZ2lQw==
X-Received: by 2002:a2e:85c2:: with SMTP id h2mr11773332ljj.78.1613466440236;
        Tue, 16 Feb 2021 01:07:20 -0800 (PST)
Return-Path: <samuli.piippo@gmail.com>
Received: from munkone.intra.qt.io (62-183-187-94.co.dnainternet.fi. [62.183.187.94])
        by smtp.gmail.com with ESMTPSA id d8sm2603202lfg.96.2021.02.16.01.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 01:07:19 -0800 (PST)
From: "Samuli Piippo" <samuli.piippo@gmail.com>
X-Google-Original-From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] binutils: Package static libdep linker plugins
Date: Tue, 16 Feb 2021 11:07:04 +0200
Message-Id: <20210216090704.2650-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.17.1

this is new plugin added in binutils 2.36

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
index 5845fe0..0d376bb 100644
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
@@ -3,3 +3,5 @@ LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 
 DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
 DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
+
+FILES_${PN}-staticdev_append_sdkmingw32 = " ${libdir}/bfd-plugins/lib*.a"
-- 
2.17.1

