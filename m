Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web12.22378.1627247773822020610
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Jul 2021 14:16:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lIdgL9FL;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id l11-20020a7bc34b0000b029021f84fcaf75so6897410wmj.1
        for <yocto@lists.yoctoproject.org>; Sun, 25 Jul 2021 14:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L53DleDJ8ghzOkN7yCLNldzhsBELwN+BbxkcqcXx6gI=;
        b=lIdgL9FLjN78+FqguvhNV5CkGiZvRwBoe4zHhczU1pwjBEOAKvl5X4SOEJOqa8un/+
         ipFt31V6yH7KD3994dBHVhtsTlYjvysJlCa+lCbvSPmrgiXTbTpaXQvT5l791bsNJ/En
         Og2/6iove7a5eSWdK0Q7ZHRCdwx89fGFz3VJGWFqp3ml8hXsIgaJrEbL9IjCzx6/B6qL
         gBs7qnVN20DhGVW7vQtIAunrFU8Qiys7dd9+jHpgsdGc2mke1OU8zpL1Rp61PFTTU5DG
         gW1hgs8OENW2sxp5Jv9FV9KO1umFF991ZSkjVtSY+JXRKe9Yb9DxeU6OJuYbALfOe/8t
         eXyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L53DleDJ8ghzOkN7yCLNldzhsBELwN+BbxkcqcXx6gI=;
        b=pfi4uTAlzLrcvJ0+fQJpm+9zAAdE+z0EJMWaYxPj5ZlnN3ZjkYtpZt5Ev6Ni23IMf/
         hSp/nxNKglC/um3gL5EFgtsckROI3CJVBYOxuPucIGoOUcI0lWpjy93eJrKBbtlT7AEA
         H8llCMtGWaY+x/e0yMMOlLFCQ1Uk66E7K48rnTmlaJrorjBxXYkBmfkVhNxfIVXUlbuy
         oUm1h8QAoFjIprezaqaHVn1srXf4yu5+0OVT2wwbewurDqfdT5K0k0Tmto7kPKd07nKR
         opZPsVB/bDRJk/nMa6SWlLkWNp88Ercik1fOlO6rKbVRuVFGQfrlOMVXfhL1DnI23Wu/
         xVYw==
X-Gm-Message-State: AOAM530hqYHpk5FuxYWDaZFAk8Q74NCLspJ47s8C3ZSJ2nhgrsJaerI9
	jOVe6tmKlkTFg+3dgEXx0o0WHRlueho=
X-Google-Smtp-Source: ABdhPJwTk+Y+02FEhRlpnfRejiYIbpMoOSu92vG+np5kcF4FlJ8K3Cc3iXFy46xLVD0BnvGKJErJDA==
X-Received: by 2002:a7b:c24e:: with SMTP id b14mr12430790wmj.74.1627247772322;
        Sun, 25 Jul 2021 14:16:12 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id j14sm3992965wru.58.2021.07.25.14.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jul 2021 14:16:11 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh-config: enable systemd only for glibc
Date: Sun, 25 Jul 2021 23:16:06 +0200
Message-Id: <20210725211606.155910-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is not guaranteed to build or work otherwise, and causes
update failures in unrelated recipes when building for musl for instance.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/local.conf.append | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
index b18590f..417d228 100644
--- a/scripts/auh-config/local.conf.append
+++ b/scripts/auh-config/local.conf.append
@@ -1,4 +1,5 @@
 
 INHERIT += "buildhistory"
 LICENSE_FLAGS_WHITELIST = "commercial"
-DISTRO_FEATURES_append = ' systemd pam'
+DISTRO_FEATURES_append_libc-glibc = ' systemd'
+DISTRO_FEATURES_append = ' pam'
-- 
2.31.1

