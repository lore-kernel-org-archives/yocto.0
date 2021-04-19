Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.763.1618865220440802567
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 13:47:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BaK0UHRr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id q123-20020a1c43810000b029012c7d852459so154534wma.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Apr 2021 13:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DbhdktwKSojFylbTbcWr5YMtQFqEZP26WkCswPcbEs4=;
        b=BaK0UHRrz46EmednqKq4aln3umFczC3qKdKSe02czn3fUokYqNwCyg+lGMCVrDCZq6
         vlDOu8e0G1N8X4Mh1jTq0JSqp1SSo8DW3f1/unmmWXgRRVptySxQCfwSV49jAJJ3iuM2
         sEScgW/B6esmpIGArfcw+L7ag15aeqzNGVRWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DbhdktwKSojFylbTbcWr5YMtQFqEZP26WkCswPcbEs4=;
        b=r1IF/erX/qNt9UIKKpE9wWnXhMoWsprHSE5fcOvCQcLGWUhktTSBH8EqCu7LE4qt8H
         Mm9rt+0A2DIwPloJsGWzyk1y6i3XDu4OD0WT4OYcZ143dpAksixXdPxSf/eJmMxDd26Z
         jIpoT+tTT9ztD4AUAw3y6i9PN7J+zlYGiaajy3LgAU9tyurAZqHDuTlMNoNvi09/eZoC
         KyVrXbez3sSwBpd/R9YyoMRJ99yWKb6VxPi5Z/hKJ5FsbdhkRgMU4e4g+N9NRdsNAKB+
         cZpTlaFe4EaJgjJQOXzPSW5yq2DfM6a/+fiOCn3etJBaiSvDlxIPtfR7y46DOTprhe1t
         s3gw==
X-Gm-Message-State: AOAM533535jZOGCA2byxUJJ6j7bfeebzd0bbA2NNrKFWL7BO3kkrlzy/
	nq+ukQt83N9H5Bf9/P69ukxO8izqXP22Cw==
X-Google-Smtp-Source: ABdhPJzmxCFZjcgH0CPwPvCf3mp1ts2VdchanMxNY9lTDeHmhMawe4vNRpGeXBTMzV7N3S4vWYe+bA==
X-Received: by 2002:a05:600c:365a:: with SMTP id y26mr865820wmq.102.1618865218770;
        Mon, 19 Apr 2021 13:46:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:e28b:7bcb:6782:eaf2])
        by smtp.gmail.com with ESMTPSA id b187sm764922wmh.17.2021.04.19.13.46.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 13:46:58 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH] conf/distro: Add removal of btrfs-tools from util-linux ptest depends
Date: Mon, 19 Apr 2021 21:46:57 +0100
Message-Id: <20210419204657.1477082-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

btrfs-tools has changed to LGPL-3.1 so to allow util-linux to build,
remove the dependency from its ptest package. This may regress some
ptests but keeps the gplv2 layer working.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index bded378..3285543 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,3 +1,4 @@
 INCOMPATIBLE_LICENSE = '*GPLv3*'
 WARN_QA_remove = 'incompatible-license'
 RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 = "python3-dbusmock"
+RDEPENDS_${PN}-ptest_remove_pn-util-linux = "btrfs-tools"
-- 
2.30.2

