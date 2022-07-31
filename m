Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19FBBC3F6B0
	for <webhook@archiver.kernel.org>; Sun, 31 Jul 2022 05:49:49 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web12.10885.1659246582604255999
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hBKqIjLu;
 spf=pass (domain: gmail.com, ip: 209.85.210.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id u133so1251420pfc.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+DF+lntxQd5sZfUJi9TPlzHNl26zgnuJRULrGD78w9I=;
        b=hBKqIjLuTzkZMVlL875Nsfi1dieOP2b+0exxuZmc/cfBCtO1yz89uvfqeO/9j9A3OA
         RKQIpT5XXUlF9Xm4e0NlbHof7xG5hOHTwgXUrYH4D/tya79oW6eCz006bBzP9lZKQEep
         c77wPoNuajz0LY0hvSbOF6EXodqqluX4WqFnyQc0djGpEAlDnD6mmKhfHRu63tTBoa1l
         H820V0LYdpXoy/9pGSZ2AMf2cnJzUQJTLQWvB63C405/QxaWm8hWEoiv2gdmBLOjXHKh
         Py7o+tb8eRR0Bqyx/vJhVWt/KVI/HMkW/gVBB0QhhqLCYmJuLmFvqI02dljdBNnwqWpA
         8BgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+DF+lntxQd5sZfUJi9TPlzHNl26zgnuJRULrGD78w9I=;
        b=dBOZu8y1XhuiGwM27Dh7g+f6Gk7Op8qgIpsERILHE1WMWURH90wu6UdbbL+YOkq5W1
         FfQS4JStcGfr3w/TVUaU29V7xFNG1jR2Vmoor+MWTiK9JkRO/CAaMGNpvuFmBQqClqoa
         Sdbb2wNQoL4DkLlp2oYWgLGxTbNg7ffEZOTWh6AXUbt2ZDLrxqvYM8TasccAN56q7Q0h
         7n/zjNTvHjKpbsHUtR1tA5Yoo8NsOjBXrclZaK/Gejrk0XC6/U1if6KlkqjcvU80bZXr
         5+3Wg7OrWTreWpL82KDbKbIiMXBxHmLL7i3vro4NLzArd9OoXST41wKFwpH9UdpoC+OR
         uutQ==
X-Gm-Message-State: ACgBeo3c11p8KIXXmULfxHKacqiWDglvyw3lJEn9H9Lc2jheE/z0jhqB
	NZz/NBqByIj890BvJ5hkfCSMNtH3ca8=
X-Google-Smtp-Source: 
 AA6agR7CKDAYrIglIsIeFHR84z/B/15CWY83bYV1KDwjnokgtNG+PKyA7pknIlUKI4WnDr/SJJyT1g==
X-Received: by 2002:a05:6a02:11a:b0:41b:c11e:3993 with SMTP id
 bg26-20020a056a02011a00b0041bc11e3993mr4198508pgb.541.1659246581497;
        Sat, 30 Jul 2022 22:49:41 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 az13-20020a17090b028d00b001f30b5bb378sm6039202pjb.15.2022.07.30.22.49.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 22:49:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] ibmtpm2tss: update version format
Date: Sat, 30 Jul 2022 22:47:36 -0700
Message-Id: <20220731054739.2199164-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Jul 2022 05:49:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57703

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ibmtpm2tss/{ibmtpm2tss_1.6.0.bb => ibmtpm2tss_1661.bb}      | 2 ++
 1 file changed, 2 insertions(+)
 rename meta-tpm/recipes-tpm2/ibmtpm2tss/{ibmtpm2tss_1.6.0.bb => ibmtpm2tss_1661.bb} (91%)

diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1661.bb
similarity index 91%
rename from meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
rename to meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1661.bb
index e8a3710..2daca5a 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1661.bb
@@ -23,6 +23,8 @@ SRC_URI = "git://git.code.sf.net/p/ibmtpm20tss/tss;protocol=https;branch=master
            "
 
 UPSTREAM_CHECK_COMMITS = "1"
+UPSTREAM_CHECK_URI = "https://git.code.sf.net/p/ibmswtpm2/tpm2"
+UPSTREAM_CHECK_GITTAGREGEX = "rev.*)"
 
 EXTRA_OECONF = "--disable-tpm-1.2"
 
-- 
2.25.1


