Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC44BC54E58
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:22 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.67370.1710174312468827679
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cWiMn/yT;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33e17342ea7so1755063f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174310; x=1710779110; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lRZSAiOmeVBuA7EKFAoblzT3zmUoDmZ5Akp9aII18Cg=;
        b=cWiMn/yT04uao9G1i1jRyOPMb6iSImM5GREQNmxtDcuh5SYADbcloOLDKCpP6gYodL
         PenM4d6InZUVw/S+4Qj+IwXsKVcQ2cS1QK8K3zcsnhVnzwZhPOQizsxIZV7cptVklFGD
         S2dfEO3jI4idSnyxrPskqiJ2uuNgAZjheDcfhTIXpDAXEoqCi62M1ehFq3Z5lAcUadTD
         2l1g9KMnEiWsRwe74Mf1yJcX8o2dg7Sa/IF4QQzuOdc78jno9uUaVwYoITm2CZshZSni
         oJ/Q2c+Bo7JRxQtplvDd5l92DBYKoRjgPPJ5mhxbczmytymC4D1ktmZWPiLkmj9/YtAP
         Fa6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174310; x=1710779110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lRZSAiOmeVBuA7EKFAoblzT3zmUoDmZ5Akp9aII18Cg=;
        b=pXlyh6tHsSb97CxgeHG/NGaFbJD5Nwh2Np5xgJ3SL2k/rUdTCjoelpzflaLPwDbs83
         UQV2N7iO8wxpR0191jryg3IxzFok+m3CUuni3Eu3JXRQMQ9fMg9w19A+tVIs1+ZlnR3c
         /a4WwWafj2BbJytcY1lwtFHX535E1qpwRcnJQaLNi0ult7kh+uYkh9fwvWEKgOUGyGIs
         QPjqILDJmi+wt71cmLFuEISBZH3W9sbbMPUpIsSIXm3mEQYqOImQdxbSaj5SZ2QvopeA
         3qqGWvRBccq3zsDoSWPPkRU/LLy7jQG6mU/ZnMsxoWAhIoQOx+AhKwq+iufv0GqOV++L
         79Bw==
X-Gm-Message-State: AOJu0YzHZzg1f/EtCWV0ERcUw3L5z2PnxHBQz+RFOnz+5VPJn7sPJCkf
	zQRzQGh70RZMeDYEjVNwbBaT+UwkAQ/ZdHQwvITgN9KgI+uoOtwtpvra6AzNaU4=
X-Google-Smtp-Source: AGHT+IFYML8OVfmpsY/drm9LJPqqqrvstUIy69NbhUXg/n68ZWFNzlfTA7cpbGQX+WDKI0ey2vRILQ==
X-Received: by 2002:adf:f287:0:b0:33e:77e6:40bf with SMTP id k7-20020adff287000000b0033e77e640bfmr4615144wro.37.1710174310553;
        Mon, 11 Mar 2024 09:25:10 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:10 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Khem Raj <raj.khem@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 06/11] rust: Re-write RPATHs in the copies llvm-config
Date: Mon, 11 Mar 2024 16:24:05 +0000
Message-ID: <20240311162419.1138625-6-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311162419.1138625-1-jose.quaresma@foundries.io>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62731

From: Khem Raj <raj.khem@gmail.com>

Ensure that it can still access the native-sysroot for dependencies,
use ORIGIN to indicate this relative its install location, this also
helps in this not getting into the output of llvm-config which could
otherwise provide incorrect library paths

target rust recipe builds ( cross compile ) calls llvm-config from
target sysroot which works ok as long as C++ runtime it needs is
available on build host e.g. libstdc++ etc. which is commonly the
case, however when using clang and llvm runtime this falters since
it should be using libc++ from native sysroot and if this does not
exist on build machine this fails to find libc++ shared object and
llvm-config fails to run. This ensures that llvm-config version in
use is correctly relocated and can use shared libraries from native
sysroot correctly. Adding ORIGIN to sysroot will look for the .so in
same dir as the binary and there is the libc++.so.1 copied in place

Fixes rust build with clang compiler.

| /mnt/b/yoe/master/build/tmp/work/riscv64-yoe-linux/rust/1.74.1/recipe-sysroot/usr/lib/llvm-rust/bin/llvm-config: error while loading shared libraries: libc++.so.1: cannot open shared object file: No such file or director
y
| thread 'main' panicked at llvm.rs:551:19:
| command did not execute successfully: "/mnt/b/yoe/master/build/tmp/work/riscv64-yoe-linux/rust/1.74.1/recipe-sysroot/usr/lib/llvm-rust/bin/llvm-config" "--version"
| expected success, got: exit status: 127

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/rust/rust_1.74.1.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/rust/rust_1.74.1.bb b/recipes-devtools/rust/rust_1.74.1.bb
index 30543ad..f8db186 100644
--- a/recipes-devtools/rust/rust_1.74.1.bb
+++ b/recipes-devtools/rust/rust_1.74.1.bb
@@ -200,7 +200,11 @@ rust_runx () {
     if [ ${RUST_ALTERNATE_EXE_PATH_NATIVE} != ${RUST_ALTERNATE_EXE_PATH} -a ! -f ${RUST_ALTERNATE_EXE_PATH} ]; then
         mkdir -p `dirname ${RUST_ALTERNATE_EXE_PATH}`
         cp ${RUST_ALTERNATE_EXE_PATH_NATIVE} ${RUST_ALTERNATE_EXE_PATH}
-        chrpath -d ${RUST_ALTERNATE_EXE_PATH}
+        if [ -e ${STAGING_LIBDIR_NATIVE}/libc++.so.1 ]; then
+            chrpath -r \$ORIGIN/../../../../../`basename ${STAGING_DIR_NATIVE}`${libdir_native} ${RUST_ALTERNATE_EXE_PATH}
+        else
+            chrpath -d ${RUST_ALTERNATE_EXE_PATH}
+        fi
     fi
 
     oe_cargo_fix_env
-- 
2.44.0


