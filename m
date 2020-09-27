Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.23680.1601245001379245064
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 15:16:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7S1Sb1E;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id f18so7555641pfa.10
        for <yocto@lists.yoctoproject.org>; Sun, 27 Sep 2020 15:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=F/oKogENpfuWk8TWwsz9OYxRrPgEzUxaxjit8S7oQY0=;
        b=o7S1Sb1EOA/1VsUkxjEjuJ3A62dR384QsoGMpwRhe7mJV0Tjngv2HSczwg5U+8pJrt
         rzHeoPUNgyUdLTQYn0HWcg4Hz07Zkj5bTLi83FTBukLr4deejVjZi/whTYDKzit33Qb6
         oywK0w5zJmQaXQNEKW1o1qsxz/DS4okFFHjbLiLpMYjp3Z4JYZ4q9ZfhDsBUE+BoDeFR
         zKO7XunN0OWbnRQa3bw5pfk8F9dJdFPVuVzk32Ey5u96lYiKWz0gF285H5f79x8i1eoP
         W+rSRzrIikA/E9U5qICNT6bSTlIdyz0wvf9NSpnbDGOifUdaCJDOpapb1PxVf1ohHYjm
         s9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=F/oKogENpfuWk8TWwsz9OYxRrPgEzUxaxjit8S7oQY0=;
        b=MHwVMpwUnJHL9J0xkKC/kkQDqe+mW0u7cqG4PvBhPCPameROBON5q4a822pfR3uQ4A
         iAKSAWrf/veqt1ewyevOSg2rLgfszZCMp2RVsaywTNpEgT8hsQMC0mW3YJptHxsddnjn
         DOeQJ/1TqrTTaCzqXrPNXgqObIh46D5OoIcouQYaP0e7C0rBBHOOzQdSlcb8V5zVgE0b
         l1P3ixYSBT5FUgz4s4Mx92i/ghH5Bb0CnJz00hXvXacm7B5pR1XqlhYmb4VBPOm2PTui
         OmoC/wdPcWm5l1xZVVV7k7vVW0gQmMKo5CFLk246mABiO/za0kkcd6Oj7WW7i2BIsUgT
         hruA==
X-Gm-Message-State: AOAM530gFefM67mvH9FTTVjiy6oFYCbDR7bqxTqmoFTFaqi0R6lXzIbW
	5DGrQGINb5vKZlboRQ4AtMF2o8AIU/E=
X-Google-Smtp-Source: ABdhPJymvxXtg7BaEGlmPkLVzixYsqTLjvyBK2/huOyAtrqvVlcUHxioYPBqKMNE15tvC2gJcZhteQ==
X-Received: by 2002:aa7:8597:0:b029:142:2501:39ff with SMTP id w23-20020aa785970000b0290142250139ffmr7854556pfn.78.1601245000685;
        Sun, 27 Sep 2020 15:16:40 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0::41a6])
        by smtp.gmail.com with ESMTPSA id 138sm9553916pfu.180.2020.09.27.15.16.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2020 15:16:40 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: add softHSM
Date: Sun, 27 Sep 2020 15:16:37 -0700
Message-Id: <20200927221637.6725-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200927221637.6725-1-akuster808@gmail.com>
References: <20200927221637.6725-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 1d01800..4d98631 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -36,6 +36,7 @@ RDEPENDS_packagegroup-security-utils = "\
     python3-privacyidea \
     python3-fail2ban \
     python3-scapy \
+    softhsm \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
-- 
2.17.1

