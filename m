Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE7C25B45
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 15:44:02 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.124408.1698075842038023223
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 08:44:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GV5TZt/e;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4083dbc43cfso25347445e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 08:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698075840; x=1698680640; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YVhpovKu+j/bmDatsNStMwQ5fkAJ+Oq4LlobgizqHiA=;
        b=GV5TZt/eUdLVrjqR6HAz2BfBk36UjxeeA61XwI4HW++8nWC2i9CvHlBEc3hvG+/G4f
         0NQNhqIlC+ysJpt9E98F3QxCMqYc7PfUfMfQ1OhhuffqQRT2eTgLyQ4pmkoaunrS9cQV
         ai/Ia2BMep4IEfv7MFLnLu8RX6vVee+gmUd2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698075840; x=1698680640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YVhpovKu+j/bmDatsNStMwQ5fkAJ+Oq4LlobgizqHiA=;
        b=qAzPSczKnGHLe5iyP6v3gazwd3mQ9Sgzxw4iHcjZz+QK0C3OEt6mt/Ozm/djhikoZd
         8VSk7g5kPjatmPt3nn/IbPI0aoqPj7z4VZEW/n2paCe0/p88WsTd969YkTsGK6+CPQrj
         zDf8CJqHyo7KeoGTZmkvvvOZY7Qf8DwP24a3Uqel2ayC9W351ANNP5B9ZBrkndjH5aHM
         Uk2k4PxwacEr/swlEN3gfTQCXu/VNkgsJeBa8va1P9UMRzltcqbMBAAm7asQqir53LDp
         G4CVFnGBhD56FrpZVgR3Wldi3bGkwdHVatjuoO0K6HMjXxjbtbJ57gJOKG9jltuS1qPk
         4okQ==
X-Gm-Message-State: AOJu0YxXfqixaIJCWYHtUb10qPjyZsjQ4GR/a5y9bPHPLL0MH7el0HDL
	x7X/x6tbb6sJFDhMF5iSpWwyGj68TlssTmMIG3Y=
X-Google-Smtp-Source: AGHT+IEgCGuTKB/zXauaednDgWwqBYe4L8+suDev1VA8+mGlrg44Ex22/WdFdZOLPelPO47ZxrVtwA==
X-Received: by 2002:a05:600c:4fc7:b0:407:5b54:bb10 with SMTP id o7-20020a05600c4fc700b004075b54bb10mr7725745wmq.8.1698075840334;
        Mon, 23 Oct 2023 08:44:00 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3e73:a41c:6787:e5d4])
        by smtp.gmail.com with ESMTPSA id ay20-20020a05600c1e1400b00407460234f9sm9745346wmb.21.2023.10.23.08.43.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 08:43:59 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 5/5] scripts/run-cvecheck: Remove branch iteration
Date: Mon, 23 Oct 2023 16:43:56 +0100
Message-Id: <20231023154356.1145934-5-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
References: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 15:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61458

Rather than running multiple checkouts, lets move this to the autobuilder
to handle and have it trigger the builds with the right checkouts.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-cvecheck | 52 ++++++++++++++++++++------------------------
 1 file changed, 23 insertions(+), 29 deletions(-)

diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
index d48fd68..6294fe6 100755
--- a/scripts/run-cvecheck
+++ b/scripts/run-cvecheck
@@ -22,34 +22,28 @@ if [ ! -d $RESULTSDIR ]; then
     mkdir $RESULTSDIR
 fi
 
-for branch in master mickledore langdale kirkstone dunfell; do
-    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$branch/
-    git -C $PARENTDIR reset origin/$branch --hard
-    rm conf/local.conf
-    rm conf/bblayers.conf
-    rm -f conf/templateconf.cfg
-    rm tmp/ -rf
-    unset BB_ENV_PASSTHROUGH_ADDITIONS
-    unset BB_ENV_EXTRAWHITE
-    cd ..
-    . oe-init-build-env build
-    bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclusions.inc
-    if [ -e tmp/log/cve/cve-summary.json ]; then
-        git -C $PARENTDIR/yocto-metrics rm cve-check/$branch/*.json
-        mkdir -p $PARENTDIR/yocto-metrics/cve-check/$branch
-        cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$branch/$TIMESTAMP.json
-        git -C $PARENTDIR/yocto-metrics add cve-check/$branch/$TIMESTAMP.json
-        git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new CVE data for branch $branch"
-        git -C $PARENTDIR/yocto-metrics push
-        $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-status-$branch.txt
-    fi
-done
+mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH/
+cd ..
+. oe-init-build-env build
+bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclusions.inc
+if [ -e tmp/log/cve/cve-summary.json ]; then
+    git -C $PARENTDIR/yocto-metrics rm cve-check/$BRANCH/*.json
+    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH
+    cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$BRANCH/$TIMESTAMP.json
+    git -C $PARENTDIR/yocto-metrics add cve-check/$BRANCH/$TIMESTAMP.json
+    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new CVE data for branch $BRANCH"
+    git -C $PARENTDIR/yocto-metrics push
+    $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-status-$BRANCH.txt
+fi
+
+if [ "$BRANCH" = "master" ]; then
+    mkdir -p $PARENTDIR/yocto-metrics/cve-check/
+    $OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-count-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
+    git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
+    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CVE counts"
+    git -C $PARENTDIR/yocto-metrics push
 
-mkdir -p $PARENTDIR/yocto-metrics/cve-check/
-$OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-count-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
-git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
-git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CVE counts"
-git -C $PARENTDIR/yocto-metrics push
+    cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
+    cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDIR
+fi
 
-cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
-cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDIR
-- 
2.39.2


