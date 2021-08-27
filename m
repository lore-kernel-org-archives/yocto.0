Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web09.8801.1630074430241653739
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 07:27:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jD0L/Ta3;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso8999056pjh.5
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 07:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=L91m7470Wrvt7p7yTpg/iBinv95/F3Ei1WVXeN8yJ+w=;
        b=jD0L/Ta37wD0SlL0zbUIocLSqjUwi7J49eWUdEvyRUi4VJJhCkGPfJQEVNGfpUd32b
         I+bD/GRmb/wNwzMzp6DCozkEJuaUrhd13Kq7EihT9ejypLoqHJ740wmGmVxKeb6Ml84p
         jrtXSI8ATglpo1HiqoTm0D1TIgeYKabTWsisX4rEIaenqeOLjaeBkGUPubWMD161Ivhi
         RV3DXW+QRvZg4rlVrZmDDlCjXaQbXfaqIdNrWLUzwsj64H+4oxsvRWvJZsiN3iEzudiR
         ogK6gGfacszVK/n2Qpi8xgmHb7wYxEiq9PBxmgJnag+PWDLFd+KqaVNDp3nmCPsvV7GM
         ot8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L91m7470Wrvt7p7yTpg/iBinv95/F3Ei1WVXeN8yJ+w=;
        b=GkTw+JHZLtcE8IzyaZcA7byl4KaNw3ao5bogntkoUsDVt56FBDqV42ddHe2W5gI3os
         LgzRAu99dPO2uex6rPbFcEyApLEKiut04Vpdjmh05LjFLzb+ZmZR+/NqrBjLakTcrvRq
         m+302AFCbqtWSVq7Pb9wkMcEcn4iXe/uNG5pK1hJBHjvP5AoHmNjoJ9FAQgByPZgsuE9
         FqGwywFz5b5farI0Zvfa3gHCQC6FQNrDJHDs5bQKZbj84fMVImQJxFwZbfII/ZV8yTzP
         AFQlovNPHvPwuGuknzNqWDuWA3UqbnelmwaNEWprduBuSEIAZOHfAToVPUchdzq2Tmcv
         uXhg==
X-Gm-Message-State: AOAM530XFWGVOL2d0t0fuCfbA65aTnBOgcYqs32BVIqnm5EOa4qYw982
	p/DExAF7SopmbBRvJ+rmXRlBlOmZRFI=
X-Google-Smtp-Source: ABdhPJyOY45CR5QVpWsGVOms4b8u9wbKi7XV9ScRsTCHzHwuwMoz0fGWxCW061n6UK0tQ8a1Ou4yvQ==
X-Received: by 2002:a17:903:228a:b0:133:305f:2dd2 with SMTP id b10-20020a170903228a00b00133305f2dd2mr8747192plh.21.1630074429513;
        Fri, 27 Aug 2021 07:27:09 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:6d42:ed7e:4699:884f])
        by smtp.gmail.com with ESMTPSA id u17sm6512064pfh.184.2021.08.27.07.27.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 07:27:09 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/6] krill: Rust is in core now
Date: Fri, 27 Aug 2021 07:27:03 -0700
Message-Id: <20210827142707.3710584-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210827142707.3710584-1-akuster808@gmail.com>
References: <20210827142707.3710584-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drop dynamic-layer

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../krill/files/panic_workaround.patch                            | 0
 .../recipes-security => recipes-security}/krill/krill.inc         | 0
 .../recipes-security => recipes-security}/krill/krill_0.9.1.bb    | 0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename {dynamic-layers/meta-rust/recipes-security => recipes-security}/krill/files/panic_workaround.patch (100%)
 rename {dynamic-layers/meta-rust/recipes-security => recipes-security}/krill/krill.inc (100%)
 rename {dynamic-layers/meta-rust/recipes-security => recipes-security}/krill/krill_0.9.1.bb (100%)

diff --git a/dynamic-layers/meta-rust/recipes-security/krill/files/panic_workaround.patch b/recipes-security/krill/files/panic_workaround.patch
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-security/krill/files/panic_workaround.patch
rename to recipes-security/krill/files/panic_workaround.patch
diff --git a/dynamic-layers/meta-rust/recipes-security/krill/krill.inc b/recipes-security/krill/krill.inc
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-security/krill/krill.inc
rename to recipes-security/krill/krill.inc
diff --git a/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb b/recipes-security/krill/krill_0.9.1.bb
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb
rename to recipes-security/krill/krill_0.9.1.bb
-- 
2.25.1

