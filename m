Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE93C3F6B0
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 21:33:09 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web08.1033.1659043984802015929
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=meDuHd70;
 spf=pass (domain: gmail.com, ip: 209.85.216.51,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id f7so3213559pjp.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=efPFRnxYn/Ip8+uOkNHNpkOLQIUd74My9gxX5U0KXNU=;
        b=meDuHd70LM3UUfshJl75Yo7NbItST4tZvymJF4Fjr9LEpgUZoGtsSYOa1m8CLZwJ2I
         DAmaR/+B+752NujbrTsRokII4u06b2Og/y+BpfKkNZhd1XnKsaZb6VWPl/3Ax2GfyfSj
         NrH9/MOK7UXvagU7fkK3L+deX7FHXHsxA5ID/+ikNEFwZ+5x8wr93hVdbS8rXF212aOJ
         WKxUc4ApcsuENEmbSsfKlliI+1e4sMaGmMvojPW3tM0wQwEceCAuw7LGqIzORBY8vmOA
         HjRlrU9BXt2MPMv93xkeRKsYAL/vq6bB6bcZdYZeP1NpKi6t4tR9YhdM0mxwJnqOZGeU
         7lNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=efPFRnxYn/Ip8+uOkNHNpkOLQIUd74My9gxX5U0KXNU=;
        b=hbidmAXMuXeGO/pkvesbJDyoU2nLjt6H6wBIBMd/tZIAJ25vKlyDRlM/ILglEw4eqA
         PB2tOydEr16Piv3fBQAln7Gg888Gfd2df/GLYu5IZy+uDCLIhsMPqEhgfc/cfBjMOsSQ
         37kI7Dh0c11Dq7uojKlzTDNFQeqfz3Uw6EHTpqKtHsQ9utQhrUhqmbr3x5MXKpd5D4yf
         +26x8Jc9/Bq1zjRyScyMXBNoj4OEK2vlVAzQqcyrOXOwhqQwomgqmOp6/k4hnKadzMYy
         QAi1405Xf/JR/yTZ7ZjI9mAH3SOrfoPIgeGTpeTPYdULguT6ok+uIJF84iJKl1u+7Y8Q
         Z5tA==
X-Gm-Message-State: ACgBeo3haQBMyWrXjhsjNyssNMK7Olo/VuC8YQSgIKDVWWtwpRNxWseI
	c9S2n0hbJAu//MMc7YJmvMItAQgNk0E=
X-Google-Smtp-Source: 
 AA6agR4TjEU7DowLblZev4dk8gyJHoxE7nHhdWWKUxBji21RzWv/ZKiqZ9DOSon7b2gaHYgs+hAUXA==
X-Received: by 2002:a17:902:d487:b0:16d:8b0d:fd2e with SMTP id
 c7-20020a170902d48700b0016d8b0dfd2emr766657plg.134.1659043983497;
        Thu, 28 Jul 2022 14:33:03 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 b62-20020a62cf41000000b005283f9e9b19sm1207328pfg.180.2022.07.28.14.33.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 14:33:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/5] python3-privacyidea: update to 3.7.2
Date: Thu, 28 Jul 2022 14:32:57 -0700
Message-Id: <20220728213301.3138-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 21:33:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57664

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ython3-privacyidea_3.6.2.bb => python3-privacyidea_3.7.2.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename dynamic-layers/meta-python/recipes-security/mfa/{python3-privacyidea_3.6.2.bb => python3-privacyidea_3.7.2.bb} (96%)

diff --git a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.2.bb
similarity index 96%
rename from dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb
rename to dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.2.bb
index 8b6af5e..c1e3108 100644
--- a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.2.bb
@@ -6,7 +6,7 @@ LICENSE = "AGPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "4441282d086331dac0aee336286de8262d9ac8eb11e14b7f9aa69f865caebe17"
+SRC_URI[sha256sum] = "17cbfdf0212eec94ffb10b3046093cf25af71b41413b6361668685333c5a35a7"
 
 inherit pypi setuptools3
 
-- 
2.25.1


