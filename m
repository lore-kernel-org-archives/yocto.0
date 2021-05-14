Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.4752.1620969669340416164
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 22:21:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lALbcrAi;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id gb21-20020a17090b0615b029015d1a863a91so1104646pjb.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 May 2021 22:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=vGB1kpLw6orUI1xx7H/OfdcokbPNvD+8PzDZ/ejxVCI=;
        b=lALbcrAia7964ssxuQyG6jlArf7GfTWEnE4GFcchU8dk9B9G+vd6Hdve3ZM9FWmk4M
         EFvIHfKwsSoTZi1MKu8BKYclYs/ab1Vdqr5v5k9o2gsjhkug0sA7HvGBWnAxj5XSutiw
         Nytuf0hsysDAN+73OUSyjXBSCs4c4lPsm5J2Wkxk3cJmBvEOLK3RHvUWxlrCDtKBMft9
         tjM+K8SkfcHHlAhgfgft9Hqh4kdQXWqG7MvTLJQeytXjIs3R5r8rkHS0mDP8DXOMAlYg
         //ps0g8ZvaYX/DXR1fLe2rxgdwrnc82KxC2GgF5VAYHxX6G/ud9MCOqaZckRAm7zTGLN
         Fa8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=vGB1kpLw6orUI1xx7H/OfdcokbPNvD+8PzDZ/ejxVCI=;
        b=rTiSE6XRn8ClzdR6pFjNnrIZ5eWG+RZMa0/GnjssZe1BVdTrzthWxFy29HSnqYlKeu
         VKm/2mtO4w/O1jJwGsD+jfPOya0wiO3AVQgP06OGM/5pM0b1i7jc+/zoR1PMu35GUdgN
         jbdxixedOFhNJ7cORQK8wbNc4RHeLYXZXJ12UtydlMLFhY1f5l4TVJb5rHj3+XXmP5yj
         3YsdvUyb7WaSOloixoCNF+g6ibsksfuZkztxQMym1CbALHaFHgFobnDatGx97iep8sRF
         gsCs1OuHNhOUODaDKKg9yrR38/0M4hk937hXOJK+/BqDJt1RMoncVrG7HuIsd60oCvYH
         XQDA==
X-Gm-Message-State: AOAM532rjilNKX/XDd7pAoWoIISQ1wreYCWXOHHNBup8BeKu+33CVajx
	qIUXQciNzawtG/pcbNvSfUCp8FE3lik=
X-Google-Smtp-Source: ABdhPJxGefWHiA8pS2FlRqMxOoQ/9Ym1cxllo0YCp20tyudQUtOqKBLog0xdeTvlaK+t2/YEDWr0lw==
X-Received: by 2002:a17:90b:2307:: with SMTP id mt7mr8837220pjb.131.1620969668707;
        Thu, 13 May 2021 22:21:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e2:8f3f:6fa1:8a8b])
        by smtp.gmail.com with ESMTPSA id y14sm1458227pgl.21.2021.05.13.22.21.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 22:21:08 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-selinux][PATCH 2/2] MAINTAINERS: update email address
Date: Thu, 13 May 2021 22:21:06 -0700
Message-Id: <20210514052106.9157-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210514052106.9157-1-akuster808@gmail.com>
References: <20210514052106.9157-1-akuster808@gmail.com>

Include example send-email

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 MAINTAINERS | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36c451f..0dc492e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1,7 +1,14 @@
 This file contains a list of maintainers for the meta-selinux layer.
 
 Please submit any patches against meta-selinux to the Yocto Project mailing
-list (yocto@yoctoproject.org).
+list (yocto@lists.yoctoproject.org).
+
+git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-selinux][PATCH
+
+These values can be set as defaults for this repository:
+
+$ git config sendemail.to yocto@lists.yoctoproject.org
+$ git config format.subjectPrefix meta-selinux][PATCH
 
 You may also contact the maintainers directly.
 
-- 
2.17.1

