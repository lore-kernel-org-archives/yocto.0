Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B461C433F5
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 15:08:37 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web11.10875.1633360115845401828
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 08:08:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j0kL28/T;
 spf=pass (domain: gmail.com, ip: 209.85.215.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id s11so16804238pgr.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 08:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GpilvXHQLJPOQxHK2XD1679uZQ1m1Uuq4UqHIBdnLEg=;
        b=j0kL28/TynYTvTwdKL0em212Nfpc2217LQEOcBe64NHY6ETwV7r2tdzjbG5CWnvEGD
         33aQk/NQeGaSPBFnB0E2VIDFcTFcqPrKakPcCMmakFAJmL82aJytjH/0Ioex4sAnHhW/
         9V+xByrutFt7+6ySCNljpkqZfj81/8spjHvYq0hkFZ4Il3a/FmDcnRmiuAw3uQ2kWE6y
         dtqXtnpP2nEWwRU4T5SP4RwC0z3MpmdaPS1FdkRrJcRu/EOGh4CLMU+sVYY3k+mF6hIh
         Dn80Lllb497MKueecMfWoUJzcXJH8QbWx6+Atkgjsmm7k4RFLPx/YA6xvLRIqq7yQ7tC
         vadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GpilvXHQLJPOQxHK2XD1679uZQ1m1Uuq4UqHIBdnLEg=;
        b=nU1fBFgUbY7TJ5xSAPtc0O19ybMc9zYKMAyReWYc97Wlofu48ljRpX/tqzT/lReXHN
         i+y9WUfvlsfWhcU/GfLOXyWUGNw6RHYDmi/x+CTzxJOQoIBEf7x/ZpUGN1gS6MIDX+ZU
         q9naqwdhbgWiiImyIpuJb9QBs2THPv/E2ugvLfkaMnOtpkEzWFSH4njj0K6jBW3KzbuI
         LNfdLlkvNDsvrYVXzI+jNgD24XnNuZRDVqPULWJ/hgpt+rgHIkTm3DGXSRoqMYsovwoI
         q8obbc7vQ/Qcpd/3Mkd9iVMiOvO3J8Rn10lYR51VHHS0LzeCKjE7/3C9vhihE9bQ5rsG
         FHOw==
X-Gm-Message-State: AOAM531H1nblj3DKUdpaYO2+7a8UuvDixvuJq7gZ3JCO5xi/Gnj0VehG
	nrijWhHc5joJdCh9mV3B2iMp0K/I/9g=
X-Google-Smtp-Source: 
 ABdhPJwLAZpNQ+UzgUzOu7/HC5I/DzDtne1iuGTJ+RMzFHBe5Gbqk1ryR6qZ3VmSibCYkgVQo6J4WA==
X-Received: by 2002:a63:4c55:: with SMTP id m21mr2287257pgl.126.1633360114949;
        Mon, 04 Oct 2021 08:08:34 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:4d3f:1034:1a88:7ce3])
        by smtp.gmail.com with ESMTPSA id
 z9sm4541508pgz.94.2021.10.04.08.08.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 08:08:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] sssd: FIX QA error
Date: Mon,  4 Oct 2021 08:08:32 -0700
Message-Id: <20211004150832.3223191-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 15:08:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54940

ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue: sssd rdepends on dbus-dev [dev-deps]
ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_2.5.2.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index 76d6e03..33166be 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -132,3 +132,4 @@ FILES:${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
 INSANE_SKIP:${PN} = "dev-so"
 
 RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam"
+RDEPENDS:${PN}-dev = "dbus-dev ding-libs-dev"
-- 
2.25.1


