Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 236FACCA473
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:59 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web11.9249.1655559894322607100
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hVcmzlas;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id p5so676101pjt.2
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=uBtorqjtfx3Um8itoKganr41+b4doQHcKOGYD76A0bY=;
        b=hVcmzlasTIfD7TRgE8DkQo+X+Mos3wnKnSYYJDJfbdfI/aPJAM791Jckgbx67WMIRW
         NHekt0y+Zonfj4uBhLUUa6pp8w5nfKX8gTLpN18wMTea/Rkxb/071sJYXZ7gyV7/b383
         iW9B0mFkQCI4yPk+uk+FT9tLZdk72mtP/wweZO4K5SISzsxtTGdjC3hhdPEaECE2xWdG
         DogAgGUdRX2QsXTWDUpxvlTcC6t6LgNthRrCp0wm97ozRp3nQ0ZQiA/MK0jwSedGIXFi
         RAcVfC5N0zW/Zcg5q+taHJVMJsm0c7COmgi1B5x0eaoFMgjg/mpw8JlNr8kqGujt6Eto
         +3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uBtorqjtfx3Um8itoKganr41+b4doQHcKOGYD76A0bY=;
        b=1hP/ONtz9Ln6cBm6R/LRlpNyjXzniZH3Fnb6s1/8Rrx++oR42zjEsKfPTCINR1iqMo
         XTeeug7ZMvXdfZxR6uvd4W3G7pE69PGIhtwDn1qf5be1zYHWkKkqWGXowTPU/XWII5F5
         IbQQ/3i/kFUWfloFrnCfXgwbkVkd3uEilDF04AG+rr7H0uwKgR/x44aSf7tHFdHUJYBp
         qnXWiMGfspIaT901+Imzu1pSM9EQrI/HFQVVhfFMFdBuTMjFSdAfu8zox8IA0WW9cUpJ
         jQ2LVCfvr4stF7M7HJz52gW+XCTVKUQnzETm04Qc6YdjDrHbqdNeFdcrajd+aYoDeDyM
         WGkQ==
X-Gm-Message-State: AJIora/uHc7mwlqJ1OjclJZGfFz0K7SDztf1ztKsl7KWs0woLOJdbYnb
	Cp9qTN3XIk+VbxcnloyXzBTuCiH/eA8=
X-Google-Smtp-Source: 
 AGRyM1vJq1DqIBbruea2eJAkt6jDfTnwsRxzBQEwwVOh5EX2duiccySa6Xfnd4RCIwsHUT+IXxyCGQ==
X-Received: by 2002:a17:902:d716:b0:169:78a:11d4 with SMTP id
 w22-20020a170902d71600b00169078a11d4mr12653385ply.90.1655559893454;
        Sat, 18 Jun 2022 06:44:53 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 9/9] aide.conf: adjust to allow for build time
 db creation
Date: Sat, 18 Jun 2022 06:44:35 -0700
Message-Id: <20220618134435.2370878-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57351

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/aide/aide/aide.conf | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/recipes-ids/aide/aide/aide.conf b/recipes-ids/aide/aide/aide.conf
index 2c99e07..c4b917e 100644
--- a/recipes-ids/aide/aide/aide.conf
+++ b/recipes-ids/aide/aide/aide.conf
@@ -51,7 +51,7 @@ report_url=stdout
 #crc32:  crc32 checksum (MHASH only)
 #whirlpool:     whirlpool checksum (MHASH only)
 
-FIPSR = p+i+n+u+g+s+m+c+acl+selinux+xattrs+sha256
+FIPSR = p+u+g+s+acl+xattrs+sha256
 
 #R:             p+i+n+u+g+s+m+c+acl+selinux+xattrs+md5
 #L:             p+i+n+u+g+acl+selinux+xattrs
@@ -70,10 +70,10 @@ EVERYTHING = R+ALLXTRAHASHES
 NORMAL = FIPSR+sha512
 
 # For directories, don't bother doing hashes
-DIR = p+i+n+u+g+acl+selinux+xattrs
+DIR = p+u+g+acl+xattrs
 
 # Access control only
-PERMS = p+i+u+g+acl+selinux
+PERMS = p+u+g+acl
 
 # Logfile are special, in that they often change
 LOG = >
@@ -83,12 +83,9 @@ LSPP = FIPSR+sha512
 
 # Some files get updated automatically, so the inode/ctime/mtime change
 # but we want to know when the data inside them changes
-DATAONLY =  p+n+u+g+s+acl+selinux+xattrs+sha256
+DATAONLY =  p+u+g+s+acl+xattrs+sha256
 
 # Next decide what directories/files you want in the database.
 
 # Check only permissions, inode, user and group for /etc, but
 # cover some important files closely.
-/bin NORMAL
-/sbin NORMAL
-/lib NORMAL
-- 
2.25.1


