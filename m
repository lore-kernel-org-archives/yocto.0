Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.6468.1599511848841939098
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NGJV8QVe;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id k18so83169wmj.5
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Qjv+AatfUQ4hBN+BcsWG5+3E01WoHGy1IYZEu37HM3U=;
        b=NGJV8QVeQLiCKM3e/PNoNnYPskcF/7joEu9vIImsiL63QzSEjp9iGxrgitCH4Lua5W
         Q+5de3QwqVxVZY6zkvPQWfNVs1j+tcnAwf4Ypfouwn/YImgxrESRYoNDdJXDUxvZy0LM
         NF/P/MC8A+UpilEJqJpu8K3kPhyqQGRXGqhgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qjv+AatfUQ4hBN+BcsWG5+3E01WoHGy1IYZEu37HM3U=;
        b=Q56Sp3Ut7jC2NE494JxQjIDxL33XH2xuhgls2qdL4mLcU8CjJrAELuYqj02Dej5EiP
         sGfZZSa3lzkSS16ce9uu0tupaTEmGCOzQYn3Ugjzi7FHMEjzLfZqAgqn3+BvD0w+X+fH
         ZrYKoh/rlEkk3coQhHC28cF24gr2SgzTJkRusjI1mFHr02xER64OL1hLVuB6CBv7lYeK
         jNzX9f2pZcshH6YxWd5RfIBDrlEBIvboEI7RjrsoMTy/0xGG1eVpFCiGZWjelkTwl0mu
         Hmhsa04w2sfX9+kGHnK709gYAgk3vJGLUUTXFTmwij1raLJstBURLnzR3eVJSR2oadKt
         LnHg==
X-Gm-Message-State: AOAM533ZOX90J4ccmprI7fJaQgwSuOYrgovu6FWkY77/sqx6BkYTDU6z
	grxCh6ilDeM5sD8eo/63w1figHDo+l/iqA==
X-Google-Smtp-Source: ABdhPJxrDM4Z+kPTc1D3+wZh+4OKGnxFiRo2+qSn3exTP745hh2Fx6KY2VN+o4SZdYCWc0yi8vBbNQ==
X-Received: by 2002:a7b:c5cf:: with SMTP id n15mr1001706wmk.93.1599511847160;
        Mon, 07 Sep 2020 13:50:47 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:46 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 13/32] config.json: Apply buildtools tarball to centos7 perf worker too
Date: Mon,  7 Sep 2020 21:50:15 +0100
Message-Id: <20200907205034.1941516-14-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 20e74e1..ef5ff6d 100644
--- a/config.json
+++ b/config.json
@@ -961,6 +961,7 @@
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

