Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.20515.1599740785975038971
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JzuxpjXZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id s13so5447209wmh.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fiGR1FMiS3QvEXLcmsHP97b7qNesmURXWAwO8pPmRvg=;
        b=JzuxpjXZAqOhWWDCYVErEaBbleMg6h+nNEoJKpumpiHNiIGX1Gu4rrxfvW96/V7oTx
         YT+8HVpFiub7i8eedWw7ikCXvVeSDgwl4VIR8hnB9gj2g/DNgEeSrpOsmdu/tKuxAvBk
         2lQyiWy6W1ul4mE9tsNuKMLpplc8k7rp4HvOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fiGR1FMiS3QvEXLcmsHP97b7qNesmURXWAwO8pPmRvg=;
        b=FHw3OLr19bRqsjEXvJ4ZPERZVkADtpwSLnR0137L9wxx2bHZ0+auTwpZRYNxygjcKw
         zhV2V8BgHBgbtXdF8Cg27Th1QczTU93NM5Wn3hZy5FR6eI5tnMxkl5PxIh7MxzdkubVl
         RcUpG5xUtnr44qGIW4iBKSzn2YyqvekvL61e6eQkdCDQvpkd/Z7EaD6O/cIKl8G75rEN
         Gyp/EmcwE1L76oiTFnJ8B9T7CIGgtZwPeAAr+zdlWltJhaI4Qnn/fptAQwEk622DrLz4
         SUI+KnqlWSOhU16Ih0R8m5HTficAOwWjsb8+E5s8R//ffM+DgbUEb33OWTBNXyFMs8y0
         wf5Q==
X-Gm-Message-State: AOAM532q5Z7Zgi46DJ0DKipF4GGN2f56kKoFTZR7xRnGoi2WkurQCb4T
	NLI42x+7FxJw2Cz0pN885ELlStKwYJziyg==
X-Google-Smtp-Source: ABdhPJzu9h/jAzGAjo6YX8jT+94zxaX3/vOoylTo1bgCb0ABkbr0LBStmk8QMrfE+eXohz2zBpQFFA==
X-Received: by 2002:a1c:80cd:: with SMTP id b196mr8337071wmd.104.1599740784306;
        Thu, 10 Sep 2020 05:26:24 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:23 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>,
	Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][warrior 32/41] publish-artefacts: Improve sha256 checksum handling
Date: Thu, 10 Sep 2020 13:25:44 +0100
Message-Id: <20200910122553.2040430-32-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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
index 2611cc8..d5cf86c 100755
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

