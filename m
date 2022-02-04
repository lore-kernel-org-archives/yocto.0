Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B17DC433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 21:26:16 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.15514.1644009975132309732
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 13:26:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Cs0LkLQ3;
 spf=pass (domain: gmail.com, ip: 209.85.216.43,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id
 h20-20020a17090adb9400b001b518bf99ffso14247601pjv.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 13:26:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2PfmP5xHg2drKv/41/gNwfNY8ZtJl/F1tTudG9Ps5Ng=;
        b=Cs0LkLQ3d4yqhamChM4YEa7LtHCOR0B/yzDmsQbtzXC83u7fsdECu62GzBYg4zFrph
         0iA1jMyMmVZV594EYRxcuWNBSx+9rKQplMnwLxMATe/2C+MySB3NSMP9+vxuGx5rMm09
         ONazWJLq2L/7r19/nvX1LuZBKbt24uuwPJwjc5mduImLhF1073rZLh6zCJrVOX0Bh0n1
         a8oiM0VTjNbr6fWuN3jd+VIsyiKyxJHTNm9DNDife1Lqh5g0dOXk2BE4AeDjbuzMEQf6
         n66FjX7ycIDTVdGSOJrwl24gmwwPdjSZuhVVHmoiKWgUCnB7CPNnT/s9p0JDg/WX9NxG
         JsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2PfmP5xHg2drKv/41/gNwfNY8ZtJl/F1tTudG9Ps5Ng=;
        b=rUIxiPnnyU9c10/ZgHjFK3mSFioB0iiAZ304vI1IX4Gn9VhBPD25dj1GqOfa7VwhJQ
         EpGte9jRycK3uzZ65+M6ntPUQjTaMeb9p/HUxjoCYYG6U3KTN4OQmvBBd/Gg6wSvIrPX
         8uyATPn6PeSRscWMnxo7n0bkkWVNE3SYSaoHiQbx6NWdzjkYFplNyyU97zlfeMm8Nk61
         HGB39I0XeQRZYUUoPbgbpAgxstC/UQ+JM1wvnCdcBDPgDjyxKd80/fZH8Ep+9oxwlzml
         +u72zeDh491zDatsQinjwKFYOoJObMyux4sfjZ4ELkfV+yvArA+tIy6GQrfc9tPpcH8C
         W+0g==
X-Gm-Message-State: AOAM532kSIds41+xeAFMMArab3zGHdsEmfqwGPx+N9FHcMPKaAL+9tz7
	XgjQPoflscb1WjGEKXrzUf4K8XITkP4=
X-Google-Smtp-Source: 
 ABdhPJx4sU0b1pXG8a+AKIhW8mmniQ0isvasimR7WbiPgqaeks9N8K02k19nDT95pV++3J89xpB+3Q==
X-Received: by 2002:a17:903:1209:: with SMTP id
 l9mr5017587plh.3.1644009974378;
        Fri, 04 Feb 2022 13:26:14 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:701a:2848:6826:6ebf])
        by smtp.gmail.com with ESMTPSA id
 t2sm3320455pfg.207.2022.02.04.13.26.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 13:26:14 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] suricata: update to 6.0.4
Date: Fri,  4 Feb 2022 13:26:13 -0800
Message-Id: <20220204212613.1220552-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 21:26:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56077

bump lexical-core to 0.6.8

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.38.bb => libhtp_0.5.39.bb}   | 2 +-
 recipes-ids/suricata/{suricata_6.0.3.bb => suricata_6.0.4.bb} | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-ids/suricata/{libhtp_0.5.38.bb => libhtp_0.5.39.bb} (91%)
 rename recipes-ids/suricata/{suricata_6.0.3.bb => suricata_6.0.4.bb} (98%)

diff --git a/recipes-ids/suricata/libhtp_0.5.38.bb b/recipes-ids/suricata/libhtp_0.5.39.bb
similarity index 91%
rename from recipes-ids/suricata/libhtp_0.5.38.bb
rename to recipes-ids/suricata/libhtp_0.5.39.bb
index 2a0c93c..80c9014 100644
--- a/recipes-ids/suricata/libhtp_0.5.38.bb
+++ b/recipes-ids/suricata/libhtp_0.5.39.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=596ab7963a1a0e5198e5a1c4aa621843"
 
 SRC_URI = "git://github.com/OISF/libhtp.git;protocol=https;branch=0.5.x"
-SRCREV = "fca44158911a1642880ea5c774151a33ad33d906"
+SRCREV = "6b70803c45894da7a591b2305498335e6df4f9a3"
 
 DEPENDS = "zlib"
 
diff --git a/recipes-ids/suricata/suricata_6.0.3.bb b/recipes-ids/suricata/suricata_6.0.4.bb
similarity index 98%
rename from recipes-ids/suricata/suricata_6.0.3.bb
rename to recipes-ids/suricata/suricata_6.0.4.bb
index ca9e03e..31244f3 100644
--- a/recipes-ids/suricata/suricata_6.0.3.bb
+++ b/recipes-ids/suricata/suricata_6.0.4.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
-SRC_URI[sha256sum] = "daf134bb2d7c980035e9ae60f7aaf313323a809340009f26e48110ccde81f602"
+SRC_URI[sha256sum] = "a8f197e33d1678689ebbf7bc1abe84934c465d22c504c47c2c7e9b74aa042d0d"
 
 DEPENDS = "lz4 libhtp"
 
@@ -58,7 +58,7 @@ SRC_URI += " \
     crate://crates.io/crc/1.8.1 \
     crate://crates.io/rustc_version/0.2.3 \
     crate://crates.io/phf/0.8.0 \
-    crate://crates.io/lexical-core/0.6.7 \
+    crate://crates.io/lexical-core/0.6.8 \
     crate://crates.io/time/0.1.44 \
     crate://crates.io/quote/0.6.13 \
     crate://crates.io/rand_core/0.5.1 \
-- 
2.25.1


