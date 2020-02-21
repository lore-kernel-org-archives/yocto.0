Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web10.12211.1582307681982859722
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 09:54:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WjjaHaca;
 spf=pass (domain: gmail.com, ip: 209.85.222.194, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f194.google.com with SMTP id t83so2620144qke.3
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 09:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=59o5oW9jBMSwRAiKor4OPZD5km18UQwxj05Fy2WFWVE=;
        b=WjjaHacaSP+oYIreOj7KCHP9RSGaIdUWXiv6f3LB2zbr35WpEJMEbceQ/oVDcirltY
         4AW53PgVHnI56uKTkjbgobpy6PPJ2kkqkd6zX6pcVaTrU4Tw1PQ2BKsT5DktXi+pJBiX
         yggq6ywVZHtEHFaDoKkOewYVGNVZCZISeRCbMr9k30hkImv1+kSIilAJA53XBi4Lpf5R
         YZ5vk4Y/VsAtmU46iAI2m96D8YUaOFnHrVd0BPnFnzs38j1iAJX7i8KZuCrR/mYuvGJw
         Gcugy5OA7ljjxxad670yZgca8bh0OI3UVK1hsXeSdkcipt2iSpLkkOcxeOkqH1ACudm2
         fHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=59o5oW9jBMSwRAiKor4OPZD5km18UQwxj05Fy2WFWVE=;
        b=XqD8+m46DnHjUBbhYI4HTAdqzKmFL3p7DdTTjdcb7TAj3sRAXYJaCKc0mgOk/nkFvb
         jv9klj9TjsZDo0v/mHUdW7EZauTh5oc6jcOKk7IgzqwlftUqLGGgcHMdwj5zaTzdNTq4
         zEDevcjwSBwo9AN/oHWoUIGn0IRW/E+WPn1OguuAvq79PRSxBJxhkQ/bEyM4iGbEqzEb
         Sf3ELlL35m3jCiRs42rgurxKD7+1QStJ9CHjJz8oluId894tz641GcKAFINpJWehEYW5
         uddmMUL8rgY09cF30i5JAJSEcPgQmKf1kzpP1kdYnvaDoD+Utf+SK4Rgu92IzpV/9qcv
         ykBQ==
X-Gm-Message-State: APjAAAWcOkk0NvFxNX8q6Bu6DgVqp+saLTcvzgABNsmBaohHsi0WZhNg
	Hr+g0aqW5VG8HThiYBTQFxot9ndD6ibuEg==
X-Google-Smtp-Source: APXvYqyUm5L8lo+zJAsREdIdGGNaU4DSUvh72FZ3sOABMmpX1yKWKFcYqrvcBwXc0sSRpbY/lLPPMA==
X-Received: by 2002:a05:620a:15cf:: with SMTP id o15mr35083688qkm.140.1582307681139;
        Fri, 21 Feb 2020 09:54:41 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com. [174.113.11.95])
        by smtp.gmail.com with ESMTPSA id c17sm1769770qko.134.2020.02.21.09.54.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 09:54:40 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/3] poky-alt: bump LTS kernel to v5.4
Date: Fri, 21 Feb 2020 12:54:36 -0500
Message-Id: <ab50681b4771464047eccda504d43e93932fba80.1582307331.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1582307331.git.bruce.ashfield@gmail.com>
References: <cover.1582307331.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

We move from 4.19 to 5.4 as the LTS kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index 9926c1bb02..0b0412e60c 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -2,7 +2,7 @@
 DISTRO_FEATURES_append = " pam"
 
 # Use the LTSI Kernel
-PREFERRED_VERSION_linux-yocto ?= "4.19%"
+PREFERRED_VERSION_linux-yocto ?= "5.4%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
-- 
2.19.1

