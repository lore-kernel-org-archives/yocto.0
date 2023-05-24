Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2F4C7EE29
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 00:45:15 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web10.1240.1684889112588972401
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 17:45:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=IxD3CbcC;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-53eee18a192so245433a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 17:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684889111; x=1687481111;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mKuUrSEsHs69MXKJv0Z0FUgFbFEFxt6MVIsCLHxOgk0=;
        b=IxD3CbcCccRa0WmHgNoernrx077Rl5yZpn0sesDDWDvtjBayevFxWBSujcMeE2mA5K
         vsXLbfZVl/svRd1EUAnm+1IsU3/r7+izI5UIV2t0+efF9igySoXR8iVzcLLZcI+OlBXF
         krR5oYrGM3x5xsN7dDGCx/8vmBByqKACqUOgsOMmuiUVd7VE5Tv61UXkUwIs2Pj0LKTc
         80XjIR7FX0M71byZ9SIZC7OgaRhZY7aIy4ACN0efupJ9i9fS9IlRGQQ4b1Nt3brCjkAf
         PYK+nr0uQ3XGn67reHsQVu/plJaAYoQO95fUweRrrP9lOwYiXgFAKqyQsFcK8Di1ywer
         a9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684889112; x=1687481112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mKuUrSEsHs69MXKJv0Z0FUgFbFEFxt6MVIsCLHxOgk0=;
        b=IibD8OQnW2keeCiuWwhGDwz+hy9kPq+egXbqkhszxCYb7gFCosNe43bezX+mph30zU
         iLeTGEz0QYRX2SEm9QYvj1jjHy0UoC4uYFI5FnblxKafQz99cVsT509jguBC3yAjWgSU
         QOexWc1ij7qbDIIFyqH2uAtK5C7qXDK1468H1EuVPA/kV2O3YsXn0M0HbHWvrgBP//S+
         cL6jZun98UOVj0p/SiFiEBkCJXns9nL2Qj1uN+KuWs7PrQ+R4Vk8hn7Z1Pqw/neJaMTR
         tJ8tfDOZmuGIAiUSfkPsSeeqVnUVyPN4tdhky4GFM9EWe3Aud8ubPJvED7Am0wWGIJmX
         4G6w==
X-Gm-Message-State: AC+VfDzEPQw51pEl7Y7ZtGCr4fXdx4QD0pXqyx6mp5a9qW8JrrfeGvbR
	YxDvgALY3JPEuEB5WUkau9Mngqwft/4=
X-Google-Smtp-Source: ACHHUZ6IjhGEoNpPS1lgmGNKdVNIGdKj82rwKjDEhmzvrFbdDGFxMik8cmtGr3wJ4UX1oRsgb6G0VQ==
X-Received: by 2002:a17:902:d2c6:b0:1ad:cef8:f913 with SMTP id n6-20020a170902d2c600b001adcef8f913mr19597169plc.44.1684889111432;
        Tue, 23 May 2023 17:45:11 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9181:d380::c675])
        by smtp.gmail.com with ESMTPSA id z5-20020a170903018500b001ae5d21f760sm7386096plg.146.2023.05.23.17.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 17:45:11 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH] mingw32: Add WINDRES export for SDK
Date: Tue, 23 May 2023 17:45:08 -0700
Message-Id: <20230524004508.2423305-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 00:45:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60103

GCC-13 has added code where windres is called on a rc file which
includes winuser.h, this requires to call windres with -I option to
point to right header directory duting gcc-candian-cross builds

Fixes
../../../../../../../work-shared/gcc-13.1.0-r0/gcc-13.1.0/gcc/config/i386/utf8-mingw32.rc:1:10: fatal error: winuser.h: No such file or directory
|     1 | #include <winuser.h>
|       |          ^~~~~~~~~~~

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index af6bfc4..9ec6e07 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -38,6 +38,9 @@ TESTSDKEXT_CLASS_NAME = ""
 WINDMC:mingw32 = "${HOST_PREFIX}windmc"
 WINDRES:mingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
 RC:mingw32 = "${WINDRES}"
+WINDMC:sdkmingw32 = "${HOST_PREFIX}windmc"
+WINDRES:sdkmingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
+RC:sdkmingw32 = "${WINDRES}"
 
 export WINDMC
 export WINDRES
-- 
2.40.1


