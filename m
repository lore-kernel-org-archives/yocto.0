Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD46C47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 14:35:18 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.13716.1706020513741749919
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 06:35:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XXWJ3AgR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40ea5653f6bso40119005e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 06:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1706020512; x=1706625312; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=quVOxJLdczuVgZfJRYGEgEG2N4JIi8x8Nm5yni8EeBo=;
        b=XXWJ3AgRyenXi6/kuV8C3d2T/K5sTUV1NzVQ9KtEjE3w/jdhI4fqcyI+/t62iQlwWF
         XbID5We02qeObdq+N7mQHJjvj7lmo2yuhHt+MabWtQEAa3Au4LKDi15DSvrhelDt8e7t
         /p9aVSsm9QTE4m2ORJcbbnLLSE0TlEaX+NKT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706020512; x=1706625312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=quVOxJLdczuVgZfJRYGEgEG2N4JIi8x8Nm5yni8EeBo=;
        b=J6dD0tt19kSawRW8dChSdZ3w8QPi5SFJnglReZtVVNrDFxCcGnolDtm84jb/Uid5GF
         Sq1ahCeGYAgTmwSrnISCH2T0GEfl2CqKfnvmlyE4zPAZ+1jQ4LT9j9EoAYX//PYAKqHC
         6Lzmd9gXiSxb0uZILoj2Mx580k5R04EA/a4syL25kVpSoTxlbS9eLx/VFDqm0OCeQtjP
         d5jpoXPqLNpBMOBj7tq252skl90wlKxpjqxI6LGD6fqdUFeV84h5NByw4E2RzHJQWSUn
         MddAyQyjng9QnZCT+b/NKXFN+vsZE+bqXDNyUIwKqzbpR4UWUJmxohJPrQoOAyVp5wBX
         jI3Q==
X-Gm-Message-State: AOJu0YxT5sAlPXAvw6PiDHWWZmIHP8gWg7Sz2kDDSUU+ol8036ZjdGO4
	/46tKtc86/KGEff7aq0UftUqqUaVIed2a5ghdIeZ6cvcrx6S8OZzNJU+GVar3MvkdJSZ3lZMnRw
	f
X-Google-Smtp-Source: AGHT+IG5RN1W4RstN2KEeolenMsREzOCVSQ6AQCE4CqhRBE09tRNkCWB2cQQGpRuXnCO7QZ3K5rjJw==
X-Received: by 2002:a05:600c:3d93:b0:40e:4d66:d282 with SMTP id bi19-20020a05600c3d9300b0040e4d66d282mr203473wmb.164.1706020511715;
        Tue, 23 Jan 2024 06:35:11 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:9f8c:6efa:4303:47ea])
        by smtp.gmail.com with ESMTPSA id b9-20020a05600c4e0900b0040ec31b38a0sm458482wmq.21.2024.01.23.06.35.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 06:35:11 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] cve-report: Add summary counts of CVEs by recipe
Date: Tue, 23 Jan 2024 14:35:10 +0000
Message-Id: <20240123143510.613306-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 14:35:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62243

It is often helpful to know how many CVEs are open against a given recipe.
Add a summary table of this to the end of the CVE listing.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/cve-report.py | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/scripts/cve-report.py b/scripts/cve-report.py
index 7a95668..203ea6d 100755
--- a/scripts/cve-report.py
+++ b/scripts/cve-report.py
@@ -12,6 +12,7 @@ with open(jsonfile) as f:
     cvedata = json.load(f)
 
 cves = dict()
+recipe_counts = {}
 
 for recipe in cvedata['package']:
     if recipe['name'] in ignored_recipes:
@@ -28,3 +29,16 @@ for recipe in cvedata['package']:
 print("Found %d unpatched CVEs" % len(cves))
 for cve in sorted(cves.keys()):
     print("%s: %s https://web.nvd.nist.gov/view/vuln/detail?vulnId=%s *" % (cve, cves[cve], cve))
+
+for cve in cves:
+    recipename = cves[cve]
+    if recipename in recipe_counts:
+        recipe_counts[recipename] += 1
+    else:
+        recipe_counts[recipename] = 1
+
+
+print("\n")
+print("Summary of CVE counts by recipes:\n")
+for recipe, count in sorted(recipe_counts.items(), key=lambda x: x[1], reverse=True):
+    print("  %s: %s" % (recipe, count))
-- 
2.40.1


