Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790F2C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 16:24:12 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.68263.1672763043571052485
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 08:24:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b+c0a32L;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id fc4so74996394ejc.12
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 08:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=89uCMLITj9kWdGtgW6c7POwV5uM4LS9pwHs9YeSKez0=;
        b=b+c0a32LTZxsUtVlx6KXNP4ajxw8eIrkpAPTUrzUpHMgi4ljMo8yP+JPQu5ZtMbXsF
         pY4h1G/Q4PdGkKujRWS6VX4q14sQT1a8tgqdPkzh9AzbVIqb3nJSlGslaoX4Sm8m1XUb
         GuBNyXWcb2yrgqpeeMDdF47tBHUwGQTUeTO9WZUKyffOzo07oWZ5JCPm0uQ/n0BcbKe+
         W8PhNbWOLIBaopqgjeQP2n4T2X24Y+wQAzq8e5A97sB3kTa4XQet4IrEErLHT3p/RdPc
         ++wqwGFBk9CAoGcsad6VYtHgTSUjLXqAL+1XFKKGUMrxZTgMtMWPI9fAkIykQQXQZT2z
         AC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=89uCMLITj9kWdGtgW6c7POwV5uM4LS9pwHs9YeSKez0=;
        b=b0hy/0s11c6vWTXeOIi/pk61sQXI+UWoC3KTeQio0YKt4DIQpcduIkW4CsOvV935AS
         sEQI7PmoGNsf0pR7+eiuR3HjifyS07Yz+KZxBOXAyEPVzjjvlGCQYHFl5bM4lnNIrenn
         nY3MaXE/Q455vFVyU8K6ezdFeDSUiCa0juqe9zywtgeMt5NG1wDK+8JoaT+dr20cvFTp
         I0mJThPcN/D84gEE+mdPq/k2utNF7MLcp2nTw3GhLEY0+8lni3hXtB9IznzuRNlZcTm0
         GyqGn6Bbb0nO0Ayx56PEcmWY4KvPit+vhRDhB61Np+m/TfS+51xisVor6upX0v2SkK1m
         /0jQ==
X-Gm-Message-State: AFqh2kobhsT+lkG/U+1duhVI6XhyPG+VOEthlW4JKghJ7OCNycJf7BLv
	9YaIc4sz1hvWtEprkJ+XFbvq4G4CfVc=
X-Google-Smtp-Source: AMrXdXvwNC7vsqRIcr68P9cHq9eslvlUO8f06U9tiO4xSJsnjD+MmWif2ho71AodQCeauorparan5A==
X-Received: by 2002:a17:907:d50e:b0:81f:fc05:2ba0 with SMTP id wb14-20020a170907d50e00b0081ffc052ba0mr38559642ejc.2.1672763042024;
        Tue, 03 Jan 2023 08:24:02 -0800 (PST)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id fy11-20020a1709069f0b00b0084ca4bd71b8sm5097662ejc.208.2023.01.03.08.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 08:24:01 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-rockchip][PATCH] layer.conf: update LAYERSERIES_COMPAT for mickledore
Date: Tue,  3 Jan 2023 17:23:53 +0100
Message-Id: <20230103162353.208603-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 16:24:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58912

* oe-core switched to mickedore in:
  https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9197c3b..3d0e02c 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "langdale"
+LAYERSERIES_COMPAT_rockchip = "langdale mickledore"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.39.0


