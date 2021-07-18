Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web08.20859.1626649681153484305
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:08:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TVDSc+/d;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id a127so14785066pfa.10
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T07R2uwWravXj+rRXjfx99KBDHLKAMoe2A/3W6y3Gh4=;
        b=TVDSc+/dfPQbps6opQ4oQ5zP9kz+6FeF3G1AORmjslYasaYEZ8l33aBNTqkJ6svYIm
         9a4grgbc09HgeDThPmm4gHb/Y2pYWcVVgT/9Y1XMgzYmY2ytjDxKKK7X8aJQpqoE2rDi
         xd/tT9TGTJf5A4RjVciB8iwQcpXeJx/jVRulwTKAC5KoMuEmS8Pw7zIrOtE1qVBSwEj1
         hzwZ3taKg3+DK8+6zpvdzYGVg1q+h/V1wNmcWr/VWCBaEdzi72QxfCSLnLOwukrNos17
         bKaISv82nfhF4GuQ1w5OsCnyW/YK2SP4aAbiVcqbsnmEZs888jLHVYAUwVjGF/vXpaqN
         JEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T07R2uwWravXj+rRXjfx99KBDHLKAMoe2A/3W6y3Gh4=;
        b=J8KxERt8SM9s+YR4U0Eiu5dJJL9CyikwTVG36JZPD8jVo350YgAdMVBAOGI15ZzceW
         30PHG3ZDbVP6kD46oA1E8OfpiBxnmfvffSA7VI8UXrRmzJno0z/xQjRngwnXC+4ldVlv
         nJexOKfITQQM4+KbDsGB/cDuUMsm95cOA4QAEjuRwgWFb3q/eGH47ZPIlQqrdRLLDh+6
         TaDPeJ1kJj23Cy3IcrBUQuRQy94L+v5XDxSyweIV8i2wmyv1tztL/ycUsRQDfEXQFk4t
         +OsMCWCkWeMawHOUlzec/x/LrMXYtkaacjXUiyouqwkXiAh28x4sykhuWDlGBaNsCHea
         jFRA==
X-Gm-Message-State: AOAM531HSxCw4/K3SyceONRBCqwlIKmD2ovO1qAGwgN9PIrJMcZZjgAC
	TCZe3CQV+1lx/++5QMw+mLs6LBmHp4QeTw==
X-Google-Smtp-Source: ABdhPJygLbg8mbRfS0JjgU8cuc8DAfWTW01ojkZFmtKJ8cgrZu2aSprVB9IqsLyRKD/Wtc0h7SJF/g==
X-Received: by 2002:a63:2d82:: with SMTP id t124mr22669830pgt.123.1626649680449;
        Sun, 18 Jul 2021 16:08:00 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:08:00 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 12/15] requirements.txt: bump to Django 3.2 LTS
Date: Sun, 18 Jul 2021 16:07:17 -0700
Message-Id: <0057b27cb521fe3ad091d4d5138c7c7a43a1161a.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Upgrade to the latest Django 3.2.x LTS for
extended support up until April 2024.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 7704ac0..41a0b1e 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.9.3
 billiard==3.6.4.0
 celery==5.1.2
 confusable-homoglyphs==3.2.0
-Django>=3.1,<3.2
+Django>=3.2,<3.3
 django-appconf==1.0.4
 django-axes==5.20.0
 django-bootstrap-pagination==1.7.1
-- 
2.32.0

