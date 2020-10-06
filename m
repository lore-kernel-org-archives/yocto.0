Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web11.13832.1601989756937809747
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Oct 2020 06:09:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jK86TI2q;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id r10so881468pgb.10
        for <yocto@lists.yoctoproject.org>; Tue, 06 Oct 2020 06:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=fG4n8P5XkgKlIxN+CAHmTsepOO4pTKO3GKBxECQXOas=;
        b=jK86TI2qxDoyvQR4fHpU41QXEASu05nmay3hhPd2LPxy9qrJmT+3DIBfckxapI73E6
         vygG/s6NNWRwKMk7mQxqHzyMZWBjNIH3P+Y7Z7p0QoTsWp9BIzFFpnkGRn2bjeYRa4Yx
         WVyCxA4jU95dgsfjy2TSEJBKM2HZv+yGd8tNnEYWDH+u/aVmlORHOyonlMD/gdAT62QM
         /Kq4BX1rdqE+wFYdmQNKaM55IkuQK6fvqX4wuyEqkBpH1mb6SgTOkeipP97YL0vu/3to
         N7loNP06y+o/Gk7A8PiLpSu9KG170sVHVDAZ+X/shtEMsHhSm2GOGLvBL9PbPIS3E/VS
         qOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=fG4n8P5XkgKlIxN+CAHmTsepOO4pTKO3GKBxECQXOas=;
        b=mlW1rtHtHO4WTYBx8QMYLo1x1x7qqn6A9vrenQdQHfjZNdJgSwpkNlO9yjbiQheuuq
         H3k+kS9ErxYjgSlOuGHG9ARlVIrKU8LI132DuT6/T8LvsA11RjzXNrdzswjFQhoZ1449
         7cDeatyJz9m+6XqE0rsND7dIPj5NTBFmVn7+ta03oBrtShAsMKfOHjUwYbK1iZklFLq9
         lVHV+EPnDvxBfscnBuURmeVzZG9PvgT2eZ+AS0UE43cpxbLZXJdu/rnPMRLi4G3aF1LZ
         e3K1dmL+OJF6mHjEEGpHR+z8JHAVcTiFybc7zM9GzKZSIkoUU/BIZ5YK5yex1NvoV7U6
         CqLw==
X-Gm-Message-State: AOAM533gGXuzk/Pr5QGwOgtTt2Cvz/vxw/tutEJ+t775NQS5qTPQPOH1
	Oz6xy36sShDyYHz7ibNwleLCx39/UBM=
X-Google-Smtp-Source: ABdhPJzw3QjuZWkROagfyWc0XYEWj7HLy5wg6cglAl1q3zk0q+Wpi/JfvcKXKtQfyrrzHjizx1DMLA==
X-Received: by 2002:a63:d40d:: with SMTP id a13mr4143376pgh.344.1601989756180;
        Tue, 06 Oct 2020 06:09:16 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:b0a2:cae9:29e5:459f])
        by smtp.gmail.com with ESMTPSA id h9sm3110357pgk.52.2020.10.06.06.09.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 06:09:15 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] packagegroup-core-security: apparmor 3.0 ptest does not build
Date: Tue,  6 Oct 2020 06:09:11 -0700
Message-Id: <20201006130912.18105-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201006130912.18105-1-akuster808@gmail.com>
References: <20201006130912.18105-1-akuster808@gmail.com>

for now skip apparmor ptest

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 9546e0f..1a55c1b 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -87,6 +87,5 @@ RDEPENDS_packagegroup-meta-security-ptest-packages = "\
     suricata-ptest \
     tripwire-ptest \
     python3-fail2ban-ptest \
-    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
 "
-- 
2.17.1

