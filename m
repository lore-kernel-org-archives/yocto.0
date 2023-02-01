Return-Path: <maciek@thing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB0C05027
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 14:18:02 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.24187.1675261075080445280
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 06:17:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thing-com.20210112.gappssmtp.com header.s=20210112 header.b=0ntLxOvn;
 spf=pass (domain: thing.com, ip: 209.85.128.41, mailfrom: maciek@thing.com)
Received: by mail-wm1-f41.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so1582438wmq.0
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 06:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thing-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mDJuTrHzpxI44Gz6yZXCTJShu3algFAf0E/Zftilc+w=;
        b=0ntLxOvnZgQLvSHRJmuaCSaOf8jQYjG2ZZtzzz5pxWE9XwYdOT82sHYG4b9MijLYU6
         j+BpJ6M/6iS0RXPFM913FN46GCivJw+GrpxQ0GlhBgO8B3z0k8xgvKi4ITF5pYbzo2Nr
         5jygq4xodywpNQfdsLQiR5MvZjBx8alIChcrG99wwEmLqq2+RueOccPHzPOpAGLJZjvx
         OuptqZjo67RmC0FFYhs/MXgR/ZxhEE4er71fSKmNFBcSjLZRayqIz95j993cT8uJK5lR
         Lp46C2TKgIcIK9X01fsUVbe3o0R2pOmPIo7LboX0KQAgaBnyzhz8BmfUzlzf8ke87qAH
         UBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mDJuTrHzpxI44Gz6yZXCTJShu3algFAf0E/Zftilc+w=;
        b=hdDD7JJQa5V52pR3uZZnNdfwM63Dm34CkaXmgq6/hZQCPRyENXUhngbigmCOVGAgro
         8BBAA9Kp3teNXfpp4ceTnLdWH5lDBTH67zbm+WKlJGh+LYNAhkdig5a3tn1MaRXDTW5p
         gNPKGLui3bZ6lDOayG22bWieFoZIerICXZUVXIDHOUiSz54vC7MeGXLu7Y4zJe88SNeB
         8df7fb9/nfScxza1ajPDrSx7IUAKHyG8HRh/TMUNDFFtFLtOFSiPnzck6QXVunliX+0o
         OoGa2PhD/Z5+4c9qiwRZqsUF52/C7MPpfiEy/l6n/CThvBlF9sAJsiOFgZ90P+5VBurz
         /RwQ==
X-Gm-Message-State: AO0yUKVbYCowtQ4DXDzuzvD34nM8O3yFI3FMzsuOEX//OmbcNFT8wkEc
	eIYiy95PPKHEmfRk0XJwwaaylCwMjrPmdeAk
X-Google-Smtp-Source: AK7set8eENsGrpJeJcAU410//7ZOlvcuSPUQVv8J9DEspwppeigHT5o6F51KQFQ1qHvXZOd9SmrlSw==
X-Received: by 2002:a05:600c:601b:b0:3dc:443e:4212 with SMTP id az27-20020a05600c601b00b003dc443e4212mr2413706wmb.1.1675261072959;
        Wed, 01 Feb 2023 06:17:52 -0800 (PST)
Received: from localhost.localdomain (178-36-27-238.adsl.inetia.pl. [178.36.27.238])
        by smtp.gmail.com with ESMTPSA id r17-20020a05600c459100b003dee8c5d814sm1642574wmo.24.2023.02.01.06.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 06:17:52 -0800 (PST)
From: Maciek Borzecki <maciek@thing.com>
To: yocto@lists.yoctoproject.org
Cc: Maciek Borzecki <maciek@thing.com>
Subject: [meta-security][PATCH] dm-verity-img.bbclass: add squashfs images
Date: Wed,  1 Feb 2023 15:17:19 +0100
Message-Id: <d6c7ddefe6a490ce9b73c8ab42e389dc246a932f.1675261039.git.maciek@thing.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 14:18:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59133

Add squashfs to images supported by verity.

Signed-off-by: Maciek Borzecki <maciek@thing.com>
---
 classes/dm-verity-img.bbclass | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index dd447e6..e5946bc 100644
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


