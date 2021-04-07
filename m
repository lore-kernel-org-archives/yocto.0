Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web12.14.1617834814610043538
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 15:33:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WX8vz58E;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.214.172, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pl1-f172.google.com with SMTP id v8so10073911plz.10
        for <yocto@lists.yoctoproject.org>; Wed, 07 Apr 2021 15:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eWfsC95hK8h3NUdX5pujnJYzxiWKm2eCTCURJFwgog4=;
        b=WX8vz58EYBXDIiJH36LiU+ZL46PJKNalV7+iQU6lLc30vVKgUAixLUzW7F3ZJ/tqCP
         J8YRUNTrTo4g0J4HF/f1nhCdnyhEnu3jp+WBHYWSP9W0wrbXq8I2GtBjkUrGagpsx+6p
         yLsc/6xnI0pAEd5cnUiHhUNX8ze93DriOwuS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eWfsC95hK8h3NUdX5pujnJYzxiWKm2eCTCURJFwgog4=;
        b=NepEx4LmViGiUuYa2fCQdYMzeUuI+/RlboYyG7LXuhF9nGn94TOu5sumK3FH8+uN6z
         Vv/QdRpwi+VWUXvxRLlT00GLfQ77BOv0EQE0mf/wfyPtc5CF0QLaYy/naQ6nkLPe59Qc
         XM3pr6uhz4ai84/ggG67KKGrQCKDcllptqhRuxsiD8Gi9wdYJVFUbjHP+hWWZRzenkd4
         K2dLjeriCHA7dPunc1LAxt1VOYhCMFYZ4W43Y1Gs+EZaZY9BH9kCzM3pzTMxJTiP3mJY
         ptLBdXDvZ+6iE7G/iRtrS5MseNidZQ6TcwGptnqhGPt+v+p7NxvuTsuLWfAmHd66R3UY
         LPFA==
X-Gm-Message-State: AOAM532r1PvubHy0bTio6rUKQhKjfdgzVASsHOv43Y45rTvOa3XVOFc+
	3hUWGhMeCCYpZXtSMW45wUvv7k7b3Eq1gQ==
X-Google-Smtp-Source: ABdhPJw8O735Gp5gH16E6DPfUWWk6Kp4cHzRxJZcpttyPEEKkJlmKTgrC98JAJeUu5opxQbePnt12Q==
X-Received: by 2002:a17:90a:4615:: with SMTP id w21mr5395990pjg.50.1617834813660;
        Wed, 07 Apr 2021 15:33:33 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id gd13sm6156383pjb.56.2021.04.07.15.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 15:33:33 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>,
	foss@0leil.net,
	nicolas.dechesne@linaro.org
Subject: [PATCH v2 yocto-autobuilder-helper] run-docs-build: build from tags dynamically instead of static list
Date: Wed,  7 Apr 2021 15:31:09 -0700
Message-Id: <20210407223108.116746-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Build Sphinx docs for all versions newer than yocto-3.1.5 inclusive.
Integrate suggestions from Quentin Schulz and Nicolas Dechesne.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/run-docs-build | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 910f03d..52bd567 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -77,13 +77,19 @@ for branch in dunfell gatesgarth hardknott; do
 done
 
 # Yocto Project releases/tags
-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do
-    cd $ypdocs
-    git checkout yocto-$tag
-    make clean
-    make publish
-    mkdir $outputdir/$tag
-    cp -r ./_build/final/* $outputdir/$tag
+v_sphinx='yocto-3.1.5' #This and newer versions have Sphinx docs.
+cd $ypdocs
+for tag in $(git tag --list 'yocto-*'); do
+    first=$(printf '%s\n%s' $tag $v_sphinx | sort --version-sort | head -n1)
+    if [ "$first" = "$v_sphinx" ]; then
+        cd $ypdocs
+        git checkout $tag
+        make clean
+        make publish
+        version=$(echo $tag | cut -c7-)
+        mkdir $outputdir/$version
+        cp -r ./_build/final/* $outputdir/$version
+    fi
 done
 
 # Update switchers.js with the copy from master ypdocs
-- 
2.30.2

