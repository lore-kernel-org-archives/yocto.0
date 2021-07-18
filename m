Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.20551.1626649690067248973
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:08:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bLNl59Os;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id u14so17136923pga.11
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zZ56QRu0iinYfEnFC4Op5kOjkj8gnaEXEHfS19pwhmU=;
        b=bLNl59OsZ8Z0R58PRKZ5VPT9ydvAECBJUXKvBRatph6nSO+S5WkIwEqhWFibWz0h4C
         03U8mDZd6gqxHLFOEBugmrO5E/50FEoaSwkFtlj3WEvP6YfV1aU5oghyoE7aW7loCkY2
         y8+wNTuy0KMEfbPG6tPzNvxW+c4p7ZQVximORUklF3Goe+iboNUVYOrFRT8r76y28wLN
         eCjz9ee6vQ1aonnKZ5ayR4jMtdEUeVrwSlyGXCSYMP76GyquWBxgp6OUw/fyiIF0ZG28
         p6Tr62obgkQJ0YhKUMo17dXKC5+o11GM6Q/a2yo0XX/9UaD7IL4vLRIj66My43zZ02iN
         qisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zZ56QRu0iinYfEnFC4Op5kOjkj8gnaEXEHfS19pwhmU=;
        b=TW5w4xaiuTypVJ7ftV9EY3jqPqV87n2IZdlutCTT1/21n0SZfu3XtQps/qObeuvosb
         73DiwvlnST91MnvXopHJJA8hIU4BUwjspzQ7eNVb3Ke6B5S9FK10XRqVzSXMBjvEqGM5
         nWymSIdC1Ig7+gj5bWU2eZQ2MTQITKIeHROWV7baKTf0R3shGagBUHyJGhjyn2DjEUh4
         IysA2G9zFXgC9VbwXr4Lt6cO9TaYhp9q2jYZ5DPkkhLGB1ZvbZsSBGAIBtnHq0C2jsGh
         uMouU9gJJ0XsbzcxQgrWl1sh/XK+5jhZC1ZLcfPeKMLJYd/wP+PmA4z6uSEple889mAp
         9dxg==
X-Gm-Message-State: AOAM531FwZNDXgPhK2yN2RvGwHwb7wZwQRV0wOKRVN5b/Y2Ovvstps/Q
	oj/71Qh78HvhC8GdHiMjtF3ZtD/WhG+V7Q==
X-Google-Smtp-Source: ABdhPJxLm0Mp4D/+aTs5SkZ8xtKooAi8Yxi5W01NBU69XtV+7396fw0uufyolsvAYlN0VQWXqFtbxA==
X-Received: by 2002:a63:5153:: with SMTP id r19mr22628627pgl.56.1626649689502;
        Sun, 18 Jul 2021 16:08:09 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:08:09 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 15/15] README.devel: update versions
Date: Sun, 18 Jul 2021 16:07:20 -0700
Message-Id: <4af5048d559c2b4c241a903f18a5761a5bdf25bf.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This updated code-base should be compatible with
Django 3.1 and obviously 3.2 (but not 3.0 or earlier).

Django 3.2 requires Python 3.6+.

With the upgrade to Celery 5, it is safer to recommend
RabbitMQ 3.8.x, since that is what we are using.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 README.devel | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/README.devel b/README.devel
index b535304..cbf54bf 100644
--- a/README.devel
+++ b/README.devel
@@ -7,9 +7,9 @@ covered in the main README.
 
 In order to run this application standalone, you will need:
 
-* Python 3.4+
-* Django 1.11.x (not compatible with 2.0 or newer)
-* RabbitMQ 3.7.x
+* Python 3.6+
+* Django 3.2.x (not compatible with 3.0 or older)
+* RabbitMQ 3.8.x
 * For production usage, a web server set up to host Django applications
   (not needed for local-only testing/development)
 * A database system supported by Django (SQLite, MariaDB/MySQL, etc.).
-- 
2.32.0

