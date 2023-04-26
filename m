Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DB62C77B60
	for <webhook@archiver.kernel.org>; Wed, 26 Apr 2023 14:18:49 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.9211.1682518725115940782
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Apr 2023 07:18:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=gobGXXiS;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-54f8b46d031so82617337b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 07:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682518724; x=1685110724;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=t1/fAMiZjr7c137C4p69KZBSr8c98RN5vlfy1EOz5kc=;
        b=gobGXXiScQroR8ulA7vrXop1KUbN1SfMUIKS8iXb5nnYGgKRzXnk8yZj0O25Pm2T7L
         UXKnMW7pq/yf0pFeNwTyPIkUTKLAUPstklf8U49aH78vgEku/BNW6wO4ohD+PgaiZTO3
         SUc0IbBafzTYJZHF9FTQldAxp3Hq/fO8FPI6BBVzOYWwbgTsO07GSBRdDJLtU2Y/lRSA
         JxoQ7SVrE8ixbK1MVaGly8chwQDg6T4w69DBLJc46dnhN5UfCsPGfSAHA/MELwsDmKyn
         ZC5l5qfgtNe0HC90qeeFxy0VpSL6u6vNVhtXb+NLwe632ngc6iZpFFK0gs5S914r9Z7U
         Wh8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682518724; x=1685110724;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t1/fAMiZjr7c137C4p69KZBSr8c98RN5vlfy1EOz5kc=;
        b=DYgryhZRHXsLk69/RH6s2Iu4vlkDUWZSl7YwyIoEWsnnTyRkmL3ZD42adebCQCaj3U
         N9c0w4kSszkDIYuAGjLs+E5fiaWIBWjFJZL5UkobdwXb5kvLhI1Ib54TV0sIWPaBdrUF
         Y8x4I3MmG9hjr4sJwLbYherk44OP/5z3ntU+/J+Jq2blQxfoeol0GewBP/pY8CIbLHgU
         hwVcNYwD9YHoLvgLsMZWofBa8Sprpffw4CwWjIyLkV/TkTXdiSQa9YJrA4nv7I6ojGcN
         vrLT9mcSpfl1UA7CROdX+S0lwcJUHQHwuhNRDBV9DCnYL1RbpR29sJWQ070Q6QhiR01J
         MATA==
X-Gm-Message-State: AAQBX9cYAFq5lBpNIMVdGshNH7+B52cWybWdfap+ypXfC9JZULfAHEgv
	2pgKiOPsmWqawZhTOLkjT85qFGgUXs8=
X-Google-Smtp-Source: AKy350biQ5MPH4D7rvJUl3xidSiw5U5AjX3JQI40N2cp8pT8TmNmbhlcKaCJsKzQTTgLsYwsrzIo2w==
X-Received: by 2002:a0d:ccc9:0:b0:546:4626:bfc5 with SMTP id o192-20020a0dccc9000000b005464626bfc5mr13954094ywd.31.1682518723552;
        Wed, 26 Apr 2023 07:18:43 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dca5:ab45:75c1:b60d])
        by smtp.gmail.com with ESMTPSA id p71-20020a0de64a000000b00545b9498c1asm4214462ywe.12.2023.04.26.07.18.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:18:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] meta-tpm: rename recipes-tpm to recipes-tpm1
Date: Wed, 26 Apr 2023 10:18:37 -0400
Message-Id: <20230426141840.764144-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 14:18:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59784

