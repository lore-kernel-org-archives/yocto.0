Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F77EC433EF
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 18:06:28 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web10.11564.1641924387716675180
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 10:06:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TJPIJFbA;
 spf=pass (domain: gmail.com, ip: 209.85.160.182,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id h4so100876qth.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 10:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yZ+OBvFx+CNvGtNWi9Kas5JA2uEpahf8JfsHhxVChnU=;
        b=TJPIJFbAalEMn1EbQgmxc0U9KNjIJ9ITOyhLMqy3hpfrE4XQnO+JoCpx00hJstfD8V
         LsqcYAe9AWvXB9w4jjMe4aPgunP9rqb9/lLwaNsZ85+MzCW7xlgYCzv4rzmXDvu2C2P0
         R3ClFX97mmIjBH6GKmyLZjaVDGclJ1X79n3bs5VphzeHx2wHH9tgE74zjy0n9jTmRgW5
         iBUOmHc3wtl56o58fvz/VnYHGOpuZVgCYuyVP8E7A/CVURXklUcDVm8S9HkG28Ju4G0G
         FAZUQ4ORmoOaD4sL2VnMpD45Wp+p6+8NOo8tE2qPDM8qcAcc4z2aRCTmfY1swc+FNfkx
         /kaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yZ+OBvFx+CNvGtNWi9Kas5JA2uEpahf8JfsHhxVChnU=;
        b=3mFgrSK9dT4Y3I8ErOjDKupQFuwN/L4qtSCxL7dQ2XXSLrqRPKPZBizEF/97ZgDvRv
         k63aBx1PJMekw72ajFOmn4181HM3bsLSMY8+AsQimvN85KyS2m8gfMZvdp+tPWpmuQpF
         MJY3KarRAjrD7TfDHBMFcg3EbtijyxyN8RcgBzebdk6afo6Eka9xQpZ1i72jkP9KLMto
         p5v8e5zNqgpuDZnAI378lh3S/aXhSEhVzspOes9ChXXDc4uMUK4hyfAltjNvkfnRUSlI
         FA7Ud494wxY3sT2cCOpA7+tqciYnX2iSKmxjinVg4/OhUHxGEERn2fA0kuMcht41o5On
         lhKg==
X-Gm-Message-State: AOAM530J6nzdHjmsstGcN38fU80tUdozMWSf253oFPevO/zaQOWYhRrC
	bJ78CtgmZTlmybRziA6Oa+IuEEq6EOppHw==
X-Google-Smtp-Source: 
 ABdhPJycoKJ3jdEtTEp00Flr9Hzg+9H380EqfIGhhbYxnn12GeSWjAdD6wsxZxI8uO52LQMjjXyG2A==
X-Received: by 2002:a05:622a:242:: with SMTP id
 c2mr4558555qtx.559.1641924386741;
        Tue, 11 Jan 2022 10:06:26 -0800 (PST)
Received: from build.lan
 (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id
 k8sm7543018qtx.35.2022.01.11.10.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 10:06:26 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/3] yocto-bsp/5.14: drop recipes
Date: Tue, 11 Jan 2022 13:06:23 -0500
Message-Id: <20220111180624.45586-2-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20220111180624.45586-1-bruce.ashfield@gmail.com>
References: <20220111180624.45586-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 18:06:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55805

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.14 has been removed from core, so we drop our bbappend. 5.15
is now the default kernel version for the reference BSPs.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.14.bbappend           | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
deleted file mode 100644
index af4a7392f0..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH:genericx86  = "v5.14/standard/base"
-KBRANCH:genericx86-64  = "v5.14/standard/base"
-KBRANCH:edgerouter = "v5.14/standard/edgerouter"
-KBRANCH:beaglebone-yocto = "v5.14/standard/beaglebone"
-
-KMACHINE:genericx86 ?= "common-pc"
-KMACHINE:genericx86-64 ?= "common-pc-64"
-KMACHINE:beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine:genericx86 ?= "9d5572038eacda2e2a86e3f743f35ec415319fb4"
-SRCREV_machine:genericx86-64 ?= "9d5572038eacda2e2a86e3f743f35ec415319fb4"
-SRCREV_machine:edgerouter ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
-SRCREV_machine:beaglebone-yocto ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
-
-COMPATIBLE_MACHINE:genericx86 = "genericx86"
-COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE:edgerouter = "edgerouter"
-COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION:genericx86 = "5.14.21"
-LINUX_VERSION:genericx86-64 = "5.14.21"
-LINUX_VERSION:edgerouter = "5.14.6"
-LINUX_VERSION:beaglebone-yocto = "5.14.6"
-- 
2.19.1


