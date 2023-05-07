Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF91C77B7C
	for <webhook@archiver.kernel.org>; Sun,  7 May 2023 17:17:43 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.70040.1683479856416140729
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 May 2023 10:17:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=VSerJ/eT;
 spf=pass (domain: konsulko.com, ip: 209.85.219.48, mailfrom: scott.murray@konsulko.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-61a80fcc4c9so17443306d6.2
        for <yocto@lists.yoctoproject.org>; Sun, 07 May 2023 10:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683479855; x=1686071855;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Dy4mwQjaf5SUqTreZBUsI30PGy8Wg3J+Hn5Y2MSLZ8=;
        b=VSerJ/eTG38t2hkwcNCGks76UUWbvmqTU5zfv4uVVezS9gK/YRHb2w4JsvkEmTE678
         onmujip3cS5nZ6h2X07Sgpb46KBs0QUpX2gjhnw1f0HBz7PopL0Q0B9NQSPi/oGmFi5t
         uIbxi13KrRpCtq71HuifkE29UtI5ea3zbOXRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683479855; x=1686071855;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Dy4mwQjaf5SUqTreZBUsI30PGy8Wg3J+Hn5Y2MSLZ8=;
        b=gwpkFQ0yGblBJUjXks2451sEnkxpItri3KLodGP1sCAAp3dEDr/fJyjmu8oYbE6YnZ
         1n1dY+Nn9flHRaSfxbuKBd2of+KKagmQ4AppLSZuYz9PsPqBow2T9Ip1ORdLT2Vx+KeH
         7NyfcLvtiSL50ZCrdFG9m3BXChlcxjlBneb6i+uP4aerQQPfijImqo8dnsifUr9odrFx
         8YSKZnTSytEjU9tLUcWjk+CqB1ZUT8fBbv4EUoKUx7OZaAVhT/Brt+R7bPSxBh30jPkg
         X8cZC+Fe4pIrBMvIx27OKfr6gt26WEQXkuJed9C9VDexEm+pVI+cmW+2GFA76UknPcF7
         IWAg==
X-Gm-Message-State: AC+VfDzLqcuUQdtalmT0aTnihlwCXQqsmDEqz97RfuFf5jtU2/k3tN+k
	zAMXLSoguf2TkZo2U2edhaxJXmbsss/RBqRyA2g=
X-Google-Smtp-Source: ACHHUZ4Pk2rjEgLtWw3srPnWRPOghUyfzUMjYDWRJ+l7SMAjOk3Kr2RMHvaxn5GpqNOTttYEU+N1QA==
X-Received: by 2002:a05:6214:2b06:b0:5f1:606b:a9ca with SMTP id jx6-20020a0562142b0600b005f1606ba9camr12771408qvb.37.1683479855108;
        Sun, 07 May 2023 10:17:35 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id o6-20020a05620a130600b0074e4cf13d40sm2012908qkj.57.2023.05.07.10.17.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 10:17:34 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][kirkstone/rust-1.68 RFC v2 PATCH 0/2] Proposed Kirkstone Rust 1.68 mixin
Date: Sun,  7 May 2023 13:17:21 -0400
Message-Id: <cover.1683479537.git.scott.murray@konsulko.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 May 2023 17:17:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59894

These patches comprise my proposed kirkstone/rust-1.68 branch for the
meta-lts-mixins repo.  The initial check-in backports the Rust 1.68.1
support from mickledore branch as it stands for 4.2.0, then I have
separately applied the Rust 1.68.2 upgrade from master that Steve has
queued up for Mickledore.

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

v2: Remove Rust-related patches from master that Steve does not have
    queued for Mickledore. If they do later get backported, they can
    be re-added as required.

Alex Kiernan (1):
  rust: Upgrade 1.68.1 -> 1.68.2

Scott Murray (1):
  Initial check-in

-- 
2.39.2


