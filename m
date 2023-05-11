Return-Path: <tomasz.dziendzielski@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 105BCC77B7F
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 09:16:45 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.54818.1683796595380667711
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 02:16:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=HPIoVEaa;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: tomasz.dziendzielski@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-4f25d79f6bfso3297536e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 02:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683796593; x=1686388593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7gSUNK0rabEjUtov4H1n90m87fD2emLpkcKu6afYDS8=;
        b=HPIoVEaaiCwxMS8o0E7B4PgLQGOsVKShuBD2FTTEUC67TbWZqsVw+7Skl2g/EwvPqi
         DBEJfK9oLVui1ntshIXwp8J0HO2vBSRRTqLqNZr1dBFMJCtcetaYw9laXuJKg8OJe3Wp
         hoONs7xCTReYB1jklcUHdV+QS+ofWeY5fPvMJlKaZXcbwnp0TJ2RJBxeLcKJmToD6FWM
         zcgk8xDyJVQamDGFsNi8T2JlC2jxc3YV3fqxtrcj+ghTyXAhZBy0TxEwX2ZlZtI+0i7u
         O3Ke2a+CNXSSe9UfuRYumLXsVY5wLvixQfTAXnKycjt/q0N8fA1ZLnuHfi3RfLd+9lCG
         GUfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683796593; x=1686388593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7gSUNK0rabEjUtov4H1n90m87fD2emLpkcKu6afYDS8=;
        b=jJG+fATuOue7FN0zosegkNy+vRivPccFLONDeZK023/EP8KrhyopUu+oObjMc7E/Fs
         zLSB2F0Gq3DFeB++eDRhbe9WkcDSUNUbxJllK6aaGJSH1QDKC1logvALJ3qh5Qg2qvFZ
         9NkD+QcMDxnqTQ5nuMLf+OOEfkESVkpHVMPN48j98jTkOG2fYMpfnmkugng6weOzlzVk
         qnkFQQkP7CsiWUBoKmOt33vrBfyPwxvEn8gfPgecBlycV25rZhL3YI0RDIC8Yhdj1srp
         1cCE5StbBnDxb0A3oiW8fwU6Bwz38t2sv5KPnbwPnObNG6Q/iTfUh16P7pTM0gTCbQx1
         7RAg==
X-Gm-Message-State: AC+VfDwaDlKHFG1nu3LNxWlNC27ZsqM8+Dy0QnoWS8nuSOV7LcEuhQUf
	jSbu1wXvRNfUoe1z7yji8Sc1NPviGobQMdT7
X-Google-Smtp-Source: ACHHUZ7YFBDPNvroLtBRe2f41+nhuXHHGp6s0/CAZyCswKVqYNCs+2hUxVcVlr+Qt0QTze7RVtHFkA==
X-Received: by 2002:ac2:4d19:0:b0:4eb:1048:1285 with SMTP id r25-20020ac24d19000000b004eb10481285mr2344036lfi.47.1683796592860;
        Thu, 11 May 2023 02:16:32 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a319:a043:be80:9b4c:87c9:910e:7787])
        by smtp.gmail.com with ESMTPSA id z4-20020ac25de4000000b004f24cabb8a8sm1038970lfq.120.2023.05.11.02.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 02:16:32 -0700 (PDT)
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Subject: [meta-tensorflow][PATCH v2] bazel-native: Allow build from sstate-cache
Date: Thu, 11 May 2023 11:16:24 +0200
Message-Id: <20230511091624.5441-1-tomasz.dziendzielski@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 09:16:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59984

Using TOPDIR variable breaks the sstate-cache every time build directory
changes totally breaking build from sstate-cache among different workspaces.

Changing that to TMPDIR that is included in BB_HASHEXCLUDE_COMMON.

Another thing is disabling the UNINATIVE_LOADER, causing sstate-cache
artifacts not working in different workspaces. On
populate_sysroot_setscene patchelf-uninative --set-interpreter with
empty argument is ran which does not change the interpreter path and
then bazel binary ends up with path to the interpreter that might not
exist, since the bazel was taken from sstate-cache.

Removing the UNINATIVE_LOADER = "" so that uninative.bbclass can
correctly replace the interpreter path and make bazel binary usable.
One could think that it will reintroduce the original issue behind
disabling uninative, which was some java file corrupted (see commit
dd7642b), but I think we don't have this problem anymore and also I
don't think it was the correct solution - since the loader is anyway
included in the binary, so it wasn't really disabling it, just disabling
the yocto functionality around uninative. If the error re-occurs I think
different solution should be found.

Signed-off-by: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
---
 recipes-devtools/bazel/bazel-native_5.3.2.bb | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/recipes-devtools/bazel/bazel-native_5.3.2.bb b/recipes-devtools/bazel/bazel-native_5.3.2.bb
index da13a53..3be5546 100644
--- a/recipes-devtools/bazel/bazel-native_5.3.2.bb
+++ b/recipes-devtools/bazel/bazel-native_5.3.2.bb
@@ -38,7 +38,7 @@ EXTRA_BAZEL_ARGS = " \
 
 do_compile[network] = "1"
 do_compile () {
-    TMPDIR="${TOPDIR}/bazel" \
+    TMPDIR="${TMPDIR}/bazel" \
     VERBOSE=yes \
     EXTRA_BAZEL_ARGS="${EXTRA_BAZEL_ARGS}" \
     ./compile.sh
@@ -49,7 +49,4 @@ do_install () {
     install -m 0755 ${S}/output/bazel ${D}${bindir}
 }
 
-# Explicitly disable uninative
-UNINATIVE_LOADER = ""
-
 inherit native
-- 
2.40.1


