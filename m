Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web11.7902.1620872714257689278
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 19:25:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYi1Xort;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id q2so20259753pfh.13
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 19:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ivrUwyZuvyzrl3tn64AWFFZegv1g9sDMQRksU6DSjjk=;
        b=rYi1XorthAHc2XXyJ76eo1kBI8t7AJEQK8nJEir0EHt7d6PLc7Ih/MnxRk8iX8Jj6U
         Y+HclDIfNa/U2BZQuDh3ACeJI6c8GMljqT+llbp/QDKbfsv9e1CceOe+NC3QJ65uek6L
         EKeM4YXFgoXjWFbvb+4I/nFbD6z8T1cXdQAPB8Ump5ERbmimNQLP46Eeggh7CTCEyHOB
         +WFYsj310M2CxlBj0I9nQBOKO+GWsxlLLlbk9uT6+f77g+iGqLt2H1qlfa9+ekwFx+UV
         vQwFpcKhWemtUYk7KDybWbQDAYVsF5sBTqAvwJgYjo9boCtl9xXrW8sWS1XE8gEG0Z91
         qGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ivrUwyZuvyzrl3tn64AWFFZegv1g9sDMQRksU6DSjjk=;
        b=Yguy0OywqrWf1Jb/cP3Tbd+vEdLnmJRxWlNY3kJOD1MgMjoYSC7UQgvmTx4qUPPLmJ
         qubmzN+vvqNrFWYeDmKjeml17ML7qmSfltlJQpFNas7OHG4hsUh+YuOsjsz+4vXJvo7j
         MVIk8Ff1ANoXgEJTBwNKZAJJFuiajnAtsg3h+GniBDG8o5pdKqofoMr41kbB8tcGv0et
         tLc9BFpkv5fjyGhrr/NdYqjrztgKdq8p8gCZgLVoD1W9anj7Xw/CvO/v1rLxsf2sStlV
         Wp3HIZX1EyvYgrW5/hM2G1kn8kLBJE3qkukBLCTXJgviXkjEJRz+OQgDpRq6w4mxkmcN
         u2Kw==
X-Gm-Message-State: AOAM530vCJf47neXr8jiYLVf+RABf/F40tSSBiW0Vr3y6ux/9So7reS2
	hnewvRbpRhqITMPAJW9HZQvaEWy9b6E=
X-Google-Smtp-Source: ABdhPJwad7nYlemwVQZxXrqHoi+K/r1o90yDGMot4Ng+btEMaXY3u0h7r3g7ZEG1LwYpi/cDQkrvwg==
X-Received: by 2002:a62:28b:0:b029:28e:e592:fe65 with SMTP id 133-20020a62028b0000b029028ee592fe65mr37933535pfc.75.1620872713641;
        Wed, 12 May 2021 19:25:13 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v12sm870777pgi.44.2021.05.12.19.25.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:25:13 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/6] packagegroup-core-security: fix typo for mips
Date: Thu, 13 May 2021 02:25:07 +0000
Message-Id: <20210513022510.3370797-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513022510.3370797-1-akuster808@gmail.com>
References: <20210513022510.3370797-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 6d2dd7c..54b8297 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -79,8 +79,7 @@ RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
     "
 
-RDEPENDS_packagegroup-security-mac_remove_mips64 = "apparmor"
-RDEPENDS_packagegroup-security-mac_remove_mips64le = "apparmor"
+RDEPENDS_packagegroup-security-mac_remove_mipsarch = "apparmor"
 
 RDEPENDS_packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
-- 
2.25.1

