Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.6471.1599511838846716692
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=h4DZ7b0Q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id x23so5454339wmi.3
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8hsH6wr1ViHaCqBQ1r6SRCXVttnmfCY3DNrIBV29gaY=;
        b=h4DZ7b0Qi/KqcH/5Xqs7UAK4E3rurtGYlQ/DXijANiJOtuROVST5ypEaN89UzXR+Qw
         gnwe/PUpOoYlTN/3MugS/OUmF1QXB/h1yfKiBVM2dL5E/bTSfvquXmEWcKRY7o1QneMO
         MNLCQ/dWX2xSCURe8HXuYeMCq8RIw3Q/z8foU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8hsH6wr1ViHaCqBQ1r6SRCXVttnmfCY3DNrIBV29gaY=;
        b=q1FUvHvkd/CjD/2CNc6p/9VdUOJJw0oK5EI8lArlG2kjvNGvwQiUJsXF6g5NeFK5XE
         8iDkuweryizj1iv/3bsXNE3PCgosY8AN58/Tx9nL8/Zzzf12RY7EvxN9qx9h8+9WakFZ
         Ytyr3JEcVG9kcc3c26+PI7u/5pwt0VNhoEYgVza0Jw/3Bn05A+HeR5tCAg5WfKXE11Iw
         2D89R87aHQqv3FdADdP0BYtQKxIcNOorq1ItP2JVcPeGD3cjqEwca5wkAuoG2U7W8vxW
         kZc8mai5H+pVU3rfnTDNVE8g88yxucdbDJw328rW27Sj8VeDISPU1ShKD+o85FbWtqFh
         dV6g==
X-Gm-Message-State: AOAM530uQZHNO8l8W2AvVDaq0WlXDIXhGH4Ptxwyd3TJfr5jzJe6ULUH
	oc5blvgiayMkBaO/A3kQLwf/INf9uILZHw==
X-Google-Smtp-Source: ABdhPJyTP3YkiCKxNMf9Xu6hoeyKxjrqLfPWIq0KR2qS4vai5udDLylhPCuqk2vvNI+n8jR7ZJbDQg==
X-Received: by 2002:a1c:9a57:: with SMTP id c84mr1032194wme.136.1599511836528;
        Mon, 07 Sep 2020 13:50:36 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:36 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 01/32] run-config: Preface log output with auto.conf settings to aid debugging
Date: Mon,  7 Sep 2020 21:50:03 +0100
Message-Id: <20200907205034.1941516-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index 3566d3b..a0e0204 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -133,6 +133,14 @@ def bitbakecmd(builddir, cmd, report, stepnum, logsuffix, oeenv=True):
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

