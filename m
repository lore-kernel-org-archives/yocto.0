Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.58970.1629310565299769556
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 11:16:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nwHh/1u/;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id y11so2981673pfl.13
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 11:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M5SE5r7MdfrQY7HZpbv//FgNEAatiOYhx13XTgl/MnY=;
        b=nwHh/1u/z3/bqovnXTt7GN6Txt54+W8Djs5QUW6KkFZqZtv/pnvtPKkendWR/HjtR4
         uCxmhaaI338gK87utp1OFdKb/NGGio40cjc2TN3wcFexhgvv+4+pwGJduq3ix1yyfoPG
         6v+NF0qSxq/JD3EtsvV4KsXHIm4ugKFddZnE41lznNu04UTfv+WugCnTc51C6Lhlw+Yq
         dHhdocacolVI4/o0G5KZqLKD7gmmIHQPFh2DBDuF/shjNPK20IUhrA1R1Wrxza/KZjpe
         B3faYGY4KN7wiv2UJaubjcq+I1L86ufXuih8amRbJ/FFK898hMJq8JLZTo0PFsFYvhns
         95JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M5SE5r7MdfrQY7HZpbv//FgNEAatiOYhx13XTgl/MnY=;
        b=ha1kheQIv16JiquHasw5gOsEXx4mJIUNR2R9BNZGJTSjQMOJvfStQP+NbRYSZ2dnfX
         L3Eq8ItZQRmSAWhBiSH+ZIn2rvgiSw9xtVsv94iqn5DEt9ffUFanNR5S6+DrmchaYl+J
         dnp1LHxvaZ/LdPKl5lNeqGkZUvN9Wec2QnWjVlCowNhrMFyRk1/9JfmI5X7U3z02P6WL
         DgLi3qE9WiTotrhzwlzr6Rod+fQzJ+YdLwmvjFXWiBSyEZR7nuwXngv1lWlsg0yRk3Gj
         WzCrj//YlRxvHurQ4Oklzz7f5XOHJ4Ci7tyKJ5Xp98GYtlrQFV5fIlZGYdi++L+YHdDv
         glgA==
X-Gm-Message-State: AOAM5307iE2Rp8CfUB0COBufx9co9yxYFfqcyrFajRouYYjXuSMMutr+
	eiUvLjDOzSMUP80zHLRbcFSbULfEtXNvQQ==
X-Google-Smtp-Source: ABdhPJxm8rmYZE8QVkjAA3S+tWh7ZhVHEi+hYp/CZzgbk4gPGu6Vzn9iNUXvo+eSdAyMuCiQiaHrGw==
X-Received: by 2002:a63:e40a:: with SMTP id a10mr10021531pgi.414.1629310564478;
        Wed, 18 Aug 2021 11:16:04 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::1d09])
        by smtp.gmail.com with ESMTPSA id t10sm5717006pji.30.2021.08.18.11.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 11:16:04 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH 1/2] machines: Adjust for new location of tune files in core
Date: Wed, 18 Aug 2021 11:16:00 -0700
Message-Id: <20210818181601.3887274-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rk3066.inc | 2 +-
 conf/machine/include/rk3188.inc | 2 +-
 conf/machine/include/rk3288.inc | 2 +-
 conf/machine/include/rk3328.inc | 2 +-
 conf/machine/include/rk3399.inc | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index 5cc1024..4e94982 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -3,7 +3,7 @@
 
 SOC_FAMILY = "rk3066"
 
-require conf/machine/include/tune-cortexa9.inc
+require conf/machine/include/arm/armv7a/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index 6f3da93..cc6cd3f 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -3,7 +3,7 @@
 
 SOC_FAMILY  = "rk3188"
 
-require conf/machine/include/tune-cortexa9.inc
+require conf/machine/include/arm/armv7a/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 017f9d7..5b84e94 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -3,7 +3,7 @@
 
 SOC_FAMILY = "rk3288"
 
-require conf/machine/include/tune-cortexa17.inc
+require conf/machine/include/arm/armv7a/tune-cortexa17.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index 70189f1..0f3a730 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -6,7 +6,7 @@ SOC_FAMILY = "rk3328"
 DEFAULTTUNE ?= "cortexa53-crypto"
 
 require conf/machine/include/soc-family.inc
-require conf/machine/include/tune-cortexa53.inc
+require conf/machine/include/arm/armv8a/tune-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 4149092..09c87c0 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -6,7 +6,7 @@ SOC_FAMILY = "rk3399"
 DEFAULTTUNE ?= "cortexa72-cortexa53-crypto"
 
 require conf/machine/include/soc-family.inc
-require conf/machine/include/tune-cortexa72-cortexa53.inc
+require conf/machine/include/arm/armv8a/tune-cortexa72-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
-- 
2.33.0

