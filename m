Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9D50C05027
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 15:06:22 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.24071.1675260212511774988
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 06:03:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thing-com.20210112.gappssmtp.com header.s=20210112 header.b=d064MvqF;
 spf=pass (domain: thing.com, ip: 209.85.221.41, mailfrom: maciek@thing.com)
Received: by mail-wr1-f41.google.com with SMTP id t7so9056691wrp.5
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 06:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thing-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mDJuTrHzpxI44Gz6yZXCTJShu3algFAf0E/Zftilc+w=;
        b=d064MvqFzOQFsHIrbl4hZX7h0hUz7KlXYwvcq7NLWYMVyvlYB6aw1sZwWEiufXBWpS
         AnCcRx+ZBAoNRtg5F74uQsvbE4uJlROUr+Wfg3RGZvbgkJKY2u+23nxcxP1PTKx3Kg2g
         ZNEJHsNQh/Mt/1FrBNEhTKZtN2vLlBwMWR1OnnYaXyOb9eLuXHTgYP2HXYZLd8LxBJGz
         ql7z47PQRO5HVW5egyDa3PQBMVn/p2qjNH4Y6uHqMiTGGcZ1RmbBtn6DpY5kRsZ2I6AH
         kKUsL7eQ/D+cBcOEPdRYw1wLdxwcO2UnYHmo0Ws2DusFG0fwWymFbIEhR5Tfx76Hocoo
         n8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mDJuTrHzpxI44Gz6yZXCTJShu3algFAf0E/Zftilc+w=;
        b=2z3AGN7/o++++cwHXefJ9aly3EBrX8FH8J8pnV9B3+zRQvxt2b9I03kbOf6mb+Rbwn
         BXXSvXeW1g9gHWBgmoyfnIh/6p79R5XKscMm+ZFUkdDdstePCcMSgh3XuR3IzsTK3Ylo
         2SdpzVsywlTQZnqDxmVTpVhmkyTthiB0VNtkE/caDU4+ghwx09LYuZo2l6VBQGAaxI7q
         legTQUsQ7SRIFFurRjSXKtrPZMoDiNoB3bwiTfVSF2aHmDTlr5NYv6kVFn6jRkQYl4nf
         c5s+VR/FeXNDNxgv0iFVnCS+5XpAFKAAOnUHAYVwDvxSINmztNAOvK2PQ1ZOs6+/V3Nd
         ZJug==
X-Gm-Message-State: AO0yUKW54wR+jq6N9yK/5Sc3rb9fnATabpAmypSVHYFWnxsgqgwjcyDB
	llipbq8VKAwtB9noXAMkK8impACB4X5ahlVo
X-Google-Smtp-Source: AK7set+MysjAgTHqCtAER8+rkhZSHC3lqsoiNTh5uJIltjH8XxnX8Sh3Az2/nTG/k7AqpllJhkdc/Q==
X-Received: by 2002:a5d:4742:0:b0:2bf:dbe3:eb9c with SMTP id o2-20020a5d4742000000b002bfdbe3eb9cmr1911967wrs.4.1675260210516;
        Wed, 01 Feb 2023 06:03:30 -0800 (PST)
Received: from localhost.localdomain (178-36-27-238.adsl.inetia.pl. [178.36.27.238])
        by smtp.gmail.com with ESMTPSA id f6-20020a5d50c6000000b002bfc24e1c55sm17453511wrt.78.2023.02.01.06.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 06:03:29 -0800 (PST)
From: =?UTF-8?B?TWFjaWVqIEJvcnrEmWNraQ==?= <maciek@thing.com>
To: yocto@lists.yoctoproject.org
Cc: Maciek Borzecki <maciek@thing.com>
Subject: [[meta-security][PATCH] dm-verity-img.bbclass: add squashfs images
Date: Wed,  1 Feb 2023 15:03:03 +0100
Message-Id: <d6c7ddefe6a490ce9b73c8ab42e389dc246a932f.1675260183.git.maciek@thing.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 15:06:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59135

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


