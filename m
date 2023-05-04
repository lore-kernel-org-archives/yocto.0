Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13400C7EE21
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 17:32:29 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
 by mx.groups.io with SMTP id smtpd.web10.1113.1683221543762325532
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 10:32:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=GSE+t+H7;
 spf=pass (domain: konsulko.com, ip: 209.85.166.50, mailfrom: scott.murray@konsulko.com)
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-760ec550833so50845639f.3
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 10:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683221542; x=1685813542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=92COOAlepA9GssnhLy8828DAPpVmzphMlrLzUXyd+CQ=;
        b=GSE+t+H7F/oWZZMnqzYl3Muu03WmikaADOyI95wIzRqFePqYGVfRV5FWSNC8fRH4NO
         nMaXZCFg+Ai8t2ZcdRYHZ1LCCsWW1cR/fpGW6svxucbQ86wKjU0zJP+EAH2i0m+uDlgz
         UFEnzsFoUoN5Mz9RG1+KU1yr1Z/rF1cCEKd8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683221542; x=1685813542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=92COOAlepA9GssnhLy8828DAPpVmzphMlrLzUXyd+CQ=;
        b=kUTqdL+9O9cmjKR9H+EpGbz6KQw4I7aMWiAYH4jP71gVXrHSRS3OtxoJ5FoDfYzNzp
         tl1Mym9CzbNW6n2qTYifpzRbcz0OHGXNQtLmL0BIZUnj0rQ91Jz8lBDIbDMwT245O0lA
         LmJRFBaNe2lcB/Zpy2nzFWnu1IAXIYT4ASRgFMTps1zU4AumsVm1wwEPPD9TcUH9eann
         TxgjoOvtQBRDY+vySrHuURUfb3D6DeA+GG4EsTekxgkzo0fRrdNPKZov4UT08557FGUI
         GbYpsttiwQJhSEo6eaBEXpCjeL4V+z17rn4IPhDU2AXLWs9lT5GGb89x2Wd4X1xaAfMS
         BTTQ==
X-Gm-Message-State: AC+VfDylko/EKTjS2yYO5IsZxXv6NWvFNtZvctmUaueULl4L3i4BpaFO
	H+hCnp2Y+BkxXgts1yfSlDo/nZJisDP/shj/4Rs=
X-Google-Smtp-Source: ACHHUZ4y6zSwGcBZ45RddQFyZdKpNN0UlcN20SyovcNgrrMY/AmNf8DVxdXc3VRQzOQN3P089xHvbw==
X-Received: by 2002:a5e:9411:0:b0:763:4e71:8142 with SMTP id q17-20020a5e9411000000b007634e718142mr336965ioj.5.1683221542527;
        Thu, 04 May 2023 10:32:22 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id l9-20020a5e8809000000b0075cfdf70ca5sm9766629ioj.50.2023.05.04.10.32.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 10:32:22 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][kirkstone/rust-1.68 RFC PATCH 0/4] *** SUBJECT HERE ***
Date: Thu,  4 May 2023 13:31:51 -0400
Message-Id: <cover.1683220726.git.scott.murray@konsulko.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 17:32:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59876

These patches comprise my proposed kirkstone/rust-1.68 branch for the
meta-lts-mixins repo.  The initial check-in backports the Rust 1.68.1
support from mickledore branch as it stands in preparation for 4.2.0,
then I have separately ported the recent Rust-related fixes from master
that I expect to get officially backported, including the bump to Rust
1.68.2.

The README in the initial check-in provides some details on the
backporting of the librsvg recipe versus not doing so for
python3-cryptography.  I did double-check this again, and I do not see
a way to retrofit the librsvg recipe with a bbappend, as the bit to be
changed is in a do_compile:prepend.  The other recipe that I've
discovered with a similar issue is mozjs-91 in meta-openembedded; it
effectively needs a replacement do_compile to pick up the RUST_HOST_SYS
change.  That could possibly be handled with a bbappend in dynamic layer
in this mixin, but I have decided to consider it outside the scope for
now.

Alex Kiernan (1):
  rust: Upgrade 1.68.1 -> 1.68.2

Alexander Kanavin (1):
  meta/recipes: ensure all recipes have a SUMMARY

Khem Raj (1):
  cargo: Fix build on musl/riscv

Scott Murray (1):
  Initial check-in

-- 
2.39.2


