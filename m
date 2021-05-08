Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web08.9734.1620498333668720131
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 May 2021 11:25:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kFBDR1kE;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id k3-20020a17090ad083b0290155b934a295so7330645pju.2
        for <yocto@lists.yoctoproject.org>; Sat, 08 May 2021 11:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=50Nlyfb6UcSFsgapCz4qXdB64w76zk+FpRCoXtkME6w=;
        b=kFBDR1kEsfc9++yehSFW5Srz1HFaXrIQjtUl7FZOqxGnQMPQdH6uZp4Jj+bSsKkDSx
         qtf2b/QE1oJlgPNfHJ8JFDW8CEqQhPfifjGVD5CrtWriI5k9Ix7l9fptg2ayxTwJL4Jq
         8d4lwjVq/J5Npjm4tlDXCsgxiZCPZ2VozbNbJzs8f+r4Nf606/sWzvvNQuIPLdh1lKVm
         AZZXW7iSYN1/YSJcZpL4c7WydlAE9kwRVEfGCaYNyXCkTWBh8PVDcvDxf4K8dQ+FYNBr
         vTLawieBSunNG0O9hYdjnZCgCMblVcAxZT/m6EFcYIqZmmC7foJltFL0axKpbPdgP0vr
         lZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=50Nlyfb6UcSFsgapCz4qXdB64w76zk+FpRCoXtkME6w=;
        b=b13arS5P/MYqqkZXTxh7K7/92vtXmrauvoZJ8vN/kZKbpomkibfb8p720plQP6cExD
         lzAFYFLcsVw/ngvOKuTxm2vRne9xeLw9OfFBYbLHACXuXvxa+JkuEj4ylekG6KHkodP9
         /uD4pXv8t0tEd99Ski7d2mHR1ER8cWKB6XHS/aM1eWA6ud3L/N/JfHf54Ak75NCZ19f9
         TAKWvWqdHENdGPNEXEwoRZz98+Rzis+HZD1LAU8dTuJkR54qqSEG323hUTiKG/T/EkO0
         bSHycsiZ7LO/FJjBHtv/Xha7t5PXqXkZ96f10Ei6nZEl2SJgLXVFGbdIPIGVO4VZCVbM
         3Eaw==
X-Gm-Message-State: AOAM531vQum2d5mnagYo6ntFYPnQHr0zyfFxYQlK6g/7RyxCNVI325t7
	0gh3vAs7LdFMzWnOmNpo/gTk/Ax8N74UKg==
X-Google-Smtp-Source: ABdhPJyipA7bedn1Cl5WEz54rRxEjKq59swnP6enZEkrFQWtS3izV2ExEBtMXQSOrN57hBzrCoT6qw==
X-Received: by 2002:a17:90b:958:: with SMTP id dw24mr29518324pjb.185.1620498332964;
        Sat, 08 May 2021 11:25:32 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id p1sm7342108pfp.137.2021.05.08.11.25.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 May 2021 11:25:32 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] tripwire: Blacklist pkg, upstream seems abandond
Date: Sat,  8 May 2021 18:25:30 +0000
Message-Id: <20210508182531.1549666-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Last update was 2018. Does not build with gcc11.
There are other actively maintained IDS options.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 --
 recipes-ids/tripwire/tripwire_2.4.3.7.bb                | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index a6142a8..6d2dd7c 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -68,7 +68,6 @@ RDEPENDS_packagegroup-security-hardening = " \
 
 SUMMARY_packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS_packagegroup-security-ids = " \
-    tripwire \
     samhain-standalone \
     ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata",d)} \
     "
@@ -89,7 +88,6 @@ RDEPENDS_packagegroup-meta-security-ptest-packages = "\
     libseccomp-ptest \
     python3-scapy-ptest \
     suricata-ptest \
-    tripwire-ptest \
     python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
 "
diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
index 4f50bff..36e5d00 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -73,3 +73,5 @@ FILES_${PN}-ptest += "${PTEST_PATH}/tests "
 
 RDEPENDS_${PN} += " perl nano msmtp cronie"
 RDEPENDS_${PN}-ptest = " perl lib-perl perl-modules "
+
+PNBLACKLIST[tripwire] ?= "Upsteram project appears to be abondoned, fails to build with gcc11"
-- 
2.25.1

