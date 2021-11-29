Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E474C433F5
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 15:14:41 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web12.62173.1638198881043806221
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Nov 2021 07:14:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SttseIy8;
 spf=pass (domain: gmail.com, ip: 209.85.214.169,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id z6so12434630plk.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 29 Nov 2021 07:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f3GXufrKrcpA6XZJDSwOT3v4WPP6AtGU+VXCys5WO98=;
        b=SttseIy8iYYeprAKHls+fsJ7VgeSygf39B/Qs7gI/u3Y/JVzOm8/d8Zer8YPAkKwLZ
         UHKXBLov9LuwQq0WNXoyirMQFydF2//hYnpaTxd0LYwBq4IC2OHsJWklSrQHDR3m0OV7
         PynkvBPEeHscrCKP+k3K+enUUuAqy4niUOIFcjYuRzrYqWLz1fvcpqhRNgFA3m0R0WkK
         I9BiUtsnmAsOzBfIF1mLI6m6HosEtKh5iWsgW7yMCRMTkLWQn8IAVVGZIlW6nsdPz4TE
         jJUZs7h0ujQVBkVR2vsTJEmewjPSQDJgaygcVqZ2Eude3lX0RMR/7uIKBXWHdR2vM+gI
         to5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f3GXufrKrcpA6XZJDSwOT3v4WPP6AtGU+VXCys5WO98=;
        b=dl7ndheQ13FiF7Hdv30VqmQgW12CNJKRIDdu7CBjIn228CkiQWzqxwg8dh8X2Prtz8
         j9SCjtEP4+uH3fHI+Onit+roj7N9RDc15YHdkzjcF8RnsO4gdNGAN3SK/tBQGxDampW2
         bQ3TD9I8p1FiPfGSWRZmKLeePpwDg1Wfu5GbftFChIZ6J4bWPG8LZS2wzqpypRnQHwfQ
         zLOQZpMffwMkV+3hSB+E4jzGElPNIM3PO221Ub17uN5RkgjtSqWfG8OAxbYdlTWGoerv
         8qffo3YMwJukHEy5LD5ELijURRZGL2kB7iuVCZDNmDcLXjoSvCxCxwbebsKecXaoHjW8
         OJhQ==
X-Gm-Message-State: AOAM531epuTZlt/eKsc6vPDnOAzazTiSbsCZs97DRLE3ZL+enudP5g9u
	xN6XRb93TaXbJPe6SfhSnfELEc15/kk=
X-Google-Smtp-Source: 
 ABdhPJwPi6cgtwgwbXkj5HT0VMAoZZxVvVRGKnfXcQptz/LlqOKuZr27gogyboX+353M40D2QtPjtg==
X-Received: by 2002:a17:902:b7cb:b0:141:b33a:9589 with SMTP id
 v11-20020a170902b7cb00b00141b33a9589mr60469778plz.9.1638198880053;
        Mon, 29 Nov 2021 07:14:40 -0800 (PST)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:98f6:148e:a6d7:2df2])
        by smtp.gmail.com with ESMTPSA id
 c2sm2622440pfl.200.2021.11.29.07.14.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 07:14:39 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-fail2ban: update to tip
Date: Mon, 29 Nov 2021 07:14:38 -0800
Message-Id: <20211129151438.2908260-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 15:14:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55440

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index 4e344c8..f6394cc 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -9,7 +9,7 @@ HOMEPAGE = "http://www.fail2ban.org"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
-SRCREV ="d6b884f3b72b8a42b21da863836569ef6836c2ea"
+SRCREV ="4fe4ac8dde6ba14841da598ec37f8c6911fe0f64"
 SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
         file://initd \
         file://run-ptest \
-- 
2.25.1


