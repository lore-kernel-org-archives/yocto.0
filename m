Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web10.20780.1599740767841805496
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=L/zX4THR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id w2so5446371wmi.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=627tCfYMfB7G+BkSQPanrlSZPAUDCNcdSfvo7lUDmjM=;
        b=L/zX4THRHt8nl0u1NZ5SnNS/kTHbPSXML0Argh/yY/aVK+ZdTI0k5QQrpWxSYYXhrw
         W6aQKKmAoWdD60w7p9Wx4kkiK1CJdLwnU5TP/QbfAn3ca4Qq9OTmSoCeWKA3ZZDnn5Vd
         KInJfJSmVIDWHoTE2uoTKi3E4reNBPCBHwics=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=627tCfYMfB7G+BkSQPanrlSZPAUDCNcdSfvo7lUDmjM=;
        b=BS6wskAsbjoY+OKVOZJSIMZMxh7S3cBYP07ZG9Kzs6AX+0qgD2/jsfRfl2TZqRMMqw
         K71ajT9lDDOAQsjAMTxuazZDGVOCIBZsZyawvSYtkVAzikDnHMWECzvfUqAXmEeUuu4H
         uBEDOPt4XKEhIY7ELN5x2Xa6Gk9dOdv1ZajXtlFKiIbHFzSjJmTsUEgK8yQoZddwCLiD
         1yryl6GmhbkRNoiNxwffpvNg3OB0hTLqNvja4ShPnyCmdzEPYz8l7Z9hsD/vuvVAUR6B
         BC0P8X6K5CnFRh328Xa/odbN/YamzG7N6vK16TJuTY3i9xuXAzObaS/c4pDZVGD3VGVb
         K2tw==
X-Gm-Message-State: AOAM533gW6Y5ByW0j8PA0Pn7JKCZoEB73owBMpuyjENeiJUIiSXHgxgh
	utzt9K+4PkFkeWCzFeOfgOPGgtWGxaIahA==
X-Google-Smtp-Source: ABdhPJxr8yfdPH/MrQG0/FXwSMV4ZAaHZ/liLZX/ZkHqjlWmdZD2N+5aXVIpwbYs+/HFNQs+5gRpjw==
X-Received: by 2002:a1c:7e16:: with SMTP id z22mr8921618wmc.117.1599740766108;
        Thu, 10 Sep 2020 05:26:06 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:05 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 14/41] config.json: Disable buildtools tarball on centos7 as its missing crypt.h
Date: Thu, 10 Sep 2020 13:25:26 +0100
Message-Id: <20200910122553.2040430-14-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 3e69544..49a26e7 100644
--- a/config.json
+++ b/config.json
@@ -872,6 +872,6 @@
         }
     },
     "buildtools" : {
-        "centos7*" : "${BUILDTOOLS_URL}"
+        "disabled-centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

