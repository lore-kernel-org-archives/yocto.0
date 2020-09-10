Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.22183.1599744667423510881
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PHSNPwXp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id z1so6729900wrt.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=GAb7yE/Ur0WVdNVw9l2b4jXdAmbSseEvvoduLJKa7mk=;
        b=PHSNPwXpBI289MsFucD5B8+n5tHQmjvTqvWlUmmnNO8pSgKNbPPVOyKzOS0xhkTYa1
         Pm08YOzDhwmZ3+609HNfS3bZjyEC1TNdxd2v7sUkvW/gOi39YCmCMrlavHS3WYmiAUBm
         vAwfp9OsJv3XNA/vXCYPsTKMwql36temv/uNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GAb7yE/Ur0WVdNVw9l2b4jXdAmbSseEvvoduLJKa7mk=;
        b=TyRToa/aJ2Q7V4niu9DIkMVAJNRSqS1LlVz3zA5Rr+6U+TT2siw/GC5lch61pgZSKV
         GlFGWfoNFT9fdFmIZ9+xgYoFYPH+JR5YwqiKiBbznr4vrIPhHmXM6v6N5Jc4TX0O90o9
         6OH7WsxZibmpNuJmSw2ZRFgbb4LZpd0KwlKLt2p7bnwT7ysCrwRKC7q276fzRS9R7PPY
         0/3lr/FXqHgy9xf9UfD3ybSV7o3FyWI5L+8cko6nunNbQ/o/qjTrieh/jeDJV2kS0dMQ
         PoH5Uxacfvxq2/nlftovd+Z5tIUg3WOjHlgKffjCR2rrZ6PL1kNQDx0JU280n8aOzo9h
         3SRg==
X-Gm-Message-State: AOAM533U8i1FDGSk763Z0MMCfwZrHovbGDpkS0H0E0hLblyn7pktum9K
	eP7cND/nJ8SOWPnZes44Ly9HjCLm9Ts0Og==
X-Google-Smtp-Source: ABdhPJw2YkRMYuCehGzwjeH6fVo4e0fK9/xolIys8zEI5XsaNlkFon8q03kK/OeDNVY+yw7l40ZM/w==
X-Received: by 2002:adf:dd0e:: with SMTP id a14mr8984621wrm.151.1599744665730;
        Thu, 10 Sep 2020 06:31:05 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:05 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 28/40] scripts/run-config: Add extra debug about buildtools to show when active
Date: Thu, 10 Sep 2020 14:30:23 +0100
Message-Id: <20200910133035.2044355-28-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index 4d795b9..54d74dc 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -96,6 +96,7 @@ if bttarball:
     btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
+        print("Extracting buildtools %s" % bttarball)
         btlock = btdlpath + ".lock"
         if not os.path.exists(os.path.dirname(btdlpath)):
             os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
@@ -116,6 +117,7 @@ if bttarball:
                 pass
         subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
     btenv = glob.glob(btdir + "/environment-setup*")
+    print("Using buildtools %s" % btenv)
     # We either parse or wrap all our execution calls, rock and a hard place :(
     with open(btenv[0], "r") as f:
         for line in f.readlines():
-- 
2.25.1

