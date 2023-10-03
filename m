Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8C5E776ED
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 01:27:31 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.99295.1696296449241051714
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 18:27:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dKnOXMGx;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1c451541f23so2972945ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 18:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696296448; x=1696901248; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h4+NqojIT51tPJPeoS/rMN8GFT3iXLcIbALCSw5F29w=;
        b=dKnOXMGx5UYQoKAm24m0kB7D1bf6pa7aVaphGTUNxLpb/jLdQ6KYFwg9H+TFbLUrw1
         HBrHS6DAZ4JGb6fH6UxnGboTN4AOCtRhTGUOcDYyuziemlGbX6VkMiCpTDI8QKSVHasm
         L3IHm4A4QSeMKH+EreZ0DCnuZWH/2Gk9yhobjPrdiyLbXRluHHGOSwDx8hhAbUrXi1x4
         wRAj68J9x3khvM9ePwqlcWV8vGuf8Mgr5i5Hfcw8ZjbSDqm/G2sUJ4u0HD2ewVF30OHY
         SwqrttDtZXxg2JdkBZ3joGA0H4rcX6mMV/Ps6k3Mnult2p1VMtfXo8KPs+EHLYTlL5tU
         yKaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696296448; x=1696901248;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h4+NqojIT51tPJPeoS/rMN8GFT3iXLcIbALCSw5F29w=;
        b=EtY4salgbwZhIHKNyylYHlvOeB7vihmdPpsVfDcsiBS7lxhzvAjgfH1tzvVw/2J61L
         BZmZ3qs7+dah0aVCRGLZecl/H6QARiYq/axovETuq2kAPyjnYl7OsojHixtfRUx2BiHT
         8MTFJO8E0nbyDyoo2ODY5pCE1fb6aqyU5Afbl71sN/BdcqddGDQ86F4xVjTZKfWIcz9L
         8x926xb4RoZ+ZJ4LmE5wzG9m0nOBZ0D22uag40aZMKBcISmgjs//yw4nK2zQgnFKY4Ks
         zKaJ2MdaooM4sAD5DkZXqMJyJaEpmmsQEDEfK48B+7s9dowqMuGMvecoXxoK4t6ZrUZk
         UN3g==
X-Gm-Message-State: AOJu0Yz+5L3vY4eAIwUrgPpSNo+Aln2yLOtfIK/igGzSC3C88fb3lekf
	p7/vTejiEcdyIr3Ivy6aLA9gzRuUX9MBIA==
X-Google-Smtp-Source: AGHT+IEe1CjhghlT2ZyWgIVevgH9R18PGCmfyl8QHVtdT7bu+dyy7bKAcLloGYwuqPIVCTb0AK3h2Q==
X-Received: by 2002:a17:902:eb4b:b0:1bb:3979:d467 with SMTP id i11-20020a170902eb4b00b001bb3979d467mr10765691pli.63.1696296448343;
        Mon, 02 Oct 2023 18:27:28 -0700 (PDT)
Received: from localhost.localdomain ([65.181.3.195])
        by smtp.gmail.com with ESMTPSA id iw19-20020a170903045300b001c61df93afdsm112485plb.59.2023.10.02.18.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 18:27:27 -0700 (PDT)
From: anthony.t.davies@gmail.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Anthony Davies <anthony.t.davies@gmail.com>
Subject: [meta-rockchip] [PATCH] Stop u-boot sections partition table
Date: Tue,  3 Oct 2023 12:26:44 +1100
Message-Id: <20231003012643.113550-1-anthony.t.davies@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 01:27:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61208

From: Anthony Davies <anthony.t.davies@gmail.com>

When checking the partition table of builds using this layer you get
numerous extra partitions due to each bootloader entry creating a
partition. --no-table on these entries should stop this from happening.

Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
---
 wic/rockchip.wks | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 1cc30ae..eb50d8c 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -15,11 +15,11 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K
-part reserved2  --offset 4096   --fixed-size 4096K
-part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 12288  --fixed-size 4096K
+part loader1    --offset 32     --fixed-size 4000K            --source rawcopy           --no-table                            --sourceparams="file=${SPL_BINARY}"
+part reserved1  --offset 4032   --fixed-size 64K                                         --no-table
+part reserved2  --offset 4096   --fixed-size 4096K                                       --no-table
+part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy           --no-table                            --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf        --offset 12288  --fixed-size 4096K                                       --no-table
 part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
 part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
 
-- 
2.34.1


