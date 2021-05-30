Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web08.34031.1622395109715695316
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 10:18:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qIpKAEKg;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id 11so536868plk.12
        for <yocto@lists.yoctoproject.org>; Sun, 30 May 2021 10:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5ZbXQ7x4wETCu+l2vSHCUakrr52wds/ImNs59pBD4TY=;
        b=qIpKAEKg4HLw7QSoy2qYTPxavKudFfey/0bJG2/wLJYYy/St9jTzPx1nLUX225nfGN
         H0qShhCc/LNbKj7CaIyrBMnd4SfHYCH2QcV2krJnKccjXCwXwqt1yw+Qhw7iG3oWKblx
         cy9EMClf+Kw6alXI7G5kFFDfz8m4l6svCeNqIsm2yMtL4ZWA3n+MOrftfpSnC2YTeq0n
         Xg9ISa7t/U9i7CTb0ah8VUIGggOxWTZMjrjTnSXqzmgpGFXSMdYNsS/MEpRwsVxr+t1z
         WX8+FJhGFToh//nU0AnNGtRRiPQ3c/GhPvaxFySHCRolicVtp2VznpPRRIMUaAx/yJ2/
         1UKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5ZbXQ7x4wETCu+l2vSHCUakrr52wds/ImNs59pBD4TY=;
        b=aebaPi7AKFfgYA2gbJC1DzHqxcXzW96bGGmGK3VZvJkxRFt1jNfJ1UTLM3sFP3GFyw
         ID3VeqCguXXtlPx1HL/D3Vv9F8hnSvo+iAyHjePsabx5aaqRI/pagMERJ9Wban8u1Mzo
         7X8bFy0E+IW+8Oc2pY93IElI30D43lnEATWqyC+K2xztUfmgl1INGrR9qm7KuAEYU095
         xB2/bnd043GfipueQW+z9KoUegOeVymZMk2vTN45QEj4lHQoxOH9jzV2HJYOuOvI029a
         DumfYQyDF1uTbrST5qQDOR7ej5BVdTlO08/VU+5d0rjYlL3EvHx6j9Ju+ZdycxC/wyTz
         SMPg==
X-Gm-Message-State: AOAM530e7vUOkFh0rhpeqjqL73QYKWx4tkbW7CPd4/Lr2GMu01Th6K6m
	YsEyTsXvq+nBcitfoqg8amAPH6ZYwXzwOQ==
X-Google-Smtp-Source: ABdhPJxxBEpZD/HXPRjhiztdYUgpu9phpSNJmmMdL5KatA/kIyoYHvxpqOmzc8wWO5+t8Ayao945UA==
X-Received: by 2002:a17:902:bd90:b029:f2:c88c:5b2c with SMTP id q16-20020a170902bd90b02900f2c88c5b2cmr16911266pls.8.1622395109193;
        Sun, 30 May 2021 10:18:29 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x1sm8572548pjk.37.2021.05.30.10.18.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 10:18:28 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/5] packagegroup-core-security: drop python3-scapy
Date: Sun, 30 May 2021 17:18:24 +0000
Message-Id: <20210530171824.571143-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20210530171824.571143-1-akuster808@gmail.com>
References: <20210530171824.571143-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index cf9620f..e7b6d9b 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -37,7 +37,6 @@ RDEPENDS_packagegroup-security-utils = "\
     pinentry \
     python3-privacyidea \
     python3-fail2ban \
-    python3-scapy \
     softhsm \
     libest \
     opendnssec \
@@ -89,7 +88,6 @@ RDEPENDS_packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
     libseccomp-ptest \
-    python3-scapy-ptest \
     suricata-ptest \
     python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
-- 
2.24.3

