Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web10.35578.1605538800066191562
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 07:00:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=gHtd2s6k;
 spf=pass (domain: burtonini.com, ip: 209.85.128.68, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f68.google.com with SMTP id 10so24003599wml.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Nov 2020 06:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWioXEjjEuONKqZ4yzo8s0xei5t/zLBdhJqAAw5LKwE=;
        b=gHtd2s6kKLgcda2aqt1ySW5Hx2DQntPE3KK4B51Dz29GXl5gyiOOKrg3ppSYYdWneq
         X7N1Mi9+G3dC81jTzwTCtrphySSwRD3tmXzSLzn6sgYqI7P0736N6h1++mtbB2G1dUy0
         PoIsHlMPK3qnJdLNPHCKwLdAlZIJIqIgMm9gftDRiH8QjNmhUzf5TMaqmeta5EPlMnR4
         nzwwkwU/4J03N5cS3EM8IIuDNH2X684JIk04+HguOLF9VOcBpx/2MCDQOyxq6j8CDQkY
         rBkB/1f4KKR/y3t9VhotKtEJebSxKhEB+6Z8KhwIOHVDG+h7Mbb81vSvrkF+rSTt04Md
         Oz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWioXEjjEuONKqZ4yzo8s0xei5t/zLBdhJqAAw5LKwE=;
        b=ASSJ3nuj1pS0DcYtsay870ixYB+3YAeLiHdaPdNvSCV6TEA1Swzi8PWg21lsJCb9YJ
         +fpAfsmaPomtxD8+ZYNnC5FU5xZfbHo70Z+RYW4Lxlvmm0pIf5vtB48xtQOJhaHp/iIm
         iKtd72PUE5vNReQCG0nX6AyMlDwlQrmrMkJsgAQq5JvkN2x3oZUdvYlI3Tp5v15Eg7Yg
         FiybR+esa4Cx1McVsRdINjl+bAbXjEE5f1hEn/AHqPGPbaoaRx1g/sSraqhzNlQQA9m1
         AE4eSpMkMiylXzSilo3eaaIRt4MWFXwS/oTt4DJTzWPwHXQFYTw+j5oPxkVGr0RumKz0
         V3hQ==
X-Gm-Message-State: AOAM530Dby9+zQbSD7TrENr80v3yWTzLDDJtXWbkE3jeUXVY2xVVNN07
	+N0MXpXdGpk180aoP+uUl+iRQbwBwrcqcuCsR/I=
X-Google-Smtp-Source: ABdhPJwwA+fOBBdYmzqNVvSP702hP4fsBkbly1tFVAKetuqh5WqQbxdfwOmOQpRYdsdbBYSE1r7zrw==
X-Received: by 2002:a7b:c309:: with SMTP id k9mr15536660wmj.14.1605538798237;
        Mon, 16 Nov 2020 06:59:58 -0800 (PST)
Return-Path: <ross@burtonini.com>
Received: from localhost.localdomain (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id x63sm21190150wmb.48.2020.11.16.06.59.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 06:59:57 -0800 (PST)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2 PATCH] config.json: drop redundant meta-kernel mentions
Date: Mon, 16 Nov 2020 14:59:55 +0000
Message-Id: <20201116145955.7393-1-ross@burtonini.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 11a2664..c57260a 100644
--- a/config.json
+++ b/config.json
@@ -275,9 +275,8 @@
             "TEMPLATE" : "ltp-qemu"
         },
         "meta-arm" : {
-            "NEEDREPOS" : ["poky", "meta-arm", "meta-kernel"],
+            "NEEDREPOS" : ["poky", "meta-arm"],
             "ADDLAYER" : [
-                "${BUILDDIR}/../meta-kernel",
                 "${BUILDDIR}/../meta-arm/meta-arm-toolchain",
                 "${BUILDDIR}/../meta-arm/meta-arm",
                 "${BUILDDIR}/../meta-arm/meta-arm-bsp"
-- 
2.24.3 (Apple Git-128)

