Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.2217.1617749979704339545
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 15:59:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Z+wQJEW6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.180, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f180.google.com with SMTP id i190so3269417pfc.12
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 15:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2T/H9c56c8PgBtj3OLjcaQsSMe1O0yS6v9eBitaeM+8=;
        b=Z+wQJEW6ypKpSpIlRODwVKSLz9EER7uE5J0F9qOilUYpYqEd4daLW24eljOcWzVse7
         gq2kGLo0BY2Q6n+bO5jX3kHbQqoejDlFQKp2EV37pv0Bac2j2v80UmY438CVbHk7Lkml
         bTaJY2MU7EUjhiCmBJRTC3T2/bWZ6GXkHQWmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2T/H9c56c8PgBtj3OLjcaQsSMe1O0yS6v9eBitaeM+8=;
        b=BZvrKiKCadtg/FCCulOH1EOuSp257ptnFpR1ZZQ/oPJ+0AnqfLVS1XoY7Y26WteVyW
         xkK/vBY7AEnpmpr+m28NkMhaf6omTn4N/FFhR0IOUqDdbJKo5CZOVmlPflM5sHPyuruz
         AiVGCPyr4nT84WT+0rcYnYro0/+kagxScK3yoJWj7Jrf8IA4nf9SLtreKUvD2pXhhyQe
         sikiGKRUJIIHEy5P0BOJOMJG+CQtuTBjdLlaN8rYwxg7Cj6YgfsjczVbR8T6bTR5lhuv
         w7SgSMAWxla2om4L3jZfZdYPmtLuNPB1G1bC/o1W0WN15aO09rOWbc3YG2r7WI3/AWJH
         xcpg==
X-Gm-Message-State: AOAM532vLtOcXfUE/6Hc2Ug5bmMaGQJnTw67B2MTMHrojgQIFzbbp3XR
	pIK1ZNJWPPhOnZBy/59D8MtZK7A49Aj1/A==
X-Google-Smtp-Source: ABdhPJx4iHZfycr/yCRXbiVojlQctnO87HFOjv2lxGwo9RDpNM3ppJkQUZ47C3tdWBh+gyRF2wuHUg==
X-Received: by 2002:aa7:8187:0:b029:213:d43b:4782 with SMTP id g7-20020aa781870000b0290213d43b4782mr353387pfi.26.1617749978655;
        Tue, 06 Apr 2021 15:59:38 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id fu11sm3384422pjb.35.2021.04.06.15.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 15:59:38 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>,
	nicolas.dechesne@linaro.org
Subject: [PATCH yocto-autobuilder-helper] run-docs-build: build from tags dynamically instead of static list
Date: Tue,  6 Apr 2021 15:58:20 -0700
Message-Id: <20210406225819.37683-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All new releases are Sphinx ready so we exclude old tags and build for
all the rest.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/run-docs-build | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 910f03d..13df34a 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -7,6 +7,7 @@ ypdocs=$2/documentation/
 bbdocs=$3/doc/
 docs_buildtools=/srv/autobuilder/autobuilder.yoctoproject.org/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2+snapshot-20201105.sh
 outputdir=$builddir/output
+excluded_tags="yocto-3.1.4 yocto-3.1.3 yocto-3.1.2 yocto-3.1.1 yocto-3.1 yocto-3.0.1 yocto-3.0 yocto-2.6.4 yocto-2.6.3 yocto-2.7.1 yocto-2.6.2 yocto-2.7 yocto-2.6.1 yocto-2.6 yocto-2.5.2 yocto-2.5.1 yocto-2.4.4 yocto-2.4.3 yocto-2.5 yocto-2.3.4 yocto-1.0.2 yocto-1.1.2 yocto-1.2.2 yocto-1.2.1 yocto-1.3 yocto-1.3.1 yocto-1.3.2 yocto-1.4.3 yocto-1.4.2 yocto-1.4.1 yocto-1.4 yocto-2.1.3 yocto-2.4.2 yocto-2.1.1 yocto-2.1.2 yocto-2.0.3 yocto-1.8.2 yocto-2.2.3 yocto-2.4.1 yocto-2.3.3 yocto-2.3.2 yocto-2.4 yocto-2.2.2 yocto-2.3.1 yocto-2.3 yocto-2.2.1 yocto-2.0.2 yocto-2.2 yocto-2.1 yocto-2.0.1 yocto-2.0 yocto-1.8.1 yocto-1.7.3 yocto-1.6.3 yocto-1.7.2 yocto-1.8 yocto-1.5.1"
 
 
 cd $builddir
@@ -77,13 +78,18 @@ for branch in dunfell gatesgarth hardknott; do
 done
 
 # Yocto Project releases/tags
-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do
+cd $ypdocs
+for tag in $(git tag -l  |grep 'yocto-' |sort); do
+    if [[ $excluded_tags =~ $tag ]]; then
+        continue
+    fi
     cd $ypdocs
-    git checkout yocto-$tag
+    git checkout $tag
     make clean
     make publish
-    mkdir $outputdir/$tag
-    cp -r ./_build/final/* $outputdir/$tag
+    version=$(echo $tag | cut -c7-)
+    mkdir $outputdir/$version
+    cp -r ./_build/final/* $outputdir/$version
 done
 
 # Update switchers.js with the copy from master ypdocs
-- 
2.30.2

