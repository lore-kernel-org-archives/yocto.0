Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.18599.1592229028013482413
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jun 2020 06:50:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=wzt636yc;
 spf=pass (domain: burtonini.com, ip: 209.85.128.41, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f41.google.com with SMTP id g10so14700855wmh.4
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jun 2020 06:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tyB5HGWT8adybpu1X/FE4YL7fTN6e7qskJzzryq1FAY=;
        b=wzt636ycJHtCUzrqliaUOWscgcQOHxP1KqM8hiMHX0/ewHkhiuXNhEN/V0LGO6/cjL
         bEq9N8FDqT27/MONXChdDrDT1xIr6iD7vNY+Ik9AIqYkOSk9REwEGXKgHd7qhRQG1VTU
         q9otxwhiNur0ZcAs8kImxUDCbqx/pdoSsZ682Bfj8ZeKKjGtgb7pgm7VoG9il2S2TMoJ
         78ZBwcDAvCoyrF1QIeA3VwyaqiLEhtg2g8eQlI0Tn21tF4oys/5+nvWC1aPiPituaR0C
         otjU/eidTdhM1r4IOWhTFyBUJBbTXr1b4Evtdxc2GFY6AsTNe/Bc4KUHZxxj+syFI3Os
         woUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tyB5HGWT8adybpu1X/FE4YL7fTN6e7qskJzzryq1FAY=;
        b=XUQxZxj/JDIZxtKqdxoSKEPslRvC5Epkft+Dyqcnl5yyH9aKEzvJiIf6B7VKZQxQCy
         RUdMQVSZjgTo/iRod3l+Nn/1DqOHM8SExTsVEX7yQ5TOsFPFFaDuSHs4SFdM25+Ap/QC
         IivIjK6vjC3qAfyaf+C91w15pPHgE9veAAfteKMV+5Jxj2ooKKZwytjtd+cllWKBx9jb
         8hjKt4k482N/zx4MROOQuHKE3khySJU18asnO44R2PGVmjoJauQxuYa4MejHETY04hdv
         eanVoYPZaFNaV2MKXnSW6gj1Y+EvtIbYSFcoaIvhKrUHmVUmkumo0DfWf2wFWMOG7q7t
         zw2A==
X-Gm-Message-State: AOAM5302+we20RnBCvaxkdA8i9LjezmT+fiEulHgkzx0+5g9bn1enJg8
	G2HAFc+TYlATPVKXacSn6KJCkFVXFSYxkMxq
X-Google-Smtp-Source: ABdhPJzbF0JRYrEIsoXVLb/YIWRj8Q+oYJ8wpx5LSZLXxAWJyGea8PsCTX16/PQCThY4o8JKNos3Bw==
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr12963332wmj.5.1592229026250;
        Mon, 15 Jun 2020 06:50:26 -0700 (PDT)
Return-Path: <ross@burtonini.com>
Received: from rossb-vm.manchester.arm.com ([213.86.15.71])
        by smtp.gmail.com with ESMTPSA id 104sm25998164wrl.25.2020.06.15.06.50.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 06:50:25 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: generate the buildtools tarballs for aarch64
Date: Mon, 15 Jun 2020 14:50:23 +0100
Message-Id: <20200615135023.1044067-1-ross@burtonini.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ross Burton <ross.burton@intel.com>

---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index a13fbff..538da50 100644
--- a/config.json
+++ b/config.json
@@ -609,7 +609,7 @@
             },
             "step3" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             }
         },
         "build-appliance" : {
-- 
2.26.2

