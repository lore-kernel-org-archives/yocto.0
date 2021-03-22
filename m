Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web09.12913.1616420710282293081
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 06:45:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=1eHx8zfl;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.178, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f178.google.com with SMTP id g15so10532665qkl.4
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 06:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rJfYviGEUAhC9SEr3j9I4o0elXFSuu8c5lTPCJ1MMSU=;
        b=1eHx8zflFiWf3dw0xvA/8Nmr+/EGaPfuuOJal2TBQOgNjbPrO1K3tBNUBTf47/+p52
         jqJ9Y54xZCKUaxRl5D9zcFpdtPZB9e3apBu9Lt3js0IJQ/wr9fX6EkteIzo75ZujbSM/
         T6/7fEe96cKeOPoX/oDHCiqD2WnXnNhAPU9u9sWOmeuVy6qL3+Hk1juDCofmcqLnFPjS
         3lEE+1LpgpgdDNbhwkuAEv1gRK8OGK4GOG24SL6gD1sPziqIYwYchbm1MVoBFSY3rfxg
         +nsqXeq48uWxlg88JcWGAoZp8hjgwAfJxvUElzRnZA6SENi7BT9MNXoD4BCxGfO/SCY6
         YblQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rJfYviGEUAhC9SEr3j9I4o0elXFSuu8c5lTPCJ1MMSU=;
        b=KqllMvW10QwEJCH2ObIUvKEtpuQgwEkqGJquaS4njIkji+nEbDxEl2jBFI0UlrWvcF
         g5t2aNGMj82YFz0LdgRWqXghMPVa70u49fodXkMiC6ETodHaIedmRpskT7JExCR14a54
         DB2WCDFEm6OpuBXW7wkN4f4cdRbZPxM0yTJvSr+Z481qGVpkdq0PYD/F9L23GMkQcgrW
         i1w9tRRa8EDslyq9vzw+CzKQGJadOGjthGBPAYSNgi8lQX9VpjBEUlI04BWce2wLcUUK
         HSlQR7gV2CJ1iyXVNzqrTshAQlo+aY/Vrf7DQzsoKSs949fPcBCCF7hEM1aq27udUU5F
         L2wg==
X-Gm-Message-State: AOAM531ZEt+bSyQ1RGXuD5+lxusSIZ8rbp31RRq6i6qfJICI9czDFqgC
	0Fbv13viChSGQ32kicG+dpS0GTW1u4CEIA==
X-Google-Smtp-Source: ABdhPJw7mtuUGac2tEtlPq0H9hds8Y0Xvkf6KHcjH5FfS87QkuSnAHSBinuSZtL8UbzvDsJRSki3XQ==
X-Received: by 2002:a05:620a:11a4:: with SMTP id c4mr41763qkk.313.1616420709150;
        Mon, 22 Mar 2021 06:45:09 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([2605:a601:a601:f800:992e:47e5:5753:3d76])
        by smtp.gmail.com with ESMTPSA id g2sm9121226qtu.0.2021.03.22.06.45.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 06:45:08 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] layer.conf: add hardknott compatibility
Date: Mon, 22 Mar 2021 09:45:08 -0400
Message-Id: <20210322134508.4707-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index f9de654ad9f4..8e6b15d18d52 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_zephyr = "1"
 
 LAYERDEPENDS_zephyr = "core meta-python"
 
-LAYERSERIES_COMPAT_zephyr = "dunfell gatesgarth"
+LAYERSERIES_COMPAT_zephyr = "dunfell gatesgarth hardknott"
-- 
2.20.1

