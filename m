Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78527C19F2D
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 19:40:46 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web08.6260.1659210038738509539
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gCPhEIB4;
 spf=pass (domain: gmail.com, ip: 209.85.216.47,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id
 d65-20020a17090a6f4700b001f303a97b14so8226725pjk.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=odjvZAhOCAjoXKakswyjBR8PoaiH7HgyUC2N69ruURs=;
        b=gCPhEIB48gbsstprt5tMoV9RhtYoWWi106HqCbHRpPuD9XkSTJdxQlrigA8c2MF2jw
         X+mJpM8+qjbly4rIKCkV4hr77p1tod758T+xTOMl65WGnhVdz335rVyHayqc0361aRNO
         srF4CsbFEhoCmNKevAfAflOA1JL/gKr88yNSRmtYQb/8IKQfDrAlyuDKBMnncENzUt/d
         yl7v2I8RUFNU3ekhvQdiMHqNTCPH0EhBvgtCL7o1/FmdinwG/6mHHUN8KQn2iXAkYSjh
         yUFwIROVCxJxbvhI6Jja+v4uLD84fQeO/ZNsh02hD6RIHjn/xvxB99Gx+coASaHD1fJi
         r1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=odjvZAhOCAjoXKakswyjBR8PoaiH7HgyUC2N69ruURs=;
        b=aqN9ggL+dJO8a73HuSciG2CNBoZs/8B5isXf4k1R/ZyTXTUDES3qLECfmQFFAiu7eP
         i57eF8o9B6Wo7NzEJINnPlUCgFEZBDY0knS+lOs6KhOPzq4YaMwrKOYKhsX58uAXU4xP
         UcHXzi/6dZTABlvRB0e7cTK43rI/7tJJCYOfDIoua2oM0bK7jExlccKnaZA6GkN0gaiC
         GTlcyln0EIFkXuCriG2IhMPLSwIdj0I+opSmfBu+Y3nSpCDfaA3bO/Pxcir1GNs2jXzn
         9dQf9JNoW2Jr1h/fTdNYWYSGlt/sxWUtYtFMUeqTc40dZXQ1ZDbHkmpxVfBuTK3DYwE6
         2oNA==
X-Gm-Message-State: ACgBeo357U919YafauVO7Q0v0H8DSY0ltdDwP1AfrGBSS1A0tUtCLxKg
	dl7/8SzosgaQG5VXZOlVKLQaN9m8qQw=
X-Google-Smtp-Source: 
 AA6agR4l/+/rZ9jlc0FPwdM/k/L1ufsKhhntHwtb+RQTH09u1OGjYVT9oUW+6XEgFhCQJmRH69/36A==
X-Received: by 2002:a17:902:ce8e:b0:16d:cebc:e92e with SMTP id
 f14-20020a170902ce8e00b0016dcebce92emr9546301plg.85.1659210037847;
        Sat, 30 Jul 2022 12:40:37 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 p2-20020a170902a40200b0016a0bf0ce32sm6115665plq.70.2022.07.30.12.40.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 12:40:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] ecryptfs-utils: add UPSTREAM_CHECK_URI
Date: Sat, 30 Jul 2022 12:38:32 -0700
Message-Id: <20220730193834.1084392-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220730193834.1084392-1-akuster808@gmail.com>
References: <20220730193834.1084392-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 19:40:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57695

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index 5f8cf3c..00e8997 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -22,6 +22,8 @@ SRC_URI = "\
 SRC_URI[md5sum] = "83513228984f671930752c3518cac6fd"
 SRC_URI[sha256sum] = "112cb3e37e81a1ecd8e39516725dec0ce55c5f3df6284e0f4cc0f118750a987f"
 
+UPSTREAM_CHECK_URI = "https://launchpad.net/ecryptfs/+download"
+
 inherit autotools pkgconfig systemd
 
 SYSTEMD_PACKAGES = "${PN}"
-- 
2.25.1


