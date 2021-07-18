Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web12.20813.1626649663150349914
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3zjqggT;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id n11so8631136plc.2
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QjqI9Dj+07lsr2hsvgMUnhRDB1lBDUjku6O530SjMS4=;
        b=T3zjqggTcbxhoNOApcuIN0C35LwHPRL4UE1wjK4x/BqdfP9DfWSjodI/mhwA/0R3yj
         ZZ8UFMwq4JpsGPvZLCkWVh8JLB+fVvNokuTJazXE1/ZGacfJ+LlKAfiXumITQT1D1DH3
         k5DkZXUCY59ez6v19r8SZbqBP2mDRrAYLWwqnekjcCu/viArjQSpCho8BBUQzHEDv+1n
         jxv9IZYvHC8gU8vjUsyzaayLbAKTg3NmVqvO2bZpucLyc9WyyjKqufsbNkDuDudSuzfJ
         DLflFE+ESOhvc5/9FnJTJz0PAHtBjPX5adaaM6bkzGckXiIB0weRt/+TtPqCjt45IgG5
         chSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QjqI9Dj+07lsr2hsvgMUnhRDB1lBDUjku6O530SjMS4=;
        b=oD/IRBmXzNjSSWi/ysEiANPh7tO5H89ZBXBA/gBmi8Gjd5KW3PJG+VzD8SUMVh2wd1
         Qq1xWmxO6SuGs71AYa6q/fABBrkuXSGqUtlQ4Fjvl+wm9pDSikXhF4hunZlOUZTJ6XZg
         JlMz/wU+ieF/L1x17a2jvXcMYliYnkJuuxG6DsK2gE/guT3XFgo1jw/1a2vvKaBkAVh9
         SHMjXFinH5/jezXwDGpMSxTl+qTenOnNQFrjK6I+ArnFfD/TCBF9JvOYaHuRcsAXknO+
         edhClHWBIMXbldRIviSL0h/bc17SfF0LIEsX80J3JwFG6q3Wo3Lg/5Ti+g04YjJFau2j
         caMw==
X-Gm-Message-State: AOAM533vGnKsfEqdzg2BRdDsXrTwVKHI7Sf++g66gkT1wmdJfsuVxEe+
	VNPKzsIr3cwCfwF555SxEvAU9Ke91LMXOg==
X-Google-Smtp-Source: ABdhPJyxOSZBZHexmLTQp6dQ8KZRJZUrDenleXCRLBRGRbj3eesltef2jbJbwuP0j+W8gsANDlMhOQ==
X-Received: by 2002:a17:90a:de16:: with SMTP id m22mr772325pjv.38.1626649662576;
        Sun, 18 Jul 2021 16:07:42 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:42 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 06/15] requirements.txt: bump to Django 3.0
Date: Sun, 18 Jul 2021 16:07:11 -0700
Message-Id: <796045df2bd3f7007d6b0a63178d6f6a43329d59.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Incremental upgrade towards 3.2 LTS version.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 1c2c4a1..ac69589 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.8.1
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
-Django>=2.2,<2.3
+Django>=3.0,<3.1
 django-appconf==1.0.3
 django-axes==4.5.4
 django-bootstrap-pagination==1.7.1
-- 
2.32.0

