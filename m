Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.22161.1599744671304779050
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=J81nMCl1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id w5so6699734wrp.8
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5TKBouHr4s/H0POXx5IzZy63NeBVK1c1+u2RnQPETRE=;
        b=J81nMCl1GmhhyTHKUD/RPu32cS8Dgpv3bpzqN1rhULSb8ONhwKQuYly8kTPpvQ7uj1
         wCrPVXE1Ark+Hu22VX1BqOJPfV9Z4q/DM79DYONHf0LO5c1o0HiHcY4KvSKj1kkVxgYA
         EGZbsfUqm43Ld1OAUFLck581h+cTs1lv4JPFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5TKBouHr4s/H0POXx5IzZy63NeBVK1c1+u2RnQPETRE=;
        b=SXgaDknTCuBiJBkGOAuMxL3c6VFC2c15zvNOMP/8nQDjElJqjsrDolJ077aQneAqr9
         uJtkSqrNOMslXTHO8RmCaSj7EAle8GkJ35eT/BvRcj0UjaubzcLTdMvqEibqihPG+kwC
         d2S/r1hwKB+vGsuLgaUxQuZoTGytjPI2hqN4QbAnid1o4lS14yuJXAotpe8o1rsmnywI
         Pa4vZXZo4BiT7AnMwYW3U7SG2jtlRuG0eBEQwF7xcQupzN6cvRtG2dSvkQHL/07z7eyv
         OUjf774xWLmjkX8t8XfkxC6O6lnEWU6f1K4l9doUVYcOimIFAo0Pd0xJsV87nL5a9IGA
         Gc7g==
X-Gm-Message-State: AOAM532CIFcKwvadENoSXXDpwpdC9JsOlbfqQyY9Tlpyqd1e/7549NU2
	uINvQ+RWhoogSa2d3lP2CKbxOSHl8PJYKA==
X-Google-Smtp-Source: ABdhPJxobEnvsrYrsz+RUVdjghNbQutkplvoaIvgsXmOqeoRyY95bSRNEKlng5mhnyUdvOiM0jOJDA==
X-Received: by 2002:a5d:5042:: with SMTP id h2mr9102790wrt.409.1599744669518;
        Thu, 10 Sep 2020 06:31:09 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:08 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>,
	Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][thud 31/40] publish-artefacts: Improve sha256 checksum handling
Date: Thu, 10 Sep 2020 14:30:26 +0100
Message-Id: <20200910133035.2044355-31-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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
index 542e3d8..20f39e6 100755
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
2.25.1

