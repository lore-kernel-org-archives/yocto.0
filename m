Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.1369.1616632845817531174
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=o+jusz5S;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.172, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f172.google.com with SMTP id m11so213592pfc.11
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=UIu2oJoULz/72wZ7bK3TbBE8FpXRfTTTgh8o1qAOJgk=;
        b=o+jusz5SbJZEpukXBIDJYa69C58/ZT5JGyziXXrfyYG+DAWFJXOVm3jVePsczfttfS
         q+0hSlxnvBtwzqvIVQXnP4hBWxuY2Gh19cmd+IXeyUvMBliAOGzL+Sj5fPHXor4wMVz3
         2n34/eexWD/LlBfW3tJzOXQJsaDshtOhL1HET//1uvqlmFsXhZJ6loxxfUwkrxoClh6S
         esepReM/hWUpGlEDEVc1GMoKgp+m6Pq5E2o1mSOnJpGn4ENIAXmVIwN7sElbA6EMA/Lr
         5/E8+IjS1TSAYaH3smRUjd2Bh+vR2DO9WFz+a0Mip1zx13Sr5EAbwTZJiqAYY4nVByh5
         H90g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UIu2oJoULz/72wZ7bK3TbBE8FpXRfTTTgh8o1qAOJgk=;
        b=DDhR549nftTW5ixEMADUPoK32obpQt+lq56VK4whuGuq8DK0yEy/SPGiUjBttx8IPc
         RiLKG3pnqJqo+CQQeygUb9q9xg0XciZnmNUuSvHfeYaCrCiABqQGrSsqHtYmUjNAJ9o/
         wty6yuLVIhdkeTT6gk6v5UcWmNxVRlVsAwv4ReFr+3XlWhg7u50m/mh0J2epxLXBgMz+
         VXHmiCqOB5jfAfTrh2vBTCoohn7uIDNyaD5xfD+BTn6k9vUILfe9SosE6eJLKQXPBgH+
         KBc9/SUzVLeESur4dygr8TKAwx+aYcXMnDR/RHDtxySj3ruw8wR8FqMgOxzEJm0jBNu5
         Y4hA==
X-Gm-Message-State: AOAM533LqYv0Nx5RClu06VDEVphXn2CKm5kSsl9jhS3AlL7IutD/7Ho4
	5d3vVc3VbWZGwqyO5Iy1pK8iNs1l7XWBS7rL
X-Google-Smtp-Source: ABdhPJwf4RwhY2kQFtDQjxBBzZV+DSzbTu1c3dxIGKo1fxqrprEU987qBV00nltqQnjBjOoU7+oCmg==
X-Received: by 2002:a63:4502:: with SMTP id s2mr5453970pga.94.1616632844748;
        Wed, 24 Mar 2021 17:40:44 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:44 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 23/23] config: build and test SDKs when using package_deb
Date: Wed, 24 Mar 2021 14:39:32 -1000
Message-Id: <6192dd6769023b0df6ae342a360c24606c1e49da.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
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
index 3ce10c9..ac36a4d 100644
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

