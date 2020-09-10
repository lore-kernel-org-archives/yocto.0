Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.20812.1599740764775041208
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S7YxW2dK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id o5so6434948wrn.13
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=1Fk9K60Z+xZywbCquexP0fdmliNvHGJ4Iii5IJn/DDU=;
        b=S7YxW2dKpiq7BARzijdjjUe+5za2w5opCCHPAwD8cAQhYLP8X5p0QKDLg42N6ZduDk
         tQcUi6bpM7MUmL5km/Z26InWkVqHnQEpOobV2wLBBvO7ffY4j0g97fW2p5Ij96euzyZP
         Rg2T7zGerUJuGLLHCTujk4OElDXskeCPJIHaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1Fk9K60Z+xZywbCquexP0fdmliNvHGJ4Iii5IJn/DDU=;
        b=T9TJK9KmUTcZAM+VNKiCJK0riX12aj3EwgsrUSFF81TvwAmuB1d1Z1mDjHYsDMC6gs
         Fm+Yhxu5//W2DXtZKZ3Nuo4PL00k4XTv7Ozbf85qZB3oTrhYEJpWqWTYWSf8rL0PCw4w
         1dbKWk3JOKjhXqTUJkAGq27PHIxLL3NQBqu9VZnThnZdOYiX73Yhq/E7B9O2AaT+vFVB
         PN4UTuivTKJhRtQEWZZostQ4RkX8njvYecQLji7YyiNKBnVhoNQYVxNYwH6cqYho3G/J
         0sL8hq2kDT9reRMMZDNdE3g6I4F/l+oI/4AtL+f2jJLfiV0YPt/fyFQJl1N16p0pxAQo
         KQDQ==
X-Gm-Message-State: AOAM532eoKx8wdK45a/1PwIvmFDHOUTqylDoD210FP1zXPm9GnR8Cz7H
	prfH6rUDFQuJRm6Ot8Byz/SKqloVR5WJ4Q==
X-Google-Smtp-Source: ABdhPJwjXwtqa8E+1PrDCbZGs68OFKeWVgV2yusVzlJJ5HyqOE7M2MJJMg/DZoXyWggyfiio+utLAA==
X-Received: by 2002:a5d:40cd:: with SMTP id b13mr8706882wrq.297.1599740763049;
        Thu, 10 Sep 2020 05:26:03 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:02 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 11/41] run-config: Preface log output with auto.conf settings to aid debugging
Date: Thu, 10 Sep 2020 13:25:23 +0100
Message-Id: <20200910122553.2040430-11-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index 0097f97..b7540a5 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -121,6 +121,14 @@ def bitbakecmd(builddir, cmd, report, stepnum, logsuffix, oeenv=True):
     print("Running '%s' with output to %s" % (cmd, log))
     flush()
 
+    autoconf = builddir + "/conf/auto.conf"
+    if os.path.exists(autoconf):
+        with open(autoconf, "r") as inf, open(log, "a") as outf:
+            outf.write("auto.conf settings:\n")
+            for line in inf.readlines():
+                outf.write(line)
+            outf.write("\n")
+
     with subprocess.Popen(cmd, shell=True, cwd=builddir + "/..", stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=1) as p, open(log, 'ab') as f:
         for line in p.stdout:
             if not args.quietlogging:
-- 
2.25.1

