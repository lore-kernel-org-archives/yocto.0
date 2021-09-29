Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E80FBC433FE
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 05:29:48 +0000 (UTC)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web08.4957.1632893388250453011
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 22:29:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PBkNu3M0;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id z184so1609276iof.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 22:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6JvvZyHIhmDm51r9vO0+/f49wFER1Z0ljdR50QXKOjY=;
        b=PBkNu3M0HspNGg0mDr7GEc3RXaxk4KuC453roR3c4e9pHfo13BxvZh4+DErJ6FmUoJ
         3gP00sEhC/lRMLru2PwZyt1LL0QZkIC9g5T0qmt89GHDQpzjEMpGWCtZbgkJM/bpQHrO
         IhwPjHqWqBijRKZ6QwBqMtluSI5GldAb4qmGv3XXga4ztUrIDyHXQJSxa5R1jeMaktFE
         POtZwZP68GaWMHlKuk8tlm3yiraxLrN4t6Z4mMjU/Xk7doQb259q5ggfzZIxXgOHb55Q
         Dgot4wy9GMvjTfXg2oVZ1kWf25GuNkbXEADYotbjIIKTpIfLwg8vqHpx/Ol1+xJYDrOi
         2XhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6JvvZyHIhmDm51r9vO0+/f49wFER1Z0ljdR50QXKOjY=;
        b=IwHdYQNo/kkLMMIJf1dL4CXfPZqtwuXp/qgiziQPdcsKjQBw+kmP1vmwUqNNLH0ctE
         wjP9Com+wFq7XUToIKshfpQ8aEETc0jSt0KhtkQQ3NKrwy3Ew6374zGZcbq3fdP9R9F7
         017kIXyHHQxbFZuYi3B82/+th4L8dxGgU5qTjAZVOhIerhaBKrRuGiA9tyPvhn9CZGuM
         J8T0VzGd6mmqAF12/JSA67C7RNGXJDAMS5v5dQPZPpAwgkRnhAFXXUD6QS3cIg+K52rx
         5nnaaYbuhiXglDVBiKfw+TkZuEyoKueaUb0B0HGb/9O2i/2cx0LCD6RDu/ACO/KQmvPf
         6JfQ==
X-Gm-Message-State: AOAM532kxGOMn/I1+tX0xRjmPkCha4oGAKx6teSEpEk8rxyF6euQJadP
	sU0Ee9Ga7TYpVd0434PDEI/+bgEpkE4=
X-Google-Smtp-Source: 
 ABdhPJxrCNzKNvzebuqANc/R3d/BZ/Y4LdQP5UNBjJhucBd1ppAKfC8qqYBP4rkhZRVg29lcLuETfA==
X-Received: by 2002:a02:aa8e:: with SMTP id u14mr7988980jai.24.1632893387482;
        Tue, 28 Sep 2021 22:29:47 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 u18sm748705ilj.24.2021.09.28.22.29.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 22:29:46 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 2/3] include/nanopi-m4: remove KMACHINE
Date: Wed, 29 Sep 2021 01:29:37 -0400
Message-Id: <20210929052938.36819-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210929052938.36819-1-twoerner@gmail.com>
References: <20210929052938.36819-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 05:29:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54902

There is no "nanopi-m4" defined in any yocto kernel metadata (yet?), therefore
remove this superfluous line.

Build (core-image-base) and run tested (both systemd and sysvinit) on:
- nanopi-m4

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/nanopi-m4.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index 3870b51..b8e1db1 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -5,5 +5,4 @@ require conf/machine/include/rk3399.inc
 
 MACHINE_FEATURES += "usbhost serial"
 
-KMACHINE = "nanopi-m4"
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4.dtb"
-- 
2.30.0.rc0


