Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
 by mx.groups.io with SMTP id smtpd.web09.7669.1581093941578458649
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 08:45:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NrzMlxew;
 spf=pass (domain: gmail.com, ip: 209.85.210.193, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f193.google.com with SMTP id y73so48351pfg.2
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2020 08:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=ccWaFXniernynKndGeQ9wgcm7A92RjJIgqspxufi4vU=;
        b=NrzMlxewI0iEzlZvsIaYh/dBQptmmshQuvKqzo9rlDZ4Y1fYhD5cj7QGX/YlrbK3V/
         VsPU33Uktq/6E2YKYXny/dwgwDVXncUFzWguXx2URxRuie/7Da98S519bp3tRv1X/w60
         HaQZvI366vWGqwU9Yxj/G78dmd67hB3Xe2EScsWqnGXLAkdeE5YzGw0uP9ZkhSSmrLCk
         ZYGUDXJhZGaTGZVVnZd2v1zFrrmHQWwTkhBqNsU6d83tviRV6IoQFrXWNfK7Wg3XpwNJ
         1knqgS1tBCpKNUCDxCcseAQwg+1LNre5camYybP2dcSNiloz3xlP9GADqzuJLx2/K+er
         SmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=ccWaFXniernynKndGeQ9wgcm7A92RjJIgqspxufi4vU=;
        b=rhTBQaox9MUKG9mp3N71u41YRLY8S37434l4KV3l2Va41axD1G8JDMy4nuTXlbYcx2
         Cth/KecuBuYTOiSLfxt9EDUFp6HrLt8Ix9COi7KAXgjgiAKC67QUZQkl1RWEw+2RpmdV
         s4H5cWkLktvJRWZy+uryoP5XFXsmH3Y+Es/HaZMs96dkbtwUe3qD7EWzFuRgd45ek0p2
         b3VC+8BqXKMWfmRcLSwNiCDLBKBNfbwINL0jm4cYP5YirNnG0FKmBGXInxWHWvLMUtuD
         XEa6PnpdNXp7UsfJrv9Tp+9MaFHIWaEu9PrVY1Ejw1G4LyecKxMUy0xNu++wzP+OMTnV
         YFHg==
X-Gm-Message-State: APjAAAXEuNA/OQmPrGxi0e1u/lE60HBe5SUMwqL0NsetXCcL+9UhUdnc
	hL4jhaaj0DJ8QevKfp/SKJF/xgZV
X-Google-Smtp-Source: APXvYqyEbWECptU4vCK6b3eTBc7ecUbf0PNv0cUpm7DReHTv+6tncX/vhgWZiORG2+HNFzQVXqiCbA==
X-Received: by 2002:aa7:8755:: with SMTP id g21mr10778713pfo.36.1581093940344;
        Fri, 07 Feb 2020 08:45:40 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:64e0:39eb:f6ec:ba3e])
        by smtp.gmail.com with ESMTPSA id k1sm3603741pfg.66.2020.02.07.08.45.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2020 08:45:39 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] bastille: convert to py3
Date: Fri,  7 Feb 2020 08:45:38 -0800
Message-Id: <20200207164538.11801-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/bastille/files/set_required_questions.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/bastille/files/set_required_questions.py b/recipes-security/bastille/files/set_required_questions.py
index 4a28358..f306109 100755
--- a/recipes-security/bastille/files/set_required_questions.py
+++ b/recipes-security/bastille/files/set_required_questions.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 #Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
@@ -83,7 +83,7 @@ def xform_file(qfile, distro, qlabel):
   @param name qlabel The question label for which the distro is to be added.
   """
   questions_in = open(qfile)
-  questions_out = tempfile.NamedTemporaryFile(delete=False)
+  questions_out = tempfile.NamedTemporaryFile(mode="w+", delete=False)
   for l in add_requires(qlabel, distro, questions_in):
     questions_out.write(l)
   questions_out.close()
-- 
2.17.1

