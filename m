Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.7807.1621340996386541784
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 05:29:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bou3eDFI;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id i22so13775497lfl.10
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 05:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C/BWcNDa89a5VKa4G8Ilo7Uq26KmJgB+o9YRSJVj+PU=;
        b=Bou3eDFIUGDQUuEKwHCxosjautJYVqhtuJ3zZBO7lpaS9Xy08/TBwRKw/daVlOmRVD
         Ej38KlKmEcj1jDNm7XmFX7r6y+V3c/xah1ccdvzcFfGtAeBbyappAX3VyiHPDpRmKuZo
         E5ZzigSZvOM6hDl1U3KBgqX1vm6/3r+yYRE+7kQYqPlAbXE7ja3SIhZPwLQUr/UdTB3N
         UNlBsrmsAsIXktCCYG3axvyZ+CUuAgmVVvrBCxNUSexMUVvmSH2s/aLrc/jqw8r5lHvB
         YSvpUuflwz1bQCYvCNaH++9ELm8k1/a2+NFKPJQnLTJmpetsJssmsw9FfkMo1REM8l1n
         Tf3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C/BWcNDa89a5VKa4G8Ilo7Uq26KmJgB+o9YRSJVj+PU=;
        b=CvkdENVx/rCmJtq+IjmtLbd1e2y6GGkvYhMVssAa4lQ6ycjPt8jEMqGB7gPJMn4XoN
         rurjiHwdM9fh410ig5KDcz9i9akVYnFmJsQqMarwZwxFApbd4pNSm5jrRJ3/huZS6HcC
         EJPGqUyVWFD/49nhmETRiGnO479ZKmBmeF1XlfNg4D6oPt6PIbwlFaVnbtVi42xi+jbt
         AQCBZCLdUjxo6NTUQMiRTdwoGbA8+K5FeIXFbzfm3uIkeKWqBp6NBU/ddHYbJtMfmDyB
         0v6F2nMiim3wbNPR0VK37jrqkMSufR0bTA+HAM4RZGQAvTjq9q46tHQ7n7arghF8u+Ci
         Hufg==
X-Gm-Message-State: AOAM531bynjmx9G6ZhLfb0DgjXTwUR/LTkk1/OqwqrHR0EAHHZIOjIfV
	0SzMkX5Jl7hm9MgG0Gkg+iZMfPEhn5NMAQ==
X-Google-Smtp-Source: ABdhPJyx2W3s93x7siRp+6UH9kQVbP8Q2JZXlKgk6lUBjSDEY25jC5aANnIae10VoppnG0wNRTF6ZA==
X-Received: by 2002:a19:818e:: with SMTP id c136mr4180665lfd.440.1621340994485;
        Tue, 18 May 2021 05:29:54 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:4a1:dc07:cf12:9f1f])
        by smtp.gmail.com with ESMTPSA id h13sm3203964lji.102.2021.05.18.05.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 05:29:54 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Zbigniew Bodek <zbigniew.bodek@huawei.com>
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1
Date: Tue, 18 May 2021 14:29:27 +0200
Message-Id: <20210518122927.2554655-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518122927.2554655-1-zmuda.w@gmail.com>
References: <20210518122927.2554655-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Zbigniew Bodek <zbigniew.bodek@huawei.com>

Signed-off-by: Zbigniew Bodek <zbigniew.bodek@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 5ee40d4..9fc08ba 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -2,7 +2,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.6.0-rc1"
 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
 
 inherit cmake
-- 
2.25.1

