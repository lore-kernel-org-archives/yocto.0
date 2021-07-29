Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.16558.1627599271381858042
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 15:54:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HZickbt4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id q3so8825299wrx.0
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 15:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3I/sl/v+tGA5WXQRT5Y8lc8rQQ0i2UOJrd0ToHN9DhA=;
        b=HZickbt4HVEv/HuQiaRqnodWc8FCbyp760KkcKfhv9sSxlZg4UU4jbrBjSgJcuhVw7
         JLSiJ7oXhHSqMMTDSFDN4Kh4jfgNyL8rfSfSSFYInf0JwthrWYGD8Uu654ElX6cVH4Qk
         owhVmjEAU0Dl9mO6OWnKoOhIsKbFRNLwoyOZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3I/sl/v+tGA5WXQRT5Y8lc8rQQ0i2UOJrd0ToHN9DhA=;
        b=H2YthDKxqfydsgKOOvACKS3zgJBwApm3T8Y18NFqad04JcFLQ48h+s/6mFZNn3MB6h
         GVnHO7g8brFr1PXRpLCICRzypU9AiYCthxPnrsjK0ozpjkuTSJVPrkSFIKNMErHjs1HD
         ZXbjW/NOCxO8rdj6JqY+CaJigDmaU2ie8IE9sSoL6zT5bLZHr5Y4wfJnwzmQkU/olx/J
         WHqD5nC2+VOE3gRUxKBRDz5aWqGeAGJ02/H4wT6Cvy159wkJjcJsQNA3NgU8eNnAXSex
         k/U+jPXNzU9w8CdYWDY+fyFCrIgfiuYvhBeoibEci/CmFREpbDf17I7nYZBU7qQQ04rl
         PLng==
X-Gm-Message-State: AOAM531z6oA8XIt5ERPckIlW0EHdk6oi8SNFUQhq3MRkMXQ9jlrvdyNR
	AwmuF3MOiAyk3Y+WuhMl1qucOMaUSjaELQ==
X-Google-Smtp-Source: ABdhPJxKwTk+qn6HSwMQfzP1alUUWnbECcYjSYQxIgaduf99izyZibErv8wd/2UVAjv2YQm9GeqR3w==
X-Received: by 2002:adf:cd92:: with SMTP id q18mr7311388wrj.18.1627599269624;
        Thu, 29 Jul 2021 15:54:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:47e7:2d3d:e4c2:218b])
        by smtp.gmail.com with ESMTPSA id i5sm4762296wrw.13.2021.07.29.15.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:54:29 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH 3/3] layer.conf: Mark the layer as compatible with honister
Date: Thu, 29 Jul 2021 23:54:26 +0100
Message-Id: <20210729225426.3337271-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210729225426.3337271-1-richard.purdie@linuxfoundation.org>
References: <20210729225426.3337271-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 194a55d..5fefa73 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,4 +10,4 @@ BBFILE_PRIORITY_meta-mingw = "8"
 
 LAYERDEPENDS_meta-mingw = "core"
 
-LAYERSERIES_COMPAT_meta-mingw = "hardknott"
\ No newline at end of file
+LAYERSERIES_COMPAT_meta-mingw = "honister"
\ No newline at end of file
-- 
2.30.2

