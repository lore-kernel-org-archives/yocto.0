Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.8715.1630505894470619878
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 07:18:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nMfqZCDp;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: ptsneves@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id n5so4731296wro.12
        for <yocto@lists.yoctoproject.org>; Wed, 01 Sep 2021 07:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FYYk727RluZu/2saa39nIIzWHa3SrgD7rsC1aK1FmtE=;
        b=nMfqZCDpJhsEI7q26eveA0vHBu18iut9JXtc4EH66YHMOYvoi186og9dfhxLTcNu1u
         ujKs5YgsuLXLgJF2+1G+QP1qvxhB0OfvwD4BNgFmjNYRAaQ1JtTZhxaYxx9c30zudadY
         zlxa9telMefpkkF5JD+HBow/1EgYEpOx79V7+1TBZWBNlA1G8xJzAjcvoa3J8Qt76jBI
         rmV//1WPhjPMji7W2QfGkQCa7lHgM9ceViLE9O81+uNMtSUrUAER2+yc8qQdYBez03YS
         NZOx+LDVSV64rxzQ1749L5D7YH3idLDUu4/Xt1i//gJ65eSNYbSlDJG41xOSAm2MEIlp
         xgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FYYk727RluZu/2saa39nIIzWHa3SrgD7rsC1aK1FmtE=;
        b=T7dXxr24vD7Xb90Ml6iK6KHiBcBqt6zzqMQUOxEJme8LTx+fZRt/JIyJlcK0MDe0fq
         MhnN03YjWcRvnjbBfNGkGWz4M2ECvPRzYV34P3iHpuWVDIkgyc2MSOTz/sCaA8+OAYKW
         Qkw0jLUuFGINRIpxUWdGKouCf6Flrqr8l5HYK0Bpi0esRHEC2usY1gf/VDwteoSibsJx
         Y2+TSOn7Z8mf2mwIDiqkbkrLXBxUXTeM2AVsSmYCrtvTZa+Y3tw46JPYBMthqaKE/fap
         snBci0YBOU+ouXSsnyu3PtJg/cQx7Qydi7lwCqeUzII1MEMUJCR52z+OH8Q7l0rcQXpZ
         VwGA==
X-Gm-Message-State: AOAM532Wdd9ArZSk9ocwcdzWIyPFuSmF9r1gGOWo8dFmMwgCxqm3IADA
	HpGOhYDnJGNq1UiB7iCpUSIlozroY51FhU8=
X-Google-Smtp-Source: ABdhPJy/CcD/F318X0ZkD2WF6djCGhvqQNMvwU0FAlTUVJe00gcQKexb0I6YlfiOFYdmUv8uCojYQQ==
X-Received: by 2002:adf:f7c2:: with SMTP id a2mr38295337wrq.58.1630505893010;
        Wed, 01 Sep 2021 07:18:13 -0700 (PDT)
Return-Path: <ptsneves@gmail.com>
Received: from pneves-XPS-15-9550.Home ([2001:8a0:7dc6:8100:f5ae:24c6:bfd0:1e41])
        by smtp.gmail.com with ESMTPSA id b12sm25032150wrx.72.2021.09.01.07.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 07:18:12 -0700 (PDT)
From: "Paulo Neves" <ptsneves@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Christer Fletcher <christer.fletcher@inter.ikea.com>,
	Paulo Neves <paulo.neves1@inter.ikea.com>
Subject: [meta-security][PATCH] dm-verity-img.bbclass: Expose --data-block-size for configuration
Date: Wed,  1 Sep 2021 16:18:01 +0200
Message-Id: <20210901141801.1635611-1-ptsneves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Christer Fletcher <christer.fletcher@inter.ikea.com>

Add DM_VERITY_IMAGE_DATA_BLOCK_SIZE to be able to set the
--data-block-size used in veritysetup. Tuning this value effects the
performance and size of the resulting image.

Signed-off-by: Christer Fletcher <christer.fletcher@inter.ikea.com>
Signed-off-by: Paulo Neves <paulo.neves1@inter.ikea.com>
---
 classes/dm-verity-img.bbclass | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 16d395b..b311fc5 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -22,6 +22,9 @@
 # is stored where it can be installed into associated initramfs rootfs.
 STAGING_VERITY_DIR ?= "${TMPDIR}/work-shared/${MACHINE}/dm-verity"
 
+# Define the data block size to use in veritysetup.
+DM_VERITY_IMAGE_DATA_BLOCK_SIZE ?= "1024"
+
 # Process the output from veritysetup and generate the corresponding .env
 # file. The output from veritysetup is not very machine-friendly so we need to
 # convert it to some better format. Let's drop the first line (doesn't contain
@@ -57,7 +60,7 @@ verity_setup() {
 
     # Let's drop the first line of output (doesn't contain any useful info)
     # and feed the rest to another function.
-    veritysetup --data-block-size=1024 --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
+    veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
 }
 
 VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity"
-- 
2.25.1

