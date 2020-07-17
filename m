Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.4841.1594959006854478402
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 21:10:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CskbIbGG;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id e8so6043824pgc.5
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 21:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Xnhz1Jsn4H7udpjjVZmEpgeY9Hduh8KQDzS0wv7vDbs=;
        b=CskbIbGGOUkWZtm1wWUB4oAHqO22XZikvmGO/Eqq9ckZ48ZNiayzqo+OnD4+Tuc1XB
         O624CWyTFeueGD9iSU2KpdkecMDFqR41O7XqtwytBlXEjrbZuTKCGL4K8p2WLFCfNoFu
         w7EmQBtBOoF9bac26ZVTeEGLXvg6T1oE5G9bvm3L32VZDvHQ9KMS4HGaKMHdPZClk2Da
         4umz9PmmsWA+sTUVtuITnjHcMEee8Eosvy55LwakR4heCCL++AB/tLyUxfSPlc49ZxZv
         otuoPiH80nDPutIYfr+8EIZTzR9Kz/EoxEv1J/P5aiiuJWomvzvV8WJiXFP8eBIOhckr
         Y6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=Xnhz1Jsn4H7udpjjVZmEpgeY9Hduh8KQDzS0wv7vDbs=;
        b=lev7bkCaCCXNvORPgqaVic28twZ2URNVIay5pj0NcHKlWfW9HhlmxfdJdbkHAjmeBS
         27g2H+YLXHGqldcJoJKMWWYZfGXNN3xwa+utddjQsYiZnGPj4POAuXYAL/SRstHPQ39g
         +BXzu9rn6SyrS3Tcd2Z4c0QniOmkMKQdkbGemIEuFHxQ/YIkPE6TGitkg5r+SK1P1pC+
         dV6cLvesDYo5hcSglkzKhjhGFdRM6sYHh9RwTxGxdQe9CPs+oyG3XnSZSSx3IMokRe/0
         V7CerHbQ04dlZH38/xgr9lND9QG0b6KubnZs3R5ObeP5NaJxp+16JFYH4xgDDs43nSGT
         IzSA==
X-Gm-Message-State: AOAM533Lfn+3ErLnOlORfMRYwu3TJXHCx9aDugvWn6IphajjjE5Gz70H
	jl9z0ULoZL0+26Tp6t58LMH9PKAbXoA=
X-Google-Smtp-Source: ABdhPJwUw7NgcCn6S4qcM7elY/pSJHxTYLzIooJETLAUI2RunfhP5PnFtemTH11Liyv49ghnTIbDvQ==
X-Received: by 2002:a65:52c2:: with SMTP id z2mr7260436pgp.419.1594959006252;
        Thu, 16 Jul 2020 21:10:06 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id k7sm6212446pgh.46.2020.07.16.21.10.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 21:10:05 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/6] layer.conf: add dynamic-layer for strongswan
Date: Fri, 17 Jul 2020 04:09:59 +0000
Message-Id: <20200717041001.17312-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.8.6
In-Reply-To: <20200717041001.17312-1-akuster808@gmail.com>
References: <20200717041001.17312-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index c3372c7..46d0279 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -15,3 +15,7 @@ LAYERDEPENDS_tpm-layer = " \
     openembedded-layer \
 "
 BBLAYERS_LAYERINDEX_NAME_tpm-layer = "meta-tpm"
+
+BBFILES_DYNAMIC += " \
+networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappend \
+"
-- 
2.8.6

