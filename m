Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.15036.1629897962647308747
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Aug 2021 06:26:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kurAaN2P;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: rybczynska@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id i6so12709255wrv.2
        for <yocto@lists.yoctoproject.org>; Wed, 25 Aug 2021 06:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rNFGHr0VoZL0Ra53WBoJ0ToVDrwJp4SVfxZ+zM6+zO4=;
        b=kurAaN2PlAqVI8VQy4uqPuhHDQe/rWrB1YbKK8Gh7be0dtim+jzXNkMmSduYtnDbJn
         ZK16E+ijce2r1jdVI+uT1rJIysIMK2xFT96k1DZ8u1k9nr78/0BPSfocA/tP6dYpINCh
         GvS1WN4NNu3BZ6rpzuvTlZVaE9KmIoHmPlvhxrQ0G87s2vFR/y6ekIXIYBW50yni+l8M
         X0zvjWzzmcbl6qOkiLGF7adTDtB/mgmfkb5f3ceuS/uSXObY8pJSEjEWzD97n5hhBTXR
         bDfunqMhMf2R8F51djgfltLzwWruYkqMpNJ67j5eiOVNeQvNNPM5r6lUvqJYK69dOy57
         +Hvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rNFGHr0VoZL0Ra53WBoJ0ToVDrwJp4SVfxZ+zM6+zO4=;
        b=j86J/P/ZSs66R/cVcjCp/4bmy2X6ixAjebahjCByiUjQaODTmKfMuwzy6K1iG0vRSh
         fvI0Us8ICwXSygoVwvcK0js9hIYNXe5hbImyTf4K24vygvLGX8Pqrpi3UGbXRqS4Wos+
         /5ASfbo/u2MES40lZY4XPu6qzjmq2uvTCDSrj8CgIC4LK/u2ZscU3wb3QTS2ECtpsXcE
         Ms+TJpNmh+Gnp8HQZHYeMx0sINxjbtoLT30TkJxXG701qFWYO3r1Cy8M8Pi7pmwEQxek
         bwTADt3MN1uFgJQgzqHUl40ikCuVepxfCj9s9E9Qsnbc7jpHoI/3XRrxYGDgZcFQaX3l
         oePg==
X-Gm-Message-State: AOAM531rKYBb1t0u+vVCWYpJrqS18hT17C3hIWar+U8gbicAyCtaufGH
	56o8VNpBQuJuFWd/0x6rqW2lj7Do2WI=
X-Google-Smtp-Source: ABdhPJzoDCby4tHLCg88M0z7t5/ZL9xph7oq/uPjgb/3rVIxBk6Xeo7b96L2/9bnLwf8z+wCK1LXRQ==
X-Received: by 2002:adf:b318:: with SMTP id j24mr22179491wrd.84.1629897960670;
        Wed, 25 Aug 2021 06:26:00 -0700 (PDT)
Return-Path: <rybczynska@gmail.com>
Received: from localhost.localdomain ([80.215.178.202])
        by smtp.gmail.com with ESMTPSA id m12sm4827056wrq.29.2021.08.25.06.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:25:59 -0700 (PDT)
From: "Marta Rybczynska" <rybczynska@gmail.com>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Marta Rybczynska <rybczynska@gmail.com>
Subject: [meta-tpm][PATCH v2] README: fix mailing lists and a typo
Date: Wed, 25 Aug 2021 15:25:43 +0200
Message-Id: <20210825132543.24390-1-rybczynska@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A number of typo fixes:
- tmp->tpm in the DISTRO_FEATURES
- update the mailing list address as it was out of date
- update the distro name in the subject

Signed-off-by: Marta Rybczynska <rybczynska@gmail.com>
---
 meta-tpm/README | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-tpm/README b/meta-tpm/README
index 4441dd2..2b32a9f 100644
--- a/meta-tpm/README
+++ b/meta-tpm/README
@@ -5,7 +5,7 @@ The bbappend files for some recipes (e.g. linux-yocto) in this layer need
 to have 'tpm' in DISTRO_FEATURES to have effect.
 To enable them, add in configuration file the following line.
 
-  DISTRO_FEATURES:append = " tmp"
+  DISTRO_FEATURES:append = " tpm"
 
 If meta-tpm is included, but tpm is not enabled as a
 distro feature a warning is printed at parse time:
@@ -57,15 +57,15 @@ other layers needed. e.g.:
 Maintenance
 -----------
 
-Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-tpm][PATCH'
 
 These values can be set as defaults for this repository:
 
-$ git config sendemail.to yocto@yoctoproject.org
-$ git config format.subjectPrefix meta-security][PATCH
+$ git config sendemail.to yocto@lists.yoctoproject.org
+$ git config format.subjectPrefix meta-tpm][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
 
-- 
2.30.2