a bit of re-org.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/{recipes-tpm => recipes-tpm1}/hoth/libhoth_git.bb        | 0
 .../libtpm/files/Convert-another-vdprintf-to-dprintf.patch        | 0
 .../libtpm/files/Use-format-s-for-call-to-dprintf.patch           | 0
 .../libtpm/files/fix_signed_issue.patch                           | 0
 meta-tpm/{recipes-tpm => recipes-tpm1}/libtpm/libtpm_0.9.5.bb     | 0
 .../files/0001-create-tpm-key-support-well-known-key-option.patch | 0
 .../files/0002-libtpm-support-env-TPM_SRK_PW.patch                | 0
 ...003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch | 0
 ...004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch | 0
 .../openssl-tpm-engine/files/openssl11_build_fix.patch            | 0
 .../openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb                | 0
 .../pcr-extend/files/fix_openssl11_build.patch                    | 0
 .../{recipes-tpm => recipes-tpm1}/pcr-extend/pcr-extend_git.bb    | 0
 .../{recipes-tpm => recipes-tpm1}/swtpm/files/fix_fcntl_h.patch   | 0
 .../swtpm/files/fix_lib_search_path.patch                         | 0
 .../{recipes-tpm => recipes-tpm1}/swtpm/swtpm-wrappers-native.bb  | 0
 meta-tpm/{recipes-tpm => recipes-tpm1}/swtpm/swtpm_0.7.3.bb       | 0
 .../tpm-quote-tools/tpm-quote-tools_1.0.4.bb                      | 0
 .../tpm-tools/files/04-fix-FTBFS-clang.patch                      | 0
 .../tpm-tools/files/openssl1.1_fix.patch                          | 0
 .../tpm-tools/files/tpm-tools-extendpcr.patch                     | 0
 .../{recipes-tpm => recipes-tpm1}/tpm-tools/tpm-tools_1.3.9.2.bb  | 0
 ...001-build-don-t-override-localstatedir-mandir-sysconfdir.patch | 0
 .../get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch   | 0
 .../{recipes-tpm => recipes-tpm1}/trousers/files/tcsd.service     | 0
 .../trousers/files/trousers-udev.rules                            | 0
 .../{recipes-tpm => recipes-tpm1}/trousers/files/trousers.init.sh | 0
 meta-tpm/{recipes-tpm => recipes-tpm1}/trousers/trousers_git.bb   | 0
 28 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/hoth/libhoth_git.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/libtpm/files/Convert-another-vdprintf-to-dprintf.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/libtpm/files/Use-format-s-for-call-to-dprintf.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/libtpm/files/fix_signed_issue.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/libtpm/libtpm_0.9.5.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/openssl-tpm-engine/files/openssl11_build_fix.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/pcr-extend/files/fix_openssl11_build.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/pcr-extend/pcr-extend_git.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/swtpm/files/fix_fcntl_h.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/swtpm/files/fix_lib_search_path.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/swtpm/swtpm-wrappers-native.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/swtpm/swtpm_0.7.3.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/tpm-quote-tools/tpm-quote-tools_1.0.4.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/tpm-tools/files/04-fix-FTBFS-clang.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/tpm-tools/files/openssl1.1_fix.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/tpm-tools/files/tpm-tools-extendpcr.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/tpm-tools/tpm-tools_1.3.9.2.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/trousers/files/tcsd.service (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/trousers/files/trousers-udev.rules (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/trousers/files/trousers.init.sh (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm1}/trousers/trousers_git.bb (100%)

diff --git a/meta-tpm/recipes-tpm/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/hoth/libhoth_git.bb
rename to meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
diff --git a/meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch b/meta-tpm/recipes-tpm1/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
rename to meta-tpm/recipes-tpm1/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
diff --git a/meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch b/meta-tpm/recipes-tpm1/libtpm/files/Use-format-s-for-call-to-dprintf.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
rename to meta-tpm/recipes-tpm1/libtpm/files/Use-format-s-for-call-to-dprintf.patch
diff --git a/meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch b/meta-tpm/recipes-tpm1/libtpm/files/fix_signed_issue.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
rename to meta-tpm/recipes-tpm1/libtpm/files/fix_signed_issue.patch
diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb b/meta-tpm/recipes-tpm1/libtpm/libtpm_0.9.5.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
rename to meta-tpm/recipes-tpm1/libtpm/libtpm_0.9.5.bb
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
rename to meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
rename to meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
rename to meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
rename to meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/openssl11_build_fix.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/openssl11_build_fix.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/openssl-tpm-engine/files/openssl11_build_fix.patch
rename to meta-tpm/recipes-tpm1/openssl-tpm-engine/files/openssl11_build_fix.patch
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb b/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
rename to meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
diff --git a/meta-tpm/recipes-tpm/pcr-extend/files/fix_openssl11_build.patch b/meta-tpm/recipes-tpm1/pcr-extend/files/fix_openssl11_build.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/pcr-extend/files/fix_openssl11_build.patch
rename to meta-tpm/recipes-tpm1/pcr-extend/files/fix_openssl11_build.patch
diff --git a/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb b/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
rename to meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
diff --git a/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch b/meta-tpm/recipes-tpm1/swtpm/files/fix_fcntl_h.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
rename to meta-tpm/recipes-tpm1/swtpm/files/fix_fcntl_h.patch
diff --git a/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/meta-tpm/recipes-tpm1/swtpm/files/fix_lib_search_path.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
rename to meta-tpm/recipes-tpm1/swtpm/files/fix_lib_search_path.patch
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb b/meta-tpm/recipes-tpm1/swtpm/swtpm-wrappers-native.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
rename to meta-tpm/recipes-tpm1/swtpm/swtpm-wrappers-native.bb
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb b/meta-tpm/recipes-tpm1/swtpm/swtpm_0.7.3.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
rename to meta-tpm/recipes-tpm1/swtpm/swtpm_0.7.3.bb
diff --git a/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb b/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
rename to meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/04-fix-FTBFS-clang.patch b/meta-tpm/recipes-tpm1/tpm-tools/files/04-fix-FTBFS-clang.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm-tools/files/04-fix-FTBFS-clang.patch
rename to meta-tpm/recipes-tpm1/tpm-tools/files/04-fix-FTBFS-clang.patch
diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/openssl1.1_fix.patch b/meta-tpm/recipes-tpm1/tpm-tools/files/openssl1.1_fix.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm-tools/files/openssl1.1_fix.patch
rename to meta-tpm/recipes-tpm1/tpm-tools/files/openssl1.1_fix.patch
diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
rename to meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
diff --git a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb b/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
rename to meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
diff --git a/meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch b/meta-tpm/recipes-tpm1/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
rename to meta-tpm/recipes-tpm1/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
diff --git a/meta-tpm/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch b/meta-tpm/recipes-tpm1/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
rename to meta-tpm/recipes-tpm1/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
diff --git a/meta-tpm/recipes-tpm/trousers/files/tcsd.service b/meta-tpm/recipes-tpm1/trousers/files/tcsd.service
similarity index 100%
rename from meta-tpm/recipes-tpm/trousers/files/tcsd.service
rename to meta-tpm/recipes-tpm1/trousers/files/tcsd.service
diff --git a/meta-tpm/recipes-tpm/trousers/files/trousers-udev.rules b/meta-tpm/recipes-tpm1/trousers/files/trousers-udev.rules
similarity index 100%
rename from meta-tpm/recipes-tpm/trousers/files/trousers-udev.rules
rename to meta-tpm/recipes-tpm1/trousers/files/trousers-udev.rules
diff --git a/meta-tpm/recipes-tpm/trousers/files/trousers.init.sh b/meta-tpm/recipes-tpm1/trousers/files/trousers.init.sh
similarity index 100%
rename from meta-tpm/recipes-tpm/trousers/files/trousers.init.sh
rename to meta-tpm/recipes-tpm1/trousers/files/trousers.init.sh
diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/trousers/trousers_git.bb
rename to meta-tpm/recipes-tpm1/trousers/trousers_git.bb
-- 
2.25.1


