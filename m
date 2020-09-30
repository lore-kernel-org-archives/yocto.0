Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
 by mx.groups.io with SMTP id smtpd.web12.525.1601484731830308785
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 09:52:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gyj/0F2X;
 spf=pass (domain: gmail.com, ip: 209.85.210.65, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f65.google.com with SMTP id m12so2519302otr.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 09:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=/9RGFt9Pk0f90NdSbWygWwH/vZWr3WLbEDP85T5E/DQ=;
        b=gyj/0F2XxK+IEvzXpKz+/cRMKc63Bn4UEC3CyjsKrzrLSZv6lvha5ZKGQae8LUR9Yf
         kqKRdBz934upK2rfASMRkulAASIOF9sccrA6rtjoUg8F2+blrkOuxctSCFLuV/oEheCc
         N6g2LRewRNXcSX3nW8ySrnLm7pSHAeZ6OZvHqGYmmr45EaSRms0/OkuvY3W1KrhMqJfT
         FbPq+uEx0f71vam0ZiajI6uaSbG/NE/TFOyiTfNYbpQGUMEuWdo49abEcZQKvHJUr6O2
         /GwiUZDxv0GN5GJ8uE77tDLpDfHd5VOM/ciiA+8pAwoeQOxECOgFCs53BRiGdH17iUy1
         aIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=/9RGFt9Pk0f90NdSbWygWwH/vZWr3WLbEDP85T5E/DQ=;
        b=Jz6aSFOCQaimfUpg0BqUTdUA2uXgheDBf1u3pDIPesXzyfO0nNrdgj5LfBijrDaFvn
         WoSJ0RVgsNjJuDaSzDKl5U/9FPWAWePe3dm7fmwoHWFXdzWux0aENOIqrONRWzhxCMlp
         tp9pGYf8iuajifec8DvTExQXURWy+H2e0c1l91BgH8mVzRq6QfYcYoo9c8s/k4/3r9Y6
         FYGPzD51Gurbq6BITLRFd2LvRQSbEgHYVr9M3RINYI589n3qL0B8dO7FNU1dGsU6LV85
         twCJa0ufeUJhw9kKRzXQlyC/wCOZ2MH3Sj+yWjfzVgXoszWy9FVHxn8KcKe0QDFEX1Ll
         4gRg==
X-Gm-Message-State: AOAM533IB0D9huFoUmNMPFOLVPnL5GbforZk4oduyP7kMaaGArdUvNow
	mUJ0YpQoLFqNVVn4qUiekXT2tJvqy7E=
X-Google-Smtp-Source: ABdhPJy64btjPg6UdJquHgwyc+RuH/OUJaXcwgTHWQqegSq2MBWKWde+myWNszBbAzszrBV8J2CUbQ==
X-Received: by 2002:a05:6830:1e89:: with SMTP id n9mr2061423otr.274.1601484730956;
        Wed, 30 Sep 2020 09:52:10 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e2:552d:b045:4166])
        by smtp.gmail.com with ESMTPSA id p16sm494561otl.17.2020.09.30.09.52.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:52:10 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] libseccomp: fix ptest failures.
Date: Wed, 30 Sep 2020 09:52:05 -0700
Message-Id: <20200930165208.31659-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Fixes:
BusyBox v1.32.0 () multi-call binary.
Usage: dd [if=FILE] [of=FILE] [bs=N] [count=N] [skip=N]

Don't use Busybox dd, not compatable. Use coreutils

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp_2.5.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/libseccomp/libseccomp_2.5.0.bb b/recipes-security/libseccomp/libseccomp_2.5.0.bb
index 35365d5..0cf2d70 100644
--- a/recipes-security/libseccomp/libseccomp_2.5.0.bb
+++ b/recipes-security/libseccomp/libseccomp_2.5.0.bb
@@ -45,4 +45,4 @@ do_install_ptest() {
 FILES_${PN} = "${bindir} ${libdir}/${BPN}.so*"
 FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
 
-RDEPENDS_${PN}-ptest = "bash"
+RDEPENDS_${PN}-ptest = "coreutils bash"
-- 
2.17.1

