Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web09.2790.1576558181667691054
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 20:49:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JySgLKWw;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id k197so4947753pga.10
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2019 20:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=lIu+ggrd7I7eRgKZ8gBOZbRX8Sp16wLsYBNJLllYMaw=;
        b=JySgLKWwOlovFjolwzW5dK0DTURsBgqznFDtOjkCsFNAW6QbeuQqIZBWmoduEziBYh
         Myt16qdLNM3RAItfsaFTmByizM0HjDuCwtYI/JiWrWzakzXSVDlmtGUzGMT/DmVCEF/B
         tn+YSorE2D/CTwITFh5g1ZORU77B9Jm5qYEsFx6GqIuTBCSDp7+ELdBlKz64al7JjN00
         4f2JcS1R51tZc0lq67P2ZN7//4s6Vt+pImCg3/1UPCU68IGBwqqBPoaeNkCZLotCV32p
         Mr9baU+WFlx032xdo0BpT1haEwbw8AT5K2baOT9qhrBmu/tPefbRK9L401JTw2kotycR
         VTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=lIu+ggrd7I7eRgKZ8gBOZbRX8Sp16wLsYBNJLllYMaw=;
        b=RrKtaMBmBmtT4ag50v+/hU8n2iVhfP153DJ3xr6ChCvO8c9NMQ4i/IzAFPSb/W1ZJc
         mDDr5CVNTdNzhzF/RfTxX+axkuMumkRY10IarJX+WJexOnYiHTrvEF7lkWnC6jD7D8C5
         RYdmTf3HMVUHCZEJNNWHIP+gzMYBnDDntDVivxWCEm2mpyehB3qGBWHwyYpcAVlyoF0t
         XKyhaPMlGkrC6d8OpzrESQgncAwU30BumcKmv9ST3kbF4AnBdwIm9CNrTWvo/iiqJ22z
         f4bNW+i1ZEb+oJIURrZHEmxZfVOL00R2rIQaCH9k+9tJJc5OaFXYuI/vrbzvgQYSshCT
         gXsQ==
X-Gm-Message-State: APjAAAUUkSIcXr399eZnrOl9+XxNF3K6miMZPK6hbe+5iA12fuwxUuBs
	bW1zDr0VIc1z4+DXeQU6FZ9YHzFuyY8=
X-Google-Smtp-Source: APXvYqy4pvtT6A+SVFHmPjzJbzAz2QEvEm4eYj04BthEOlxDLdVAfZtaTwrQzRK/iyq1SOko0r2gyA==
X-Received: by 2002:a63:364d:: with SMTP id d74mr22873806pga.408.1576558180961;
        Mon, 16 Dec 2019 20:49:40 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id g11sm11370021pgd.26.2019.12.16.20.49.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 20:49:40 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] suricata: update to 4.1.6
Date: Mon, 16 Dec 2019 20:49:39 -0800
Message-Id: <20191217044939.2150-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata.inc                           | 6 +++---
 .../suricata/{suricata_4.1.5.bb => suricata_4.1.6.bb}       | 1 -
 2 files changed, 3 insertions(+), 4 deletions(-)
 rename recipes-ids/suricata/{suricata_4.1.5.bb => suricata_4.1.6.bb} (98%)

diff --git a/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
index 1f4baff..3adbcf6 100644
--- a/recipes-ids/suricata/suricata.inc
+++ b/recipes-ids/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.1.5"
+VER = "4.1.6"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "0dfd68f6f4314c5c2eed7128112eff3b"
-SRC_URI[sha256sum] = "cee5f6535cd7fe63fddceab62eb3bc66a63fc464466c88ec7a41b7a1331ac74b"
+SRC_URI[md5sum] = "da5de1e8053f05cbd295793210117d34"
+SRC_URI[sha256sum] = "8441ac89016106459ade2112fcde58b3f789e4beb2fd8bfa081ffb75eec75fe0"
diff --git a/recipes-ids/suricata/suricata_4.1.5.bb b/recipes-ids/suricata/suricata_4.1.6.bb
similarity index 98%
rename from recipes-ids/suricata/suricata_4.1.5.bb
rename to recipes-ids/suricata/suricata_4.1.6.bb
index b2700d6..9b7122b 100644
--- a/recipes-ids/suricata/suricata_4.1.5.bb
+++ b/recipes-ids/suricata/suricata_4.1.6.bb
@@ -10,7 +10,6 @@ SRC_URI += " \
     file://suricata.yaml \
     file://suricata.service \
     file://run-ptest \
-    file://0001-af-packet-fix-build-on-recent-Linux-kernels.patch \
     "
 
 inherit autotools-brokensep pkgconfig python3-dir systemd ptest
-- 
2.17.1

