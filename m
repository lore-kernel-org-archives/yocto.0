Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F65CC433F5
	for <webhook@archiver.kernel.org>; Wed,  2 Mar 2022 18:47:10 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.1449.1646246829588885125
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Mar 2022 10:47:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Z61QWXwA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id t11so4251526wrm.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 02 Mar 2022 10:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+uBrh4zBsYttVGMFHbTtKB8HsKQUiTaHwX4WgA/Sz7k=;
        b=Z61QWXwA+wpxn8rJTNVxJeC6iUhyuahlMSFQhyZvyxsbvMtnQF91vQW6l80bs6cV6z
         0+oGnVvnbhpBX/KJixbRJ/INRR8IgIl4Ov2jVELVaVB7IQcqbCE9UtjnMcYi5ilTpUmt
         HKlDz07TD6Tf6uXfOJ2XiJh45AI/aZZPhY9cE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+uBrh4zBsYttVGMFHbTtKB8HsKQUiTaHwX4WgA/Sz7k=;
        b=WIK/Y7zSvQt5Fez5gJgQD0TzIevRDbYk3xAijLfoz3yiKLHKZxY5CbpKaDF1+jGYwu
         Tz3nwYD2+Q15f5OuErBI6U7cKjBV2wAJzXf3ubo/wuVLZsGDUGavefI5+HybZ6SYpumR
         fJBtOkJ1V++dcs0EvWPlbz76PlO/IAgGsraQBbhJ+pAtdVB9g/YwnA1Amt2jdtIExpwC
         SZZSdBwQvq8OHRlCaV7gOw0AwjQ3d1gyxKNIKcAlELObhvb3iLURMYRN3ChX3j9b27H7
         UW7qPXBcryvydB1h2nBMMYYBe5A+7909tuBnAKs+vFCF2XtO9T3pZVA2Zeo8WjmiOYe6
         Qp0A==
X-Gm-Message-State: AOAM531VxZk5inv8JjLtMSpNAuxOZZEC4vTbLy8CkN/Zyew/wPpLgkdO
	vQoY6aszcNyMmqx2hKy7dBzucQ1m3SEidzAy
X-Google-Smtp-Source: 
 ABdhPJwc6n4KaLsjJjcE0YlpZ2uSIBUl34GV9IkUoZO5+J3MM+VgxLPYeqllT45CUTXroIWznuY2XA==
X-Received: by 2002:a05:6000:18a7:b0:1f0:46d2:4444 with SMTP id
 b7-20020a05600018a700b001f046d24444mr2012544wri.265.1646246827625;
        Wed, 02 Mar 2022 10:47:07 -0800 (PST)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:8c1b:f0a1:b483:4e17])
        by smtp.gmail.com with ESMTPSA id
 a12-20020a056000100c00b001f035b91ad1sm2313820wrx.37.2022.03.02.10.47.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 10:47:07 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 1/2] disable-gplv3: Remove ptest from
 DISTRO_FEATURES
Date: Wed,  2 Mar 2022 18:47:05 +0000
Message-Id: <20220302184706.298311-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Mar 2022 18:47:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56350

There are ptest dependencies which don't have coverage from gplv2 components
so disable ptests for meta-gplv2 usage.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index 5d948cc..27cdba2 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,3 +1,4 @@
 INCOMPATIBLE_LICENSE = '*GPLv3*'
 WARN_QA:remove = 'incompatible-license'
 RDEPENDS:${PN}-ptest:remove:pn-glib-2.0 = "python3-dbusmock"
+DISTRO_FEATURES:remove = "ptest"
-- 
2.32.0


