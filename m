Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.6473.1599511843542287671
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f8E7vCWB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id z1so16993707wrt.3
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=tKiFApIAoR4WhYnAFuvIQ2GdDeyLlHVeFhmMuYnA9VU=;
        b=f8E7vCWBSGmQe4ifnAlMH+tFwN9GzEBYohjA62P7T7mFP/hOvbaVoSeAzVO6aAGenc
         Z5fa32hBWuKyKRpI6PiFXTeEPyLGsdCf4XSWKyYtpe8YqIlgGKbXwYanKYkKZX3mIG1h
         CygDNDBbRWxaWaDj4slta3+kF/pvlN+6nq8cc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tKiFApIAoR4WhYnAFuvIQ2GdDeyLlHVeFhmMuYnA9VU=;
        b=BoaLzlcZCdOazEjsAxx6jdcgLY367q4JRpHbT4/LMRpz6RSCHrIJBSIbMz0GMdzQKl
         8sJqT2exKSHo7UTdWIAWtSzEvLFeP9hb31vOCTiF6OQsTwduE+5/Mor2BpNYqU02HscE
         6nafrzex7KFzDbjziTLWnBdfNsiGPTJ8ugxuoYcdO2f/RIbXsBoen5xI8rJD5Tv8vYXX
         a8bHsyvgahIF1sxNYyIf4iWAOPHYJhmdXWxGZMLX7Y3rTVNQwLQOvAZb0bttESXzjR50
         64GetCzQIgRaGBIM90lnQH2lfCqGBUjlxE9X+1fjQXBXq7shie1soGWjVXr5HByyay24
         9scA==
X-Gm-Message-State: AOAM5316mg9TJp8smFqvsgeKisnX3aBfhCBXo7EwhSE4rpSFayQ8VozY
	v68HAZlWWy3LO1TCGtTHI4GAbplhirO7ww==
X-Google-Smtp-Source: ABdhPJwTOPGS7zLO9YQfmxfCmEHaZiTMe/9IOw5xnEQ47yo+yny2Vic0FirJMmKkNtM/cyJXFnV+Kg==
X-Received: by 2002:adf:dccc:: with SMTP id x12mr24070924wrm.241.1599511841818;
        Mon, 07 Sep 2020 13:50:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:41 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 08/32] scripts/run-config: Handle quoting issues in buildtools environment files
Date: Mon,  7 Sep 2020 21:50:10 +0100
Message-Id: <20200907205034.1941516-9-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index 5c6a9ca..29d783e 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -123,9 +123,11 @@ if bttarball:
     with open(btenv[0], "r") as f:
         for line in f.readlines():
             if line.startswith("export "):
-                line = line.split(" ", 1)[1].split("=", 1)
+                line = line.strip().split(" ", 1)[1].split("=", 1)
                 if "$PATH" in line[1]:
                     line[1] = line[1].replace("$PATH", os.environ["PATH"])
+                if line[1].startswith(("'", '"')):
+                    line[1] = line[1][1:-1]
                 os.environ[line[0]] = line[1]
 
 finalret = 0
-- 
2.25.1

