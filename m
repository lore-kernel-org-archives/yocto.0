Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.22179.1599744664182071455
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BaA3OpyL;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id k15so6694860wrn.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XVlAzCPl1iuiVRH0pewS6nLGu0RC0pK9g1lhhqIeVuw=;
        b=BaA3OpyLnRBjUZDgDrkv4vXtjq/c0Kd8UK8Bsh8mX3eDSLEMXAUGXkduzBoKkKgIlu
         KyvWD22nh2vt0TA9Kj1AP7k6CHRUFcgz5fv2vgMbg7PZYMHN3O8CsBP4P/33i973woD6
         fTbiAboh9l95yx4PoHNTRGm88Kc+ppv1HWYZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XVlAzCPl1iuiVRH0pewS6nLGu0RC0pK9g1lhhqIeVuw=;
        b=qohGa1DrI7t2+S2/fgw/eN8rlEa5lncifKGa3FhXCyWPp/kkpTzben4J8EQeoTz7WG
         HIlznYoKeu5HG27jS2juwgaxVxH2LKR/4XBWRf2MRkf+/R0Mg/Mp/qZE+gHW4gJT+zly
         BvVgAnaqXuIlwRhSzpUzxkP7bj83Hcga/hNul10rhUE2UqmWCBPP58ZqK0PKC/CraxYi
         O4oltGm8WQUkaLwSOv4wuztwdvx6VX1ueh+fJ2YrbO0Hi9p02oXvA/LQGx9LFSZwnvGG
         Bw8WiFsGoztbViwotHMpZL8KpYQ32byY61BtSAbL67nThIqPTOAIk5bWXgTGxKbU3OiP
         wvEA==
X-Gm-Message-State: AOAM530UYS8l+b929gvtop5hEk7GQJTlClXL+j+Yr3XLqsWIcvaMpfKj
	rZm6s49B6a9vzhk3Abaek3d2yC38jCFJ6Q==
X-Google-Smtp-Source: ABdhPJy6sNDCPpXXk7B8yQVgpxFToAwS6t9VZPxKPWZqBDIrvWRDDLdIQEPinZ6gse5tig8vswfLuQ==
X-Received: by 2002:adf:e6c2:: with SMTP id y2mr9703539wrm.117.1599744662470;
        Thu, 10 Sep 2020 06:31:02 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:02 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 25/40] run-config: Fix lockfile loop handling
Date: Thu, 10 Sep 2020 14:30:20 +0100
Message-Id: <20200910133035.2044355-25-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/run-config b/scripts/run-config
index 55287c3..4d795b9 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -110,6 +110,7 @@ if bttarball:
                         else:
                             subprocess.check_call(["wget", "-O", btdlpath, bttarball])
                         os.chmod(btdlpath, 0o775)
+                break
             except OSError:
                 # We raced with someone else, try again
                 pass
-- 
2.25.1

