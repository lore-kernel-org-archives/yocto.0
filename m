Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.14596.1602252500657039224
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:08:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J7A/08gw;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 34so7230726pgo.13
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=XLj7LntZXRFses0qLzUWW3Uia6SjscKgGxz2VBmCDGU=;
        b=J7A/08gwIxVeUEw0wVgCp5v7FHNigjx1wSV1szcP6VqB0Cv3kOn8dA5fmrG4tTnpnx
         F3t9T1AAUl4F+TvdaAO1XKr7DWnM/mIRgXFM0lAQf/lTX+8EoFjuItwRRYPUPLZ54cca
         GGtZe+DjRYVpHbG4QEIITOIS4pt301r6tks2dfJJJT/0oVJgQQLEHz5rmDlbnqjonYTz
         N38O0E6akuTXd38Ncm+i8+62z3Zdho/lzrlYCI3e11DrelERsOOp+Mnmy322oZD5EtqY
         OyPTg2tf5T4dQl/pbyb2rhZubjhA2y4Gh4nGIbbw9g4PVetFmbFncyXOG3BZCJOFxlg5
         dV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=XLj7LntZXRFses0qLzUWW3Uia6SjscKgGxz2VBmCDGU=;
        b=G9yVfYTtvPKtBI+8XD4AzDeFhtBbwmSZn8lSUkzPWnlf36qPh69RdC11Bf4LehFCNm
         b95jnarJmPEMcYOsYy/CFHL/27m0upZ4xD5Ln0aFzEXxZp97PMjkIP+Eqf+3RW4muMew
         SfYxq/675u0B4yQ5ytCg47HQPtZklV133lj5D9B2Kd1vrVvwvYYNgsYf3bX80oPrpvM9
         u98ArHLkzTtqov0trtTuaUisyn3VH0f8RJnYvjslFj6OHQYCbPaYbTvjynIT2N7WQewn
         Dmj6XSR/P9VsZqcg93oA3dpoENd9Fgxim+Wn7ZwjOfjvEESY+654FAAj7IsK02UA0j63
         wpYA==
X-Gm-Message-State: AOAM531JnX00W2DgZ7MFrqoqRYzrlgd8C5fcoCps8okX76UKcSmfDjqV
	2Dw7ShpSnAi+iXKvF2LLsNWOeqSxgZA=
X-Google-Smtp-Source: ABdhPJxm5LL8EiSKKgJCkiKDcsusXNogj0AIDbSr0PvAV9j+qx0XBRfBY4p0y1RiSPEfdqPnDj5xhw==
X-Received: by 2002:a63:4611:: with SMTP id t17mr3461127pga.225.1602252499890;
        Fri, 09 Oct 2020 07:08:19 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id k9sm10119710pfc.96.2020.10.09.07.08.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 07:08:19 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/7] suricata: update to 4.1.9
Date: Fri,  9 Oct 2020 07:08:12 -0700
Message-Id: <20201009140812.21765-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009140812.21765-1-akuster808@gmail.com>
References: <20201009140812.21765-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.33.bb => libhtp_0.5.35.bb}   | 0
 recipes-ids/suricata/suricata.inc                             | 4 ++--
 recipes-ids/suricata/{suricata_4.1.8.bb => suricata_4.1.9.bb} | 0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-ids/suricata/{libhtp_0.5.33.bb => libhtp_0.5.35.bb} (100%)
 rename recipes-ids/suricata/{suricata_4.1.8.bb => suricata_4.1.9.bb} (100%)

diff --git a/recipes-ids/suricata/libhtp_0.5.33.bb b/recipes-ids/suricata/libhtp_0.5.35.bb
similarity index 100%
rename from recipes-ids/suricata/libhtp_0.5.33.bb
rename to recipes-ids/suricata/libhtp_0.5.35.bb
diff --git a/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
index c9dd9aa..b94285f 100644
--- a/recipes-ids/suricata/suricata.inc
+++ b/recipes-ids/suricata/suricata.inc
@@ -2,7 +2,7 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.1.8"
+VER = "4.1.9"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[sha256sum] = "c8a83a05f57cedc0ef81d833ddcfdbbfdcdb6f459a91b1b15dc2d5671f1aecbb"
+SRC_URI[sha256sum] = "3440cd1065b1b3999dc101a37c49321fab2791b38f16e2f7fe27369dd007eea7"
diff --git a/recipes-ids/suricata/suricata_4.1.8.bb b/recipes-ids/suricata/suricata_4.1.9.bb
similarity index 100%
rename from recipes-ids/suricata/suricata_4.1.8.bb
rename to recipes-ids/suricata/suricata_4.1.9.bb
-- 
2.17.1

