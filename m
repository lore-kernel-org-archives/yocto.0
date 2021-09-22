Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.3209.1632329862903382782
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 09:57:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HEmEUTxu;
 spf=pass (domain: gmail.com, ip: 209.85.221.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id d6so8758643wrc.11
        for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 09:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EY3YSybAaXbcmhzL43gJVS1iJDHz+Hnq4qC/3u/FNy4=;
        b=HEmEUTxuKXsjQJZYB9wpOx+QbTbl2wph/hahspAkwUfyvVatBnMCJdKlyDrYlPIXnm
         /7M0rIpMi/5aGmIXVWWKoKS2VKDV3NWDidvMNjWaA939xx1iX/7IA75KSLDzv9pUkfoI
         R56fLxRUbG00uJxkG90nvSmLZnFW/SGVLcukaaRwzPUW73hlORZDgeqZOJpKvbLRu1pe
         8xG2SzLZm++OhfPqL/zuCbK2dsDHUjtvDErvQoN80hPcYHFdUc4Nw25j6pdldKO2c4Vl
         RjYWUM6b2BU2swO7hffy4XX6l4JwRjX9hG/P1rQoWW0/TTQAyE75iqbNUT4k06RKyAec
         0C4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EY3YSybAaXbcmhzL43gJVS1iJDHz+Hnq4qC/3u/FNy4=;
        b=Ml2EgGqyzCaPBN0dvqSKlV2lWbjmAM1Go2LCBShSdwA+eYo/xtXb/ezZS1yiWqwR3n
         VnfpXAvpiMm5yzqMKxZKmvnxPHMotX9zSe0WqnaPGX0Y4MoSZcVUOHVEaoVVwcu31QNF
         WFMXXkDailCYGs0raPsnztxW3kzuw4e4KqDZvUOV9AG41EroeV+Bjct8wFXyINsKUZL7
         /j54YmYSsPJLktU9dhg3RuyaOKJt9cP8IykiGpHEQcjdm/AsutYSPDKMxaMdp7dC82Ld
         moTfB8qDCRasMAAmGWEC70o4hycQauGKdlF1fH/8wCFWRJzlEY1j49q9kfjpcTIUMNLG
         RZbA==
X-Gm-Message-State: AOAM530PyiKX1ZHx8fm8/0pAVcZ4Y7SfT0TFpp2qv/fF8AHjUfd2es62
	n2EaKFRzpxLvBYdJ/APoE0SVM/xLiuo=
X-Google-Smtp-Source: ABdhPJzi7E69a8Fq6PfOLaozRJQXYCPxJ/CNq40a7Z7Ega5KsLjp44vYP2OTzh1Z1p7FKHVCTzHJjA==
X-Received: by 2002:a1c:2c3:: with SMTP id 186mr11640253wmc.43.1632329861040;
        Wed, 22 Sep 2021 09:57:41 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id u13sm2754326wrt.41.2021.09.22.09.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 09:57:40 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>,
	Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] scripts/collect-results: publish everything in tmp/log/oeqa
Date: Wed, 22 Sep 2021 18:57:34 +0200
Message-Id: <20210922165734.412767-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Alexander Kanavin <alex@linutronix.de>

In addition to the testresult json, testimage class now also
provides task logs and qemu console output (splitted into
folders by image name to avoid clutter), which can be useful
for debugging test failures or even checking qemu test runs
when failures did not happen.

Rather than duplicate specific file/folder names, let's copy all
that is available, and define what is published in the testimage
class itself.

[YOCTO #14518]

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
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
2.31.1

