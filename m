Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43DD5C04A6A
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 12:34:58 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.13571.1691066092101930230
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Aug 2023 05:34:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=ailPubL8;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-583e91891aeso9413597b3.1
        for <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 05:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691066091; x=1691670891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=WTRIgz0wz4gflfiIxdpBkn1+XZVVo8eiypGlD6uikkg=;
        b=ailPubL8iXpwpOKlr/IfRzWK+JFS5U3AXD4bkxdGQzAEpXf8j7yU6Ub5AqyirRusbb
         6b3zEq2oRMwr9gVTDw9DNYipclZ8h0r3QdEMoFr7xI9JRebTp0y68pgs9X/8ndr5hbgr
         losXH6BkZO0PtT8PVkZkxQG2V9g6uIhqYToV+biWvs7FFX2GpUr2SuGrq9JIccN7GrCE
         Rz8QHINRFLE1sE+fz1ln3reUsg9v/rkreHU7mDSlLaLKb60bnjGO5SebLx/PlietsAuM
         q0Y8j6iw8C1NF6glvvjlINRx/GftXvnpeRYOBu78xJRs+46vHiUVCLu0G4pSD4Ep/s0K
         bYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691066091; x=1691670891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WTRIgz0wz4gflfiIxdpBkn1+XZVVo8eiypGlD6uikkg=;
        b=llds3TWeNpaqUwOrhWBCUVrIugOmWBrlz4wtV3LFVquYFzz48gYXzdVP+vdSxtHs8I
         QbAT4CErPXTMhiipEmycBJtD0+zxCFnVL0dMoDBXrJzQBtY5Jqjt6RSLVEYjJQoMjhLp
         bKtcbSTlT6z4/J5Y4i17sZHEiMkqqHN2GRZMZzHT0rUHJfH+TgPILQ8GMpTqlNg6EOe/
         VhPz2yImC474g9Cx3p0l9bvOYx8AXKrtu1Z0ScdQooE6l36mayyK4K0FwSd03MlP+DOu
         Z8Bf9E0TNql5LpJvNsR8ITdQY+DM82+gNdCmCs/jT3MI3SB9IW0XLmrXD+I21ae47FJa
         AAFg==
X-Gm-Message-State: ABy/qLZyhtPQTOkTZ7YIRwWmQ+z6CihqGSXVCIU1/ekkrT08qmVhrhvN
	fnMznJAR+Eic5B7D92udOKc1x51du6Y=
X-Google-Smtp-Source: APBJJlE09TIQgTW6wvCs2CIPp+nUgakY95NKVx85gfhmaOQcHEqfVoxlOox+GS9gLTLq4MaloZNVAg==
X-Received: by 2002:a81:6041:0:b0:586:fa6:c5b7 with SMTP id u62-20020a816041000000b005860fa6c5b7mr14070943ywb.15.1691066090986;
        Thu, 03 Aug 2023 05:34:50 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:5c98:9045:2ee5:13b9])
        by smtp.gmail.com with ESMTPSA id t14-20020a81830e000000b0057a560a9832sm5328220ywf.1.2023.08.03.05.34.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 05:34:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] meta-tpm linux-yocto-rt: Add the bbappend for rt kernel
Date: Thu,  3 Aug 2023 08:34:49 -0400
Message-Id: <20230803123450.309537-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 12:34:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60703

So that the security features in this layer can be used on the
rt kernel.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-kernel/linux/linux-yocto-rt_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto-rt_%.bbappend

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto-rt_%.bbappend
new file mode 100644
index 0000000..e8027ff
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto-rt_%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains_any('DISTRO_FEATURES', 'tpm tpm2', 'linux-yocto_tpm.inc', '', d)}
-- 
2.34.1


