Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web10.22130.1599744645136085883
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dzaM5q/R;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f66.google.com with SMTP id j2so6721548wrx.7
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=wwGu3P2hms93QZLDcZ4fETw+MoK+JEKTUQDIk5b5c0U=;
        b=dzaM5q/RWoujSIB1aU7Q2SRqf1BRis01fWzcfWmyUfkWP0g9UP5mfUwo/nfqgdSLdB
         Ro/iWiGUj2DL/Rcpw5J5nNc7hTNnBErogt5P9vvxyvOiigKKQjLbJR+6du86sdEg+IGU
         xBhiWNWSPHGK1OyW736whsuuQnGd7Hz/1NHnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wwGu3P2hms93QZLDcZ4fETw+MoK+JEKTUQDIk5b5c0U=;
        b=B0XATyf5ONMrZ2emXKi/IgSr4hjP7kkC0FdmRjQY8qXskpDAc9YEO0LbBe+b4lD64F
         Sp+yS4I+C33pgcXt3XWmvoFU44Yc9npX0kgihU0+Cr9bgPFCxPwWkSSjpg7mSwGd6f9v
         Ym4Ao4yrQcaUuhKn8cQODH1LFxQssqjM1YyG1AnUvo5fqCw1HQHPEHdjGd3qPMoX2+Gl
         Rmwt5QKxXk1DLrDeLRF+uAyJKe3Msrmm9t9T8TUHnkUys4JySxLpCTji8E/AXswwYeqi
         +VR1VLP3Wyr1pxNe9gNUYPrH5EYe1N4f8oOWRF9vcseN8kNlicrUAQEzN94ndFCWhnDZ
         lNWQ==
X-Gm-Message-State: AOAM531guV3ktHS6nlQbZAZw20J8pzJNs2/CsD4yOL0AjG061H90pFSO
	8QMfdOVOGSsVp+rrZgZ7HFckLfTXyky4Ng==
X-Google-Smtp-Source: ABdhPJxY+SD5h17uEPRU4yo51d/jvVdYnvO2CDh2Mo4rMB+jrHHM16txwtGDKbIUnr+5s3BxF5JuOg==
X-Received: by 2002:adf:e6c2:: with SMTP id y2mr9701918wrm.117.1599744643498;
        Thu, 10 Sep 2020 06:30:43 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:42 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 09/40] README: Add pointer to the mailing list for patches
Date: Thu, 10 Sep 2020 14:30:04 +0100
Message-Id: <20200910133035.2044355-9-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 README | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/README b/README
index a6c4f1d..2747510 100644
--- a/README
+++ b/README
@@ -25,3 +25,8 @@ would also allow customisation.
 Authors: 
   Richard Purdie <richard.purdie@linuxfoundation.org>
   Joshua Lock <joshua.g.lock@intel.com>
+
+Contributions:
+
+Patches for this code should be sent to the yocto@yoctoproject.org mailing list
+with [yocto-autobuilder-helper] in the subject.
-- 
2.25.1

