Return-Path: <antonio.oliveira@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBAFBC3DA6E
	for <webhook@archiver.kernel.org>; Mon,  8 Jan 2024 15:58:47 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.347.1704729523624683061
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jan 2024 07:58:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=PTNfv8+M;
 spf=pass (domain: konsulko.com, ip: 209.85.128.50, mailfrom: antonio.oliveira@konsulko.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e43e48a16so15266495e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 07:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1704729521; x=1705334321; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgcWNWVL8yuD5vaDMdBfF4996Ae1Uq/KBYU3auf0HIE=;
        b=PTNfv8+MuCuE5lSanP3VQhOEDwz8nqWSwWbev7uWtffUXyCMI289f5cbsT9jDqP0/N
         OuoK932YwsvaU2d3jJO0G58y2hhx/LpsNmfBwZZVHXNDUWNq4DPbLCuRr4CfcyCJ9SV9
         8iFgDZHwnbNY+QXqAi5pstDvOsSRlYe2u2kp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704729521; x=1705334321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NgcWNWVL8yuD5vaDMdBfF4996Ae1Uq/KBYU3auf0HIE=;
        b=PhbGktBS16SZear8vM7bBwFyTJKBSDFVX1mvJMtC3BC8yiw01TnLkJ9prODfdWFnp5
         q0GiEat3rmUsOHHTuLEV3ZEJxlzXHt3p6hGL0JjbusGVEimf4dmK/GRheLsIULXfzsZT
         MNYuNRBQeVfarOERkvpzYrCOmOz5twsMGzY9p9ESIVpJJxD8QcjI8tJy+xdTXzMmCjLC
         4xeiBpe/UGpLmYS30GTIe6nFbxkCmJI6JJhikpR0tPvLtXeut6EQeOvUaetqV3wjXLKb
         YI/E21Vs0pBqfc3Lr+yE5Ubb3poA8U+XQ4W9wGAEuIGYsoPF+0LDqMpCp2WCx2OqVypq
         RGjQ==
X-Gm-Message-State: AOJu0YxFXrrBRrst8CJ5C0C2WuyIKdDsBPJgIHKqmqXIRBM0Qa/3bpAO
	meWH9EY36hehYUEyKdUkKRuY2yKjRtujTHGu3R3jY6xfv/w=
X-Google-Smtp-Source: AGHT+IHA0D5LtfUXh7HUvElEbZDask7Q+dXNkeWiUqxNdeUr9Ygm2zL50g/rDpz3y1+9BwSFnRC4mw==
X-Received: by 2002:a05:600c:4754:b0:40d:39ae:634a with SMTP id w20-20020a05600c475400b0040d39ae634amr1887618wmo.90.1704729521378;
        Mon, 08 Jan 2024 07:58:41 -0800 (PST)
Received: from acme-iron-carrot.home ([2a01:14:112:2860:d63:ebd1:2caf:4862])
        by smtp.gmail.com with ESMTPSA id u3-20020a5d4343000000b003376d4248a9sm1930710wrr.71.2024.01.08.07.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 07:58:41 -0800 (PST)
From: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
Subject: [RFC PATCH v2 0/3] lts mixin: kirkstone/nodejs proposal
Date: Mon,  8 Jan 2024 15:58:35 +0000
Message-Id: <cover.1704728801.git.antonio.oliveira@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204183055.29931-1-antonio@amsobr.com>
References: <20231204183055.29931-1-antonio@amsobr.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 15:58:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62102

Hi all,

This patch contains my proposal for an mixin layer that adds nodejs v18
to kirkstone.

Kirkstone ships with nodejs-16, whose maintenance window ended in
October 2023 (a).

Kirkstone will be supported until April 2026 and it would be nice to have
some level of support for a maintained version of nodejs during that time
window.

This proposal seeks to address that by adding nodejs-18, which will be
maintained until April 2025.

The recipes for nodejs-18 are taken from Mickledore

The variable NODE_VERSION is set from the layer configuration to select
nodejs-18. It can be overridden in case anyone wants to use any other.

This is my first attempt at sending a patch upstream with git send-email
so any comments or suggestions for improvement are welcome. That's also
the reason why I marked this as an RFC.

Revisions of this proposal:
v1:
  * Initial attempt at this proposal with nodejs-18 and nodejs-20

v2
  * split into smaller commits
  * included José's suggestion of adding the dependency on the
  "openembedded-layer" due to default configuration settings of nodejs.
  * Updating to the latest nodejs-20 recipes forced me to also backport
  icu_74-1 from master. Sadly this broke a build of lvgl and I opted to
  keep nodejs-20 on the backburner for now.


Cheers,
António

António Oliveira (3):
  initial commit: license, readme, conf
  add nodejs-18 from mickledore
  add layer configuration for default node

 COPYING.MIT                                   |  17 ++
 README                                        |  22 +++
 conf/layer.conf                               |  21 ++
 .../nodejs/nodejs-oe-cache-18.18/oe-npm-cache |  77 ++++++++
 .../nodejs/nodejs-oe-cache-native_18.18.bb    |  21 ++
 ...e-running-gyp-files-for-bundled-deps.patch |  51 +++++
 .../nodejs/0001-Using-native-binaries.patch   |  77 ++++++++
 ...-liftoff-Correct-function-signatures.patch |  85 ++++++++
 ...Use-32bit-cast-for-operand-on-mips32.patch |  34 ++++
 ...4-Do-not-use-mminimal-toc-with-clang.patch |  23 +++
 .../0004-v8-don-t-override-ARM-CFLAGS.patch   | 102 ++++++++++
 .../nodejs/nodejs/big-endian.patch            |  18 ++
 .../nodejs/nodejs/libatomic.patch             |  21 ++
 .../nodejs/nodejs/mips-less-memory.patch      |  37 ++++
 recipes-devtools/nodejs/nodejs/run-ptest      |   3 +
 .../nodejs/nodejs/system-c-ares.patch         |  24 +++
 recipes-devtools/nodejs/nodejs_18.18.2.bb     | 185 ++++++++++++++++++
 17 files changed, 818 insertions(+)
 create mode 100644 COPYING.MIT
 create mode 100644 README
 create mode 100644 conf/layer.conf
 create mode 100755 recipes-devtools/nodejs/nodejs-oe-cache-18.18/oe-npm-cache
 create mode 100644 recipes-devtools/nodejs/nodejs-oe-cache-native_18.18.bb
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-Disable-running-gyp-files-for-bundled-deps.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-Using-native-binaries.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-liftoff-Correct-function-signatures.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-mips-Use-32bit-cast-for-operand-on-mips32.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0004-v8-don-t-override-ARM-CFLAGS.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/big-endian.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/libatomic.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/mips-less-memory.patch
 create mode 100755 recipes-devtools/nodejs/nodejs/run-ptest
 create mode 100644 recipes-devtools/nodejs/nodejs/system-c-ares.patch
 create mode 100644 recipes-devtools/nodejs/nodejs_18.18.2.bb

-- 
2.34.1


