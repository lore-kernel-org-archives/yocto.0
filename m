Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A7C25B78
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 05:11:13 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.1007.1717045868529290073
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 22:11:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZcNMpypX;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7021b436302so465569b3a.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 22:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717045867; x=1717650667; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tqMkY42GNR0PZslHgKY4rtxmfnE60kZJvPzpHzghKIw=;
        b=ZcNMpypXtLSQbF6xMJA4m/SS1+pdj1DAj5GYyhawoCVxVU+xl0n7bc63GuKOHWj4yz
         1SMvvZjc2zXOlEGos+9knnebj53uPCPmKEuH/gEaVq59PsGqcupVv1O/9s/sP8Pgkh0N
         0vgu4e52ylXhGYU7L9OM8tzNQUdHcAW7gnLRgkUC3dL+PlBlk6Ek+CBCEZlU/TV4Kkqz
         b7XLbyidomwYFbtgwWihVYvNwqIQ/8pfUl0awCMieupmp6JtJOK1dWUKX+xaAtYznZV4
         YaWC5ixxlM/Oay32beAY7OCVh8XhRdm4lXax80to7OecAq6JeNUALdfqVjqKZiRkGDEL
         q3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717045867; x=1717650667;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tqMkY42GNR0PZslHgKY4rtxmfnE60kZJvPzpHzghKIw=;
        b=bUqJRiPaNE3g+KiVId3UBdCK/4n0pncIrUtqewhzT90FqrnnWHX+ax6kif2LmPmf/o
         n7arLzeDOLQYNe8JfHDEiPqjRpH/rJLI91+UtEcK+w9x2gLgqyH3zT8FwUUKCKEY92Df
         Kc09vnRqX1wNgURyPUosWJDFzB7cgWGQniv5Q1dlR7m66hWl8HeyiyT5YfVuJaTYWv7V
         Mz/b57pmIk16WAF3s4qYcXDgMAjptjJG9t+g2zMKAYgUJoNzuvVI4SHgaHEiLR3ocbAv
         7k0t0O5SaDZ/DBcFrNloR03H4gC7Q3/IVpKu36HMmuLXk0knbbtX16EnSvqhMApCYClZ
         hH6w==
X-Gm-Message-State: AOJu0Yw0gO/moPH+Gw2AjlxEo5Eay3xdXvZVmX9uyxcXBY/xkfvMFMWA
	+IYWHyppb7+7Q2I3lII7BZR4RcBpk74hAP1sMyRNwXCfkYf6MZ7UijHkMiThxC4=
X-Google-Smtp-Source: AGHT+IEtk/FoB1OudTjRSoqfnFYIu4a03tUBYgJPYPrv70WULt7mA87LFG7Kk38D8PNtkp7H/eVV/g==
X-Received: by 2002:a05:6a00:4206:b0:6ec:fd67:a27e with SMTP id d2e1a72fcca58-702310ed5camr1126173b3a.1.1717045867440;
        Wed, 29 May 2024 22:11:07 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::3972])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fcbf5388sm8853029b3a.136.2024.05.29.22.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 22:11:07 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 0/4] GCC-14 related fixes
Date: Wed, 29 May 2024 22:10:56 -0700
Message-ID: <20240530051104.2814410-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 05:11:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63233

This series addresses the set of issues seen with mingw builds with GCC-14

Khem Raj (4):
  mingw-w64: Upgrade to 12.0.0 release
  curl: Disable incompatible-pointer-types warning as error on mingw
  gettext: Disable incompatible-pointer-types warning as error on mingw
  diffutils: Fix build with GCC-14

 recipes-core/gettext/gettext_%.bbappend       |  9 +++++
 ...in-the-ucrt-__imp_vfscanf-assignment.patch | 30 ---------------
 recipes-devtools/mingw-w64/mingw-w64.inc      |  3 +-
 ... => nativesdk-mingw-w64-headers_12.0.0.bb} |  0
 ... => nativesdk-mingw-w64-runtime_12.0.0.bb} |  2 +-
 ...nativesdk-mingw-w64-winpthreads_12.0.0.bb} |  0
 ...01-sdiff-Match-execvp-argument-types.patch | 37 +++++++++++++++++++
 ...efine-stricoll-as-_stricoll-on-mingw.patch | 37 +++++++++++++++++++
 .../diffutils/diffutils_%.bbappend            |  5 ++-
 recipes-support/curl/curl_%.bbappend          | 11 ++++++
 10 files changed, 100 insertions(+), 34 deletions(-)
 delete mode 100644 recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_9.0.0.bb => nativesdk-mingw-w64-headers_12.0.0.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_9.0.0.bb => nativesdk-mingw-w64-runtime_12.0.0.bb} (86%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_9.0.0.bb => nativesdk-mingw-w64-winpthreads_12.0.0.bb} (100%)
 create mode 100644 recipes-extended/diffutils/diffutils/0001-sdiff-Match-execvp-argument-types.patch
 create mode 100644 recipes-extended/diffutils/diffutils/0002-Define-stricoll-as-_stricoll-on-mingw.patch

-- 
2.45.1


