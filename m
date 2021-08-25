Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web08.11259.1629872415459784774
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Aug 2021 23:20:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ku1tPSGv;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: rybczynska@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id q11-20020a7bce8b0000b02902e6880d0accso3457396wmj.0
        for <yocto@lists.yoctoproject.org>; Tue, 24 Aug 2021 23:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aN+CTX8hE/Wa6rrXuoDUUZxoszMSq4yQ6cC3jO3JY7c=;
        b=Ku1tPSGv2syTE932AJvrjHcZ+J2UTx6TDrTjd1i79n75XMiFJPYmwVxJJ5YoTjXIW7
         oMqn8E1epD21/zz8plC14lFW/MD6xpbVG846VDZBl2mbaFvWiRXfmPfHf8A/J8oUqbuT
         7tBiGrtHrn8erW5P2FczK0aKO6Cp7faWExvsI3kq261rtgP4iuTXSxpUiMxBi2nNIkgB
         KjJCktXBoY5tLzMBwJDfFBOf1ZHuxQaTcBehR1gMfGMhbxR/OuPg23dLcccGSY78zZjt
         VvC4mwqTgRB7L1kvOqe2fwoS4xxUkdKdFPSVRCNHDIoHnAf6GlLFxRj/97zNYoGp4AbH
         fdhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aN+CTX8hE/Wa6rrXuoDUUZxoszMSq4yQ6cC3jO3JY7c=;
        b=VULbfvhMiuyxe2DGXUDhvAj45yMdLS6OOLDNtJ7IVwHcr8uaJTWDYFMTCBCI2YNw3G
         9ID/Vyn+oXSKTKtk1G8QAdT+A7JZHUPi1nvgnCPM4KroyTnDNa7uZzJYInrZ57zraXmO
         NHwqNFkHtsmxFUISPhOS2XlHbaJIpP/duP+4XUP0hEx94lcw/MXpHjSXZ6P5iJUufhBC
         11kK0J92Lpg9E4My6VWdnBwCA433mIxzl/VzkvYaEbIwgLicQweR+wUyVhB2YfBeRNYr
         x/PtSy3R8QhMTmTgZ0NlgUqXlsZgLuuWOmlYBgDf6xd0n4mw0jDYzXU09WNFDCP+2l/e
         Ve6Q==
X-Gm-Message-State: AOAM532+1gpgmreAEeQBHea5Sf+6Tg79WpM2JgIBrusPo5jBIo+0SwYR
	b+pfKDUa2eKjVIj0aTCNNtiYcCjN4y4=
X-Google-Smtp-Source: ABdhPJyF/e4vCV62wuvj6zBzDgEB3xYPaXgdmy8Jllc+FINgJGpPwNtwPDCCPk7VDjXp/whWK7k+ig==
X-Received: by 2002:a05:600c:26c4:: with SMTP id 4mr7240512wmv.111.1629872413942;
        Tue, 24 Aug 2021 23:20:13 -0700 (PDT)
Return-Path: <rybczynska@gmail.com>
Received: from localhost.localdomain ([80.215.138.76])
        by smtp.gmail.com with ESMTPSA id d8sm19748751wrx.12.2021.08.24.23.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 23:20:13 -0700 (PDT)
From: "Marta Rybczynska" <rybczynska@gmail.com>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Marta Rybczynska <rybczynska@gmail.com>
Subject: [meta-hardening][PATCH] README: fix mailing lists
Date: Wed, 25 Aug 2021 08:20:00 +0200
Message-Id: <20210825062000.10223-1-rybczynska@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The address included in the meta-hardening documentation
does not work and was changed in other places in 2019.

Signed-off-by: Marta Rybczynska <rybczynska@gmail.com>
---
 meta-hardening/README | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-hardening/README b/meta-hardening/README
index 37a0b7e..191253c 100644
--- a/meta-hardening/README
+++ b/meta-hardening/README
@@ -64,14 +64,14 @@ layers: meta-oe
 Maintenance
 -----------
 
-Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-hardening][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-hardening][PATCH'
 
 These values can be set as defaults for this repository:
 
-$ git config sendemail.to yocto@yoctoproject.org
+$ git config sendemail.to yocto@lists.yoctoproject.org
 $ git config format.subjectPrefix meta-hardening][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
-- 
2.30.2

