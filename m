Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.22168.1599744677398402472
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dTV6wXKG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id e16so6753485wrm.2
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Oog5LWFPrnAqUQnnM4Tq55B/K8hoxhTwyGpypL5wwDw=;
        b=dTV6wXKG/hhvN/r9D5l4SbkDHsHNeeoLoIfVGr9AD6qKMCs6+qhXHmb08FSd1IAJLv
         1gd3njJnZBHLuKw2IaHGsi3oFdFnv8d0WENmSB167o6wUXO+ta+/ZMqvNhvcQpFgl/Hg
         DbUO3FfT0azJNrMKCIArrtsEIdUfjazH+Yt4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Oog5LWFPrnAqUQnnM4Tq55B/K8hoxhTwyGpypL5wwDw=;
        b=miMz2sruhj/lXgAOSnFVI7vF5HRRWtAkOBd4MZkWSIq1/xTKvlXW3Erm9sEOvMdXfm
         nZvAMpJ8hMnWtjZzbrsBxhx4MvRvJV4c7FF++97LZCqr8Jd3j62oelz4k49VLshhgf4J
         7mM5NgBhGrnDhcE+l9kiXeLv5Bi1oespc13lJdZPCoJJJgSI+PLZlnaLSOV7wWreDsSD
         Syvlmya3pLc1wvRa7RXc3TbfhdDyK5QIFwhYQKmwF0Pha0X+dt0CCQrlV4bhhcqgwAP6
         uQvSG+DVS5cG8SX5ISgmQh2sfuNgkCqesTfGbBQa8THhl7eF78aKCCuRbh4bB4egxGiI
         Lkhw==
X-Gm-Message-State: AOAM531pfyRARvziqbXr5442QgUcg7LHjD7JQvQcKMMtECU0p4vosMpj
	FIwrdg3CFq5pD6+14POt/F1/mLXeiiD38A==
X-Google-Smtp-Source: ABdhPJyQA8yZg41PrMFskEvep80IdGIk97UzJQK3uPcAk841RSJjpKW22n69lqB6124DPCSga7iyjQ==
X-Received: by 2002:adf:f5c7:: with SMTP id k7mr2732501wrp.246.1599744675706;
        Thu, 10 Sep 2020 06:31:15 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:15 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 37/40] config.json: Build buildtools-extended-tarball for x86_64 and aarch64
Date: Thu, 10 Sep 2020 14:30:32 +0100
Message-Id: <20200910133035.2044355-37-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index c083b86..19f5c94 100644
--- a/config.json
+++ b/config.json
@@ -493,7 +493,7 @@
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "buildtools-tarball uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             },
             "step2" : {
                 "SDKMACHINE" : "i686",
@@ -501,7 +501,7 @@
             },
             "step3" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             }
         },
         "build-appliance" : {
-- 
2.25.1

