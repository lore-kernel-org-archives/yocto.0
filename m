Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web12.14595.1602252499473892349
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:08:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dwV2LYn3;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id x22so6957563pfo.12
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=D3H41BfeAEvbaTnE4Z+QMvmN8wabx4ikPBgkkczvvHs=;
        b=dwV2LYn3X861enGXVKi8Z5Q7FCQesZKVILeYgkwJuFn8+c55FFvxECfI0PGj+wuQFq
         BR5DzRxJ84Ukdu7JhUhQ9PspSwRZM/zvRx3mOySxrdUgPtSDdAnuROULQshnkSIr+DiW
         LVRLh6Xy4bYHhcbqdFoPQI3PYHXj37Xaybowg6XHcAWm+U5/eThNP21/XfftYY0vQUn4
         0mvCqiXZ8p+zI/sH5qmNU4f6nQCyHvBb/5nLj114nzsj5cjIMkqa7k5/H0iq9s8+KhkP
         b4SBpaeR/guHWNebR7nGHydeSNQv7O9aD9eQpVhPrZlrcdqDwD3eZKwyzXGDV+drOV7g
         1oVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=D3H41BfeAEvbaTnE4Z+QMvmN8wabx4ikPBgkkczvvHs=;
        b=JsiZJWBAtTRrwUaMgPY7MlByml2n2JySaahi3Xb00q6H1vtGNfSpDZxvW765HnEhcV
         R/pBaDIWC8Uyk38Ql5Tm2d4K7UChfcYI67Y6M7G7bI+iAeCelAw33RMhfXL+qKX2Tsm5
         VmDWZ3ta+IUZy3UeAqudR4E1NlvoziyyLuRxibLNVz//bSAqFzjYbJJnZWUMq12/xVTT
         /98K+xzMZkhcLct1ZBoAyLWtVoTvGXjcTuPJby/HnvufuwsBfpsdygTSk3+IpngGrgsS
         n1uoPejfCefFqkTEdxABvwmPoHBY4Ept3pnf5C2V/CIxbCJxhuardlzxbNDctptnYqFz
         XCGQ==
X-Gm-Message-State: AOAM5335EU+1bnzCVdbcdrc1SXlqNUtvN4Brrq/3/n7A2xAJQd08pz04
	XdyOsB4La4emLayv9th+pDX63g9XG8k=
X-Google-Smtp-Source: ABdhPJwZZomw6Ul3TAuqRx6wA56eLtxDpxU6HcytCtjBtwXlLeglhf4J+f8PC1lLgrDqRiq9HnWUYg==
X-Received: by 2002:aa7:971d:0:b029:13e:d13d:a08a with SMTP id a29-20020aa7971d0000b029013ed13da08amr12496097pfg.33.1602252498843;
        Fri, 09 Oct 2020 07:08:18 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id k9sm10119710pfc.96.2020.10.09.07.08.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 07:08:18 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/7] packagegroup-core-security: remove clamav from musl image
Date: Fri,  9 Oct 2020 07:08:11 -0700
Message-Id: <20201009140812.21765-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009140812.21765-1-akuster808@gmail.com>
References: <20201009140812.21765-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 1a55c1b..0a4452e 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -53,6 +53,7 @@ RDEPENDS_packagegroup-security-scanners = "\
     checksecurity \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam clamav-cvd",d)} \
     "
+RDEPENDS_packagegroup-security-scanners_remove_libc-musl = "clamav clamav-freshclam clamav-cvd"
 
 SUMMARY_packagegroup-security-audit = "Security Audit tools "
 RDEPENDS_packagegroup-security-audit = " \
-- 
2.17.1

