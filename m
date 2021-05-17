Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.13331.1621215311589152006
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 May 2021 18:35:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ctCw3lwe;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id pi6-20020a17090b1e46b029015cec51d7cdso2781581pjb.5
        for <yocto@lists.yoctoproject.org>; Sun, 16 May 2021 18:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CMBj7A2YzkYGlI32JFI/aizz0ixmQJlakC5yqGnHZVU=;
        b=ctCw3lwe1DTf7qiAi/x+0Gy63Q2/+RsHEAyG7Qf/aAKo1VSwJNv+GO8yuiwLx52fdY
         2zF7oNFXvzRcx16oIrHQ/wkWD8LJOYvlRYIAgRSGbV+mKDnqvrUQok78ZdJKGdOejEfb
         TEJlU0+WZcnKsAkfAeB5toSqCnMr6rVhEkDnV6cFPSyNsptf+DFyX6ZAjCmJZohz/GkM
         Ln196vCrPIsFjA24pmGsZR6rx4O4gmO4ot7E9d6QFefKuP1jgTt5X2XQ1BCitsHBjVvp
         Thf2C8gtpkPxhAUIG+znRq4ZdblfFSUWqeikb/0XSKhbOASmwi5rmjUMFrqDoGaQo1qo
         E37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CMBj7A2YzkYGlI32JFI/aizz0ixmQJlakC5yqGnHZVU=;
        b=jCzIFQaN0lxtwr7hNrLtRz9NFM1aF+dSkKW/Af9Q3kvmhNpjfsUuV6hQobbUr+TspV
         on+/aRij+cnsYSCp/lOPL0Kdd99VXmeCiosBcxVcwc320jeTNnkYktv4sUWoh2/h9dr5
         Mcn+CkvRn7BIL7rrCoOLylYRdqAWgLRmeT28Wl+tYtx6/RppciH8gTRetJ6f4cIdCCBS
         K0zLlKs4auB83JYbcKuq8hqKotRymR/Ldjl18hr9j9DecCIDAtCd/3mV4hSd9ZsA9vwr
         UvGsLWJW9zMf7y1/Km2TzDSEfIWScJMLxXCO6UuCWIx89li66J7CwSYCkpm08Qf+8lEd
         JsAw==
X-Gm-Message-State: AOAM532npdDDgOUMR296omtnjGnpDTWMpQQ2JXulvAEjJBCuupVOmQ1B
	Iuocw33W8ppfb9PTcBg95XW/XXd3V6s=
X-Google-Smtp-Source: ABdhPJwTWvvdBSPuUkq4rEmLsdUndTyJJYR6+5+f2Ox3RwEBaQABQGOgvKDgTuG/V/cvEC2fA0AM0w==
X-Received: by 2002:a17:90a:5310:: with SMTP id x16mr166457pjh.169.1621215311042;
        Sun, 16 May 2021 18:35:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t1sm8910659pjo.33.2021.05.16.18.35.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 18:35:10 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] lkrg-module: update 0.9.1
Date: Mon, 17 May 2021 01:35:07 +0000
Message-Id: <20210517013507.4023975-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517013507.4023975-1-akuster808@gmail.com>
References: <20210517013507.4023975-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LIC_FILES_CHKSUM updated do to yr change and adding new copyrights

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lkrg/{lkrg-module_0.9.0.bb => lkrg-module_0.9.1.bb}       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-kernel/lkrg/{lkrg-module_0.9.0.bb => lkrg-module_0.9.1.bb} (84%)

diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.0.bb b/recipes-kernel/lkrg/lkrg-module_0.9.1.bb
similarity index 84%
rename from recipes-kernel/lkrg/lkrg-module_0.9.0.bb
rename to recipes-kernel/lkrg/lkrg-module_0.9.1.bb
index dbc195d..287b4e8 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.0.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.1.bb
@@ -5,14 +5,14 @@ SECTION = "security"
 HOMEPAGE = "https://www.openwall.com/lkrg/"
 LICENSE = "GPLv2"
 
-LIC_FILES_CHKSUM = "file://LICENSE;md5=d931f44a1f4be309bcdac742d7ed92f9"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5105ead24b08a32954f34cbaa7112432"
 
 DEPENDS = "virtual/kernel elfutils"
 
 SRC_URI = "https://www.openwall.com/lkrg/lkrg-${PV}.tar.gz \
            file://makefile_cleanup.patch "
 
-SRC_URI[sha256sum] = "a997e4d98962c359f3af163bbcfa38a736d2a50bfe35c15065b74cb57f8742bf"
+SRC_URI[sha256sum] = "cabbee1addbf3ae23a584203831e4bd1b730d22bfd1b3e44883214f220b3babd"
 
 S = "${WORKDIR}/lkrg-${PV}"
 
-- 
2.25.1

