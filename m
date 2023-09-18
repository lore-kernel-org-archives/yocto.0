Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57A3CD37B0
	for <webhook@archiver.kernel.org>; Mon, 18 Sep 2023 12:58:24 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.50485.1695041902799675944
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Sep 2023 05:58:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=P3IATY0o;
 spf=pass (domain: snapchat.com, ip: 209.85.218.41, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9adb9fa7200so903734866b.0
        for <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 05:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1695041901; x=1695646701; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wiSRgXdwf5KVHybaPLEL8+wHQk5PA4ol6YbzNv0m2rE=;
        b=P3IATY0oVdnZR91vuNQ22Lqyd79V8/K1B0Hky37Z3F1FnFGxOKM3z9VtWGs58byp5K
         He6V130HWhdsPnzIiNKF2YxuZPrivziVd5MpXevqZdHk7vClbjwRu/U71FYEvL2PhR1x
         4fTPUtfhw1R13HABQ7vfreJgmHA9/ahu1P1y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695041901; x=1695646701;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wiSRgXdwf5KVHybaPLEL8+wHQk5PA4ol6YbzNv0m2rE=;
        b=h1Y4ZRz35q0csaMKg8HQQ662z38MfF4ET4BSCVc+axq+B3IuWcajzjzho6cdMolnWr
         94Bhy2tdDM86FQPyyamP20enXeZmGpIIcNQHdLIK6WKZreQUGsVZzm0SeIOZc4XKgNUr
         atxbQSWJA5gE0bWYGU9Gew1xWDIVFM2TjbQ4m2RdoG/sId8hD0DrC5r1yO7SuYbd4VIW
         +swxPcJ/me/y9zV3mGWLmZH9s/eA9PJi7MZT1RU6L3XXBCMrVEvM3odkIpPlmcS6YwZt
         HMQIKVgu2DJFcotrYdAw/y0g8Lh83twcX+yxZaZvjPqk7Eo3iw8fz+tkGviIwVGovNfB
         +zyA==
X-Gm-Message-State: AOJu0Yx7I0SHcHCC5VEe6qUzG5WmQQoHuhLkphyRGXRWdJiaE1kdDPd7
	RzRiyDx0AZ++Wy3dNMg+qpUudq/4NAY+Qa8oDNE=
X-Google-Smtp-Source: AGHT+IHmkEShgE7oGRpDzWafBWQX0+q+qiFwstIyIuk8MpdfwQXsqb5ljaKutHV2LE7JrSj5vEnaoA==
X-Received: by 2002:a17:907:d89:b0:9a5:aa43:1c7c with SMTP id go9-20020a1709070d8900b009a5aa431c7cmr16857089ejc.26.1695041901030;
        Mon, 18 Sep 2023 05:58:21 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([213.249.125.50])
        by smtp.gmail.com with ESMTPSA id u1-20020a1709064ac100b009934855d8f1sm6403115ejt.34.2023.09.18.05.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 05:58:20 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH] libtapi-native: use nobranch=1
Date: Mon, 18 Sep 2023 14:58:05 +0200
Message-Id: <20230918125805.1246947-1-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 12:58:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61031

From: Etienne Cordonnier <ecordonnier@snap.com>

The master branch was deleted upstream and the commit is now in the branch
"1300.6.5". The safest way to fix this is to use "nobranch=1".

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 recipes-devtools/libtapi/libtapi-native_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/libtapi/libtapi-native_git.bb b/recipes-devtools/libtapi/libtapi-native_git.bb
index ee569ec..3c09387 100644
--- a/recipes-devtools/libtapi/libtapi-native_git.bb
+++ b/recipes-devtools/libtapi/libtapi-native_git.bb
@@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://${WORKDIR}/git/LICENSE.APPLE-LIBTAPI.txt;md5=ecd05d65
 SECTION = "devel"
 
 SRCREV = "b7b5bdbfda9e8062d405b48da3b811afad98ae76"
-SRC_URI = "git://github.com/tpoechtrager/apple-libtapi.git;branch=master;protocol=https"
+SRC_URI = "git://github.com/tpoechtrager/apple-libtapi.git;nobranch=1;protocol=https"
 
 PACKAGES = "${PN}-dbg ${PN} ${PN}-dev"
 
-- 
2.36.1.vfs.0.0


