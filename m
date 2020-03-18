Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.7499.1584498620336347875
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 19:30:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qvkkFkgN;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id z65so13028149pfz.8
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 19:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=CDvAeT1e6Y8fwWTtsDSYuf9Buvnl8W9HlBVwAzGjNkQ=;
        b=qvkkFkgNyM5BFiJ8ldkFGLJVhDku78NwDUC8544pQHYid6mP5ao0QTIbGDTiQQGMMr
         b488hVPgFEuE2SjoYDlhFsfcAbm3zP23JqtlBqD8940LTBFg8vmhqX7k8fn2KuoxEuf+
         gsHXSzA8bqlgIfSbybxtrjdmx9UUUDRooBZpfqiaNSoN4SLMGLcH/mkMj9dF8jqVanDj
         FzfKgmdx+o/qailUynhNoWqRlD/A4jCK6oCKxCcW9/kq5RZgtsAKqdYM9KL22Xydml0a
         wSa5kirb8PdByoL3ukGIj/KpJSippv8pfrCkSUa3t9cWafuK7ad8cV1Pp4/1CZsibqVk
         +fDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=CDvAeT1e6Y8fwWTtsDSYuf9Buvnl8W9HlBVwAzGjNkQ=;
        b=kPWGhlzOektZLmInYqvvCVILroiklBl56VmqeUvBRyI41LcBi9nKmzRCfgOsBKlM+T
         0H9+hqtVl44fZ049waGwa1RXxOd3UvSQ/WXAunMIH3kOQKxGY2ITE7RVmjk4JQoWWkXg
         D8eUIBx0PX5ecvpHKbCc5a2e5lXTBqfJ9NDy7qk6KO0vrpSzOPxyGgYdIjpx0lQP4/nM
         AQ0CzOURWavk45BXWK6kocFNYtJMEEWiL6lb63ru8UhaPaOd0FXR3Dy0nPT2ADn3onLC
         fzzigJ/UStqHtiR0h546mTV994cjRmIdL1LZzHX3+jbqOCi4FCZbCwsbLgaZ83tJz8rH
         /TBw==
X-Gm-Message-State: ANhLgQ1TM1XdFWowCBpqhZyHTudjHJqfBeE8siajISrNIARQTjdtmwdZ
	/q8cfF7FlTogWiU4XgJLSi5lPDzt
X-Google-Smtp-Source: ADFU+vvF7MfRAfGrV4wPBMlwMChJOniJmPllc4a/y8wYjI/nB4Ie5i9nayz+GoXRGVINBUIiq7Ultw==
X-Received: by 2002:a63:2cd6:: with SMTP id s205mr2400117pgs.112.1584498619754;
        Tue, 17 Mar 2020 19:30:19 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z3sm4340083pfz.155.2020.03.17.19.30.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 19:30:19 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/7] checksec: move to recipe-scanners
Date: Wed, 18 Mar 2020 02:30:12 +0000
Message-Id: <20200318023014.31723-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318023014.31723-1-akuster808@gmail.com>
References: <20200318023014.31723-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 {recipes-security => recipes-scanners}/checksec/checksec_2.1.0.bb | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-scanners}/checksec/checksec_2.1.0.bb (100%)

diff --git a/recipes-security/checksec/checksec_2.1.0.bb b/recipes-scanners/checksec/checksec_2.1.0.bb
similarity index 100%
rename from recipes-security/checksec/checksec_2.1.0.bb
rename to recipes-scanners/checksec/checksec_2.1.0.bb
-- 
2.17.1

