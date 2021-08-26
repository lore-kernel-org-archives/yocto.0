Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web11.33434.1629995621473714731
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 09:33:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQ6VXu69;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id d2so2947107qto.6
        for <yocto@lists.yoctoproject.org>; Thu, 26 Aug 2021 09:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8qd1roy31F3x/oGhObNUq0/Zs6ORtV5fy68sLs5mZkE=;
        b=iQ6VXu69XlsLxJ+6Tt/tNxxAzOVx3OVji+fU7DkYjndG0geDrEuwKHUkFHXUwwkoCF
         Vjn70ZJYboH31Z8vhQrHq2aoKFze+42KxzxkXL0c3Ag+RleOtGWrf7UhELmnJKvCBT9o
         bSQicI5rhdNPMG8erZ+bjNlVwyogwKdDk/uDyXOzx4Tho6nHcoFNv6+CJsgIKytptRf0
         xXrp4B6YxaA3I4ExQwd602Hm+n0mulYdOhooEr3n4GYkk4n+whwphYJk/KIdi08LJaNH
         DLF2DwMbGPriPAlSraIGWGeRn1xP6MBf3wfuyU1+hw/cd8XwKpbmIDLkS2hoSzeChPTs
         /5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8qd1roy31F3x/oGhObNUq0/Zs6ORtV5fy68sLs5mZkE=;
        b=GzZEJyGDOVG9oydjM5I5ohvy99GzTVojdZkeXGx8QQBh2TH0LSgdVjyICHscj9PyXb
         LgE5ryN2dFJWDAHNTAXXrchGW/eYtXgoU+V6wg3FapFFXR+DE1wA1U55vT18yGRrQzuF
         Kz8T25yI/WNmvkxVY/FZGVr0Kr/VqMg3VLtWD8lmMerzluAieCb/fOgYLA2hTDtY8eJP
         /wjoYL5XX5o6ZZD2b2RdFbuD4A+orHamdPVXqhMs19E7oziow05aOJkqKCrotBNIFYbV
         jTrnIFmBAHhbZILQBIxhPwALuKxCIjvx/j5pK/zml+/OrO4Y1IcYWMSa3/TZF9lLw0rt
         GHNw==
X-Gm-Message-State: AOAM533cvC4OU3pXbvar2NO36gjQN6bXDgFa37yUAkBITixSdhRWA5/8
	RfpgNimsQK2qgLXoaqNl++c=
X-Google-Smtp-Source: ABdhPJxwpCXrLlsfumiAYdrRvEvFQYoeGvuNac7oSEfk7bwgTT1o38VkMnbvDr8UuIhdOAMLdi2lLg==
X-Received: by 2002:ac8:7118:: with SMTP id z24mr3946460qto.281.1629995620468;
        Thu, 26 Aug 2021 09:33:40 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id c1sm2121265qtj.36.2021.08.26.09.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 09:33:40 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] parselogs.py: ignore intermittent CD/DVDROM identification failure
Date: Thu, 26 Aug 2021 12:33:38 -0400
Message-Id: <20210826163338.42399-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

We don't use the CD/DVD ROM drive in any of our tests, but it
periodically fails discovery and that leads to a QA error:

    [    6.403477] ata3.00: failed to IDENTIFY (I/O error, err_mask=0x4)

The only way to disable the optical ROM drive in qemu is to use
the '-nodefaults' option, which disables the CDROM (among other things).
We can't be sure that none of our tests, or extended users are relying
on default devices, so using that option is more of a risk than adding
the message to our ignore list.

To date, no one has sent a patch to just disable the optical drive
(either in qemu or the BIOS), but that is something we could consider
in the future.

[YOCTO #14528]

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta/lib/oeqa/runtime/cases/parselogs.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/lib/oeqa/runtime/cases/parselogs.py b/meta/lib/oeqa/runtime/cases/parselogs.py
index af8a8d67bd..5db0216597 100644
--- a/meta/lib/oeqa/runtime/cases/parselogs.py
+++ b/meta/lib/oeqa/runtime/cases/parselogs.py
@@ -98,6 +98,7 @@ ignore_errors = {
     'qemux86' : [
         'Failed to access perfctr msr (MSR',
         'pci 0000:00:00.0: [Firmware Bug]: reg 0x..: invalid BAR (can\'t size)',
+        'failed to IDENTIFY (I/O error, err_mask=0x4)',
         ] + qemux86_common,
     'qemux86-64' : qemux86_common,
     'qemumips' : [
-- 
2.19.1

