Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F3FC47091
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:42 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web09.23994.1649000753309653695
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 08:45:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IFdLc+HT;
 spf=pass (domain: gmail.com, ip: 209.85.215.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id o13so6333644pgc.12
        for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 08:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=qwLvKn9B1/AZlx5WTikkruKDT+QwSt/x4zZR1DquVM4=;
        b=IFdLc+HTh9WJzRKVw1/t3U9w+a+cpK+uR6W82r0HeLfidqpkyPCO5oH5jlH94Ijr2I
         2CQPiQ2ab1kaL2IBjnOwtBOQ0f4j4UZWaxXMtLVPRuwahJIS8hwpblnI+TEHlYHvMdeo
         3FoPt0R+tjbJVEKwM9VfvQvmBobwbvI3JSWCEgFfgQtWFtApTq3PX5zHMvF51GxdI9yu
         t1BBkUxLWD2DMzdNzYaKAIXE79S6qf26RED+9pe48tXXdciyqYU6KyTa9ZTDOsQpCxs8
         R+xSD4HGVUv4POUNd5CnBBSBdJ6J3NHxSwMpNCayLYKw1xbIzp9aZqdCdPqoHd1nxD/P
         IEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qwLvKn9B1/AZlx5WTikkruKDT+QwSt/x4zZR1DquVM4=;
        b=N3uvYy3FGA/oK1KFpPBB8x2VAk8iElrRuRhvGCR7ERLcAYpUJxiAzJTz5zWCRaSyLm
         0QEgPH8fsERlIA0c6fKFnzHIZ6XkXN2yqS4moWTsCc9ZclQfeaKpjSqbTMTFe/bjLRee
         7Kz/eu5V6Ra7zdiWMUsM2NSsP9RlMPvFOu95wlocpoXC3mJQ4TJ+N62UVogorUldH+Ds
         wTv4/gdTNHx8g53RgVURHCnX0KDDv7soPU8Jzpm/1DqHrRP2uGRRZvHttSlo4HweeiwX
         O3u7DJakHOrRDA1G5PgbFumjRs+OzSzqRmMuIOyiWKUPPdxT8BjGpYhBF6ozwdjwQ84k
         bPZg==
X-Gm-Message-State: AOAM533HhLFObLHtiNVw+rLM4WG6CfTw7e/BJRlcQeDFGiNJwhOryLvS
	pvNpRBIaH7wMDmLzCCETS5KqWuJMZkk=
X-Google-Smtp-Source: 
 ABdhPJxpajaQWvX2N6LWgW4FzwOdyDPVq+xDCJfboZPBYv0QkhtAdpi9pzmQ5rVLu7ID5a923y/rxQ==
X-Received: by 2002:a63:6f87:0:b0:398:2d6d:848a with SMTP id
 k129-20020a636f87000000b003982d6d848amr23029190pgc.343.1649000752526;
        Sun, 03 Apr 2022 08:45:52 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:d902:56b7:61b9:ac4])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a625a04000000b004fdf5419e41sm2240527pfb.36.2022.04.03.08.45.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Apr 2022 08:45:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] linux-yocto_security.inc: add lkrg kfrags
Date: Sun,  3 Apr 2022 08:45:48 -0700
Message-Id: <20220403154548.46873-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220403154548.46873-1-akuster808@gmail.com>
References: <20220403154548.46873-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56651

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/files/lkrg.cfg           | 4 ++++
 recipes-kernel/linux/files/lkrg.scc           | 5 +++++
 recipes-kernel/linux/linux-yocto_security.inc | 3 +++
 3 files changed, 12 insertions(+)
 create mode 100644 recipes-kernel/linux/files/lkrg.cfg
 create mode 100644 recipes-kernel/linux/files/lkrg.scc

diff --git a/recipes-kernel/linux/files/lkrg.cfg b/recipes-kernel/linux/files/lkrg.cfg
new file mode 100644
index 0000000..e02bf76
--- /dev/null
+++ b/recipes-kernel/linux/files/lkrg.cfg
@@ -0,0 +1,4 @@
+CONFIG_DEBUG_KERNEL=y
+CONFIG_KALLSYMS_ALL=y
+CONFIG_JUMP_LABEL=y
+CONFIG_DEBUG_SECTION_MISMATCH=y
diff --git a/recipes-kernel/linux/files/lkrg.scc b/recipes-kernel/linux/files/lkrg.scc
new file mode 100644
index 0000000..83397f8
--- /dev/null
+++ b/recipes-kernel/linux/files/lkrg.scc
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: MIT
+define KFEATURE_DESCRIPTION "Enable Support for LKRG"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware lkrg.cfg
diff --git a/recipes-kernel/linux/linux-yocto_security.inc b/recipes-kernel/linux/linux-yocto_security.inc
index defca57..b79af80 100644
--- a/recipes-kernel/linux/linux-yocto_security.inc
+++ b/recipes-kernel/linux/linux-yocto_security.inc
@@ -1,3 +1,6 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
+
 KERNEL_FEATURES:append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES:append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
 KERNEL_FEATURES:append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
+SRC_URI += " ${@bb.utils.contains("DISTRO_FEATURES", "lkrg", "file://lkrg.scc", "" ,d)}"
-- 
2.25.1


