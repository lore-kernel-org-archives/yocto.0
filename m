Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CAC7C61DA4
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 17:55:58 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.2090.1678125354236914891
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Mar 2023 09:55:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QllO6wCR;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id q16so9741626wrw.2
        for <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 09:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678125352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4rHiNsl8cm9GWbH5ZJdbOY33m+iQfMt5+XvEqoTebGs=;
        b=QllO6wCR3e081nK8SfO6sEEzhXJTN6Eq8EIXAZskeqPw7aXcCZOMWeVQTggEJ4c6OI
         nhQK4ZYCWuGsPDRQTt4kWqaUeGGqkK90kAp3H0VCjNkshqRpBrjaQS1Hvhjp09Ce5MId
         KoNK010Mo2joZMpNfMS6cK/tzr4ChTfJ4/Iy7LVsjmEcAGrmsp8+NMBcYRrpzIHwsVdw
         DdvLjNWf4j/kLVIY7bH5p2jbUrLcGlC6+x1c/JFKbsUFqWnhoYPbHXzRqd9Vq2mIu7yk
         nLoeYrRc1HBlW5L5gW8hvupqrVVoTzuMU7RhGZeJafI/LJuM41HsqWv1z5s+6IPJOjfV
         Mn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678125352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4rHiNsl8cm9GWbH5ZJdbOY33m+iQfMt5+XvEqoTebGs=;
        b=GNv9afdiQ9HyPYRMvhrCl/5rkXko0xbrDv0VN3QIGZi2yAQ9j2EUXniK13Sj2k5pQM
         P2/gu5mxNZgeE5idhC2EsTjP42gav2MCapKVxfoYYa/C4jttytI2AtTKnhHE3t/a6R/l
         wMxZsbmjQw0uBzxutbRTaKSEDnFMuc//rLLHka/cA/fTwVoG0DG9kJN6rHu9REf+CmRE
         d3fvQHi57zAd/egeE9VPrIeohGtohqJ1h5lbeFTufJ6WEzjQpVuVIsmqGRJBoOMFT2Dh
         igEC2Z7gynasmi3NeamGCmjEL9uFYqmOzeaqQVzmDfDzO9RHoa9Lm5aUwmKupgglENf0
         03KA==
X-Gm-Message-State: AO0yUKXuNEcRttgMvx3BDr1QNJLYT0HXm/av3hz224wLEFLj/mvtPWDz
	iKM3Zdw1ElaFTHmIaYn4yYCqZDqHoB8=
X-Google-Smtp-Source: AK7set9U9uhPzbLiq8rE1ogXdUz7iSZpDbZzrFD5lC0ADVxWSJAfpGevuOzF1Zu07Jm/kHj9vb3bvg==
X-Received: by 2002:adf:fa4e:0:b0:2c7:7b3:36c6 with SMTP id y14-20020adffa4e000000b002c707b336c6mr7275632wrr.52.1678125352433;
        Mon, 06 Mar 2023 09:55:52 -0800 (PST)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id j29-20020a5d6e5d000000b002c59f18674asm10424685wrz.22.2023.03.06.09.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 09:55:52 -0800 (PST)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 1/3] meta-hardening/layer: lower the priority from 10 to 6
Date: Mon,  6 Mar 2023 17:55:26 +0000
Message-Id: <20230306175528.395007-1-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 17:55:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59348

The priority change on sumo version without any description.
Since then is very hard to add in other layers a new version
of any recipe on this layer with such priority so these patch
reverts the priority back to 6.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-hardening/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index add3cbc..1dbc537 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -6,7 +6,7 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
-BBFILE_PRIORITY_harden-layer = "10"
+BBFILE_PRIORITY_harden-layer = "6"
 
 LAYERSERIES_COMPAT_harden-layer = "mickledore"
 
-- 
2.34.1


