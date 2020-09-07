Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web12.6484.1599511852141995109
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ULKBH8SU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id e17so15380473wme.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=dcYdLFiOYJ98Bc1v0o/6Yty3kpdBH7tPPx/HHsdTRTA=;
        b=ULKBH8SU+vcg0CZwbzQI7fZ2u+gOjIpEUr1PEcUs0jSiRrM1d1YcLDBZeS0JcQ0gSy
         CcP1B3CBo5JA5kyIqUfuDyPIsvyb6C+kRd517jPQ6Ev9IpxxMDU1aunE9If5fyqDj4co
         lGIoX0brVd0mhkH+vrUvMUYM4NIy6ICmGBpa8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dcYdLFiOYJ98Bc1v0o/6Yty3kpdBH7tPPx/HHsdTRTA=;
        b=UnRwNgKENS61dYgWLDNCJOHr1/E+IeslFR8waKgOJYaVcIWr6J5ASFMcjqMmucigrg
         NrXJ8j1bvq0cbN/M8GbS2sjUxBqOMduwX04LYeWsjuqLfpIcI4CYEW4bDhmIuigq4zbB
         2uLE+ZcN1FRn/hpu94b+6KV70M+VZcZEsH5gbT1P4BQ8Zc5Bl3kRz2SwFI/bCGqTOusC
         1qaHoHgIbSVscnIis3dpoXKngC3Auzf4Ua1EwkFwnhKEpI39zlNSyuHkGhzflAcpgMk+
         5SkiYGk8qk1j9ic8TP6lZA6DXPcuCPccGERogYv8TxBKBwzoR0y96O/twVOm2sO5DvYm
         Z5lw==
X-Gm-Message-State: AOAM530ajxt4R2cHa8E9+9/jRcKEJg+Eq6KP0unst8SJHvNGPVcHuMDW
	uvRDz4O++QY1SII9Li+KgmU6q0AQp5KXRw==
X-Google-Smtp-Source: ABdhPJyhbo3+CIZxwCjXQxvpln1spEH/VmUbkPlJNQkrJN6rYwyJDJEPtcGMUNQWdtKQhRrrB9GyUg==
X-Received: by 2002:a1c:8195:: with SMTP id c143mr1035990wmd.85.1599511850409;
        Mon, 07 Sep 2020 13:50:50 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:49 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 16/32] scripts/run-config: Add extra debug about buildtools to show when active
Date: Mon,  7 Sep 2020 21:50:18 +0100
Message-Id: <20200907205034.1941516-17-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index 2ad38e2..45a417f 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -108,6 +108,7 @@ if bttarball:
     btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
+        print("Extracting buildtools %s" % bttarball)
         btlock = btdlpath + ".lock"
         if not os.path.exists(os.path.dirname(btdlpath)):
             os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
@@ -128,6 +129,7 @@ if bttarball:
                 pass
         subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
     btenv = glob.glob(btdir + "/environment-setup*")
+    print("Using buildtools %s" % btenv)
     # We either parse or wrap all our execution calls, rock and a hard place :(
     with open(btenv[0], "r") as f:
         for line in f.readlines():
-- 
2.25.1

