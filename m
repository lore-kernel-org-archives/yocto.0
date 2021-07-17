Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web12.3477.1626528321692933252
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Jul 2021 06:25:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bLyxFC/B;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 62so13019559pgf.1
        for <yocto@lists.yoctoproject.org>; Sat, 17 Jul 2021 06:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NTeCHvRypwYECd+vD8f2qNy5UraNeJCbS4H8gYyHf0c=;
        b=bLyxFC/BU37OMPlr0+bKkH/M6W+PyxsReVBrPUhTfYn9CrZ0P6ejUV6SSdTAPKGvKU
         4AKiweZtjLkt6wQu3GDz3FeJni0EDPqBwwvhACkBjTsR1jYyED1oLQU09u44TT8kVldW
         d78mIktgqRFuapywaXM7d2Fpm76I0T7imEojEbHVBB47rg/UHJu2hG6uMRJnHgLkIhQj
         FxhLSfzlxKOYdN2tN53XVGWgUpGUXg28x9Iz/XSQk+TJCfzlYXWMTFLjuxaSPbK4TyaY
         E20PLEa71fj/D8etssc2fZUfQ6f4PMjmsAIENnYluAaS8ST7+21Tf+G/i3f1Eyj6LywQ
         DGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NTeCHvRypwYECd+vD8f2qNy5UraNeJCbS4H8gYyHf0c=;
        b=MizzjRmtFtEKSmXsgvtWhi2pSHC9rxmHTh1hgZwhoVk9WYX/nMWps9YotzRCn79Bnd
         IU4N3ifYnD9Dv/U45FssNpc7BhTfRP4CmQTa2njAMkYQw8rxXPskJ7EmmLybytNB2Cw0
         IVJ9Xjn2imGGw2S8HI1y082DJabkasPJsASpcVBNaAaO8MbyNEycTtIN6lPHSA944c2s
         JU5FBFVVKKCfRd5UBjGB4hsu+p+YRfceYPCDuE1Vh2qgC+v3XOvq8EmGtvaStUzRHl6X
         ptQ9Acrqxm6qWN+LmpH0nYvjhEpjFLFg7iXrDl1XTdW/6xhT/OlOPQoR8JvEC23fkboY
         7Q7A==
X-Gm-Message-State: AOAM531QZpBNmggx28reGXlwKyg+yI0fBSpVgLiHFvEjtzhpA4QlF8pq
	4JG0knmRUvri+69jTMcXJ8m2Q8KnhXQ=
X-Google-Smtp-Source: ABdhPJy4ov7tsCcE2rrMAGFomCEYCYjK9rkDswyoMSHyaq/LW5lD2JTNZpsQYjHH4vpI2aJZQr7M5A==
X-Received: by 2002:a65:528d:: with SMTP id y13mr15347565pgp.276.1626528321017;
        Sat, 17 Jul 2021 06:25:21 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:e013:b135:6d1b:134])
        by smtp.gmail.com with ESMTPSA id w10sm14812889pgl.46.2021.07.17.06.25.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jul 2021 06:25:20 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] suricata.inc: exclude ppc in rust version
Date: Sat, 17 Jul 2021 06:25:18 -0700
Message-Id: <20210717132519.73985-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
index 7d3509a..8ddd5e2 100644
--- a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
+++ b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
@@ -1,3 +1,5 @@
 HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
+
+COMPATIBLE_HOST_powerpc = 'null'
-- 
2.25.1

