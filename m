Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web08.12750.1631885886141261682
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 06:38:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QpmDIJ1C;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id t8so15250992wrq.4
        for <yocto@lists.yoctoproject.org>; Fri, 17 Sep 2021 06:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ybgShiccPb1UMOKq1r3lrfNj3ARwhFqJDAG/BG0MlvA=;
        b=QpmDIJ1CCrAbrwJQPe+5Vn0c10dni2T9xnhh2M3AbjZWhu+h/QzPP90UKFHxOO7qU4
         rGn2/imcFWyr/nJoNwYVqnqmcuvGTgLvx7Kq5Y0i1bWahWhcrpPhTVCAkMQ8qJls8cHy
         IkydSTmQBs/9nE/sJ/zyWPQ64ZM0c7GPIMsu0R70sopx/K7HCtB8WlLnk5k8jz7Kuwqq
         MSJv57wg7VRs18WqX+VWcfoZc6pXF5OcOElGRQwrFWU8lHBZAwCPO+Tvn++E8YL6b/Sr
         GobVO/4lDNbb31nt3VHePAACxMaorn2J/z5UvohN0AbEvMDeLtF/k3GAk1moGu6oRQll
         jLow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ybgShiccPb1UMOKq1r3lrfNj3ARwhFqJDAG/BG0MlvA=;
        b=Z/1ztcCmcOV/H04KaA5MhZ7/1IGtrCQK3rquj5fTSE+nAyY25KcZmXYtXaPqQwpJVX
         RhPmY+RnkKz50dOZpY75WyXCTjKO3tPc7B8TKVZpcHlm4KhhSquRNTSTQCX6bfvtDKFC
         j6mxbsXKalh0nW50tPemI1ZSyqQrbbehpGXz26Sy7zRrhVMdaYpXWCfNDTinu0qkUR5a
         uy0j4vSRatYEry9yc1SarGrFF+eZ/IUNRMG4wJ9POH0DtkXMaSEyMPzUEQkI9q5kJsYE
         HKO7B5pmioKw0qUqHPIceDXFNHNz51ir1KBjg+RMFojYs54y3gX9xPWXCv12nFyDVrJl
         da6A==
X-Gm-Message-State: AOAM533NsF64e91EdWb/EdFsZEp+vksG/bfNLF+gS49UdepeCF81vBe/
	FRCQiOCrjY8JfB6qv5KxSfmOxPcjA08=
X-Google-Smtp-Source: ABdhPJzOWnVn3Ig/BUpF9O+98f6CcDCJU/SMfxPRXnjVB7NNH/gWIk1qWmBUNPt8O8rdDIAfG4VI2g==
X-Received: by 2002:adf:e5c2:: with SMTP id a2mr12070291wrn.251.1631885884562;
        Fri, 17 Sep 2021 06:38:04 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from nereus.lab.linutronix.de. (b2b-109-90-143-203.unitymedia.biz. [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id y64sm4028321wmc.38.2021.09.17.06.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 06:38:04 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH yocto-autobuilder-helper] scripts/collect-results: copy everything out of tmp/log/oeqa
Date: Fri, 17 Sep 2021 15:38:00 +0200
Message-Id: <20210917133800.2436736-1-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are additional logs there (such as task log or qemu
console output), which can be useful for debugging test failures.

[YOCTO #14518]

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 scripts/collect-results | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/scripts/collect-results b/scripts/collect-results
index 93834d6..3663330 100755
--- a/scripts/collect-results
+++ b/scripts/collect-results
@@ -3,11 +3,9 @@ WORKDIR=$1
 DEST=$2
 target=$3
 
-RESFILE=$WORKDIR/tmp/log/oeqa/testresults.json 
-
-if [ -e $RESFILE ]; then
-    mkdir -p $DEST/$target
-    cp $WORKDIR/tmp/log/oeqa/testresults.json  $DEST/$target/
+mkdir -p $DEST
+if [ -e $WORKDIR/tmp/log/oeqa/ ]; then
+    cp -rf $WORKDIR/tmp/log/oeqa/ $DEST/$target
 fi
 
 if [ -e $WORKDIR/buildhistory ]; then
-- 
2.20.1

