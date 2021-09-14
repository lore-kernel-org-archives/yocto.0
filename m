Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.188.1631637550312263973
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 09:39:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SlvIMGRH;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id f3-20020a17090a638300b00199097ddf1aso2669810pjj.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 09:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Eht5PGIpi/pEZrIE0igE0QB+RuvByoggyjg3Hqr4IKM=;
        b=SlvIMGRHiOuY0MpI1c3DBWxbDHAV1tmmWA/SogCELu8W1oVXZiLWnuJjAU9wwiABvi
         r11icu3Hy7AlhEHtIPWdktrk0tS2ZwclkY43hOoYymPMyPpZzS9OGA5nR6tKDTp+RfuL
         j1vdWl/qrVLyIoc/Q43P39HmtnfEjj43G9bOhaGBj/6oNZw/gVmS01bmPkO6bJYMVlgz
         h6Wpl1savYB49fZF9ZAjDGT1puQ8oyk1F5ayuy0Xvbd/mCQGVYl+HJ0vdKhxpYryuNOY
         PVZRgML0gIageVvz08kHmhnxvDa2rMDJ0czGKalRFrRGO+a5+fiSHo4ysfRzjM4luyb6
         10zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Eht5PGIpi/pEZrIE0igE0QB+RuvByoggyjg3Hqr4IKM=;
        b=HsjFSmDAVF7QBEZxfSmgUJQ7GDAidw/bEeFFhntdwXA/boYrdXXHn/QETVjU62hUsc
         E4cuxcKAZAUNJrGNUTWtUf0IBIz8WDu8RWWgGnTwKa8w4Wko3840M9P6VyyM1KcHHcUK
         QFtwhv9zoBr30s2Hlx35l7Z5ln67kz2qRBjFOEWgE+gNiy+DGt2PFf7nrTXuIRPbojvD
         E3Fl4usY/bZvoRlJletUfdvLk8N1+uCi2PXXIMGfb2QQMnSLbHfaDkNu1iSafHu4n8TJ
         9yUYA6nXOQqVP5IeWwDdDwzDX3i+a4tqqu2/B51gVYWh+y8/yrz2BjX85sV4XykppaqX
         SAPg==
X-Gm-Message-State: AOAM532Tf4ghHZ4Xd0YkZbxHexhF7NmtuGuaqE/xHpLyuBdVS/7HsUsr
	aEj4TGivA4xkqpSM7JdntvaNhPC/RQo=
X-Google-Smtp-Source: ABdhPJzn2cWwXSwqi5hhKluG4+AgxyYwUcmp8g0GUKbBebLWXqrEieyMDCRkaRv0/EqYGvUcsOb8qA==
X-Received: by 2002:a17:902:e282:b0:13a:45b7:d2cd with SMTP id o2-20020a170902e28200b0013a45b7d2cdmr15858204plc.86.1631637549675;
        Tue, 14 Sep 2021 09:39:09 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:35e:ec78:cef4:300f])
        by smtp.gmail.com with ESMTPSA id b7sm10591600pfl.195.2021.09.14.09.39.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:39:09 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/6] ibmswtpm2: set precise BSD license
Date: Tue, 14 Sep 2021 09:39:03 -0700
Message-Id: <20210914163906.126666-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210914163906.126666-1-akuster808@gmail.com>
References: <20210914163906.126666-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"BSD" is ambiguous, use the precise licenses BSD-2-Clause

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
index 7ea40a8..09b652d 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
@@ -9,7 +9,7 @@ Advantages of this approach: \
 * Application software errors are easily reversed by simply removing the TPM state and starting over. \
 * Difficult crypto errors are quickly debugged by looking inside the TPM."
 HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
-LICENSE = "BSD"
+LICENSE = "BSD-2-Clause"
 SECTION = "securty/tpm"
 LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
 
-- 
2.25.1

