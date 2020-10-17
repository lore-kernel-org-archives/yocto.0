Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.2913.1602957818852906131
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kv1+rYCV;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id a200so3408287pfa.10
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=U308WNUqpxYqwF309ouk5xrfAsXzeplwsSgQoRwF7l8=;
        b=Kv1+rYCV3BnsEB8V6EfHJJYyphug9qXq3Xjnyf6yQVKvKZuVAj4dyopnJ4UU7AJr8O
         Q8fNjNdCUGZB8Ti0K6EkmRwAEg99W4BWuz/mNvsLvjsSARgUjDmPIn3JxFEI7niKF+p8
         By+0qM+HVQeeZIaj6IbxYj6O9nQWBiKmV3V19GLjsm6PstZ16ToI/2aZTjO2PhKTOUeo
         T3hf+yNA0wwxPqw1vb3g5tT+R8M7B6pHZGn+ebCN8nd9uUvFN7LhR+Aie/F+Pe1TKatj
         qgw8ND82Ndyr637yZo5yNDiB77Ck+kqYFf7kRfsWF5vtHISNRec8ZYoY3AT0ybAVkh1w
         YnjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=U308WNUqpxYqwF309ouk5xrfAsXzeplwsSgQoRwF7l8=;
        b=MfF+iNcygQUB2v41d+PsLwPPNNPVvXzttROCiudDS5gGwOophw9UPM7a0Lh1hDi3KO
         GiiAjmkssnKhuFrJCxjoDqcOMRhfcgNdL4SEeJenn+82iesrl8YakC866JTyeREX69aX
         sAB8+s8D7RIU5MFoqLSNWvnuiUe8keG/fc8C20bM8GXNM3srH99YgPz4HntlGjgC6S0H
         ldiTisR8eqMS4Y99mFCnTaqWrMtP4+l1uV4i1rLxVgKGONLMcKWtBGexcyKCLcRJLE/1
         VL0SjmVL2hrqpKtiUSQLR3HEstTiqSMtzWkpZoGMuYwCwS4d2m1/qRziuXJpkgaNzBPL
         jbrw==
X-Gm-Message-State: AOAM531Q1Cf7Wot1LAPl9gzo1crvF1VqqDs68dSe0+Uz//5hivR5O5au
	pyBYBeZnHYfApBMYgBhFodtUTfQiISQ=
X-Google-Smtp-Source: ABdhPJzsBXYZayyKxT3+71aAHo7yq2s8lEQwDEER1A434RvwubYO5mEysK2zqHEG934hCalgrX2MGA==
X-Received: by 2002:a63:1015:: with SMTP id f21mr7551140pgl.95.1602957818025;
        Sat, 17 Oct 2020 11:03:38 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:37 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 02/32] packagegroup-core-security-ptest: update fail2ban ptest pkg name
Date: Sat, 17 Oct 2020 11:02:59 -0700
Message-Id: <3f6a0ff5403e290d0b5b5b1e29aaaec032f332cb.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit a2a102b2de68f31df5a3b46665c8afb2d28c0219)
---
 .../packagegroup/packagegroup-core-security-ptest.bb            | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
index 83a9ed8..cf34ded 100644
--- a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
@@ -22,7 +22,7 @@ RDEPENDS_${PN} = " \
     python3-scapy-ptest \
     suricata-ptest \
     tripwire-ptest \
-    python-fail2ban-ptest \
+    python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
     "
-- 
2.17.1

