Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web09.7118.1579830714796485466
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 17:51:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=d7bV6tMZ;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id bg7so340699pjb.5
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 17:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=a2VUSgzlz+Fxe+E6Et9oYfVLx9AKyimbKk5d6N06Uv0=;
        b=d7bV6tMZOJs5B3g4f0G3mPDaILrjPY789DGe2knV9mWS7QhkHKua7wm2JeI03yjG1E
         GQaWhzly+BbXlQM5YnXKHZ4sGNkch1BRrICucykyIJhnA5jM7r0WuISdu+KncacPrK/N
         pQ8OqjusvBwBNL1EFjiYEf2+r2nWJoDK4a8VmR/YFKDvGwYOB9z6oxy0C+UA+PwwK5wN
         b1Xfe10p+xdy9tJwCg4guM2ihobJz1bEeTs9eenaELVjxjxc4C9rFpsLgToM9RiPJs4k
         8TQ/wkSO2A/IBM1r5P+shRU9fCzJlPPN5JTjudb9gyl2YjtlUJYqip9t+NJO2jCOzJdI
         znZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=a2VUSgzlz+Fxe+E6Et9oYfVLx9AKyimbKk5d6N06Uv0=;
        b=hvWpC9IY7lQOEeswq2Cc6/D2BPtWCv0bYNAwYqdi1NI6BmQUfDYjPODSRbAgzsy1la
         +o7mi9/ypiPch0lj3kT0v1s9hVHAJVYhcbGBX/eIHH6+cPbXP9y17FE0B6wQRxZWLEO7
         pCWbPXC7MftgD4A2JtxRTg6mGZi85AwT3PoLVZi1X/fkCflrsypzUfmRD9tQsmE+T4bg
         bcfX+rlAF/8YyA5rqSGxOMwDC4KJkjmA25kxvrafA0Dg3+T1Chr6BFFtNRuTwwP41T6D
         2q04oNM1ahDn/YipWhmNh5HNiS63HKy8vE9aRKERS/P+FRe/PZb1wn4J4ovfM38E358+
         6tyg==
X-Gm-Message-State: APjAAAVjabMh0kmpRR72MFzfJqFmgWzdONd9qjMtTrwy2NYEVowCIT1N
	AKFSZP2CBV6uNKEzBRFrSWMrs9Rr
X-Google-Smtp-Source: APXvYqzDVtp876GVolo6N/xdfdEE3alXu7CkINQ28rLVGb5mcEY2r+gFKP/nVLOB2nL28ybMEozCJA==
X-Received: by 2002:a17:90a:974b:: with SMTP id i11mr632125pjw.47.1579830713939;
        Thu, 23 Jan 2020 17:51:53 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:682c:76b9:6d8a:bbd2])
        by smtp.gmail.com with ESMTPSA id k10sm3982572pjq.14.2020.01.23.17.51.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 17:51:53 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] README: add pull request option
Date: Thu, 23 Jan 2020 17:51:49 -0800
Message-Id: <20200124015151.15742-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/README b/README
index c419d50..7cc5f48 100644
--- a/README
+++ b/README
@@ -64,6 +64,8 @@ $ git config format.subjectPrefix meta-security][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
 
+For pull requests, please use create-pull-request and send-pull-request. 
+
 Maintainers:    Armin Kuster <akuster808@gmail.com>
 
 
-- 
2.17.1

