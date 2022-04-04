Return-Path: <davidegarde2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85AFC47084
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:41 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web12.34974.1649078200509288836
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 06:16:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Up2v1qzo;
 spf=pass (domain: gmail.com, ip: 209.85.208.47,
 mailfrom: davidegarde2000@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id c42so3603407edf.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 06:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OGJLtg8OzG5+Y22hX6Ny5rtqAKhPAyK4lk9Ffy4GmZE=;
        b=Up2v1qzoWUCjNc8CUdmU8Z0CgIWqaCOnlcoTgoa6tXJs2jhGlw6FeA10d6z6hnjxda
         YcXFYuPbskqXPijQFPG5bOA7I1ojWX4v4v8Ox2Cqi99y1l2oV6xS69jmRLmunrZP22E5
         nWjUnlnHIz765ZBrmlGaVweiYkJP6dNQjzDdoCwAz5W3libyb862H5QeCeET3eQ64NSo
         GuGaXYAUclrZMcXwsm3DviT2Zg7Jai/hzw0zNEB939guEyKXHsz67wn9DsmkhSJeWVYz
         lloT3NNgizsCtOsdZGwBoYsg9zUEx0uSqEAOmhktpAbyndbxjSkI4xs2MGynq9I7hIGl
         ksCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OGJLtg8OzG5+Y22hX6Ny5rtqAKhPAyK4lk9Ffy4GmZE=;
        b=P73X4Ni748qap7g7G4gV2DJlQv3iVohXsSMDpJ6eT0GidH8h2USuRoex9pohekSyGH
         eSVT1Ix/5fAqPuaXcUuk5RfXG918IWLg6cQhyeeK5F+zYW56o/GU3Drpy71J+xkICOQe
         5JymMjnY3OZFry8EBo2L5QTnibSXngqztytyl0JmLw82UpmAfxYXWbTJgSaw7dO4qycG
         i2a4JrDjtMlVSkLDI4BzXBi8MUwGSuvbiudHb4VnhE+CX8w3dxlkpSoshUMbPWeHnI/a
         JZKXZ3v2FZgifj8b2BAbPKwMm8u+G8CmvUPz7/NMIOHeFkC/xJWzXDoSptn7PjkCVSal
         /WDA==
X-Gm-Message-State: AOAM531d/I450vcrR9pdIeAl7dwH9o+xPzCqYaXcIKZS2FO3j424iLQZ
	wfM/negIDu4/JQghoKoDl//f8U8veR0QNI3h
X-Google-Smtp-Source: 
 ABdhPJwekHdRVfZkkRKF4+RfobctI4xZoT2Ngy2y4HJF+pduMc0t4q+whQvd6Pi8UmZjiGW0oGnFoQ==
X-Received: by 2002:aa7:d718:0:b0:41c:d766:7e74 with SMTP id
 t24-20020aa7d718000000b0041cd7667e74mr3395142edq.38.1649078198785;
        Mon, 04 Apr 2022 06:16:38 -0700 (PDT)
Received: from tony3oo3-XPS-13-9370.home
 (host-82-60-178-52.retail.telecomitalia.it. [82.60.178.52])
        by smtp.gmail.com with ESMTPSA id
 s10-20020a50daca000000b0041cc361b1c9sm2308645edj.68.2022.04.04.06.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 06:16:38 -0700 (PDT)
From: Davide Gardenal <davidegarde2000@gmail.com>
X-Google-Original-From: Davide Gardenal <davide.gardenal@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
Subject: [meta-zephyr][PATCH] zephyr-kernel-src: add whitespace to fix File
 not found during build
Date: Mon,  4 Apr 2022 15:16:34 +0200
Message-Id: <20220404131634.45521-1-davide.gardenal@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56659

Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.0.0.inc    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.0.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.0.0.inc
index f4ea7d3..61a5076 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.0.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.0.0.inc
@@ -69,4 +69,4 @@ SRCREV_zscilib = "12bfe3f0a9fcbfe3edab7eabc9678b6c62875d34"
 ZEPHYR_BRANCH = "v3.0-branch"
 PV = "3.0.0+git${SRCPV}"
 
-SRC_URI += "file://0001-lvgl-add-support-for-lvgl-v8.2.0.patch"
+SRC_URI += "file://0001-lvgl-add-support-for-lvgl-v8.2.0.patch "
-- 
2.32.0


