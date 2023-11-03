Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20A1EC4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 11:11:15 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.49395.1699009874276106772
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 04:11:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LOo4XoIr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.172, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2c6efcef4eeso22593591fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 04:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699009872; x=1699614672; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=lBJiTl/bH49981PLEKdrt11XNS3gdo+AHrflG/PBi8M=;
        b=LOo4XoIrBpGfiE4/9bSe7rgHaVHiK+1rOoIXVlzPjqok26ygPkbJR3uoU2jc0JvLuo
         EAmskJSv5GCzWaVKIP455Ha+0XtCVCe9biqEtrj1k7r/YRpWF+WNUdifHY0cv+caPSPm
         hv/dDAPl56ZVZPTZHvOGZYzEPTalGkNmyn9tQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699009872; x=1699614672;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lBJiTl/bH49981PLEKdrt11XNS3gdo+AHrflG/PBi8M=;
        b=fafIQ1Zkxu2u/DuYis9/KkN2eCUuLx5+pSVnsaWhyB4SIUvYwduYr58XbaYbiHBlh6
         IsQszjsZ54kl5AjS2bvrWKtEjvYkgfHSOEHn9Fz0aFVkPjXmeAMUAt2WHF1JsMV342iA
         PEMw3h3DGCgEwHiP1d+74363+DftdqizDpz6CK8ArvzK7onp3VLttAt0/Jhm0Sjc6+cg
         dArmyrSEFM7I1dDH+dZ1PrzXLaTiWWybpfvik/We4RbgTS5gVBB5Exrkpf2fJrTWg0qe
         465J5O7kXb+Tgqkw7gf72Pt1FhjKk7aKupuqfiAimUegnjV7nCLhD4EbwrdfCAYyz2iF
         P4RA==
X-Gm-Message-State: AOJu0YzwIQzgxzhVLa7QyY9LSp3WhmINXqRAxgHcWNY/rf9Dpo9ZuGhS
	r5kmZsR8XrpvxyHdbMXw8oMidYbQAdJP+wTxGa4=
X-Google-Smtp-Source: AGHT+IGxXw1tufdRvko0VYW/o9sKfdvEKviMvDBCARf8ESOrUdk9Ib9ZsAejNdlD2ZP3OehPac23iA==
X-Received: by 2002:a05:651c:1253:b0:2bb:a28b:58e1 with SMTP id h19-20020a05651c125300b002bba28b58e1mr14979576ljh.41.1699009871901;
        Fri, 03 Nov 2023 04:11:11 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e0d8:6688:b1fe:2c10])
        by smtp.gmail.com with ESMTPSA id r3-20020a5d4943000000b0032fb0e2087asm1590984wrs.82.2023.11.03.04.11.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 04:11:11 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Fix upgrade helper conf path
Date: Fri,  3 Nov 2023 11:11:10 +0000
Message-Id: <20231103111110.2640493-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 11:11:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61593

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 7505e59..ee13bcf 100644
--- a/config.json
+++ b/config.json
@@ -1467,7 +1467,7 @@
                     "git config user.email auh@yoctoproject.org",
                     "git config user.name 'Auto Upgrade Helper'",
                     "git switch -C tmp-auh-upgrades HEAD",
-                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper.conf ./upgrade-helper/upgrade-helper.conf"
+                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper.conf ./build/upgrade-helper/upgrade-helper.conf"
                 ]
             },
             "step2" : {
@@ -1504,7 +1504,7 @@
                     "git -C ./meta-openembedded config user.email auh@yoctoproject.org",
                     "git -C ./meta-openembedded config user.name 'Auto Upgrade Helper'",
                     "git -C ./meta-openembedded switch -C tmp-auh-upgrades HEAD",
-                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper-meta-oe.conf ./upgrade-helper/upgrade-helper.conf"
+                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper-meta-oe.conf ./build/upgrade-helper/upgrade-helper.conf"
                 ]
             },
             "step2": {
-- 
2.39.2


