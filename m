Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
 by mx.groups.io with SMTP id smtpd.web12.10274.1576351464170837846
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Dec 2019 11:24:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LrCaY6gi;
 spf=pass (domain: gmail.com, ip: 209.85.215.194, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f194.google.com with SMTP id x8so1255278pgk.8
        for <yocto@lists.yoctoproject.org>; Sat, 14 Dec 2019 11:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=kwLrdYG3Tio0bpPrTJu50WPgAV4SkYCer3GlmjoHsEQ=;
        b=LrCaY6giuUzytMxRQUJXXfLQ5+zXNJX6gf9OzbjFk0AWVDNRixOQYBJ1IyvjjEnkz0
         9Ole4D+9ZYzvM9V8IjzUqf8lh0J7s4sIBhrYQS6y7cmD7bBrgQZMzIjabhUpvm91KRTO
         LWoZJ0Sab0BOFWhoIbc9mXjn8L5v+5FKzlrtujotNnrZuwKdnUnTd2LdtMuBC6MC4U9E
         VzKiWnXL3H4t01cCWbiEB17PO4f9BRDHaecHuQtMxvWHc6eMt9aaYR9+kU9XIICSikA5
         ehbTX7II8dkBU7RXc0O8G8tNmLf9fPoodVcPA50YVJHz3zjnGQwYGWdykxbwXZHJm3HI
         ZzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=kwLrdYG3Tio0bpPrTJu50WPgAV4SkYCer3GlmjoHsEQ=;
        b=hNiaSEiqwYmi/ANx+K64vEyrK66+b74KCJeKKD7uUIo1bAH4ypLFjJE3T6mcCh/qLW
         NEftfUc6r/KwoC68DWpF3s2AGHEwdFKrncmbZ1o6HyhUDDQPpHwqQpExO6fSAwOoyKwl
         7cuvDtk/A6OH7gO5LSYa+IvuaGCwNnMHNAolDTRWzUUsl9YsWTSgIBKA5EiMHTPMKEXy
         c3ipmYoYB91non4VG8DKOdT/HAFDbwcrL7a2j326QBHQssryheVXxg8CBAeCDeyrx8We
         n9pGRgVJJS9ZwDR8/mig3EgNz8dnYBYqKGTQqANls8GJNhnbn9bR2xxwEi8FziM4MxRn
         uRcQ==
X-Gm-Message-State: APjAAAW5Xf2Pn6kGr/APZL2Nklbo1fdTasnlwmF6O9bJTKCf2jYzqNOr
	PW8zCUPIVcYvRyb/o6dm3BPYSumjr4U=
X-Google-Smtp-Source: APXvYqwr4GB8pi8PX2Rf0Y9aUdPeG54WbGG41Pz8B/UAc+WnN33HGxZuIXRos7R606P8tcqJvi3IDA==
X-Received: by 2002:a63:1b54:: with SMTP id b20mr7107177pgm.312.1576351463384;
        Sat, 14 Dec 2019 11:24:23 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:dd29:b8d2:59d6:df97])
        by smtp.gmail.com with ESMTPSA id i16sm16227962pfo.12.2019.12.14.11.24.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Dec 2019 11:24:22 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [RFC][yocto-autobuilder2][PATCH] config.py: Add meta-security to AB
Date: Sat, 14 Dec 2019 11:24:21 -0800
Message-Id: <1576351461-15504-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 config.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 14358aa..3ce5e7b 100644
--- a/config.py
+++ b/config.py
@@ -12,6 +12,7 @@ buildertorepos = {
     "qa-extras": ["poky", "meta-mingw"],
     "meta-oe": ["poky", "meta-openembedded"],
     "meta-virt": ["poky", "meta-openembedded", "meta-virtualization"],
+    "meta-security": ["poky", "meta-openembedded", "meta-security"],
     "meta-intel": ["poky", "meta-intel"],
     "qemuarm-oecore": ["oecore", "bitbake"],
     "checkuri": ["poky"],
@@ -83,7 +84,7 @@ trigger_builders_wait_releases = {
 
 # Builders which are individually triggered
 builders_others = [
-    "meta-oe", "meta-virt", "meta-intel",
+    "meta-oe", "meta-virt", "meta-intel", "meta-security",
     "bringup",
     "qemuarm-armhost"
 ]
-- 
2.7.4

