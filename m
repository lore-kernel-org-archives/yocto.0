Return-Path: <davidegarde2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F415C41535
	for <webhook@archiver.kernel.org>; Tue,  5 Apr 2022 17:24:47 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web08.5643.1649163137101583720
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Apr 2022 05:52:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=E0cc0kza;
 spf=pass (domain: gmail.com, ip: 209.85.218.48,
 mailfrom: davidegarde2000@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id bg10so26519877ejb.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Apr 2022 05:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YaG7/a4dqTMTbafhIOC1+lwZg4SIz39jxv+vW4LyAJ0=;
        b=E0cc0kzaaPDeE+Yt3JPU6zi7lgIlBZ1JKgaykyocTnQLxB857h6c2P1tUDQDWExgOr
         tRoMLopQLFQxQ4D5TNWagqjZNj7ew3hoIuiL9KIhekprVBQQZecWevKYl/zLP59qdaWt
         qs+MrGIUrxiE9/Dc9FPBGXBjFP7tTRCace8S7Agbmy5gjmg8tDs0yFC3aaWM52gaA+we
         77FViKDHA6i2PH18H6kmfOvCPlocnRC4uUbXkq8WYwJNtRn9sMYIdKhKCGpwiLqnTBGc
         RxZp85CyeJ7dKNBVAygvRu/HlDizLpk4oX32nVgNHLf2q/8DMfQnCsBpIueVF7fmUIOb
         xg6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YaG7/a4dqTMTbafhIOC1+lwZg4SIz39jxv+vW4LyAJ0=;
        b=BqeK90ho2nGHHEJ5ma30AmH9LN7oWKonjCVGbDiITbxlmCqtEJftmtcTqaUJk+eQFQ
         wft5NLNSV0lcw4q7dUmVCLf74Y0HSZdHFM8VcoCttRax43zIspiw4f8aBAepDfZvL2+l
         GIna4rPCxvYy9SjPKrkrpvJ5ChhzO0X+vMc2XQRz8gLssjXqi4gFSBizFSQR44ZUlfZc
         SLQw/ARLOnz+YR1sCmNMy02IVPYe7TzQPBYk+twUK/ev8L+7NngvTyXLH2SN7j69FaZZ
         QLVobFCRPSXNH07wV5ClUoFW/KTo9ifvVThbul8n2FKWpDZ0h7ao8qCDQeK7cd4olY3d
         ap/Q==
X-Gm-Message-State: AOAM531T1apJhGlPOjbEUETrto7oa8r98sPmdRF+tEBpQ1MvvnIDv9Pm
	Q2r2QQk+W3ysaH8o1fpIwaLGf15Nh6wXOb5k
X-Google-Smtp-Source: 
 ABdhPJxcR4PUvxJTxoYxaSvVmmfSVuP+7JlshBRle/5uD1TLuNQ/6YdOMPt1/ptZ9lHiLK2CSR1C0g==
X-Received: by 2002:a17:907:c018:b0:6df:e7d8:3397 with SMTP id
 ss24-20020a170907c01800b006dfe7d83397mr3404624ejc.143.1649163135109;
        Tue, 05 Apr 2022 05:52:15 -0700 (PDT)
Received: from tony3oo3-XPS-13-9370.home
 (host-82-60-178-52.retail.telecomitalia.it. [82.60.178.52])
        by smtp.gmail.com with ESMTPSA id
 w9-20020a50d989000000b0041cc3b9b43asm3597072edj.30.2022.04.05.05.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 05:52:14 -0700 (PDT)
From: Davide Gardenal <davidegarde2000@gmail.com>
X-Google-Original-From: Davide Gardenal <davide.gardenal@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
Subject: [meta-zephyr][PATCH v2] generate-zephyr-machine: add leading
 whitespace to SRC_URI
Date: Tue,  5 Apr 2022 14:51:34 +0200
Message-Id: <20220405125134.12642-1-davide.gardenal@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Apr 2022 17:24:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56666

Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
---
 meta-zephyr-bsp/recipes-meta/meta/generate-zephyr-machines.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-bsp/recipes-meta/meta/generate-zephyr-machines.bb b/meta-zephyr-bsp/recipes-meta/meta/generate-zephyr-machines.bb
index b93aa92..30d362c 100644
--- a/meta-zephyr-bsp/recipes-meta/meta/generate-zephyr-machines.bb
+++ b/meta-zephyr-bsp/recipes-meta/meta/generate-zephyr-machines.bb
@@ -8,7 +8,7 @@ inherit ${ZEPHYR_INHERIT_CLASSES}
 
 require recipes-kernel/zephyr-kernel/zephyr-sample.inc
 
-SRC_URI:append = "file://0001-zephyr-Export-an-OpenEmbedded-machine-config.patch"
+SRC_URI:append = " file://0001-zephyr-Export-an-OpenEmbedded-machine-config.patch"
 
 ZEPHYR_SRC_DIR = "${S}/samples/hello_world"
 
-- 
2.32.0


