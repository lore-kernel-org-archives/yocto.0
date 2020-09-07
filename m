Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.6492.1599511866611163777
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KNnPQxOA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id t10so17000099wrv.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=nIsMJF2IFBNpw0qfRnH6HKoVQb80zyE66UuvWsAxYjc=;
        b=KNnPQxOACZMC42vOpDooOva6LFEzqDliaWK0P8a66aaKm1+j1uu5Uh9epdDrt+SKvM
         nq9fRmIh4tH6K7W7vZ27NaorNnv1R5txtBJqXZo9CLYz/6qdBRDDfyb36Dgg0SaJ22xT
         KPIjguJWIaA8tE8cfW1crwAn3D4OgguWrjYm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nIsMJF2IFBNpw0qfRnH6HKoVQb80zyE66UuvWsAxYjc=;
        b=lDi1gAnAVfOYBV5bQhCMZkXOgo1hxZ5wpi3Gl/rNq+RclF+2ihZiK/ojFRwpho/Mpe
         6ws3NTMqlBIFzIZ3v042jJ2E2hqS0X49HEu+/BbdyR4MwgHBAUlbVKS+F6U8uVR4I9/h
         UIMVci+COxbndoetvfkJwi7ZnEYrkDoe+NwZOmd54rAGjZ2PlfL93QoeSnEjXBUmJ7SV
         UDZwtr98gIFIxcHOKdQBR03OINBGzccmZSxfs2vsLVojZPMwteVIN1rIwv1my3loheqJ
         55VJgI2LhmECAkdl+pDECXsI607c6JO7Uz09NGdPXrMw7ikgNAeKyjrDLIGq+L49gfUH
         8aEg==
X-Gm-Message-State: AOAM533uv/7Q8LRVHdFoIPca2RWZFP5HHglp6NCu8yhdBnTFDz8EEfgi
	GMROCvKVqT24sjxzGqyWSMlym8N3TRu1+w==
X-Google-Smtp-Source: ABdhPJzFH0IJN4upVkzyApX5kA+L9qDdsxkA2rpzU0TzrU4PbIgAFksAxJMFh/2cX1dlxZKOigF/NA==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr25132363wrn.57.1599511864828;
        Mon, 07 Sep 2020 13:51:04 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.51.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:04 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 29/32] config.json: Build buildtools-extended-tarball for x86_64 and aarch64
Date: Mon,  7 Sep 2020 21:50:31 +0100
Message-Id: <20200907205034.1941516-30-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 2218891..ab6943b 100644
--- a/config.json
+++ b/config.json
@@ -595,7 +595,7 @@
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "buildtools-tarball uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             },
             "step2" : {
                 "SDKMACHINE" : "i686",
@@ -603,7 +603,7 @@
             },
             "step3" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             }
         },
         "build-appliance" : {
-- 
2.25.1

