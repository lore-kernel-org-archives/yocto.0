Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web10.42234.1593974434439354827
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 11:40:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQylDKaK;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id x3so10515737pfo.9
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 11:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=wxbT0B6oYSSiuqP79dwjHNAakD2l2+xSzjkqio0+dRQ=;
        b=jQylDKaK6qUKRKQhmXy8n4G0B0jbMmcdizDCjufKJOQDpqsGD0/B1GpgHoKTjP1W9A
         f682eiX/AdgraXdQ7kmzR9mHwdpxAgNJEzOyTn3ojzN2b1bK72PyJK3IxDnFy3dM4dWo
         sgLX8S79MkfSB60f2MPdYGSt1LN5FoP+EQ5fhIl5/bsDQeK0B9cr+Rj0dEgOgMEKk063
         m684ht945Gke2EJ2RWI1xmDzVte5BgYUV2fRte8HGpt2o20f72DMcprlMQE774DzqsKD
         9f3SyBWa97xTU3+JsRCq5lmfkTY6BrQaO5XyEpYbmhnGbIJLW/lBa8hN1iI2KdvixFJo
         lGDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=wxbT0B6oYSSiuqP79dwjHNAakD2l2+xSzjkqio0+dRQ=;
        b=Xg6dQ6/CSZWfIURptyAc0XoJknPZ/WUTqleH9a8YOqr/XCzogBTYJ1eIH0eemPMjti
         6CincOaYEB6WVPdfi9ZfsbQTON07diTvtNK4B/vKSnIHHQR5mSy53ldAL5H67YVg7lqJ
         gbDFf5Z55hakGyzXBW7VfM19vwPEwWSIPku6qlM8mdp0+/F8055uQUSh418J1huJahEV
         9KJoVmcgNkK+Xf7ojIXJvVpsvid2bbNErVFf/IpckrrGhg5esBTbm9h9YvKuNnu/MxsS
         WnrwUHunYuJIqcA5Qxf3iejSnQOeTC4CDEYI091AyK9Hya+8ElCYV6fY0dy/vfIPLpCg
         60ZQ==
X-Gm-Message-State: AOAM5312aA+vytB7M7SzDE2ZjUnnafYCesOBBggVWrlxqD15aBEu+29d
	peKenH8AD6ybwv+MIPXHkTnXVHxbWzg=
X-Google-Smtp-Source: ABdhPJwhvMAGn1/C2s2IdHByUxVUbgN2smZqcdEX5LoWtQIRhlCVkFqmZKmNinlibsx/MAw3FF/ONA==
X-Received: by 2002:a65:6554:: with SMTP id a20mr32876597pgw.301.1593974433491;
        Sun, 05 Jul 2020 11:40:33 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id y17sm6493369pfe.30.2020.07.05.11.40.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 11:40:32 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] suricata: update to 4.1.8
Date: Sun,  5 Jul 2020 18:40:31 +0000
Message-Id: <20200705184031.20674-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.32.bb => libhtp_0.5.33.bb}  | 0
 recipes-ids/suricata/suricata.inc                            | 5 ++---
 .../suricata/{suricata_4.1.6.bb => suricata_4.1.8.bb}        | 0
 3 files changed, 2 insertions(+), 3 deletions(-)
 rename recipes-ids/suricata/{libhtp_0.5.32.bb => libhtp_0.5.33.bb} (100%)
 rename recipes-ids/suricata/{suricata_4.1.6.bb => suricata_4.1.8.bb} (100%)

diff --git a/recipes-ids/suricata/libhtp_0.5.32.bb b/recipes-ids/suricata/libhtp_0.5.33.bb
similarity index 100%
rename from recipes-ids/suricata/libhtp_0.5.32.bb
rename to recipes-ids/suricata/libhtp_0.5.33.bb
diff --git a/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
index 3adbcf6..c9dd9aa 100644
--- a/recipes-ids/suricata/suricata.inc
+++ b/recipes-ids/suricata/suricata.inc
@@ -2,8 +2,7 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.1.6"
+VER = "4.1.8"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "da5de1e8053f05cbd295793210117d34"
-SRC_URI[sha256sum] = "8441ac89016106459ade2112fcde58b3f789e4beb2fd8bfa081ffb75eec75fe0"
+SRC_URI[sha256sum] = "c8a83a05f57cedc0ef81d833ddcfdbbfdcdb6f459a91b1b15dc2d5671f1aecbb"
diff --git a/recipes-ids/suricata/suricata_4.1.6.bb b/recipes-ids/suricata/suricata_4.1.8.bb
similarity index 100%
rename from recipes-ids/suricata/suricata_4.1.6.bb
rename to recipes-ids/suricata/suricata_4.1.8.bb
-- 
2.17.1

