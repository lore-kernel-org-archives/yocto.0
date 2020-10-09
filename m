Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web12.14590.1602252496267087788
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BE6N3fT6;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id g29so7282701pgl.2
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=N7FXqgVarlTFsX0K0AolqHUsxe94yEJF8D0dndcKKrY=;
        b=BE6N3fT6F5JzN80QFIJFtWkZcGy0WE8Ksv4UJOSBjlbZ4K9jd826VAPxlwLIzl3/ry
         r0NnoIRDIL793IYDwcj4grBt72OWW2sOcrvLtjZu7m/KNW5s1HHRjh1foDbnZZS1a+ZZ
         wsc2IzjSTVt1+9ZJg9xKNYpNFtZmj/QVD+cYcjEOmmbMp2WI35S+HLFCN+y2jHIH15NG
         xAJn5DWDohGHoG5+IjNqYukccPGY56wTkK1wDaTK6aTqfcgB7m1WIuXyW2pEGKnJSxNL
         i5CUBYotj1kC1RvwLwdozyvtCcnuFZXwxkkuus9jsY+Suya2X01DR8ANtq6AabiALR2C
         n7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=N7FXqgVarlTFsX0K0AolqHUsxe94yEJF8D0dndcKKrY=;
        b=gbxzMxi2F7M5P8zIYP8tydp8WVgIA83m0El9uucy2T6xQdm+sX4Ql+JXFrxXfnLy1I
         W8xLpwQ22Wacd1r19ZfW/FGzq7HHW2Avf3/DT63LrY8r8Uuu8/Tk0Q+VDP61hoixF9XZ
         55XvuT4Y3wu0avktyZtdIYX4bWfCDVM0zZ5pKzyBmtEcgqpg3O91EsUYn8nbmDM4y5uF
         mdsj43Sv1y0nLAYFwsuTQAf0EAh+WyoTBiwZJHjlUbwAaI4eqxsDEpKjn6UzuXeIGnL/
         XAmX4kAzsQNz/DjUIH9I0LunXmkx5gl64z56bHX8aPJmQQfQKgruxA6YmuxZz+3eKMVb
         8/ng==
X-Gm-Message-State: AOAM5318Zt65WMw0Vi6RJzv2ojxZ360ve7nf4mROU33NVcw/+HAouvFc
	Id8K0S2+TqOcnWfp9QGy/qaLR6B7Rv0=
X-Google-Smtp-Source: ABdhPJzYCX7azvJ7WmxrOUTmpkasnixRxLJOkmcd+JQ99DxyvWUQu8pxYCHfC8akjWR50r+xFaPrFQ==
X-Received: by 2002:a17:90a:e98b:: with SMTP id v11mr4771798pjy.97.1602252495374;
        Fri, 09 Oct 2020 07:08:15 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id k9sm10119710pfc.96.2020.10.09.07.08.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 07:08:15 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/7] gitlab-ci: add qemux86 and qemuarm64 musl builds
Date: Fri,  9 Oct 2020 07:08:07 -0700
Message-Id: <20201009140812.21765-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009140812.21765-1-akuster808@gmail.com>
References: <20201009140812.21765-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .gitlab-ci.yml         |  9 +++++++++
 kas/qemuarm64-musl.yml | 10 ++++++++++
 kas/qemux86-musl.yml   | 10 ++++++++++
 3 files changed, 29 insertions(+)
 create mode 100644 kas/qemuarm64-musl.yml
 create mode 100644 kas/qemux86-musl.yml

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 0be5741..50bfe4f 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -126,6 +126,15 @@ qemux86-64-multi:
   script:
   - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
+qemux86-musl:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuarm64-musl:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
 
 qemux86-test:
   extends: .build
diff --git a/kas/qemuarm64-musl.yml b/kas/qemuarm64-musl.yml
new file mode 100644
index 0000000..b353eb4
--- /dev/null
+++ b/kas/qemuarm64-musl.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+    musl: |
+        TCLIBC = "musl"
+
+machine: qemuarm64
diff --git a/kas/qemux86-musl.yml b/kas/qemux86-musl.yml
new file mode 100644
index 0000000..61d9572
--- /dev/null
+++ b/kas/qemux86-musl.yml
@@ -0,0 +1,10 @@
+header:
+  version: 8
+  includes:
+    - kas-security-base.yml
+
+local_conf_header:
+    musl: |
+        TCLIBC = "musl"
+
+machine: qemux86
-- 
2.17.1

