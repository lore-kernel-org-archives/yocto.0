Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.3583.1593716092154936927
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 11:54:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=zMZ+8Ex4;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.169, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f169.google.com with SMTP id x8so10761969plm.10
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 11:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=thFWfxncLzwzjxhsp09a9pUmwCNGGr0C8iu22dzrOwY=;
        b=zMZ+8Ex4f5KZ1eq6sz/h4i/Q1atX+jSWgdOvfDlPmYph1NxdO36MKih4IMMG7ThtMU
         fO7BJtQMcVQT+uyCvvq00oVEHwhqsi5eG87mrHCnVBR4mFdq7wFX337bcNXw9qeyqp7v
         XeRR+q4mPnEFIoGUQWnnMiyQCCBWLiov/oYmA0DJrSuivs0cDRJ+KFNBXssxtY8mdcof
         1X5KIJbrDTYuvtUprOKTFsNbfk/hBsMiaL4BM89KwJagyMY6Ux1EjCs6N2ofJ/gTtn9N
         LUdjKi9IcQFo0tLNrHbRI7VnWwPI421uSkCMhX/HjZlhVBa8DSKumffyDAZlEkhNm4e+
         YScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=thFWfxncLzwzjxhsp09a9pUmwCNGGr0C8iu22dzrOwY=;
        b=CaHgSXY/f6F0bc1EGPfwVJsvI0A8AbANXHA5dA8VFqnZhbemwXWLmbmguc3VW33jHP
         G3QbNgM1k+TjRSUUjmimlJINPvXXUu/Ecg0UUCtAOPzrW+MxuGw3xPysP9WVexu8Ruxo
         UlefLSUZJ2HQT1r6Cxbj3ESib9GtPqITN1LHwf9NGdDTzIwSkG2fc2Eq8nIFcX6mSDYQ
         AgmkBuS2bx6fsuJDN+y7oO9OKbFHMNYF3oXgemLblMzvZFgLUUeHnrcb65IdHQQ9A6nO
         0Bbw6tc0t8Np4fkR7E6i3vMYTBMGZrmS3oPo/3o7pRmLOZDu4NF3GBz5nr0DSFF8MrCV
         xmwQ==
X-Gm-Message-State: AOAM531OdQvtrvCD1fQ4JMFdW0a2q71nD7fB8GhPv3IJxva1wT/MXE49
	uTSoxeVudbCeqZ5kwv6WU0tslYGxIigzLA==
X-Google-Smtp-Source: ABdhPJyuJZ0PJD+wx3THJds9uv2Q+9LOkQQG4R1exJofyxq7e3Gi9raW4em23gxZ/ad0k6TOU/WCpQ==
X-Received: by 2002:a17:90a:5d03:: with SMTP id s3mr19678432pji.47.1593716091258;
        Thu, 02 Jul 2020 11:54:51 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id j16sm9411204pgb.33.2020.07.02.11.54.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 11:54:50 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 5/6] publish-artefacts: Improve sha256 checksum handling
Date: Thu,  2 Jul 2020 08:54:01 -1000
Message-Id: <6b6d272e48b2a90820a9dbca3ccddfdb5c562e3d.1593715874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593715874.git.steve@sakoman.com>
References: <cover.1593715874.git.steve@sakoman.com>

From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>

The existing checksum files were encoding full paths. This patch changes
this to use just the filename which allows relocation of the directories
and is more appropriate for sharing over http.

Signed-off-by: Vineela Tummalapalli <vineela.tummalapalli@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 835ac325a4ed3e421a5a9bfd7c75f552ae2103cf)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/publish-artefacts | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index e773350..6ed922a 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -5,10 +5,14 @@ target=$3
 
 sha256sums(){
     dest=$1
-    for x in `find $dest -maxdepth 5 -type f`; do
-        if [ ${x##*.} != sha256sum ]; then
-            sha256sum $x >> $x.sha256sum
-        fi
+    for x in `find -L $dest -maxdepth 5 -type f`; do
+        for w in $x;do
+            if [ ${w##*.} != sha256sum ]; then
+                shasum=`sha256sum $w | awk '{print $1}'`
+                filename=${w##*/}
+                echo $shasum $filename >> $w.sha256sum
+            fi
+        done
     done
 }
 
-- 
2.17.1

