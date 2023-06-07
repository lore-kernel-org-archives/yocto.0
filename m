Return-Path: <skulkarni@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E151CC77B7A
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 07:27:25 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
 by mx.groups.io with SMTP id smtpd.web10.2945.1686122844373553487
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 00:27:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@mvista.com header.s=google header.b=XFkyKRKg;
 spf=pass (domain: mvista.com, ip: 209.85.167.178, mailfrom: skulkarni@mvista.com)
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-39c503bc770so1225101b6e.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 00:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1686122843; x=1688714843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T1QrCpDhP6rFf1aE/WTHW75nPQQH+bS3XhcWFoGFXVc=;
        b=XFkyKRKgstiJwqAdiJpn05ZfUFN8DycMTK0m5tmJelDTR5D4bqfpUi6QDkpWNGPfSp
         kT8RONyzOv1lUyjB1gukhTiZ4qq0ICQEy7XaJwyVNQsRrKQlY9aIyzFByLBVJ+ghrg5u
         YHuCQJZMyt92/dW+G/kWzz42cQAwIZx1Mo+o8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686122843; x=1688714843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T1QrCpDhP6rFf1aE/WTHW75nPQQH+bS3XhcWFoGFXVc=;
        b=kF1EjfYkWUsJW++J6VyMxHQJemgP0nf7cdnod1jOfp17UGj9QGJ/o1sSsGvQKmDeAE
         WCjaI+WHn9ozphQxB59gNQZgB7LCi2qMn8tuyoWRP5iC7m4ASynwooUWhWkE8UeVPgyS
         Ay4RbYOLm30wjS6pBPbZNL4byXj/yowEG0l/XQZsHVEtQcOKhO7F3HJM7s9c2C4HmsAO
         ZAbLB7zLA0f91jqk6br+b2cm2xH9qPCiKGa+l1bopTh1+PM/mPo2lHUKu0oB1yNEnt6h
         fHJvwOVv76SHR1BWWi1oTvIoNN3p1b/J0VPdZSYdzeAjNWuMe0ph5z8/qN+ON40wgcD9
         NMHg==
X-Gm-Message-State: AC+VfDwjnbSyM0J4+Ip1SzstJ8+FaM2wYsrrwuCm29Wb/iUMqNrZEA2F
	g2YHghpWBw0K36IDapM4lTzVhsjJYjj5RgPGtLK6fg==
X-Google-Smtp-Source: ACHHUZ5IjI+tqSeaXYV7thrbNSqaYMFSt8w7ElBAdUdVaLx7f1EeLvEtutb2ohjcXVeDjLVc7Tk5AQ==
X-Received: by 2002:a05:6808:917:b0:39a:c41d:fb30 with SMTP id w23-20020a056808091700b0039ac41dfb30mr4657037oih.39.1686122843334;
        Wed, 07 Jun 2023 00:27:23 -0700 (PDT)
Received: from kite.mvista.com ([182.74.28.237])
        by smtp.gmail.com with ESMTPSA id u10-20020a170902e80a00b001aadd0d7364sm9710579plg.83.2023.06.07.00.27.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jun 2023 00:27:22 -0700 (PDT)
From: skulkarni@mvista.com
To: yocto@lists.yoctoproject.org,
	jpuhlman@mvista.com,
	skappen@mvista.com
Cc: Shubham Kulkarni <skulkarni@mvista.com>
Subject: [meta-selinux][dunfell][PATCH] audit: Add https protocol for clonning repository
Date: Wed,  7 Jun 2023 12:56:55 +0530
Message-Id: <20230607072655.21804-1-skulkarni@mvista.com>
X-Mailer: git-send-email 2.24.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 07:27:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60197

From: Shubham Kulkarni <skulkarni@mvista.com>

 audit repository clone failing with git protocol as
 github.com requires the https protocol to be used

Signed-off-by: Shubham Kulkarni <skulkarni@mvista.com>
---
 recipes-security/audit/audit_2.8.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/audit/audit_2.8.5.bb
index af36ed5..e372f66 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -7,7 +7,7 @@ SECTION = "base"
 LICENSE = "GPLv2+ & LGPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance \
+SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance;protocol=https \
            file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
            file://Fixed-swig-host-contamination-issue.patch \
            file://0001-lib-i386_table.h-add-new-syscall.patch \
-- 
2.24.4


