Return-Path: <antonio@amsobr.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B683EC4167B
	for <webhook@archiver.kernel.org>; Mon,  4 Dec 2023 18:31:13 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.77112.1701714670130912163
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Dec 2023 10:31:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amsobr.com header.s=google header.b=zOHL4CSj;
 spf=pass (domain: amsobr.com, ip: 209.85.128.50, mailfrom: antonio@amsobr.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40c0fc1cf3dso1736125e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 Dec 2023 10:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amsobr.com; s=google; t=1701714668; x=1702319468; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=irTgcoH9ymitM8MLuIR/7DAn2ErJQdYb7PI6PQrf0cY=;
        b=zOHL4CSjnyLtlZEp+8NAKlSaNCgqKJgwdwLGLKrvAqjGi+3/xbiviEhcUwtn5tcC4d
         Taj2KXNxUIkIcRg9hjveiPrYYRYc5zELBnLfKRMLAjBkVtajzq8eh5agljaVjEv9j+3c
         dTUjWbBgYlkeqWWFuHyfTACXzG7mIAtbYMFhguzP4oL+idjFxiSD9CEld7R6jlwE9k+V
         1SsIRytEf9uvgvN9ZEVPKB2KRPbt3FzNxkttKD9DcNMvo3m3jpTvhmKCBksQhNAE+7yr
         OC0ej1TtrmDMUN9V27uDBdeVlecwybI6ChO5gmTtcZe6MpgehuYUaLcLGMzmqNkWppqo
         sFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701714668; x=1702319468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=irTgcoH9ymitM8MLuIR/7DAn2ErJQdYb7PI6PQrf0cY=;
        b=YNOqxNtZpno8fRROnWfduKYIm8hrNytd2zaYJdMrpnzJhhxvbNTUKqyztUZv94yE4v
         bfPhFFISghSfmEzp3z4sYXMvy50emouBwmIpiG8T5oIGFh9pkvNFZAuHUIitUk5yjzYZ
         gGuaz8nRSWEjrSSsWqkq5ZZmSakdzmjkHT9977fDZtQX5l2+Kwi37Mzcv8GVyWigplge
         2pW35cxXh4jVTPni2JcnUoLCBUmzC/gg9y81B9W3z0Zd4HoaJkB9XuMH9B98mIZO+FtZ
         uWDpBPw30uNZyuWktO+05IYa1h8i5wD4JhWPQMDLMf+v3rjXLNBzAwzIY61jEWdHUATY
         lBDg==
X-Gm-Message-State: AOJu0YyYVT+l5xBiuspa3FXXazrjNtX7u+1fKt40rTIP6SSqXHDYcXYK
	j1M1gCMEWXxiV28mfG+ENZUR/u5vR2P+UwsDYno=
X-Google-Smtp-Source: AGHT+IFM1PXr8/X1TH43th1I+rJdS/r6NGHqqTZFXuP4/6LlC2Ztc2alco2TvIh1Egk4Kg9krZnHug==
X-Received: by 2002:a05:600c:474e:b0:40b:47cb:5f90 with SMTP id w14-20020a05600c474e00b0040b47cb5f90mr2681372wmo.27.1701714668211;
        Mon, 04 Dec 2023 10:31:08 -0800 (PST)
Received: from localhost.localdomain ([2a01:14:113:53b0:3b8f:63d9:d195:fc5d])
        by smtp.gmail.com with ESMTPSA id fc12-20020a05600c524c00b0040b400711f5sm19816971wmb.7.2023.12.04.10.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:31:07 -0800 (PST)
From: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio@amsobr.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio@amsobr.com>
Subject: [RFC PATCH 0/1] lts mixin: kirkstone/nodejs proposal
Date: Mon,  4 Dec 2023 18:30:54 +0000
Message-Id: <20231204183055.29931-1-antonio@amsobr.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Dec 2023 18:31:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61791

Hi all,

This patch contains my proposal for an mixin layer that adds nodejs v18
and v20 to kirkstone.

Kirkstone ships with nodejs-16, whose maintenance window ended in
October 2023 (a).

Kirkstone will be supported until April 2026 and it would be nice to have
some level of support for a maintained version of nodejs during that time
window.

This proposal seeks to address that by adding nodejs-18 and nodejs-20,
which will be maintained until April 2025 and 2026, respectively.

The recipes for nodejs-18 are taken from Mickledore and the recipes for
nodejs-20 from master.

The variable NODE_VERSION can be ser in local.conf to choose either v18
or v20 (the default).

This is my first attempt at sending a patch upstream with git send-email
so any comments or suggestions for improvement are welcome. That's also
the reason why I marked this as an RFC.

Cheers,
António

António Oliveira (1):
  initial commit

-- 
2.34.1


