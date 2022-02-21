Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8CCC4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 21:14:59 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web12.4582.1645478099121220729
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 13:14:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gHvHzYmq;
 spf=pass (domain: gmail.com, ip: 209.85.214.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id w20so13856202plq.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 13:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=p6Fgk2hG7x1A5Mk4TQo9EUNotrxWqdJoZPV4JudPbfk=;
        b=gHvHzYmqvmiAF75rrFXyt6Z/J2Sllh0gD167vpPWfZYnkr/fivw7kfneaNaK08mAUY
         Z2r3Tyfutn9a/8a7FrAtbsadg2auMGpzDCNajY+m5Dh9TopkFfPaKXwfb2mMNCnTj4G7
         daOS9mWsxU7dpS7Md09iscQTWZ5X7xZQJzrg9pMAVh2+OT87nsUy1Xfow+rZSBXKot0B
         lHNwesWiGjFzGmd0hi2jajBqSGrjHFhXQqvqOFgnPTlFv89aaP3u2fz5iOqF674Ecd/F
         kbyI8hn7ogCmJi2NrtULkNQkyWXNf+xopA6mCvkNJ7XybFm5P2NhbgeKizXn3XRv+wqk
         RdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p6Fgk2hG7x1A5Mk4TQo9EUNotrxWqdJoZPV4JudPbfk=;
        b=WBoEXFF6h7ZKVpS2z3e+Qd/7NhgD1lsGKDxCnAOv/585KG017ii/fqfC0XTRSvyOzz
         PMBgetpZxKvhrb9h8XmGokB0QSjgujzML4UTsWnbUDfXgs1CQGQ4D4LWWXMG+KBoBi0Z
         Ot1CyrNkTK7FwZOcDNt12cr3ClqoxdrOYKPEE5GQBTF7bCb2dwjcf1IwsUjiN6dU1wKC
         ZaTcSy586MLgSJVBl63xAl8kbBk3a8BTR7Ymw/X4Ehlvg/XTVbH07KY4HkTpAAuWRBkw
         XRuj8z4a2xuf4rtNipFeaIFQRfoF+P7YIQtpw7herjsL1i7ZA92rUuxLHedqZ/uZ/mxd
         aWPQ==
X-Gm-Message-State: AOAM530+0Nbffx4243lhPErUFmkHMGalLKRAKiu8kRDL1bqqdsjn50Y5
	GDXtcMzn0vlodzsOWfGmc1XH2JbFToI=
X-Google-Smtp-Source: 
 ABdhPJyzES5+tFxYHwCKgUyHZ5IZvVdHi4FP9aAhRCn++TPUAl93oQvO9qa3ldjGv8sWTaFNgK6ujg==
X-Received: by 2002:a17:90a:c28a:b0:1bc:66fd:b398 with SMTP id
 f10-20020a17090ac28a00b001bc66fdb398mr774647pjt.153.1645478098317;
        Mon, 21 Feb 2022 13:14:58 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c5c2:4687:1c77:58fa])
        by smtp.gmail.com with ESMTPSA id
 a9sm18827862pgb.56.2022.02.21.13.14.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 13:14:57 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] smack: Use new CVE_CHECK_IGNORE variable
Date: Mon, 21 Feb 2022 13:14:55 -0800
Message-Id: <20220221211455.1241096-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221211455.1241096-1-akuster808@gmail.com>
References: <20220221211455.1241096-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 21:14:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56226

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/smack/smack_1.3.1.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
index 79a8f5a..7a8ca78 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -14,9 +14,9 @@ SRC_URI = " \
 PV = "1.3.1"
 
 # CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 is valnerble for other product.
-CVE_CHECK_WHITELIST += "CVE-2014-0363"
-CVE_CHECK_WHITELIST += "CVE-2014-0364"
-CVE_CHECK_WHITELIST += "CVE-2016-10027"
+CVE_CHECK_IGNORE += "CVE-2014-0363"
+CVE_CHECK_IGNORE += "CVE-2014-0364"
+CVE_CHECK_IGNORE += "CVE-2016-10027"
 
 inherit autotools update-rc.d pkgconfig ptest
 inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
-- 
2.25.1


