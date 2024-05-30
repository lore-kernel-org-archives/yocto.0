Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C68C25B74
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 05:11:13 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.996.1717045871269655056
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 22:11:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CzSYt2CG;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6f4ed9dc7beso293230b3a.1
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 22:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717045870; x=1717650670; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OVRugDaaOge1c4GKuFFNop7CUs4dKZzElbEl1eKIC9U=;
        b=CzSYt2CGSMJgNnQyiikp1VcLyVIbxYX2rS3ZkO0ylCnRUFhYCtPW/gVaVBmbO355dy
         LkxfoQcRcrAZ+si0Fjgyy62eFyx6GVpkbNLDYX3UwLKpbx4zmkFk90SmWxuISs6urwGT
         WkV6uAo6qWr1SLDH6+9hgeAEV0H3D+tyZXgdkWZHNAnZLFfdAzeKHC3gNZO1fHXP5BD8
         Od9drsf7D8mEJZGWunsyMvEVZeCpQw5bMUmGwteC51hUGiF1nHfBtitJDxBneY1Nf3Cu
         fUlEuIFVX+wvNQq35RW1g+KAapJ4+SC9z8kg/p/evQqhQOwJYuXA4Hqh1kCn6qFSMlpV
         uiJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717045870; x=1717650670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OVRugDaaOge1c4GKuFFNop7CUs4dKZzElbEl1eKIC9U=;
        b=GzBuOCmRROYgCJocKuwt98m1jwo9zj2XsixhKVfsLqP8uvCuCzuX1rZt6pqBcHzXpg
         ia9aGsfF65Fb/VoLcMj+/4h2qt6ua0oxgPkAmGzOmrSK2UCx56MDwB1lVJGMjavAe0hG
         Ml7CBUZBSvXYrs1ofcR/8N9NalwP59jOyWZK17p+3hyeE6PN9aMIH8F/vGMcwUZQNCOb
         71lEdbk4+pKoJWSx/CN6wUNiN5do4CBG/zr7gD1HVUBQeB84CMwEUADzpEGRrKThXG4l
         tETaJF0z9pI2CkMenAiO5Py93yM2kfWoOg+1sa4V8t2I9BxLGvUIcJyMqaCbZt+O9aZY
         YGXw==
X-Gm-Message-State: AOJu0YzJf1J65QXdgxa3SWof+rQr+8hXL6PMsB6j/8yDg8dgPVuZHM5P
	wSMO2nym1VSl8prE0Ts6CB9E2inQL0TZpw28GkvuR4JNwQgFUyjzx2HQvpHyPQE=
X-Google-Smtp-Source: AGHT+IHSjHQNhC/ulQHObAr/qfRP69RLOLLqPRCYAaauctf5RbcKZzShvS3uiex94LucPcC1h1+c8A==
X-Received: by 2002:a05:6a00:4508:b0:702:2b15:a1f with SMTP id d2e1a72fcca58-70231a91a1bmr1288687b3a.2.1717045870346;
        Wed, 29 May 2024 22:11:10 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::3972])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fcbf5388sm8853029b3a.136.2024.05.29.22.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 22:11:09 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 2/4] curl: Disable incompatible-pointer-types warning as error on mingw
Date: Wed, 29 May 2024 22:10:58 -0700
Message-ID: <20240530051104.2814410-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240530051104.2814410-1-raj.khem@gmail.com>
References: <20240530051104.2814410-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 05:11:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63235

GCC-14 promoted this warning into error by default but code does not
build cleanly and now this warning becomes a hard error.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-support/curl/curl_%.bbappend | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/curl/curl_%.bbappend
index a55c126..95b00f5 100644
--- a/recipes-support/curl/curl_%.bbappend
+++ b/recipes-support/curl/curl_%.bbappend
@@ -1,3 +1,14 @@
 PACKAGECONFIG:remove:class-nativesdk:mingw32 = "openssl"
 EXTRA_OECONF:append:class-nativesdk:mingw32 = " --without-ssl"
 RRECOMMENDS:lib${BPN}:remove:mingw32 = "ca-certificates"
+
+# Configure tests for ioctlsocket FIONBIO fails with GCC-14
+# because gcc can now find warnings when compiling the test
+# and these warnings are treated as errors
+#  conftest.c: In function 'main':
+#   conftest.c:137:41: error: passing argument 3 of 'ioctlsocket' from incompatible pointer type [-Wincompatible-pointer-types]
+#     137 |         if(0 != ioctlsocket(0, FIONBIO, &flags))
+#         |                                         ^~~~~~
+#         |                                         |
+#         |                                         int *
+CFLAGS:append:mingw32 = "-Wno-error=incompatible-pointer-types"
-- 
2.45.1


