Return-Path: <jharley@orangedogsolutions.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49BE7C3A59F
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:07 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web08.5947.1650449146108489359
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 03:05:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@orangedogsolutions.co.uk header.s=google
 header.b=A8ulQD8Q;
 spf=pass (domain: orangedogsolutions.co.uk, ip: 209.85.221.47,
 mailfrom: jharley@orangedogsolutions.co.uk)
Received: by mail-wr1-f47.google.com with SMTP id u3so1544793wrg.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 03:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orangedogsolutions.co.uk; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hCYBibUIk51f8cdy381AD2EC7/iNmElh5Ay9FEcX5xk=;
        b=A8ulQD8QbhL4/eSFyiO6OYrqCELy1RB97mW/UqORp1Uoz+uTpNyWp8sjPSLFQYGDfT
         sV57cs/+qLcn9ZPvmeYYclcIVSwS3tfWMp8qGoVLoqKn2fpZik7/1/QSPnTIPN7A7WJI
         uH7d73mAgKWMakxGEDpZvvWuEK/HqdyKWZwFeMoffLb8rsFQ9Z4ax11mREB/yRSz2Prp
         yQGN1enPpyZbSuI07A3mNjBo10Bb3jB8bBq6Bx/MWCMSbZzR61+TuGDk20imrXjhYEsj
         F5AeDihdTNsGsft8WRFJP+bTn2ikouzV2K1zB9JdBGSGnRCZJkQn4b+5IkVnQfoVClut
         G8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hCYBibUIk51f8cdy381AD2EC7/iNmElh5Ay9FEcX5xk=;
        b=wFJBXM5dr1ZUNJJShsF1Oo8ukH23dc9hWZfgEjQ7K07+/iOqODQxgp4npjJpTVzhC9
         Lt7n/jCbzOWSFEWoBRK0KWP5UAhVmUUCFVsmZZ0XEsvNLKO9YQ6U4uapdN+1cyIhVLg+
         JV4jNB/XqiKO8o0X2Rk+vQ25aVqeamEr2ujE9+Rzwju6EjziyCt03fhge5vTrYhaPKjK
         tavVGMrBMXnd6PJmMIXQoFlv9V0rw/cfyvEwduTvK9H50h5XGMGKN7wTXRi5QepXfX31
         ULWTGn6F+wCQHehjRKA3CHJ492IAMfGeerpqXWo7kuYxSPcCMQRy0EO9Ks5Gzm1ja2CW
         w7mQ==
X-Gm-Message-State: AOAM531/4TxsQrqK1ZNTMIZO0QUiO3dlPopkaYdMld5cPwuC0kDAqW2r
	LmrPnGRch47NVH1U2j9TwnX1TpV9GH6C4StP5pM=
X-Google-Smtp-Source: 
 ABdhPJxcSLvJJ8+XIwQgEVOa+FeqVLkAfKc+Pg1bomRWDNBm8hP41yosvPBEH/SzhAoBwyJhRWx01Q==
X-Received: by 2002:a5d:658f:0:b0:207:9c0e:1364 with SMTP id
 q15-20020a5d658f000000b002079c0e1364mr14971603wru.632.1650449144115;
        Wed, 20 Apr 2022 03:05:44 -0700 (PDT)
Received: from localhost.localdomain
 (cpc123900-trow8-2-0-cust46.18-1.cable.virginm.net. [77.98.119.47])
        by smtp.gmail.com with ESMTPSA id
 w8-20020a1cf608000000b0038c8fdc93d6sm21271498wmc.28.2022.04.20.03.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 03:05:43 -0700 (PDT)
From: Josh Harley <jharley@orangedogsolutions.co.uk>
To: yocto@lists.yoctoproject.org
Cc: Josh Harley <jharley@orangedogsolutions.co.uk>
Subject: [meta-security][PATCH] Add EROFS support to dm-verity-img class
Date: Wed, 20 Apr 2022 11:05:08 +0100
Message-Id: <20220420100508.13757-1-jharley@orangedogsolutions.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56817

Add support for the EROFS image, and it's compressed options, to the
dm-verity-img.bbclass setup, theoretically this is a simple addition to
the list of types however there is a quirk in how Poky handles the
filesystems in poky/meta/classes/image_types.bbclass.

Specifically the 'IMAGE_CMD' and 'IMAGE_FSTYPES' use a hyphen, e.g.
erofs-lz4, however in the image_type bbclass the task for that would be
"do_image_erofs_lz4", replacing the hyphen with an underscore.

As the dm-verity-img.bbclass adds a dependency to the wic image creation
on the do_image_* task then it fails as there is no
"do_image_erofs-lz4", so simply replace the hypen with an underscore.
---
 classes/dm-verity-img.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 16d395b..cc6a7f5 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -60,7 +60,7 @@ verity_setup() {
     veritysetup --data-block-size=1024 --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
 }
 
-VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity"
+VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity erofs.verity erofs-lz4.verity erofs-lz4hc.verity"
 IMAGE_TYPES += "${VERITY_TYPES}"
 CONVERSIONTYPES += "verity"
 CONVERSION_CMD_verity = "verity_setup ${type}"
@@ -87,6 +87,6 @@ python __anonymous() {
     # If we're using wic: we'll have to use partition images and not the rootfs
     # source plugin so add the appropriate dependency.
     if 'wic' in image_fstypes:
-        dep = ' %s:do_image_%s' % (pn, verity_type)
+        dep = ' %s:do_image_%s' % (pn, verity_type.replace("-", "_"))
         d.appendVarFlag('do_image_wic', 'depends', dep)
 }
-- 
2.26.2


