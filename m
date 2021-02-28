Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.4818.1614552975976837169
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bvmKxt4O;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id 192so3239934pfv.0
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=grmlpbhzKxxLVD/voUbfrfoab1cgqJEqnzCdNEPr9N0=;
        b=bvmKxt4OssbhOcTPpFZ7PnROAmR8TASN7JZOfpDuKmyp6bagqq3trLNedgGde6I8Kj
         QaEQYPdoNUmw5JoGkCZGON5o5jzDac9yyB+TR50HiQiGP7ZhZWm8HvBiC2u61otgsA8G
         pn23APPMQjkdKifcMk0KMw4huQYYTwk+M5NbMAtrtqXcXw3hTHGnQDbUWxRESqmbDk2I
         XyYqoEETQnO4isCgO6WOeFrVVOVeoOxvzPyNF1riEMEcGiw6RZPCIYFw8Nop+u8phmpd
         SIrdYmJetl11YtQiJ1NIrbbOoJ6vK3iW2uW4BPyDLf1A/gfhV1bn40IVnXgl1QcSM5de
         tndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=grmlpbhzKxxLVD/voUbfrfoab1cgqJEqnzCdNEPr9N0=;
        b=eDwCgexwVgfZt2GFlGAWiXGoOLt9EjQU95ZFS+DO5I9haBIsLx43CqYe3cG6mKO7IP
         S+l2geP9U1WUTBUbHy6QHWR8rySFrRSK2sa+UdvYiJ5bdB2UzpLS0pa42pvdZeWPwCNR
         7zCDptHtBJgHKY4ov5+WygpRkmmmd5NfJefpmVr6eXwMR9RCwjOGFi+TyJwbzJjAfzXe
         TyREiKhydA2dZSCx3nNJJNilg6vfePU28UsfGqby/zZ5rGwd+2t51ACx7DiJ8GwF/248
         uRFzqqUzJQLW74w0QPPSIcVrlRjWDcVdcmr8yszqhTolYN5M7l4K/+e1p+onNo40Lyyb
         eG8A==
X-Gm-Message-State: AOAM532GeX5aaQcmxmoF6dFNX2s8TQ93T0degnucbgmuXE39/qb1SUB3
	rpl2Db+Z31zZyl2FXiZkvXeEFQI3N0s=
X-Google-Smtp-Source: ABdhPJy3d1IjeQ1KDGob8uQ8Wyi6AEkr8Xv/LePAtUXQWMPs22bnX+o8qE40N2m0kKhlmFPrdStwUA==
X-Received: by 2002:a63:c60b:: with SMTP id w11mr11014111pgg.215.1614552975431;
        Sun, 28 Feb 2021 14:56:15 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:15 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 12/12] suricata: update to 4.10.0
Date: Sun, 28 Feb 2021 22:56:05 +0000
Message-Id: <20210228225605.3442507-12-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is the last 4.x. Will need rust support to move to 6.x

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.35.bb => libhtp_0.5.36.bb}   | 0
 recipes-ids/suricata/suricata.inc                             | 4 ++--
 .../suricata/{suricata_4.1.9.bb => suricata_4.1.10.bb}        | 0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-ids/suricata/{libhtp_0.5.35.bb => libhtp_0.5.36.bb} (100%)
 rename recipes-ids/suricata/{suricata_4.1.9.bb => suricata_4.1.10.bb} (100%)

diff --git a/recipes-ids/suricata/libhtp_0.5.35.bb b/recipes-ids/suricata/libhtp_0.5.36.bb
similarity index 100%
rename from recipes-ids/suricata/libhtp_0.5.35.bb
rename to recipes-ids/suricata/libhtp_0.5.36.bb
diff --git a/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
index b94285f..1ce0d74 100644
--- a/recipes-ids/suricata/suricata.inc
+++ b/recipes-ids/suricata/suricata.inc
@@ -2,7 +2,7 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.1.9"
+VER = "4.1.10"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[sha256sum] = "3440cd1065b1b3999dc101a37c49321fab2791b38f16e2f7fe27369dd007eea7"
+SRC_URI[sha256sum] = "4013cb13a2f3f7854328cf072319bba41896fad86d6b85b1cff4004f82aa7276"
diff --git a/recipes-ids/suricata/suricata_4.1.9.bb b/recipes-ids/suricata/suricata_4.1.10.bb
similarity index 100%
rename from recipes-ids/suricata/suricata_4.1.9.bb
rename to recipes-ids/suricata/suricata_4.1.10.bb
-- 
2.25.1

