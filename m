Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.5024.1598672265751732020
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 20:37:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HizIo7h7;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id mt12so437815pjb.4
        for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 20:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=bpLvyfPbu/oLOYk584tFo2+4AwNaVZCYm5597CcHW7g=;
        b=HizIo7h7QVHv1HyD+tPvrDsw9PXMVmlvmWsaxaJWKIU/HNVgNUn9SiSGUXL9l+AQu1
         p6xrVkK5CnVzLrLSZ4FzLjmInD8oIiVdPizudH2ZNEIOuf3yTeffc+BPDfToMAlsAB1l
         UqiJimKAuPloAAt8ISPR3ujAlF6CtQDaooQMP1b8/+cNupPrTUHBn+Z0bYaFpKN+7dA+
         +Dy/LMaV2NaTHwX+cIzgWmOQSkWxoW+HNKPyqQhVtBGku9O7NMOjEchqBu2EYCnuENW7
         h+CkA4N1ncRmG8rAx9mEPdDFYVjxFK2h3NGVRhMBW6eD0E00PZ3qnU0DdgSZ9EP2otAi
         o9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=bpLvyfPbu/oLOYk584tFo2+4AwNaVZCYm5597CcHW7g=;
        b=gXz5fhRc17k/wcV5z6VhpkUG+heSh9YhZJ4KDdH0pl89e5CCp2olE06tUebbTGwOAP
         NPmxUTdB4Yh76lY9//o1fNBQMlHkulDlJ+AfGLvR/jLKRsBF7hoSlrpzRs60X9x2AV3n
         JsWHlAdBY3ubigGGpT743YJwyISQ0S4jFU0ubOmeqo7MLGwl1iVo3bkfQeCp75UEyZpz
         WNNMdLU2k9wDWCXJC92YjaKsvEFijoJfC/ZkmzVSgPSzvscYpanHof50r1/upzPoBM8K
         k64hDcA2bWfWJDG0TG/VVzQGbKfrniZkMcg4mFDFWNk0Jbeg+8r/POPLDvYOELB+hYtV
         IOGQ==
X-Gm-Message-State: AOAM5327s8v1x4Ey6EYRxP7FUe3yEFq1kT/4yYR5dZfvmmL6GnbSdb9e
	1xDvc6NW/YjaeaO9U3Tv55y0G2lcCXs=
X-Google-Smtp-Source: ABdhPJwfyaTFmiFaKcrH3ITZxTy2DIl73a5zdweRdc5MG2NWYCUjfH4bO15tYhOhnhQAJQmKWAMZZg==
X-Received: by 2002:a17:90a:550e:: with SMTP id b14mr1680428pji.64.1598672264762;
        Fri, 28 Aug 2020 20:37:44 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:990e:2404:2153:5c03])
        by smtp.gmail.com with ESMTPSA id e16sm926952pfd.17.2020.08.28.20.37.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2020 20:37:44 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] .gitlab: send error reports
Date: Fri, 28 Aug 2020 20:37:41 -0700
Message-Id: <20200829033741.23390-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200829033741.23390-1-akuster808@gmail.com>
References: <20200829033741.23390-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .gitlab-ci.yml | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 132eb78..37db49c 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -5,17 +5,18 @@ stages:
   stage: build
   image: crops/poky
   before_script:
+    - echo "$ERR_REPORT_USERNAME" > ~/.oe-send-error
+    - echo "$ERR_REPORT_EMAIL" >> ~/.oe-send-error
     - export PATH=~/.local/bin:$PATH
     - wget https://bootstrap.pypa.io/get-pip.py
     - python3 get-pip.py
     - python3 -m pip install kas
-    - wget -q 'https://downloads.rclone.org/rclone-current-linux-amd64.zip'
-    - unzip -q rclone-current-linux-amd64.zip
-    - mv rclone-*-linux-amd64/rclone ~/.local/bin/
-    - rm -rf rclone-*-linux-amd64*
   after_script:
+    - for x in `ls $CI_PROJECT_DIR/build/tmp/log/error-report/ | grep error_report_`; do
+        - send-error-report -y tmp/log/error-report/$x
+    - done
     - rm -rf build
-    - ./scripts/ci-cleanup.sh
+    - $CI_PROJECT_DIR/scripts/ci-cleanup.sh
   cache:
     paths:
       - layers
-- 
2.17.1

