Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web10.4853.1594959008446032269
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 21:10:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oN8BSf44;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id d4so6043883pgk.4
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 21:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=UJKSJpAccRknRtSVDT77WtimBATpmBqHp9GxR2fLYzM=;
        b=oN8BSf44AI/cJUVFvi19Tt0wDUovVkpYj0YfjI1YFZDGjNDqQSeIlucngy2mtU6Yt+
         q7Aq98mCsixz3WWTj11cnTU99LH81+fB+d2Of9Q+j80m4Oeu5aLiCx9kAuUT8VFRQqix
         0fX5UsUXYszrgCEybdhaBnTaWOB7+6SOtXKnRA70Bugq3iji4OF4lmgk/vgnJSJ8pLxN
         36HJ7Qb9VqYZ/AbAWrmmmSYjP6ugxPIDDTDenMBH9tmJgcYeERvmek3yMMbUA54HPgOk
         Uh2FM4s7eqBEdaXzkf8Qe62UWtfB3tfqfeBPxv3lj5aLb9EnTIscOUAP+oZICAGRFfxQ
         V5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=UJKSJpAccRknRtSVDT77WtimBATpmBqHp9GxR2fLYzM=;
        b=oGiFsNTRvlLCk7zQSoyw0Ekgd6x3IDeujawJpWS7nmS0ZIUwPz3ZO2zKxrheiV+lar
         fzMWa5IntDgReXblgBKpnQfENYEZITXnZz3klMMf1QOubnTzQWO+4fntdS7GFDrqjeSe
         GIkA3pKiGV7N3q81cUu64bKPOKcuSeqvNUOgiP+De4x/1JNE6el0yRAa4pLrTsL6sVIg
         UV7KbqarrtKiwS3WfKCytZt59d1GaNO293p9XvtsVDyQA+nDwV8U4fbm2Ydk/68g+niQ
         UII4Oprhoa1QdE1oV8TwB2xJ+hKG9w+FeLTVbMOJ5QHr4gN4aU/Cl3VX0eWN3BU5zrRu
         XFdQ==
X-Gm-Message-State: AOAM530FoNLd3RVdrB5zi9ZmKzGxWxv2tmd9cr/30g9r6RINiDOTvt7J
	p85nB5kcvCZCsku7PtpPizEUCqGmjME=
X-Google-Smtp-Source: ABdhPJyGxiGYrsdKoVdwENDdwyDc2rGVAod/4fsc9endsgB5dq5IRPRCZT2TnkkwsuaEHcreJfRjMA==
X-Received: by 2002:a62:7e90:: with SMTP id z138mr6272191pfc.292.1594959007827;
        Thu, 16 Jul 2020 21:10:07 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id k7sm6212446pgh.46.2020.07.16.21.10.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 21:10:07 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/6] meta-integrity: add dynamic-layer for strongswan
Date: Fri, 17 Jul 2020 04:10:01 +0000
Message-Id: <20200717041001.17312-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.8.6
In-Reply-To: <20200717041001.17312-1-akuster808@gmail.com>
References: <20200717041001.17312-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index b4edac3..f905b0b 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -26,3 +26,7 @@ LAYERSERIES_COMPAT_integrity = "dunfell"
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
 BBLAYERS_LAYERINDEX_NAME_integrity = "meta-integrity"
+
+BBFILES_DYNAMIC += " \
+networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappend \
+"
-- 
2.8.6

