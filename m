Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55A7C433FE
	for <webhook@archiver.kernel.org>; Sat, 12 Feb 2022 18:43:05 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web10.12240.1644691384841391075
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Feb 2022 10:43:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XxWNTPQw;
 spf=pass (domain: gmail.com, ip: 209.85.210.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id i6so20109533pfc.9
        for <yocto@lists.yoctoproject.org>;
 Sat, 12 Feb 2022 10:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2hSH4PJ2bp8ht7+U0o9QWa4nLimuV+NQP9VLbB0lqdY=;
        b=XxWNTPQwNp7qlQ2T0uLBdG4JyW8kWnuXazsUECl5+qsmLsej/ZoOkEmHCGzqi7AzNT
         bW8YDIH/c9nbRsDOguWw2XtDl+DbWZCvjp825xAt5IA+xmwXIOTUDyHcYz2VuWq1JWAl
         YRPq8RZHY/aTLRpa800GlVijoRt4cDS7KBU53Ydnd4xEVfKTA2FfqIAogJlDv1d83aJF
         CLjdt5PxTSqTIDndXIly+1lq3NbQDyw7OME7Jlp5bc42HuKvJxiu0N2mBBCaIsKnr7oM
         hRmij9mP49CccoLBALFzE46OyvnrbH7dJcf0vjqnAGAIxkYy+08tjqsq5hDj5Yz+cr4b
         Jqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2hSH4PJ2bp8ht7+U0o9QWa4nLimuV+NQP9VLbB0lqdY=;
        b=C08Ph3e69NgESJn+8GOYbKRV9buis8aWss7rT8/I9FtsY8LbUCe8s2Ill6wD9Iqc9r
         OAOMNvFtfI62XbveeNTyE43BI7hTkKxlvqL5JTGp2rywYQ0z4FtRk3b6yO+H8UJb2DKB
         ljYivqcLLSjbN4D6lLrylvUdGIkkpK3ByGbzd8HgDQvDadkKtwOpfQcfIiep2eJpDWt3
         ueUY8qjKU34mOo4NHG1CJgki7/IBu8bgzHi7MWhURq6u0zpuYT5hrIWPmzuYu+d0k+H9
         hQErbCuaVc7c2QDm8G8xzo0VG/iz0IHZrRwRmctbZTpfew839w+/9dO2m1O0pxA/Y30Y
         GIcg==
X-Gm-Message-State: AOAM530S4xawCyUxiVKEHyfrW0uqot0RVs7eH3vwweiOWSXvLTbKkRN0
	ceTkfP3UJK7m9NBciPW6vn84A3KJ3ArRsw==
X-Google-Smtp-Source: 
 ABdhPJzMHfeMcn65fb1YhcmTeUBNkuyKm93kv7/39e5VEBH/Gcxvrav09+4m0af2ttVQDAlqghzVww==
X-Received: by 2002:a63:e70b:: with SMTP id b11mr5770226pgi.161.1644691384119;
        Sat, 12 Feb 2022 10:43:04 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::fb6e])
        by smtp.gmail.com with ESMTPSA id
 g4sm14755909pgw.9.2022.02.12.10.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Feb 2022 10:43:03 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 2/2] mingw-w64: Disable parallel build
Date: Sat, 12 Feb 2022 10:43:00 -0800
Message-Id: <20220212184300.2850465-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220212184300.2850465-1-raj.khem@gmail.com>
References: <20220212184300.2850465-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Feb 2022 18:43:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56168

binutils 2.38 brings up a parallel build issue, work it out by disabling
parallel build for now

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-devtools/mingw-w64/mingw-w64.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
index 322fb79..ce5d0db 100644
--- a/recipes-devtools/mingw-w64/mingw-w64.inc
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -9,3 +9,7 @@ SRC_URI[sha256sum] = "1929b94b402f5ff4d7d37a9fe88daa9cc55515a6134805c104d1794ae2
 
 UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
 UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
+#| Assembler messages:
+#| i686-w64-mingw32-dlltool --as-flags=--32 -m i386 -k --as=i686-w64-mingw32-as  --output-lib lib32/libd3dcompiler_41.a  --input-def ../mingw-w64-v9.0.0/mingw-w64-crt/lib32/d3dcompiler_41.def
+#| i686-w64-mingw32-dlltool: failed to open temporary tail file: D3DCompiler_dll_t.o: No such file or directory
+PARALLEL_MAKE = ""
-- 
2.35.1


