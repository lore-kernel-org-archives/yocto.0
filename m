Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web09.4166.1578266320173210821
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uAavJU+e;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id m13so6985565pjb.2
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=lIu+ggrd7I7eRgKZ8gBOZbRX8Sp16wLsYBNJLllYMaw=;
        b=uAavJU+eDEFJ2OE/RlSdm4JezPQLwYwacBmsS410PiIO5PYIdIifAtyW0KbowYcfHL
         3DEUfvt1yzTrLPkWiqdqZdTkl82HD65nZuQaIaPISWR1nLXr/RcGuQ4F6opb5wVpC8sh
         toM+acbZT26/XX2PIk5rNF6g17Z9WbEdAxY/uBst9iy5H2PaSHE3eYqx3qAiUomYqcxE
         RRD7UwZsncUUMr9kdjIvT+mg1wSkld1G9kPyTtt9ZYr2j+/KbS5kitRC4OQE8YZM2oFQ
         JGKsCAqOmuRcsdJq0iWksQ7yrzkLHEm3l6cxQOFkwtgnHVw90S/yzoyxNbZN47anCD8T
         LOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=lIu+ggrd7I7eRgKZ8gBOZbRX8Sp16wLsYBNJLllYMaw=;
        b=LZxGt1G2niNZjFqcl6JNz7iCtp5au+fVRYNEVfSOoT0WIgXJUzY/leAwz4+9WInklm
         kdRfpeazMiPz/x6F7FWZ8Wh/rWaVRHBwJRMA4d7y1RYiNTUAMu82HpiGRG8avl/YU5CF
         ktzLpGQnIMV6lZ7Nc1mxlggcD3vkhKxKqbD53M+Z19YaKkcLfyFGcV4OIAJCj21XT/mw
         /bYF7ztHmqK9IJ6Pf6Tm2mQw5RnD7aKtoU5RBhLeho+sHCBX8DMb/ZDbcCngok2ZMjir
         o7nj37LB0bDpzKMubPh1QrQ9YljpAO733xhl7dyWCupip2IjjMz/qfO6Z82TQa3sKt4K
         aMBw==
X-Gm-Message-State: APjAAAVciDy0M4Fjb7iWukW7PLmoXvfn/TEQPDCa6c1jne8pc0oL/47/
	7sye7meK1LjfweDJuSGbngWqF4a1
X-Google-Smtp-Source: APXvYqwWQyuYqYzNtMeIY4QD3is4cobDqyQLmphlVookjB3Av67+Jh4N+4IU789F0TLek2lWb2vPxw==
X-Received: by 2002:a17:90a:e28e:: with SMTP id d14mr41322999pjz.56.1578266319418;
        Sun, 05 Jan 2020 15:18:39 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:39 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][zeus][PATCH 9/9] suricata: update to 4.1.6
Date: Sun,  5 Jan 2020 15:18:30 -0800
Message-Id: <20200105231830.5281-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

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

