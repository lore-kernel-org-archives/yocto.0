Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web12.183.1631637549287693023
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 09:39:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=c+xI8+oo;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id v2so4689460plp.8
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 09:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1gyWNiaqKhNtRFZIYISiol03W+RE8fNJQ9Mvkr5Oaqs=;
        b=c+xI8+ooLUCO+DM7NR5tSVKwHyToJmx5tYjdzlK4biSpNdQyC3hhijcaP5cRS0I3VF
         4WZ+2FlWoJcwkzcXtJJEIPMac+YhjEnIetzhl+sD7LpOwuLJtK3L/9y3cF21KXjb2biB
         yJQNSfBC8Ap/uSzwGfou2cWFzVF+DRfvv9hztSP7NSlTCFo1vxYUPKfr5Oag8ink6fR9
         xJV5uaTggJziwpwwNRlI+mRziTyKDL508Ma7oLc1IVOO3irO4VAeuSExPcKv7rAqMMbA
         dPlMmf3zyDyZiubypsRMcKBed6LfoHJyljXh4xEd1NmsoduwvgBpoDnf55ymHpOYEEl0
         RGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1gyWNiaqKhNtRFZIYISiol03W+RE8fNJQ9Mvkr5Oaqs=;
        b=BozwrL6HlGiLh0RFafg7Wlne0XqixtxRXR/wtdKhnZTRvNKoGKjmIyiY+5ffaDtXka
         PZ/k4yH9BCKMYUUFVysU2Lc1qPqMO9Y0QC0fQtj9TC/fvVYhze6RRNw+pmEy4r7KnY7T
         Urs4LOg41dFQrgAgRuNGr0a1Vf11We47KlKbrMyEU+5MKNW2QPR6wafDe4rMEuF9090i
         uLrD7X8X1Ji3eaUAr6zqTjgVhoVe+zRl5MqRWE/3E34PE+q6MeVukA7jiexXzE5zpT44
         bWwmC5WgfL2sELvk8bxmNIeXNPrB525G+PxdXY4QAao7j1bDGoB7DAddpZFb78ydx+ny
         JZ5w==
X-Gm-Message-State: AOAM531ADKvJukPB/xkSB3V6iGRpbcGXU6Afsiw887seyi1tuGSIOvBT
	ES1KslkwV1QcbxnJQQ6+piPeYriXz9g=
X-Google-Smtp-Source: ABdhPJxp/82RvCvypxu0eVmnBx7Kpb8kfmb73dHXs4Yd8sb44D2iq8W9sxygwioGqvjdJ6XNdvCYYw==
X-Received: by 2002:a17:903:234c:b0:13c:7a6e:4b43 with SMTP id c12-20020a170903234c00b0013c7a6e4b43mr5576802plh.29.1631637548282;
        Tue, 14 Sep 2021 09:39:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:35e:ec78:cef4:300f])
        by smtp.gmail.com with ESMTPSA id b7sm10591600pfl.195.2021.09.14.09.39.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:39:07 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/6] trousers: set precise BSD license
Date: Tue, 14 Sep 2021 09:39:01 -0700
Message-Id: <20210914163906.126666-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"BSD" is ambiguous, use the precise licenses BSD-3-Clause

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/trousers/trousers_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index a746103..5e03b71 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -1,5 +1,5 @@
 SUMMARY = "TrouSerS - An open-source TCG Software Stack implementation."
-LICENSE = "BSD"
+LICENSE = "BSD-3-Clause"
 HOMEPAGE = "http://sourceforge.net/projects/trousers/"
 LIC_FILES_CHKSUM = "file://README;startline=3;endline=4;md5=2af28fbed0832e4d83a9e6dd68bb4413"
 SECTION = "security/tpm"
-- 
2.25.1

