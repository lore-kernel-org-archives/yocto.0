Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web12.1383.1632322891060219564
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 08:01:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=7b93B/yS;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.42, mailfrom: steve@sakoman.com)
Received: by mail-ot1-f42.google.com with SMTP id w64-20020a9d3646000000b0054716b40005so3879918otb.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 08:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MsftV3vgeyOuKlXIEkfjQ7QDHpIxe0qCrXCwDNUef5k=;
        b=7b93B/ySMlUTYPJFlk/VomUthR0ODIgKl+02KN41b8l0sbXh+j2U3q6rLseSYj0u9E
         m95kzz8hfn/jiYk4qgLNigaW6Lr+kQfxkL8JQkl6KZhRuOGDkGCcE2SqtooEgYflE1Z3
         /iEabX/+jUqcWNXRu2dzykNckm+ubQfaPY3DVQqKcXkuGjlYVFENWedoElnWIx+bDCUn
         s+8CWkQs0adoTSPYEBXTjY3OGZhotW/nh0oSZQOMCOz4C9/fG69rwFa5ktYpobLh/xqh
         bgGy2lMCrf5+7lZNy3UnNwf3r2O7uOh1jXA5Z5xnQtjJLIbr5Ft2V79QQgeZqLqK7v7l
         05Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MsftV3vgeyOuKlXIEkfjQ7QDHpIxe0qCrXCwDNUef5k=;
        b=7hqHvO5f0BhvH7DzOmZs4x+VWEI96EOA5MbDGL2B95+6blc/mmwFhdKogx0WoVyacw
         jpPGteeGMGw4EMPJ3y20ZsS78rym6PtXaN5Yg4tB8paV03p2qt99m3Nz6KoRb4FWy6iZ
         luNidPZ20kHkytdw2cTzPzN+Z52/V4cOkKlAgJwDYSL12xdb+Pbb1oecsxddcrFAhFd9
         i9EaHG7Bsi+Y/PWZdP9oY/ThQHuo0bmswQnktklRltFge7Dh82IXDqo9cuNk9h+xac8V
         JOTLm8e1uGhoXvQrngUHNiXDgjm/ymeinjhQVOgzrdx+VPm6Dql2Za2Xu8sZZAkv5ITI
         UZIA==
X-Gm-Message-State: AOAM531R/Mqp3Bsjiy8FmSDseD8MkzfPbIcFXYQCt4BPiS5WDe/wjIO+
	XtYRgiYwCRtzDVRtXgzpblCpNzVlSDIYuj41TrA=
X-Google-Smtp-Source: ABdhPJz75H7UfbtRHhdbryaQ8l3RqAlHqaC5j5aAE63SV3ch8R6/doqf5wUWtF4bbWquG0YNQSPc3w==
X-Received: by 2002:a9d:411:: with SMTP id 17mr185093otc.239.1632322889593;
        Wed, 22 Sep 2021 08:01:29 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id 14sm531174otl.50.2021.09.22.08.01.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 08:01:28 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][dunfell] config.json: Ensure BB_HASHSERVE is set in SDKs to auto
Date: Wed, 22 Sep 2021 05:00:57 -1000
Message-Id: <20210922150057.1841360-1-steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4689763b513521fc70cca576b88035de240a3ba6)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 571ddae..fa475e3 100644
--- a/config.json
+++ b/config.json
@@ -31,7 +31,7 @@
         "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
         "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate-dunfell'"],
         "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate-dunfell/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
-        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'"],
+        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'", "BB_HASHSERVE = 'auto'"],
         "BUILDINFO" : false,
         "BUILDHISTORY" : false,
         "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'", "IMAGE_BUILDINFO_VARS_append = ' IMAGE_BASENAME IMAGE_NAME'"],
-- 
2.25.1

