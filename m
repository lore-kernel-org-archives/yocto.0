Return-Path: <ranjitsinhrathod1991@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07C21C433FE
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 17:00:40 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.40.1649782186045200164
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 09:49:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Wx/7AhSV;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: ranjitsinhrathod1991@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 b2-20020a17090a010200b001cb0c78db57so3645387pjb.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 09:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id;
        bh=gnMYgito/Kmr6ybRwOYRTumEnLWjROGVUKeXp80prU4=;
        b=Wx/7AhSVIHfTTXHR+RTwsiaOt3Zag3lvYhijOAhTXH8mXMJa/r11j36o/1ommR0K9F
         O0wdYMMXgE7e7v44kmt9t3Bt01BTtwMJdoOw3ndJV4pJF/wmncfh7AfPDY50yL0eUgno
         FMlmNsTM9bpjqlpTokMNj+mx+5SevU/Wo1UIjLWjhXUgd2Nc9KEoVvWBvkPtk+JDB7I+
         i/gq/Uc/pAhyk+n2svTslIJwAi1kyVWS1lF2KxJUo3NytDfXL8wjWdGXyg4JL/vwqgJI
         RV7xOeWJaWj/ZbUkelITBDjMjE3NnOSiFaomUnDzCDZ2ZlBa3sDk0jNiRJyNvYN3iTJ1
         uobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=gnMYgito/Kmr6ybRwOYRTumEnLWjROGVUKeXp80prU4=;
        b=UagrY1fVTmdsUY5NyH+XSW+cNXG9UZpHZ9DIgk0sv9Q1qL4PIlJJLBoAxWvy8zWyr6
         uD0BpYzMe2VI3QSkBXV2x8tFyuZhGNF+EpD0UKzbY+XKBu2+Wj7SiMkG9X37DTLvrTsq
         /zYnY0ngjeBTfKsXbfl8Gvlv8giruEQSjw9n01sY/x771PWJgNqTylYXjD+rzhV+ZNs6
         BNLLly3p9gqYo2wQusy7n8zLezRX6I4gm5Fr6u8FEZYu1KlzCDJM9fvcznX14Hk9iy1j
         6ODWIwamzT/i70goKc3S/vMIerfJFR5OU35W4ljN3TGW+Mrv9UhZKSIFsQhLRPZABoBk
         5wqA==
X-Gm-Message-State: AOAM532asSU9JBGzEobtr/EGQT9RWmp5bGNeFPJo43cTCvU5GdNf+f3w
	dkjITT/rWPHkdognZyUXdXBZ69Az6co=
X-Google-Smtp-Source: 
 ABdhPJxNevD1Eqfw+4IAJJmQXzyzP9/LjUBl+ZQoMxHnxuoUAfXuTbbnsGaLceBKLFy5vYo6RpDl/Q==
X-Received: by 2002:a17:90b:3889:b0:1c6:408b:6b0f with SMTP id
 mu9-20020a17090b388900b001c6408b6b0fmr5953240pjb.43.1649782184949;
        Tue, 12 Apr 2022 09:49:44 -0700 (PDT)
Received: from localhost.localdomain ([150.129.206.209])
        by smtp.gmail.com with ESMTPSA id
 d8-20020a056a00198800b004fab740dbe6sm39749942pfl.15.2022.04.12.09.49.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 09:49:44 -0700 (PDT)
From: Ranjitsinh Rathod <ranjitsinhrathod1991@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-selinux][dunfell][PATCH] samhain.inc: Correct LICENSE to
 GPL-2.0-only
Date: Tue, 12 Apr 2022 22:19:14 +0530
Message-Id: <20220412164914.7602-1-ranjitsinhrathod1991@gmail.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 17:00:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56755

It seems below change done manually and so LICENSE variable modified
from GPLv2 to GPL-2.0-or-later. But it should be GPL-2.0-only
Link: https://git.yoctoproject.org/meta-security/commit/?id=c56ae450c93a1383a1ce800a32a6ef2c3fbbae1c

Signed-off-by: Ranjitsinh Rathod <ranjitsinhrathod1991@gmail.com>
---
 recipes-ids/samhain/samhain.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 5c1d6f5..df9e215 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Provides file integrity checking and log file monitoring/analysis"
 HOMEPAGE    = "http://www.la-samhna.de/samhain/"
-LICENSE     = "GPL-2.0-or-later"
+LICENSE     = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
 PV = "4.4.7"
-- 
2.17.1


