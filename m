Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.20259.1620575262594430104
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 May 2021 08:47:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b/jOVaRV;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id t21so7945267plo.2
        for <yocto@lists.yoctoproject.org>; Sun, 09 May 2021 08:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayWTXIbH2KeOGbwVKOi8t4k7JKrpUcwV+xI+qp6rKrg=;
        b=b/jOVaRVWi5IodunhWVgURczdU1iKD8blLUGuCDTJXLdQDuA4gdAtthO82hkT3PWwQ
         dztI10vd5sX//GTV/jir9iaOrt2PWgaO593YztvfqnhwMj6dBNeP9XAlChrmsxo6h2yd
         YIY0y+GnoJpzKw/m3EH7FaPSKhwjwhxQES4Ayzd94LOTtYehXCRE7eMTPqtIqT6uJo+G
         JduFa5H18jQZoEX3GyWLlIuA7Rl6LQqUhFBEXEujYTzNnkxH8GdDGTqXnZuJZI7eY55T
         VhFhhyZsCVQ3aDXYYVW4olEZtygG41MdtEEnoZNpXGBf5o2caaaH32CDzmbbRTiCiUH5
         7DAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayWTXIbH2KeOGbwVKOi8t4k7JKrpUcwV+xI+qp6rKrg=;
        b=VkaC5qRlnL8ysnwuyRKD83i+/p9rONUWyB8/zrGfVH5IVsY9zgENs2kRp2h/ZLfWxI
         xjOPDh+zJWDiJvjMvjQFNDXDV5EpnQ1FTE98liRFKFDCHfl0d5Ix7nSg+C23R6EccY3+
         ruKMCmyd4vxptpxM9fIRlasH37UZbvBU5gOlCRmqyUntTTkgPjhYlv61jD2NqQ5hwrXx
         CUszp+nqxMDsomeW/q6OABzYPc9LkjIpznJCE48Vsm7aHHFIn2tUsWSY+bBhceBKyJbV
         IH5sF7+HXK+w0EQyd8nBJp7RWUmD6xgXOu5LPXahmW9VTVfWE6PlkSxeyPGF1jV+AktO
         BqXg==
X-Gm-Message-State: AOAM531+myMkJMQMiK0xhajnecPNqjk5XonSn/mE44G8R3pHZhuCKxc4
	PVkwXpH/R/UecRCLGdWXrWZ44swifFVL4g==
X-Google-Smtp-Source: ABdhPJxXnAnVBdEzcQRLIaPgKJ8KNek+yziBm81Nwb3dc49cjvQ8QHm33tWbkV8HK4XhkEG4HjHBdg==
X-Received: by 2002:a17:902:d104:b029:ee:ac12:4b31 with SMTP id w4-20020a170902d104b02900eeac124b31mr20479256plw.56.1620575261867;
        Sun, 09 May 2021 08:47:41 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id in16sm9428165pjb.14.2021.05.09.08.47.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 08:47:41 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/6] clamav: update to tip.
Date: Sun,  9 May 2021 15:47:35 +0000
Message-Id: <20210509154740.1628375-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add UPSTEAM_CHECK

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index 36e498d..6892bb0 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -8,7 +8,8 @@ DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c li
  
 LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
 
-SRCREV = "5553a5e206ceae5d920368baee7d403f823bcb6f"
+# May 2nd
+SRCREV = "de0086aa918b79cd22570d0c05977a288b197e23"
 
 SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=dev/0.104 \
     file://clamd.conf \
@@ -28,6 +29,8 @@ BINCONFIG = "${bindir}/clamav-config"
 
 inherit cmake chrpath pkgconfig useradd systemd multilib_header multilib_script
 
+UPSTREAM_CHECK_COMMITS = "1"
+
 CLAMAV_UID ?= "clamav"
 CLAMAV_GID ?= "clamav"
 
-- 
2.25.1

