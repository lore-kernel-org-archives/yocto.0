Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.20787.1599740777060945494
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aQcbtHCf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id w2so5446894wmi.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=x2/5dtkT62IIJHRNhSOyZJFt8QxpMdSH2d7hDcOJRIE=;
        b=aQcbtHCfNBjaTYfJWOgjMRzhA/FYKdCLunkHkNjUlefHvbinZeVyIk7XGNmRLQoIZE
         YZHttJ5OXm0TeTXxvSXS+7CWPgIgetTEhYb9M0Ak0v9XzAUFbfznX1WB2VQ9AqCqcNQv
         x5ffTWxXSiJbOOJSC3kb66mhgEpzwC0/C5Uh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x2/5dtkT62IIJHRNhSOyZJFt8QxpMdSH2d7hDcOJRIE=;
        b=hSY/+PPk98KRrW/fPTM0cDXEDEwdLmMe3qLgc+4brhAsAodP6Hpdg9HAZywqZTaxNd
         X2T0Wc7JbUFjXO0AwUaDNw2jEiia90xfL9Bo9q8J4Soq/OFk2nnx+k9xawM+ovFA13sw
         urJI1VeLtjbjSWbKc467Tu4C8UTwhm+N6zhDwc/0uSjyj7UPuzhssKKmncNF55u4oplc
         snbngIpa/aS4v0ZMdPBg49LaXPZTz3LK39N7nW3oiyeMx0984jAEczaYLMQ982YNX9XM
         Z2OYpNqXqK/SaeCWSKflcHdvEavf6oxtCqdJCNcE5dr22dwqVTKQoKHtSvHyqUgigDK7
         1JwQ==
X-Gm-Message-State: AOAM532qfcqrtTsIwS9zW1VhFXPaDSxa33RSUzNw789SLV1cuVUbSoLU
	mf4qk6EHIMCH77NOrbAnRajQ5Yv/g0znng==
X-Google-Smtp-Source: ABdhPJw2BG3EssdubLm0q7RHs/3R2+YQL3jMjKSGedRYTKqjlJ/eNM4U5GMRU9Yegi6hB/7X/Ols6A==
X-Received: by 2002:a1c:1b8f:: with SMTP id b137mr8858289wmb.151.1599740775362;
        Thu, 10 Sep 2020 05:26:15 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:14 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 23/41] config.json: Apply buildtools tarball to centos7 perf worker too
Date: Thu, 10 Sep 2020 13:25:35 +0100
Message-Id: <20200910122553.2040430-23-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index ea5947e..b5d8264 100644
--- a/config.json
+++ b/config.json
@@ -874,6 +874,7 @@
     },
     "buildtools" : {
         "debian8*" : "${BUILDTOOLS_URL}",
-        "centos7*" : "${BUILDTOOLS_URL}"
+        "centos7*" : "${BUILDTOOLS_URL}",
+        "perf-centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

