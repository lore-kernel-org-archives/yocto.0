Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.1844.1613693315138255970
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 16:08:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aP82E9Sp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id 7so4886078wrz.0
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 16:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n5Zxjd3bjEuu5sY0I09v3hBGnY++oo21mb0FTiTDL6Q=;
        b=aP82E9Spi/NLIkPqTw04KoNe3eO6kvndDWSjg5Wn3K6J3KlkcHnwhzPxyjodfXnKTd
         28sTNmQ7MwsjdHYj2eNq0woNyUENjDplDcOpqxFd6n6Url6y18MnNaq0ny7gx1aaMLY+
         qdSX4xrutjVmGn1LIvH5Rl2Zd7Bgs1Y/l72jw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n5Zxjd3bjEuu5sY0I09v3hBGnY++oo21mb0FTiTDL6Q=;
        b=qjd+ismUn277ShAfOebjfsQT5YOkJ98g7nJwdhfQL5nhU4eLoOHbHntqCmY1y7a8Ov
         G3ZuWW5+tB8ae/Zz3JAqbrrwkXDxE3vzi95yzO52DCNgDdRTcDJtLv35xM1UfZdWzrug
         x1/w0oEbjdjADvus4zcWB2QFFiziOC5ZzSjCrCdvTYkcJ+pw+pr3QR2UxPwj5Wb4h6/i
         SUKBR3k3LTrXpe7noHwYKLE0GgAu639rcVKlQPSyGEqcl4TZgcyhV0wMiFyTnOpZGjou
         ICzMRQY2z/XsEFMKWnza6R350J5qgoodRn134BIfqjR+6fDYZw0wj1aeGe/raX9hotP3
         yZZg==
X-Gm-Message-State: AOAM532ayTu6mqgKWMX+q/+01DGTru9cB3ygKCrLdLVNXGQSp4H2kef6
	CftMed7H6RdvdeQGpecoeGF9SQHkUBn7oQ==
X-Google-Smtp-Source: ABdhPJxxQg8xdHxTWoZ3rwCWRfidtPAhhQmERDs084k0BICEMsyPZwR5DHnFCAC0wI0+YArq/0c6PQ==
X-Received: by 2002:a5d:4d0b:: with SMTP id z11mr6581749wrt.359.1613693313443;
        Thu, 18 Feb 2021 16:08:33 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:569e:86b4:55e2:a2e9])
        by smtp.gmail.com with ESMTPSA id t17sm9301040wmi.20.2021.02.18.16.08.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 16:08:33 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH] disable-gplv3.inc: Update pattern match to what we really mean
Date: Fri, 19 Feb 2021 00:08:32 +0000
Message-Id: <20210219000832.2128046-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This code wants to disable GPLv3 and GPLv3+ however the pattern
didnt specify that and with recent changes in OE-Core, it needs
to be specific. Update the pattern to be specific.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index 761be7d..bded378 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,3 +1,3 @@
-INCOMPATIBLE_LICENSE = '*GPLv3'
+INCOMPATIBLE_LICENSE = '*GPLv3*'
 WARN_QA_remove = 'incompatible-license'
 RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 = "python3-dbusmock"
-- 
2.27.0

