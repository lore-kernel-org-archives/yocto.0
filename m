Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDD70C38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 18:23:21 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web10.109824.1674843791511318549
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 10:23:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QrZWsi9v;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id z13so5860659plg.6
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 10:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/MMD4ZRzqVrNk+A36B2GfVFQhneJ2/AibxAeQ9Y6a1M=;
        b=QrZWsi9vDMo4cpPyY7ZpgvEONi5AvMlkwTDVMQEpFdXOdS7hWBn4Gc70bXOnKnsZhW
         JlrVTSI+uB9DaD8kgMwnIaWJDbETgGdo1G2FWAb/PBZuqIyu4QhZ+r8wGyR4GrOFpVVO
         TSKYoQbbqj8LR8yuPGgTtw/KNO+m2+vVCtRqKyAT6V2+o0K09sgCc3X8A6PXVpK9jYzD
         ItOXZxILo72kUk9Tra/ULTqYcb4zVLaT3i/M3TOYOZxzWFQ09EW5bJ6S01Z6Zca1Hvw3
         dOP4H9e4nxiNvHjR4PDlp72QYJU9icVAmH3KnAW0+yugGzRo3COmVwSh3VX9ZYbCLu6I
         +2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/MMD4ZRzqVrNk+A36B2GfVFQhneJ2/AibxAeQ9Y6a1M=;
        b=69mhdVm+z7af8aCLDcY/Z+2FgREl4EEs9vZYz9TelX3nRwUu2KOqow9GKdsz/4wvAg
         CGJm0FTeDzs7/PvWnD/qCoCp/UYHTZoJmpS7+xzZ3+UFleBGIzZuTK6AeSVh4Wl7J4eB
         6CT8HWG9Pv//HiUKR1GYtNNFO5Hurm4ll950rVfeI6KN/EDgFzX3hVOJl0V2aGV1adKn
         88B9/m5f23JIo0BoXaBWFWHuib7GlNrMiEClkzPQ9P+s4GXZnbZdxaP8mnQ5NJZEcg1D
         qpuNhheWBLMr1Ov4V1sdGzomNFWsy/c4J6N75f87q04LlPJ5KaoQrzvqZzen6NI9edKV
         uPww==
X-Gm-Message-State: AO0yUKV8xKJKsAUbtddaAgQgF+dE2506HSf90AkQVB+pj+GRhxIyJwdC
	8q4rLjVGMTy6MUYGmtoOqLiCcspdfgS6aQ==
X-Google-Smtp-Source: AK7set9sv32XI3NXfiolYyTt4Ki8ZRoMi+3djGhsU0oIkSF9R6Z5nAMxAjyloPFcjhd6Gw3Aq+HBUg==
X-Received: by 2002:a17:902:e887:b0:196:2949:3ca7 with SMTP id w7-20020a170902e88700b0019629493ca7mr7997435plg.7.1674843790518;
        Fri, 27 Jan 2023 10:23:10 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9181:1cf0::aee3])
        by smtp.gmail.com with ESMTPSA id bc11-20020a170902930b00b001960096d28asm3189483plb.27.2023.01.27.10.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 10:23:10 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH] libtirpc: Use a reactos fork of libtirpc for getting win32 support
Date: Fri, 27 Jan 2023 10:23:06 -0800
Message-Id: <20230127182306.875897-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 18:23:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59086

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-extended/libtirpc/libtirpc_%.bbappend | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 recipes-extended/libtirpc/libtirpc_%.bbappend

diff --git a/recipes-extended/libtirpc/libtirpc_%.bbappend b/recipes-extended/libtirpc/libtirpc_%.bbappend
new file mode 100644
index 0000000..f336a91
--- /dev/null
+++ b/recipes-extended/libtirpc/libtirpc_%.bbappend
@@ -0,0 +1,14 @@
+LIC_FILES_CHKSUM:class-nativesdk:mingw32 = "file://COPYING;md5=1c32c8e351f97e43e1ad6cf7f62de3bf"
+SRCREV:class-nativesdk:mingw32 = "d4d918c1be631d770f09d2769834e5314cc9345a"
+SRC_URI:class-nativesdk:mingw32 = "git://github.com/kraj/libtirpc-mingw;protocol=https;branch=main"
+
+CFLAGS:append:class-nativesdk:mingw32 = " -D__REACTOS__"
+
+EXTRA_OECONF:remove:class-nativesdk:mingw32 = "--disable-gssapi"
+S:class-nativesdk:mingw32 = "${WORKDIR}/git"
+B:class-nativesdk:mingw32 = "${S}"
+
+do_install:append:class-nativesdk:mingw32() {
+    install -Dm 0644 ${D}/etc/netconfig ${D}${sysconfdir}/netconfig
+    rm -rf ${D}/etc
+}
-- 
2.39.1


