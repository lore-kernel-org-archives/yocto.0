Return-Path: <tomasz.dziendzielski@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A2F7C77B75
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 11:55:22 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.86648.1684151718619902399
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 04:55:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=sM8OPF4X;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: tomasz.dziendzielski@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-4f14f266b72so12295470e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 04:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684151716; x=1686743716;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VeFNTxWR6FS2ELW/EVa1sJonCtg2Jyuh4zdA+0pdhBU=;
        b=sM8OPF4XTeaGJ3jfWT9k6HsR9Jmp2Mo/AM0i22/Px7wJQvQVTJV6AxIC+fCOTO2Un6
         CCo6j5d4MRn1vCwKwyq5h8Ik181Yuh42J5EdFYG1O8mzoafpVDtoRzQIUwr+a6Kv7SwI
         aJIyZB69LHxqEKHdcgBnO9pPvfeEt/kz7sM/IWbWLxrF/1wXbxR0E6teHe0UCG7SFpMl
         LuZ5Y7+E6nSv/qNafXOyr1O5SrBNC+v8dkde/sf26r5tWr77FjuwdZ0Jntc9jcdbTBPx
         ZyzzU7hhKMokGWAuEerorbxbWs4sS22lsu5p66K+G61eLt/wPTmX007DJU2PGYX9JhVN
         82SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684151716; x=1686743716;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VeFNTxWR6FS2ELW/EVa1sJonCtg2Jyuh4zdA+0pdhBU=;
        b=ifT/LtToWID/fUcySdhDPcuSkTLmFxFNXykXm215zAsM0K+RCYsNmlsn9YVCM3XDLZ
         mAqDQpQrUK0aPZ9D5lAIkG4uZYMHQL89mlSNtRvm7qLh73GiMP9YcjXuyebmJhp1Gw+6
         oxTJDNHTGr8JNGcpvKzw6gofVwSqCotZYeLnKZOOatEvwBVS0pFVqP/IJKzRPhOEm3gX
         M1uQzfX52p9kNPDX1rFQufose2KknMlAnu7x3nz3bZav/JZO09lOu37PahJ36IzvjN4A
         +qTTHqUTYUPcV/qV0qrGQ5camm0PFCrdL6TnRcFm2MCWvxfoDwoqOMcch/0Yp6BQXu5P
         rFDg==
X-Gm-Message-State: AC+VfDxVHVQyXGZ2xUorbn9laOvVEpLWDEOXHdKM4FmuzzkdfH8hjfqi
	2znAuIDir0gHx+PGONUAzq3r1+hHL3RKDd9L
X-Google-Smtp-Source: ACHHUZ52t93MEGBn6Zxn6v+hQw0YEnlxDqvcKM64OITU38+BloY96Ph0laRn0O99XXu7bgcwvfCbQQ==
X-Received: by 2002:a05:6512:96e:b0:4e9:c327:dd81 with SMTP id v14-20020a056512096e00b004e9c327dd81mr5428868lft.63.1684151716093;
        Mon, 15 May 2023 04:55:16 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a319:a043:be80:9b4c:87c9:910e:7787])
        by smtp.gmail.com with ESMTPSA id w9-20020a05651203c900b004f14ae5ded8sm2575527lfp.28.2023.05.15.04.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 04:55:15 -0700 (PDT)
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Subject: [meta-tensorflow][PATCH] bazel.bbclass: Fix build with bazel from sstate-cache
Date: Mon, 15 May 2023 13:55:07 +0200
Message-Id: <20230515115507.9216-1-tomasz.dziendzielski@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 11:55:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60027

Random errors can occur when bazel is taken from sstate-cache and the
dynamic loader is no longer available. Setting DYNAMIC_LOADER and
letting populate_sysroot_setscene modify the UNINATIVE_LOADER is not
enough. That way we just modify the loader of bazel binary, but bazel is
also a self-extracting zip file with built-in binaries that need
dynamic loader modification to work.

Eample error, as you can see it's quite misleading:
| An error occurred during the fetch of repository 'local_config_cuda'
| Cuda Configuration Error: Invalid cpu_value
| Skipping 'tensorflow/lite/tools/benchmark:benchmark_model': no such package '@local_config_cuda//cuda

To fix this in do_configure execute bazel version to unpack
output_user_root and run patchelf-uninative on the ELF executables. Then
change modification time to some future date so that bazel does not see
the modification.

Signed-off-by: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
---
 classes/bazel.bbclass | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index be436ec..316dc3d 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -129,6 +129,18 @@ build --linkopt=-Wl,-latomic
 EOF
 
     sed -i "s:${WORKDIR}:${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler:g" ${S}/bazelrc
+
+    # Unzip bazel packages
+    ${BAZEL} ${BAZEL_STARTUP_OPTIONS} version
+
+    for binary in build-runfiles daemonize linux-sandbox process-wrapper; do
+        # Modify interpreter for bazel built-in binaries
+        patchelf-uninative --set-interpreter "${UNINATIVE_LOADER}" ${BAZEL_DIR}/user_root/install/*/$binary
+
+        # Set modification time somewhere in the future to avoid "corrupt installation: file PATH is missing or modified"
+        # in this case modification is required for successful build
+        touch -m -t 203712120101 ${BAZEL_DIR}/user_root/install/*/$binary
+    done
 }
 
 EXPORT_FUNCTIONS do_configure
-- 
2.40.1


