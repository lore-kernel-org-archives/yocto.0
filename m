Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90912C433F5
	for <webhook@archiver.kernel.org>; Sun,  2 Jan 2022 16:25:49 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.14592.1641140748823804656
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 08:25:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b3J8+4qF;
 spf=pass (domain: gmail.com, ip: 209.85.221.52,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id q16so65590451wrg.7
        for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 08:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ghiR+T7MdKl3CoUNkCNgDDVZCFaeWbTn/A7rrpE5O2s=;
        b=b3J8+4qFNxesPubKdkStCIzr3o8JR9wwXxNqBwfTQ0gI7S3FEc44XpwNS1Dhj0heV3
         ywYzH7Gqx1dqmToWyoWuWWCiRJdp8xX8n44gDSRnrFK13xdsdsxShq2zrERDP8ogWY/Q
         ol+u/xjfrKtS+PcmFCElwDSmdrlfsQcLVmEeUCgZnwtYmo5mkNCqLkSMsdjZ/CDqgxHy
         f7VdQ+qm940lczE6U2lizZy+EN0MzNSI5jI0n6SOisOi2W1p8iSzrQIwd/QHJOtyR9Hy
         BmGmArcYCwOiSBlKsS/9JNm9QJBCfPqpJuDAlMIf5RHyS+eOTwY+2PFjdG6OF8eiZBVX
         Z52w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ghiR+T7MdKl3CoUNkCNgDDVZCFaeWbTn/A7rrpE5O2s=;
        b=4i8CcrvuPrvpCBn0PXXXCx8Y/pu+/r2eVeyrUZIj1amvOTUbfvLWgPZT5waHrgf1K3
         3mB6z+uFp/kOzDq/luZx70BsVUoyuN8zFCyWVDLUaH+zE5XrFEmzJv3fKsXnCkRqFup8
         u/O4Y17UbcCHt00Ete0Wn2Qdw+3StiemUEOUcI+m2EefZU1/+Altx/Wj+YkWjLpQjxei
         c0EiC6msNfOhyXThlwIVRVVjr1rV2d80sGzPpWp38rmMZ7ZdWnsB9e8wnCHjNkufahml
         r2fT52l8vzkzTARmvyI8K5tfDSvXCaeQ9jPtk6E6k6lv+K68Q2Pi4X3uVxioCTVgcB4M
         apqA==
X-Gm-Message-State: AOAM5325X/Th2QBf9nXzJsAcmUr1FLp399t4ECKRgj0GifmBgF5nTBNy
	mV0rm2kh5pokiFKBQEZGQuNFsnizNxc=
X-Google-Smtp-Source: 
 ABdhPJwKAFRvG1oflxOo6ujhQnvkmSG5WxqkP8GiT7ppUA9SY+HNhcMd4Oh6XjUnc2ZQ8bU0adGcFw==
X-Received: by 2002:a05:6000:144a:: with SMTP id
 v10mr35355744wrx.357.1641140747274;
        Sun, 02 Jan 2022 08:25:47 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 z11sm39380093wmf.9.2022.01.02.08.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jan 2022 08:25:46 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [auto-upgrade-helper][PATCH] devtool: return both stdout and stderr
Date: Sun,  2 Jan 2022 17:25:39 +0100
Message-Id: <20220102162539.406212-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jan 2022 16:25:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55699

At some point devtool started printing to stderr, which means
patch rebase issues weren't anymore correctly caught, and bogus
updates were being sent out.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/utils/devtool.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/modules/utils/devtool.py b/modules/utils/devtool.py
index 0d27bb0..c26061f 100644
--- a/modules/utils/devtool.py
+++ b/modules/utils/devtool.py
@@ -19,7 +19,7 @@ class Devtool(object):
             raise DevtoolError("The following devtool command failed: " + operation,
                         e.stdout, e.stderr)
 
-        return stdout
+        return stdout + stderr
 
     def upgrade(self, recipe, version = None, revision = None):
         cmd = " upgrade " + recipe
-- 
2.33.1


