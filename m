Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web12.21895.1599744653582736272
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CNXFoTAt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id a17so6721517wrn.6
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lspzHZltQnY7AxwQAtRtWBKuKnTlQcoKt0tA8Rxz72A=;
        b=CNXFoTAteQ6iROeGE9xYz6fdQO+m96Mi7HGY92D3AeaPtr/QGMGzhzVn/1Bz3ChYCz
         uIokzH70iXpGm8WbR15oVRgqdrRTgFrSxLthBPCpyvbu5RKZ2xVrM7V0MekvxFf25G+g
         x3dCA2axg1l6470VRTU2qMUctu00BzBsgdPGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lspzHZltQnY7AxwQAtRtWBKuKnTlQcoKt0tA8Rxz72A=;
        b=OCGKf/QmNj9OH9KCVdtFpyTgHq4MlPVkJwjpJiL0I+IrzkwtOh0zSe8sBFPOsKLPSv
         OmmU1QsCsmZGShU2/W1Sw1h07O45MhKso8ByaDtMGoFgbI8X4Z11N5GJLFptcaldWx4D
         Ak4K9oHqszEvzJCRN6kc3u9SG85HaPhCQq2BjA1/Qmi/LrC12tD1OmuCUC4A1SNgWmqe
         oQIGSl4JUBDw4kvUn10Ukd1IDXzLg0Prx2mJFlrERHIKDV5nQEx/urAmZOwo0oryHHHi
         4HrRTthZS6PxMZQG0YKCwF2hgTLE2KlTaM9KObZFXYUEQYbf6Kfqvb/6FF3GW6hdq6Ad
         fskg==
X-Gm-Message-State: AOAM530aN5Ykh8AJ5DWMDl6mYEYgUpZsl2blPocu2adxwyp+hpGcFjlb
	wpa0f0xH5l6Yfka2tIrD1WOsRCgQbmObTw==
X-Google-Smtp-Source: ABdhPJxTsgwmsMep6sQHpdb3AgfmIZDLTXYAjTqgYaXgDZx5hFIWdof48dZAMQrFW879WVjmDBklLA==
X-Received: by 2002:adf:dd0e:: with SMTP id a14mr8983511wrm.151.1599744651726;
        Thu, 10 Sep 2020 06:30:51 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:50 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Thomas Goodwin <btgoodwin@geontech.com>
Subject: [PATCH][autobuilder-helper][thud 16/40] shared-repo-unpack: suppressing exception, returning exit code
Date: Thu, 10 Sep 2020 14:30:11 +0100
Message-Id: <20200910133035.2044355-16-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Goodwin <btgoodwin@geontech.com>

The preceeding errors that would be shown should be enough to
identify the problem since it would have been a problem
running bitbake-layers add-layer, indicating a misconfiguration
of config.json.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/shared-repo-unpack | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index 92f0ccf..4a2b1c9 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -61,4 +61,7 @@ for repo in sorted(repos.keys()):
         if args.publish_dir:
             utils.publishrepo(targetsubdir, repo, args.publish_dir)
 
-subprocess.check_call([scriptsdir + "/layer-config", args.abworkdir, args.target])
+try:
+    subprocess.check_call([scriptsdir + "/layer-config", args.abworkdir, args.target])
+except subprocess.CalledProcessError as e:
+    sys.exit(e.returncode)
-- 
2.25.1

