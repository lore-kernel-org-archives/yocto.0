Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web12.1358.1616632817013067548
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=aMZR7gM7;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id j25so254200pfe.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+oKSnLGehpmOyMXAyE2KjTyyKjMFZPssS1TmeTdxmzo=;
        b=aMZR7gM7ZRZzvjHoNkLMRrQyArFhtLxtXjadk5vEwqznbwMkvQBvQDcecm9sTOIDEp
         bO2qeJ08Te9IxdBRkwKVuPBClOvY0Bl0IzVDn7+VUIXAFFr9LNT6rFhIIw/IWYWJ5zgQ
         Rv8FEcm/1VQLoWcsWtHSP9EcmcGa4uVRqeWJxjTgpr8kgsjTXHjqkFC7julZQFBeRWO1
         EsWZAInv8FnPhcbLGc8Aq2+Djz9RCTzx2sIAUP44b61PpSAbBpJpjIzEgatclHnaERqa
         tc9C1A32VZS1XyqgR3gGJH6RE7sF1udAyl4SXnyIi572NNUIkx4XiagzUa8H0/Iqhwh4
         vpgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+oKSnLGehpmOyMXAyE2KjTyyKjMFZPssS1TmeTdxmzo=;
        b=Dh2tbP2s0ZX3J2lTWUXQuobumbcESxoERa9PBcOTwBc8H6XNwuds9D8un/BQDsfZIB
         nDvbzYVN1wZ4AleTrRCsCaHvoGi6edgMDh6lCiNG5O0xxz9r3oT2HKYs/BCbvzEtRgwH
         hXGTYSHRx9RNCQNijQ8okJQJa/IhhshB+/37UA1y7hxktHtmoagf4mIyTgEe2OJJadzY
         V1HQjOXVMVPjpYAm0xawyqbuX0ii2Tr9G29r0qpb4Wxfwcpvq8Wi0vAAK1O/LeKlmVAR
         OEf/uz8wKOEZoiIP+B4clgKLiZJvs5BSJbWWrPf7IIRNHVF+d5j920kzsiwY5FnUgqzZ
         N6Fw==
X-Gm-Message-State: AOAM530SCTQLHw/guY6u6sfKwSAYrgdTsQLW2cI3J0XX2Uw2eokg2wsP
	W68lVGp8Da48x4d8ZSHVn7F1Bi5DGHbajFQo
X-Google-Smtp-Source: ABdhPJyaqbMT7hudnLCRiNJTQutkqkTeRmhCK2qom4AV4sejxKTiWt4+g5Jm2BDIyxc63mdZpobULg==
X-Received: by 2002:a17:902:c394:b029:e7:1029:8de3 with SMTP id g20-20020a170902c394b02900e710298de3mr5724538plg.72.1616632816113;
        Wed, 24 Mar 2021 17:40:16 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:15 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 10/23] scripts/run-config: If target is present default to 1 step
Date: Wed, 24 Mar 2021 14:39:19 -1000
Message-Id: <288d5c7799f64ac7b9ebd7c3e53e7a1e89d05dce.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit e183db413f3b67e0d45a2a9a697aa36b6c90601f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/run-config b/scripts/run-config
index e600bf9..0b663df 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -84,6 +84,7 @@ elif args.build_type == "full":
 maxsteps = 0
 stepnum = 0
 if args.target in ourconfig['overrides']:
+    maxsteps = 1
     for v in ourconfig['overrides'][args.target]:
         if v.startswith("step"):
             n = int(v[4:])
-- 
2.25.1

