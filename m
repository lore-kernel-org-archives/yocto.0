Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web09.20609.1626649668599169460
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MLeiqidE;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id g4-20020a17090ace84b029017554809f35so12862013pju.5
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nzyhh+hRTq8pO4+hwT9lZeo2F7FUXyHf8wzuvtKoiqk=;
        b=MLeiqidEwUkm+ygmgiB4pBKP4z5i3iQ52ih4F7mG4YxYJMk5MQSstpRwRnEp+V+F74
         CpRBXlZpThnYRRKIe8UO6fhKV/QI4xT8//ageMRrO5E7ZeTtbF9NArSkFvYYenc6jM0y
         tXqqy6A6+7xMKa9agFStyQKAq7efnMl2abX/IHE8M/N3lXPrPj8wsqZuFZd6ZFafb7n2
         oXzcAaBbFWjenm0X9RojPPOpYfBQ3o5WEydrzG0tQF2Nr2kge0QhExGqqR1H45K4HbKC
         e+AxscAIGdD4RimmP3yFOg69CmIgUcxo/QyPnSZgNp6wY39FxJUMXUNvTYT/VGV0Dykb
         ld9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nzyhh+hRTq8pO4+hwT9lZeo2F7FUXyHf8wzuvtKoiqk=;
        b=QRF179MA91PeW5el+aGLbL5VNipNRIxoXdw3FvMwFRn4WsODeQjtII5W4+4LNt0JXj
         TF934NTbgIocr4otwQ4I9VNeEeLfl05GGopogOzerihYz6cxAQIIujcmmRXkUHKDkCTA
         BKPDhIw5n5/fNW9vFqQu2KhuhMRl4Q623lv11h+2F5K20+yy0Is5Cgp5vt4RGKPDDdSA
         gN+w7v0AiNKqAdj4+7aQyjnW0cCalvIHsYmD+CQsePMMQl5DHAG9vl9blgozpywPOZDV
         hoBT4bPHjiErOZ35EWnLTgSgEEgHa9VHCYCLR2GIcBmk4QrXNdQPi0Yluu5J+Nx6xFFd
         NqEA==
X-Gm-Message-State: AOAM530BYFlv6g/iI67cCqQbch90GFAhb3hQ9dbQMuAx2OkGdTxUrPt8
	RqVRORwnRwiZcoSMHP3FmHse2Bqb8BQElg==
X-Google-Smtp-Source: ABdhPJyQ/aa1s2QT++PmZX4cgyIw7zvlCnnLjHVMhqEIXEAMkrS62B82gitC4Hhe3tW0nShAYmBZLw==
X-Received: by 2002:a17:90a:5d06:: with SMTP id s6mr21798848pji.197.1626649667979;
        Sun, 18 Jul 2021 16:07:47 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:47 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 08/15] requirements.txt: bump to Django 3.1
Date: Sun, 18 Jul 2021 16:07:13 -0700
Message-Id: <0ef56b3b68ffa7172af650556f1ae3cda3d9abc1.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Another incremental upgrade towards 3.2 LTS

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 895994b..865960c 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.9.3
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
-Django>=3.0,<3.1
+Django>=3.1,<3.2
 django-appconf==1.0.4
 django-axes==5.13.1
 django-bootstrap-pagination==1.7.1
-- 
2.32.0

