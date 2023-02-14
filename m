Return-Path: <maciek@thing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2221EC64EC7
	for <webhook@archiver.kernel.org>; Tue, 14 Feb 2023 08:09:03 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.1886.1676362136218189610
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Feb 2023 00:08:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thing-com.20210112.gappssmtp.com header.s=20210112 header.b=xgcjxHL/;
 spf=pass (domain: thing.com, ip: 209.85.128.44, mailfrom: maciek@thing.com)
Received: by mail-wm1-f44.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so10918707wms.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 00:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thing-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=taF7gwGvOznd9uNbPvrhFG7SzsiRw/X8i02Uo+nLRd0=;
        b=xgcjxHL/uhx+Fr26BnSu36KvMcAbWPAsZvw7gRTjGp9R2PkVbs3zKwjitHnMpaBLPh
         ecK1BW6IJX6HQry26JxcM0kJLG71G5jV7NBOhna7Yr4T0QCWJogJ4YMNZZJ938xpg9B7
         oe6qG8LYT2ctBxCFmoooKIN985/N5leOTnr81J0TcX7brzo1/oEMqFEUzs06KvcKhc2L
         Cpu1dPX6Z/WEDTwSPeFGNOUqKLV6F+f9eSWk3nC0rWFel73iRcljBdo0Vg7uSQruOwSi
         +pph0rLo4oWMGqZzUA5CK+JL+8SwLCSsXtAfbklaIRGi7Ml13i9qyJ9SxctuGyYm0gl9
         I6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=taF7gwGvOznd9uNbPvrhFG7SzsiRw/X8i02Uo+nLRd0=;
        b=c3BjJAgyovyMcQbO3OwGASMnb1EZc2d3zp9sL7vdj5/m+VeHo5Hwh6fYDKShF0lmkS
         L/u15gkKRQot7x8to16KLVxqLd5K01+msW7nTFkqaF421UfMdXzsUuGh/76fEnaJ0RYH
         n7Nd9J8kCiI/GDfhvo3N6OvMBFINw/LiVBybVZKL8fU9t6Xbs2Z2liyNIyCbxwCS0txw
         Y76AEoBcBXtAwjuO1S6Vgt4oU59oWNVlcZI5rATPmJSfenA8u+7c7E9uFw9eU2oVm1VQ
         iKqtYPB2i84o6KJ6GyuoDoeZKMn+tXim+KCLicnQCxsDJb3GArUVNh+sRSs4zmImkPnx
         EIqA==
X-Gm-Message-State: AO0yUKXX/n/cQ5BKMPK0H42wH8RzoSQS1PJrOEThMiWJlGsnTxVScasL
	9p88NAAnRartD7nKCrRtxI+mrZROvrkz9Lao
X-Google-Smtp-Source: AK7set9YC92NxaJiGf95Tzqu8+/rZIsIdEJ+qpgq252qLBDNLbAvXMLlNIOV9ZGRubeN/JKfuewx0A==
X-Received: by 2002:a05:600c:a69d:b0:3df:fa56:7a33 with SMTP id ip29-20020a05600ca69d00b003dffa567a33mr1232158wmb.26.1676362134538;
        Tue, 14 Feb 2023 00:08:54 -0800 (PST)
Received: from localhost.localdomain (178-36-27-238.adsl.inetia.pl. [178.36.27.238])
        by smtp.gmail.com with ESMTPSA id m24-20020a05600c3b1800b003dc41a9836esm18089488wms.43.2023.02.14.00.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 00:08:54 -0800 (PST)
From: Maciek Borzecki <maciek@thing.com>
To: yocto@lists.yoctoproject.org
Cc: Josh Harley <jharley@orangedogsolutions.co.uk>,
	Armin Kuster <akuster808@gmail.com>,
	Maciek Borzecki <maciek@thing.com>
Subject: [kirkstone][meta-security][PATCH 1/2] Add EROFS support to dm-verity-img class
Date: Tue, 14 Feb 2023 09:08:30 +0100
Message-Id: <6fda2c1fcfa3a94a956f4073f4b65bcf8a833166.1676361829.git.maciek@thing.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1676361829.git.maciek@thing.com>
References: <cover.1676361829.git.maciek@thing.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 08:09:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59225

From: Josh Harley <jharley@orangedogsolutions.co.uk>

 [PATCH] Add support for the EROFS image, and it's compressed options,
 to the dm-verity-img.bbclass setup, theoretically this is a simple addition
 to the list of types however there is a quirk in how Poky handles the
 filesystems in poky/meta/classes/image_types.bbclass.

Specifically the 'IMAGE_CMD' and 'IMAGE_FSTYPES' use a hyphen, e.g.
erofs-lz4, however in the image_type bbclass the task for that would be
"do_image_erofs_lz4", replacing the hyphen with an underscore.

As the dm-verity-img.bbclass adds a dependency to the wic image creation
on the do_image_* task then it fails as there is no
"do_image_erofs-lz4", so simply replace the hypen with an underscore.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 8ca6bb86e653a332f7cb5b30babc0cd6c58769d0)
Signed-off-by: Maciek Borzecki <maciek@thing.com>
---
 classes/dm-verity-img.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 93f667d6cdc11257ae8f2ba6300db9f62384a46c..dd447e661f6c0002fe3390ed598cddff6bc0ce8f 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -63,7 +63,7 @@ verity_setup() {
     veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
 }
 
-VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity"
+VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity erofs.verity erofs-lz4.verity erofs-lz4hc.verity"
 IMAGE_TYPES += "${VERITY_TYPES}"
 CONVERSIONTYPES += "verity"
 CONVERSION_CMD:verity = "verity_setup ${type}"
@@ -90,6 +90,6 @@ python __anonymous() {
     # If we're using wic: we'll have to use partition images and not the rootfs
     # source plugin so add the appropriate dependency.
     if 'wic' in image_fstypes:
-        dep = ' %s:do_image_%s' % (pn, verity_type)
+        dep = ' %s:do_image_%s' % (pn, verity_type.replace("-", "_"))
         d.appendVarFlag('do_image_wic', 'depends', dep)
 }
-- 
2.39.1


