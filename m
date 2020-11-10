Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.25186.1604998578234400298
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 00:56:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i1DeZT+d;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id cq7so11601386edb.4
        for <yocto@lists.yoctoproject.org>; Tue, 10 Nov 2020 00:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UgvE6L2APEt3tP4wgBIJUqBkPRpEUHua7u/CAe3otgA=;
        b=i1DeZT+dHw/Kdj3GtABhKl2gC87m/x1jmXQQ6yuMjHXdhczjmPo0s91lQBHB4JxgUB
         eVEuF1B5LSFBE0W8smcqqzN7U8AS5sZojARxKL3uA421aUneRY90+G/LHT9B7YNSAmNj
         XLJCDX+mSXlhtu6npd9b98YQ+CKeo9ZeCRC6HIkhBunrvlP9rRWYdH/kUgS3o4E+huLJ
         VmHE/2jHT7dw8ClOVq99v1mn9DxbNNXNS0noYoaLLrJIrabT21Tfa9aP2BGpF5OC0PAL
         KOqwM13gOSKgZGCUAZK0tnGeK7hTIod04jYsrA5VMD0pYH6QFuYaF+Oncj/14b/dxdZ6
         +A4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UgvE6L2APEt3tP4wgBIJUqBkPRpEUHua7u/CAe3otgA=;
        b=JAbRWVJBsT8BjeGkbWp7LruiRnffHwKsAIOrUSUHC4q0o8NMD3EvphTdKxKbtNB7Tr
         oTM2GoecFO73ngBaMp4+pOQ6B6l0sTA85w6Cv65iHfSV8foIwA7o9FBqfzVlaRJYMzpa
         Ot0ob4vcSZJllsKRFf5VbJdY6OjyLJYm+i/HNsse13hTK2MAQrAipMe/hG2RK54RfWmr
         dTXckUdBIsBgrWmOKCI+ZqOXnsFBvGQIXOsyMFxpxd1OHNcWgfCv9Mbc/gtrA9w/Y+JP
         yNYOn6eXHMxTjmo0us0n3082EOoSzVuHVbQ1RvCzaSwDWcze7Nbtvx30GF7Rn0a2H6IA
         Ciqw==
X-Gm-Message-State: AOAM533J+rMtZemGGiflh08xmmoSUbFQMWmGL2yA0l2G6WR2LXf1J6vF
	lWIulgSSA3ufqZ+PSfMLozkJYOae8MliqQ==
X-Google-Smtp-Source: ABdhPJxfgjBDIzbePFIIrcLB+lNZ8mUajPcWHKUS7wuzsmltStpXZH0xc/xHVUADcnqDWv6LhL/4Uw==
X-Received: by 2002:a50:a6d0:: with SMTP id f16mr19153123edc.135.1604998576524;
        Tue, 10 Nov 2020 00:56:16 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id q3sm10223591edv.17.2020.11.10.00.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 00:56:15 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh-config: add non-default distro features
Date: Tue, 10 Nov 2020 09:56:06 +0100
Message-Id: <20201110085606.18916-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds systemd and pam related recipes to upstream checks and devtool-driven updates.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/local.conf.append | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
index 9628737..b18590f 100644
--- a/scripts/auh-config/local.conf.append
+++ b/scripts/auh-config/local.conf.append
@@ -1,3 +1,4 @@
 
 INHERIT += "buildhistory"
 LICENSE_FLAGS_WHITELIST = "commercial"
+DISTRO_FEATURES_append = ' systemd pam'
-- 
2.29.1

