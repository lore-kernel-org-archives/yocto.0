Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web09.2236.1575426966595577835
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:36:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TP6h6Xyg;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id o8so2495460pls.5
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 18:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jGHGow177CGTOlK9J6ds+9Jajv0e2Q9eK0rI1V7Uqj8=;
        b=TP6h6Xygovr2KdKhANh9qIVEvIZWYQNaMBd344FXYRRBofekGHwQmYSfbWomy5cfVd
         zOdhYCIF0YhsNs8O/csqIiC5BlRKRlWhs73LRqd/gFeKMlti5Y4Ql+b5aYPGfvnLn4j3
         +/NNgbH/ofc43yeQIvqgi6vwPl2X1ocMDJCFKfTgYdjOlHeGQDba4rmala4j+m16MlLZ
         5tZsMvXwxQ1L4rFLZrZs7UXZnSrQkXuYE0fiDrs+UO5LNxNay48nS/N0kjghos7lR0bU
         qpSF6GXdyb48whm2AscKMDbse7+dYRT0sYUhwivj+A0rzg57WW+0tFBMRrLxxEpHtgmD
         c3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=jGHGow177CGTOlK9J6ds+9Jajv0e2Q9eK0rI1V7Uqj8=;
        b=bKNQdB84IJg5AubaCIcyJv32TcuoJwTWFcvG++KypRJ1J43DhCb+4UB1hSyWZbdKiN
         nvqDh1Vb28b3xvPpUIV6P3AerrP+YNyuIQ62spY98pk3wEc57XqNYdliSWG2qmsEwVb9
         MPL0US7oziG1feD0WHL3TE7W+tj5S3SlIqzRszwmyTdASWsM2kWzhASs1t4uCii8SxcK
         YkzTTbnN2348hh5I5vHcEmC0pjEqELvtyK0P2yJchpAYgmSGbAKiCAlUb3mcgSdgGzQU
         TCUg9R8WwRI/aI3hzMOvT+/3fG12X4ke55IzvzmplBiHSyRyeobunAk5BNho5jHpk0Lx
         8SnA==
X-Gm-Message-State: APjAAAWScdcXxhqXFCjft7McCIiM6iOlzX28YyY+rGdU36NsreI7iq18
	luU2tCit9HxumXTr1HdoYCAahE8l
X-Google-Smtp-Source: APXvYqy3yetWPKpBlRDYpXp0Am0wnP9TsAkGAaAVLdas1Od9FebPgTp37pYw0/jy5RxspW9VL3fqzg==
X-Received: by 2002:a17:902:820f:: with SMTP id x15mr1199603pln.125.1575426965878;
        Tue, 03 Dec 2019 18:36:05 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o31sm2466366pgb.56.2019.12.03.18.36.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:36:05 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/6] tpm2-abrmd": update to 2.3.0
Date: Tue,  3 Dec 2019 18:35:58 -0800
Message-Id: <20191204023602.31748-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023602.31748-1-akuster808@gmail.com>
References: <20191204023602.31748-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.2.0.bb => tpm2-abrmd_2.3.0.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-abrmd/{tpm2-abrmd_2.2.0.bb => tpm2-abrmd_2.3.0.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
index 021c969..991364a 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
@@ -18,7 +18,7 @@ SRC_URI = "\
     file://tpm2-abrmd.default \
 "
 
-SRCREV = "ac2a5a4b5a4e548177ed7a5b74cea23e00fd30b4"
+SRCREV = "ac82192df1158cb58eac02777cf15c965b02cfbc"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

