Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DD1CE7D24B
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 07:49:40 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.13720.1695714571782199291
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 00:49:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CjJHLQgF;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-99c93638322so1820722166b.1
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 00:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695714570; x=1696319370; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+vA8CqzWAFWmhFt5KzJqwgc4XWIhadL1l/ljBRpUtBE=;
        b=CjJHLQgFMEcKm31z5vUPt+kHD0CoRQoxf2DPyJN+6i2w+QRFEewgkpA360mND62aTR
         wSQAbgoWMnMT6PXKrkCBa5LoAn+CdWKkRBQvApsuinN09HLCWJZaroldnZktePgkgnDh
         /4gzrf3JGclDC9yQ/GYf7ZmgGIijln4pyI0DlRYog3F5cq9bGM3FVJGLfLQhRYqTkd3E
         7lJzK3qz4JCWYrmVZbRvYk41vadOQc5M5d7FOYgiUSWVQk83ml4r5208iZ7D0QcXBS8b
         eAXoiAVcpuaqDTw9YCazGk4jH8V92QSdGzD9OsTytAXp2hrsa/tVzXbXIeO6n4sic/0H
         xsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695714570; x=1696319370;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+vA8CqzWAFWmhFt5KzJqwgc4XWIhadL1l/ljBRpUtBE=;
        b=Nr5Iv9jmIp8lozucy/ZkS1ZWjGglZRWUS0hwtkfi0Qz16q6ThT9pw9kamoBe6oDy/M
         hR4QDIDKK6NbmsrXoP5vUbCeuhFPHGxmz5y5CPRhw16UHub4m6oUyqZQE9xVotu8FoYV
         PVnbqre+CNyb/Ghd83D+KKXjrS90WxuIdBydLmeHtP8meakBrmoKktKMjrTL4KdF2OEQ
         RACTigNZMaFhMIuGqFxEyfUM5+/SscuG1GQL07iQhQi/uAqBMuEJGL7L9pjB/RpLiwd+
         NsmM1QuSsyT+e5hsnh/gaG3Jj5QFS3Uv9kr1fSqFvt+nwttQWaPDxoUSmteEN6iRn89N
         Se7A==
X-Gm-Message-State: AOJu0YzDUCm6dG3jOvTmP2myyqj4TtZVyFbkbX5RRhFfj39v10t6EYhB
	IrlX/SfrFb3VdA6KYNAkZ1ccGh7Xlno=
X-Google-Smtp-Source: AGHT+IHGHxpwkEZEFpZnhsv2fKzUBgREX3iiBKb54v8XkkPchMwg+oUvGX4bKsoh+mISjz8WVfoBXg==
X-Received: by 2002:a17:907:78c5:b0:9ae:3db1:ce05 with SMTP id kv5-20020a17090778c500b009ae3db1ce05mr2741775ejc.24.1695714570033;
        Tue, 26 Sep 2023 00:49:30 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id b18-20020a170906039200b009ae5674825asm7403991eja.47.2023.09.26.00.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 00:49:29 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][kirkstone][PATCH 1/2] smack-test: switch to python3
Date: Tue, 26 Sep 2023 09:49:21 +0200
Message-ID: <20230926074922.2405-1-martin.jansa@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 07:49:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61117

From: Armin Kuster <akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/smack/smack-test_1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
index d7824ae..3ab57c6 100644
--- a/recipes-mac/smack/smack-test_1.0.bb
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -22,4 +22,4 @@ do_install() {
     install -m 0755 *.sh ${D}${sbindir}
 }
 
-RDEPENDS:${PN} = "smack python mmap-smack-test tcp-smack-test udp-smack-test"
+RDEPENDS:${PN} = "smack python3-core mmap-smack-test tcp-smack-test udp-smack-test"
-- 
2.42.0


