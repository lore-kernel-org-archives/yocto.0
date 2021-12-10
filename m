Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A157C433EF
	for <webhook@archiver.kernel.org>; Fri, 10 Dec 2021 01:15:03 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web08.1222.1639098902508945118
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 17:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=V/tGo29i;
 spf=pass (domain: gmail.com, ip: 209.85.214.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id b11so5196223pld.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 17:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QxhcZtEa9RsGtbgfQvyM102PGv4qYH4t/mGuRu2e3q4=;
        b=V/tGo29iA5pMvppxsuSAkwoWMM/DUkfNJN4LKQBz16BMfTiVrEJ7/3hEIGvwkds3MS
         UnWg8d/x+JnOS02C6lANa3ungjcybaap+sneF9R9DTDXJcaoOTMIOg2tK427s0IZJ7a/
         qLDXD4HPkr1vgERc3NdSd9soWMZQztOMUmZFNHHBU8huQLiW4+5g08VY8gYckXTW3RW7
         W9kXWplCEieGT+O7VgnFROoTDSQobloFQx/pb1ibb+iOwOa1FUJC3Z07sJaAVHJyqJHA
         qsLprz8BToX2Y4byVe63pm35+VpcofBO/I2CA8aweF1SGNFEfjsGTanpAHkND7DgZlZc
         XFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QxhcZtEa9RsGtbgfQvyM102PGv4qYH4t/mGuRu2e3q4=;
        b=C4pZlXIwU9f1AyhFbNUxn/Zsmf7GQ9PaFxuRUFJVSxZ3lG9KxB6z6OP/rJi60UCZAA
         vvf+rT7mM5tkORizmf1q7bqWlz+O4EfgrCG91EYmbLtkp2gFnMmCgiU3IrboqlqCouS7
         nlVRiz0T5OkCnURb4D+tmNDGR23nsT9DUSOhQsAjDRMPo5T1/0gmv0rq3Y7JkMaw/lRb
         dG4exoSu63fRuo6J7JpuP0f8u8/9oSf+XRUODSZjBnUXZApSolgQhhgU6J6mOdqsZm5x
         InCkwqVN9Ck+UZ0NkIu3VlMlKcScFDv9zcBhHGqi8Ui2+RY6uP4RJa9n8gZicpjxQsRz
         WDSw==
X-Gm-Message-State: AOAM530o7QHxUFv3h5rLUpxttkwCgk7ya187iAHk177bpRJ8dDY9m/Bg
	RqnJSVEAjFGGreJAsJszmYQCvY+SVFVzUw==
X-Google-Smtp-Source: 
 ABdhPJzuFmQ3n5AtNZpJLUhMt5RbTH68IZ7ttqSq8Mc3lJMonp4I91w9oV3v4eJjHqAJSfnL/ARzsA==
X-Received: by 2002:a17:90b:4a47:: with SMTP id
 lb7mr20492541pjb.243.1639098901518;
        Thu, 09 Dec 2021 17:15:01 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::ce68])
        by smtp.gmail.com with ESMTPSA id
 y12sm910876pfe.140.2021.12.09.17.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 17:15:01 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>,
	Jon Mason <jon.mason@arm.com>,
	Ross Burton <ross.burton@arm.com>
Subject: [meta-rockchip][PATCH] trusted-firmware-a: Pin to use gcc for now
Date: Thu,  9 Dec 2021 17:14:58 -0800
Message-Id: <20211210011458.1664766-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Dec 2021 01:15:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55543

tf-a built with clang is bloated for rk3399 SOCs with 2.6+
it needs looking into, until then use gcc always to build it

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Cc: Jon Mason <jon.mason@arm.com>
Cc: Ross Burton <ross.burton@arm.com>
---
 .../trusted-firmware-a/trusted-firmware-a_%.bbappend       | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 074d0e0..513cea1 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -12,3 +12,10 @@ SRC_URI += "\
     file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
     file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
 "
+
+
+# code bloats with clang and results in error below now
+# | aarch64-yoe-linux-musl-ld: region `PMUSRAM' overflowed by 3928 bytes
+# this needs fixing until then use gcc
+TOOLCHAIN:rk3399 = "gcc"
+
-- 
2.34.1


