Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.22167.1599744655401349759
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AOXVP86q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id m6so6758472wrn.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=1Fk9K60Z+xZywbCquexP0fdmliNvHGJ4Iii5IJn/DDU=;
        b=AOXVP86q5Envwy01ZC5QVEKyz7DGcjJvtQLAM7UEqVXLOv2QcHU4RLSKFafN1BbhsS
         WOm4X4Bzcd5IUIpqVFnxlq2Vtukqxwp2F08MrZO2TMzGD+7AeUAAu0V4/+s9Ok8Kndml
         BlvOfTPluVn/KDoYAzJOVT0S+fLMJ/6hXnqQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1Fk9K60Z+xZywbCquexP0fdmliNvHGJ4Iii5IJn/DDU=;
        b=ryFPg/NTS/Yp12Ko+OKeCvtfy/Mo/a22dFL34FQNE5mhUhGD7NRQlNrZazKVircNEa
         BNWbWhPiOmLVGPLWnrSwvFHBRTgmretWNkmatPHlpxx72BiW7U4wvqMWjP0bzASdVsNB
         NKDx37ynq0ERJYHGiBZoGIJgnaiN28dy9Ej+FLA+C0f9xrx3DdcS8CPV7RG8pDZz1nUu
         7q2GUwNQ+ruc7adqQI6EtOekZsEn1aq1CNoJM5rIRNH++dy7lhxYnk3Dqk+hakRdh18G
         QI2LfzXjSnZYPxD0bhLPtcWT8A26pw3MF2HBmYRWgzO5OJohWAn662iDjjpjtRsxBcN+
         PDGw==
X-Gm-Message-State: AOAM533sPsDMmBhTvgFNoVCQOizksGqr031ZXEoiY98UtvN676CI3fYs
	C5Q9DrLCGPQp8dAHNeGdivbtkOgjbL9U4A==
X-Google-Smtp-Source: ABdhPJzf0riOSlpYMT+caSVMVG9jGJYf6Dkf467cLTSjqN6Q55qOJSTRYhOO5cPgr2wnouGNZw8r7g==
X-Received: by 2002:adf:f58b:: with SMTP id f11mr9073369wro.250.1599744653464;
        Thu, 10 Sep 2020 06:30:53 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:52 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 17/40] run-config: Preface log output with auto.conf settings to aid debugging
Date: Thu, 10 Sep 2020 14:30:12 +0100
Message-Id: <20200910133035.2044355-17-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
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

