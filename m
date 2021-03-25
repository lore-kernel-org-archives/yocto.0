Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web09.1454.1616688258278743480
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:04:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ePBxlkzR;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.182, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f182.google.com with SMTP id 11so2510731pfn.9
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JZ1z5rAXE5h/a1jHYvUoAHP8ROP+XnNWYvaVEDmsq3A=;
        b=ePBxlkzRxNRSk1jZLYEfSvqsFmUEf5W+J2EnhfFK4tLntOnRyhSi14SgKMmtp6zSM0
         xqNeHHO4CqZwi4ka/CViVu1HZsSRuvcN8Agmo0wEizQuw1IpYZwZEj/fgBy+F8mqX24R
         x7jrjIq5sOlALOyOdwQI02Rm9pT1ChLnv25LXa9UO2AuCyKETudV/2ZRQgHYVAph5EQ+
         zdX19kKHYK5J69c9IiHgpDLO6WJrx3aEH7t0WJDvNZcB5Kv/k4LAqCAso7TMV5jXYPD+
         PKOZ/k2VFZJcle2AiljAUUB6zoi/TCopW1mklQ6yf8bkJGNbCXcki1zEY4Co51SfvEKC
         VnRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JZ1z5rAXE5h/a1jHYvUoAHP8ROP+XnNWYvaVEDmsq3A=;
        b=dLNdUdlLwoY/grJdt520W5Lwnj8wOHMZOP8nChCNQqtaczeATaaP830qdsAg0xpL7/
         1fX9mSkXWdMwaSKB+hktHijea7sq1kE/leWGBdrPU3yaSEZj0fNgxG9ZudS6IuBYoSXJ
         Ac3IWbhMPFn6Ga6RkONMAVIqDVIPYCM0E7EemoitdcUuV3tZRVfxo4EdO8Wy8hQoIqHn
         d+elPKWP2GH/S9MFUbifiTb+wzzAdlpWa/kIga0dwhXcfimnhxLUsvVxblJzd5/GCh6C
         6/ChFEirtMLjDQo0bop1DHUp9XTS1YKADgSslft6IUgjekK65Kxq5e2z6Vk1rITuiTfl
         ATgQ==
X-Gm-Message-State: AOAM5333xtdEh9BSR12cCvU9Cs2AudNrdDDS3Na8d/zM60MWhi98Irjp
	jOrEQ8lIj4DnW1he5krHany7mm5HglrfqwuC
X-Google-Smtp-Source: ABdhPJxVnLDZmeY8yVLfuzSMUVQttocI6NqSiHXyQvYb6xOUEGZ0hfWP73I4Mq9rOekaNyNpCHYBYQ==
X-Received: by 2002:a17:902:c154:b029:e5:e7cf:9627 with SMTP id 20-20020a170902c154b02900e5e7cf9627mr10468937plj.68.1616688257434;
        Thu, 25 Mar 2021 09:04:17 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.04.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:04:17 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 15/15] config: build and test SDKs when using package_deb
Date: Thu, 25 Mar 2021 06:02:21 -1000
Message-Id: <c52be4c547d20c1644f71e5eaf4db233eea2540f.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ross Burton <ross@burtonini.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit b38664d2db940d2ef3238fdf0f2353162e120681)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 0a5068a..e77a8fe 100644
--- a/config.json
+++ b/config.json
@@ -559,8 +559,8 @@
         "pkgman-deb-non-deb" : {
             "MACHINE" : "qemux86",
             "PACKAGE_CLASSES" : "package_deb",
-            "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev",
-            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
+            "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
         },
         "pkgman-non-rpm" : {
             "MACHINE" : "qemux86",
-- 
2.25.1

