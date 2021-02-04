Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web08.2953.1612474359884023127
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 13:32:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EGZWmLtq;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: idadelm@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id v24so6784157lfr.7
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 13:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KqhmZhrOSHW7CeOM1Oq9G0TTgOOEIrKCc7FUuJpiv1g=;
        b=EGZWmLtqW+b4OFh25dg7K68ceUN+X7kEfErOlS0NHiS4GEaiu8+OwKAMxTtHXSaAeg
         Ycwu4MSP1WXh3VIWUJmpLU3FSuvVsHhybdwkLNsuXvEvEB/EjbgzrXhNTuJOtx/rPQWh
         XcPe7QmwhOLJtp1vcs4hhJi7lTQ5DJnZFvJsxXGUh4tgKm6FDRHnJJCtkWF7bMVpuDRS
         6XpLqLDntJmSL6RrzIDUAPwzisb7M2OnE99nXoeA1gS5rgK6Hx4QiAkFjzeY43CLUBv2
         /t/ihK7CJaHAx9mapfSTzDp21gv6Zi4GYnV1FFB+E6LuT4Ph9CLebEl3pZecn2kZPM71
         sxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KqhmZhrOSHW7CeOM1Oq9G0TTgOOEIrKCc7FUuJpiv1g=;
        b=LlHYb57IKH39CQ2KdC6GAA2yWWkk8+AlJmi0CpfQD7WOCokK20yppjx/7C5mQjl0mJ
         CYoCAxMiTdA3YJ1lrcXdKw8drq3N40SxAXObW4yKjnEBEpOZbQODbHLslRD8klocyxI+
         6jIG+zgEE+A+eeimEJmGAa2alOBh1LZBwsfj/fG+cRBwwE+gz9d47Un5xN0ryNgnZteS
         hA+R4wgWyu3QdKFdksPQ3PUqlftI7KePpAFN1M6XQqvgwvvNz14VAAut5Ruh3+qGwb/i
         lkGK5Oph5pXExUuZ5Zk5kr4zdBlODq26W0yz9XTkmb2DOMrqXC9CnJD0HqW3L1kYb8nw
         Wbmw==
X-Gm-Message-State: AOAM533TymxcE+D8zX0Ql/NbdRrvRdpC9qtAYyxepit+PzcEy8z2E+od
	p095RYsiShk2LsDfUaV1KxvPr3pR7UO6VReX
X-Google-Smtp-Source: ABdhPJwqc/cmaErhDoMuo/2UfdiAUqknBAYXo8ml3uLrvvBt9923Jc+kTvIDFcvyJ77DsmRGyS27hQ==
X-Received: by 2002:a19:4801:: with SMTP id v1mr714531lfa.628.1612474357704;
        Thu, 04 Feb 2021 13:32:37 -0800 (PST)
Return-Path: <idadelm@gmail.com>
Received: from ida-pc.lan ([129.0.101.30])
        by smtp.gmail.com with ESMTPSA id f9sm743813lft.114.2021.02.04.13.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 13:32:37 -0800 (PST)
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: mark.hatle@kernel.crashing.org
Subject: [prelink-cross][PATCH 3/3] Edit SPDX license header version
Date: Thu,  4 Feb 2021 22:32:18 +0100
Message-Id: <20210204213218.12781-3-idadelm@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210204213218.12781-1-idadelm@gmail.com>
References: <20210204213218.12781-1-idadelm@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Ida Delphine <idadelm@gmail.com>
---
 src/canonicalize.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/canonicalize.c b/src/canonicalize.c
index e94ec06..8c84336 100644
--- a/src/canonicalize.c
+++ b/src/canonicalize.c
@@ -2,7 +2,7 @@
    Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
 
-* SPDX-License-Identifier: GPL-2.0-or-later
+* SPDX-License-Identifier: GPL-2.1-or-later
 */
 
 #include <assert.h>
-- 
2.25.1

