Return-Path: <maciek@thing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EFFDC05027
	for <webhook@archiver.kernel.org>; Tue, 14 Feb 2023 08:09:03 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.1887.1676362137033460041
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Feb 2023 00:08:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thing-com.20210112.gappssmtp.com header.s=20210112 header.b=cUnkWMce;
 spf=pass (domain: thing.com, ip: 209.85.128.47, mailfrom: maciek@thing.com)
Received: by mail-wm1-f47.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so10918740wms.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 00:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thing-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CSRmbUe7PIiRqPLipz0COLVrDL2d7ULH/JLL2X2I/cM=;
        b=cUnkWMcei5hUVxUfSWtBnOURlDfripVppt62oNQAiea8xxUoZmg3ZrCc/A+/gfG1fb
         yex7cXRfE/qwydRct+c5E5yxHllmVPL4zI+EaeISytH8FuGzw3UHc48kJhXh8w3IRDcG
         270UJAJfzBjzSm/cgv2nvrZwkwk2PX2UKuORqVYG+1coyl239AbgNJAq5u3tqjIRItaU
         WJk8XL0cZI1ykBNMz9bg76hmFcuqRfIoCB+Lf5hLWyUS/Cw/ohWm7RA07bte4TkQ//am
         lhvnjQ2wmgLBLLYKN/pRgc6t7mgSUbGzfS8rdCiZqaw6jDsHjNaOxwgmr3ImLhbWyUfY
         Gq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CSRmbUe7PIiRqPLipz0COLVrDL2d7ULH/JLL2X2I/cM=;
        b=mQJb9y276UvlzCKDpczh2sGj7+a6RQKrbF/RmTApF+J0GFyL/NxtQg+ngro4c8JxCL
         9NX2VU+ylAecnFrTCtg097loaKBNZG/P+xOWBe/nzr1/e/55j5mpSgxAG7g5JYNxlwy3
         QqeUuXS1I2ySHW0vnnPqdi2774o/zqCc58QoXtHyi6USqYLel/Ryp9B4xHQt7V8xqd1y
         gDv4r9acksNb4cuiIXPKhab6yc73Yji+bHvLVC0S+lucMR+LDq/VZsCRfyuPUNtsPiDB
         +8FzbrRTwQdwf6rb+sQH8lDcGbldzI2FT4R4WYu6B8EeGnyW3/gNgRRiGFRXtGEo+PbS
         8gJA==
X-Gm-Message-State: AO0yUKXHgfnfngl9miSttfMgIlet6iAK1gS6zuh5M3mkVed3McoMCMew
	MsBi5hNQPWGQebMc4P+2Mio/Y4fniARJ1le9
X-Google-Smtp-Source: AK7set8DkWTtRLwr49L/Gq+EqXX89hU9Kd0SmKVxN8Fa9/DPSuoeNAQVjv2SPBfHF4nXfJpFJcdvlw==
X-Received: by 2002:a1c:7718:0:b0:3df:f7cc:4da2 with SMTP id t24-20020a1c7718000000b003dff7cc4da2mr1247886wmi.16.1676362135245;
        Tue, 14 Feb 2023 00:08:55 -0800 (PST)
Received: from localhost.localdomain (178-36-27-238.adsl.inetia.pl. [178.36.27.238])
        by smtp.gmail.com with ESMTPSA id m24-20020a05600c3b1800b003dc41a9836esm18089488wms.43.2023.02.14.00.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 00:08:54 -0800 (PST)
From: Maciek Borzecki <maciek@thing.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Maciej=20Borz=C4=99cki?= <maciek@thing.com>,
	Armin Kuster <akuster808@gmail.com>
Subject: [kirkstone][meta-security][PATCH 2/2] dm-verity-img.bbclass: add squashfs images
Date: Tue, 14 Feb 2023 09:08:31 +0100
Message-Id: <4daef573f5326c8037a5253a50dbf79e787c3038.1676361829.git.maciek@thing.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1676361829.git.maciek@thing.com>
References: <cover.1676361829.git.maciek@thing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 08:09:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59226

From: Maciej Borzęcki <maciek@thing.com>

Add squashfs to images supported by verity.

Signed-off-by: Maciek Borzecki <maciek@thing.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit ab8651c139a05c476d7e8a6a987106b2f7e9a354)
Signed-off-by: Maciek Borzecki <maciek@thing.com>
---
 classes/dm-verity-img.bbclass | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index dd447e661f6c0002fe3390ed598cddff6bc0ce8f..e5946bc3279c4a200ea3404f7475860a24abd650 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -63,7 +63,12 @@ verity_setup() {
     veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
 }
 
-VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity erofs.verity erofs-lz4.verity erofs-lz4hc.verity"
+VERITY_TYPES = " \
+    ext2.verity ext3.verity ext4.verity \
+    btrfs.verity \
+    erofs.verity erofs-lz4.verity erofs-lz4hc.verity \
+    squashfs.verity squashfs-xz.verity squashfs-lzo.verity squashfs-lz4.verity squashfs-zst.verity \
+"
 IMAGE_TYPES += "${VERITY_TYPES}"
 CONVERSIONTYPES += "verity"
 CONVERSION_CMD:verity = "verity_setup ${type}"
-- 
2.39.1


