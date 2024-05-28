Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59608C25B7C
	for <webhook@archiver.kernel.org>; Tue, 28 May 2024 15:39:43 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web11.25729.1716910780314889593
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 May 2024 08:39:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IhaV3PxV;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6f8ecafd28cso742661b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 08:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716910779; x=1717515579; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XN5qHi5eAcyqCQOhsGaKjD4VlYTyxgRryUZcmhhewnQ=;
        b=IhaV3PxVNLr6WiopTkAZg+Dm0GYXqtR47NNwvixqfdeKbcxKhnNt8Yvuzp+W+tR/wc
         oI9UBpoUjRcWK99wLVbgA/VMm7awb5gXAw3vJmkFuuR22XH36wRnae8BQbm3XCCxFBmj
         GOYdwKTv9vrIhJbq1vgQgw7eghDIefnWj/xPDUR1yAPJ6HWg22G7jRMRrDFud7LvaVtY
         xHPvOFrQDqGviEWhI8oglOaSflSE6rygMovfoNMKtheHOkijlPebRtTmJ4/zHBX7ptAH
         8lzKwTP83Da/2Uh6Na5/Yis1qmPKVA31qS1GJwluDJL9Kgi6JfMM1UkMNkulJIEtxZ8m
         G95g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716910779; x=1717515579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XN5qHi5eAcyqCQOhsGaKjD4VlYTyxgRryUZcmhhewnQ=;
        b=oOoQfEDTwKxGYh42nrc3TMp2iWB8iL2fGQcln/TnCrYsHA5U119hCgMelUEbnaZ0Ux
         qRCoSEwoU1gmEAlQ9eoE24CRuFWndxYPUrZU53HWY+at3esbreTeBr7O7bxfZ6lfnDYV
         RthmY7g5hS63SaGfQhkcd3hVlCYolOPJbK7q3N23WESbGG5EE0ghmxp9peczitpVBDWD
         EAn6xXJ8KSzU/MBS/TYvdTBJ3FwYyD/Hvu9AZ1CDA+2iDfCEFgRa6BSGjkAKhher8s77
         hHaksThRfhKPVba+GD6OXX16mYvWt9AUc4Ga5u8Iriehd3bh7pANN6eWF4E0Bsj1ecyL
         fkRg==
X-Gm-Message-State: AOJu0YwwRFv+91H1UHPDo7yNw5OUHG/mU9+CDiG6RMZw9O/EIHBReZv6
	apz54Uzc3ZeIPrZ2UN2n4c/jKMsFYcOiSwP1dvJzao/kg7ZC/IrJk1Ramd65YSc=
X-Google-Smtp-Source: AGHT+IGPJjvo3KJt2orgwR/z/dNrk20P8HjQNF5A3BIR07hTcu42hzVTZSQdLByVLrTHW0Z/giRYbg==
X-Received: by 2002:a05:6a00:4093:b0:6e6:9f47:c18c with SMTP id d2e1a72fcca58-6f8f41a9f2dmr12517098b3a.33.1716910779376;
        Tue, 28 May 2024 08:39:39 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::3972])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-701d44144adsm1121420b3a.58.2024.05.28.08.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 08:39:39 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH] gcc-cross-canadian: Disable C++ tools build
Date: Tue, 28 May 2024 08:39:31 -0700
Message-ID: <20240528153931.2121614-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 15:39:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63218

This disables C++ 20 modules since c++-tools are
needed for that feature to work, this is therefore
an intermediate fix until we fix the c++-tools build
issue which seems to related to it asking for pic
version of libiberty.a which is not generated separately
on x86 unlike other architectures because defaults are
PIC already

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
index 13ea016..2d4358a 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -1,5 +1,6 @@
 INSANE_SKIP:${PN}:append:sdkmingw32 = " staticdev"
-EXTRA_OECONF:append:sdkmingw32 = " --disable-nls"
+# Disable C++-20 modules features as the needed tools do not build for mingw
+EXTRA_OECONF:append:sdkmingw32 = " --disable-nls --disable-c++-tools"
 LDFLAGS:append:sdkmingw32 = " -Wl,-static"
 EXEEXT:sdkmingw32 = ".exe"
 ELFUTILS:sdkmingw32 = ""
-- 
2.45.1


