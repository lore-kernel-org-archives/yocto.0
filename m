Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.6485.1599511860326112744
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IDWVc8FM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id z9so15230506wmk.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OXLip5Qcdv6uv2gx6j1qMLGZm3kRNVYvz5wvoArR0pk=;
        b=IDWVc8FMQ238GRtzmoj1+mBhMfLNIRgp8RVVAPYMZvnDWMFjaONQOSxSurKHTws+X3
         Eebt20+ueOImBzogb9KBOFyqnA/oV/iajKbtKKnyTdr5IDfJzezRYTfxZsi7jH6GkfBu
         Mj2PO58ntQvsJHhIoCg/xKYU3GFEyVJ8H4uXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OXLip5Qcdv6uv2gx6j1qMLGZm3kRNVYvz5wvoArR0pk=;
        b=nhf+OghW3eej/b3m8cuUK7z+3Y7T9/2A0Voep82yMASGGiXTgDDQ0/KV4dpL1R2FIt
         3lO+/mwmBsCHiqUGUnGSrSXyWYHmbzkVLvqS2VJJ6+00kBOtQcLjmI5f+dB4qL7rJ+GS
         wJc1ThelWsc7S4CbdxHhn2MfYTyaOQHD2JdNoksC/4V6GawU50QVEcrclIGrTfl82heP
         /asTRE6G3wG+WvKjqZPauNUGJw7yATAwdPFH0ynbdHscv4Mn77wqmVLYOLe/SgBUu6n5
         iXR/JDFXju5lYdKfNQev19A7OHdVHOEeVbSJ5SKzebIcoToinQNYY7F7fE8JSwFiPGM/
         xTTQ==
X-Gm-Message-State: AOAM532+G+duDoVb2Y9mIKHvdlRveffM95cMZukaVBwAUwm9BrrgyQhe
	fGcM6gINNIH9x4nhJ1n4zX2FUamLEpjwwA==
X-Google-Smtp-Source: ABdhPJzucu7Ytf4xvc+TWZ6GNq2MbTyE5ThBFZSEXXYznglCG7CJ+EPB5Xho/QYiFE5j+7+68TUTkw==
X-Received: by 2002:a1c:9a57:: with SMTP id c84mr1033286wme.136.1599511858653;
        Mon, 07 Sep 2020 13:50:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:57 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>,
	Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][zeus 23/32] publish-artefacts: Improve sha256 checksum handling
Date: Mon,  7 Sep 2020 21:50:25 +0100
Message-Id: <20200907205034.1941516-24-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
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
index a2625d7..8c6653c 100755
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

