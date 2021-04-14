Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.14041.1618411044063484632
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 07:37:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=AMOTKVBl;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EE22738C0530
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 14:37:23 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id y20-20020a1c4b140000b029011f294095d3so12777854wma.3
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 07:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xMmVR9Frzk4q8Q/JHETMM8H2c8XVBy3wnbfm8GkooAQ=;
        b=AMOTKVBlh7VjLHSWJIkcgTDMP4vnxLPbnPSRLwY41t4vRILMw8Fx2bPXpXcVn17Id3
         P2CPUnWfmO3KftiBbzecOerlvlMwgh1+lhu0/TfOa5VPemBxKG5C03IfZ3AqCIYPyfTT
         mLm3of63HU0y+p13G226ukw9db3AaMwwxV09IfQJSMh0g0hmca3Gag0lFG9OYn/B1Dgc
         vH+A2PWFhz2EHOMtkW442h6SQUrw1M9c+2g5HdHOPnt7eMFxiYLr1GGoQc6m8NJvfaoQ
         xJIAXtValw3doVcdUhTldtw7rjiAdhC9TFF3h4i6u3bUkaH+rFzlkitSsY/QiFnwpJ5R
         ldKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xMmVR9Frzk4q8Q/JHETMM8H2c8XVBy3wnbfm8GkooAQ=;
        b=IcHildJ4amsG3E9f775/7acYhEKDRmdW/N4HMcQsqKrtDHdS2kB5D4kjyFC75AtYkh
         CaiOo5VAiZPVWQNIjZzbtL6aU5gHo3br88hSpw85mVGUo7PMWleJIhESBgPea/dhetbG
         WPkesgaE8AsL28FWHElJ3JxtZW9XJ8bBKnRqbHcCphMMQyYB0kBkTf/pTOXotMihm30v
         9EfcbBNZOq6UZFZ8H/pbss31Zpb6LCD5hjfPMt6G8GTv0yv6Wd6vqfVw+mbaCO0gL9Y9
         dC342Lbm4kxUcEhl/jIhJjCv802tfOre4qupTK5+upmQRhpHxvvu579nztWY/UshmIiB
         RQAQ==
X-Gm-Message-State: AOAM532lESwPqgXOdkrQYluF5ovkSy/kJusxtJYoDlTM9fshgK8qJdUf
	S40jnI1I6mDxdpeZ4+UnY8lKBme8qKZvyQ==
X-Google-Smtp-Source: ABdhPJyBH6hkcv/XqCd9ck5jxxSZc35PQILQJJ3a4bV+q0SI5iabYXKO6Pn/mq9dg9ybJEkwTNbJ7Q==
X-Received: by 2002:a05:600c:1548:: with SMTP id f8mr3363610wmg.81.1618411042647;
        Wed, 14 Apr 2021 07:37:22 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id u8sm24410120wrr.42.2021.04.14.07.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:37:22 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 6/6] WIP kernel config feature for OP-TEE activation
Date: Wed, 14 Apr 2021 16:36:38 +0200
Message-Id: <20210414143638.4139270-7-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210414143638.4139270-1-yann@blade-group.com>
References: <20210414143638.4139270-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

FIXME:
- provide an .scc with proper information
- maybe bundle with dts overlay
- select a more suitable path in config namespace
---
 recipes-kernel/linux/files/bsp/tee.cfg | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-kernel/linux/files/bsp/tee.cfg

diff --git a/recipes-kernel/linux/files/bsp/tee.cfg b/recipes-kernel/linu=
x/files/bsp/tee.cfg
new file mode 100644
index 0000000..82213a5
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/tee.cfg
@@ -0,0 +1,2 @@
+CONFIG_TEE=3Dm
+CONFIG_OPTEE=3Dm
--=20
2.30.2

