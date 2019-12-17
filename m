Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.2749.1576558114091320772
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 20:48:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PETuDcwc;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id z21so3975555pjq.13
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2019 20:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=/qXrrNqzqlBQMzv1wHdPokH5kjQqEkL/avUVSpCQpbg=;
        b=PETuDcwclnDfl44IlsvwLYQ6+3ZjV+Qqb+A17DRf148YWx6NIYI3K4xljiOH1rcctT
         W9s21C0zExZeIkhLe1688lYDiRJU3WfdEbPq3QBv4tZykVEBmsLB8dyUu1BKb9ga5VMg
         k7kpb81ogXM4HXvUC9mc3VL9NxZGDURDhVGYTlty3KgbjLTqNAbEa89UyxsR1aljcUtk
         VfEg11Nuh6+2C8hEoN7IlbfTs4w/RmoZw3wkQ1G5GVSBxLKSDDx56Hge+69RPixsqD+P
         wUQkTPP06OnSneiJbGmOBA+3G4FeYz2MjGa71B/AW3e1wzXbIP/HmbxtLeDqK05oIYFc
         7Z1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=/qXrrNqzqlBQMzv1wHdPokH5kjQqEkL/avUVSpCQpbg=;
        b=Val9SiQqI4y4o7icUM8+uxxdJrymBl1xMykIxhlaAuM6uUxfMz3B67MUHe2WSXk9r8
         fPGNd25DPFKtB9rtXwDxKZeIXEJ2EoIRWAZxw+hz5guQeTK+YIWD7do7FeTQ70C0bRtK
         vy6BxU242EwH1KkiJJ4JlWl8/rT3IiQx8k7ouaT4qKd2CBkpo2fVSM30Aqp2gIwC4cAx
         xlPKNykaBruFsh8KJ/rhMCU6g+uuOfYXN46gHOdzwxmuhe+BlbS+0VgFc+5yIY8iAPje
         mah/AB0PbSgbAImRL+LSenmbbRXzMAxtxoX9Li2HA6q+cT42ddXJwBZcMxCYGz9C/5w/
         4DOg==
X-Gm-Message-State: APjAAAVTZJ6Elhv779vdyyuf9ZwR0EmEzDAGjndQwaiD7YbJZ7AVukGq
	DoTT4QMlR6WrVvwld5BzvvYKmmx3Uyw=
X-Google-Smtp-Source: APXvYqwgCbMbip/Z6EzJ6tlBSw1ufIxHWieYY61ADRoYVaE+r0MD8x+A+jFrW9ewvahKkiz9htqvTA==
X-Received: by 2002:a17:902:202:: with SMTP id 2mr19987206plc.271.1576558113196;
        Mon, 16 Dec 2019 20:48:33 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 17sm25209378pfv.142.2019.12.16.20.48.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 20:48:32 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] python3-suricata-update: update to 1.1.1
Date: Mon, 16 Dec 2019 20:48:29 -0800
Message-Id: <20191217044831.2080-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...icata-update_1.0.5.bb => python3-suricata-update_1.1.1.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-ids/suricata/{python3-suricata-update_1.0.5.bb => python3-suricata-update_1.1.1.bb} (86%)

diff --git a/recipes-ids/suricata/python3-suricata-update_1.0.5.bb b/recipes-ids/suricata/python3-suricata-update_1.1.1.bb
similarity index 86%
rename from recipes-ids/suricata/python3-suricata-update_1.0.5.bb
rename to recipes-ids/suricata/python3-suricata-update_1.1.1.bb
index 63f75e0..0070b5b 100644
--- a/recipes-ids/suricata/python3-suricata-update_1.0.5.bb
+++ b/recipes-ids/suricata/python3-suricata-update_1.1.1.bb
@@ -5,8 +5,8 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
-SRCREV = "dcd0f630e13463750efb1593ad3ccae1ae6c27d4"
-SRC_URI = "git://github.com/OISF/suricata-update;branch='master-1.0.x'"
+SRCREV = "9630630ffc493ca26299d174ee2066aa1405b2d4"
+SRC_URI = "git://github.com/OISF/suricata-update;branch='master-1.1.x'"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

