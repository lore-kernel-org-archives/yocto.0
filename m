Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.22161.1599744641988827343
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WxBRQvZk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id e16so6751394wrm.2
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6qkavGtxiq7ClKMTXxjzfnAuOS6taJmJ72ltvHtaqfQ=;
        b=WxBRQvZkC8CREciGTjF+KYDbnLR0KrCCrWE0OCEPZzsnyEiDa8e6m/fVHAm7+1V/bC
         wf3B0N92qllZu46HkxLmuKu4sbn6mKv6JGFvCPdHnu1KUcadVqtQrSjJ/GjmVeDCeSYJ
         DkdI00JexuIotEbiE4nvp0BdlnKKsa+nVDiiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6qkavGtxiq7ClKMTXxjzfnAuOS6taJmJ72ltvHtaqfQ=;
        b=p9XHam97L57b8Gn+xHez88uWzM1rRVvmojYOPiulxJ3kgxmd16H0365jMs6hghm8QL
         M6PAqaYqSdxJD894Ko8dNq16q8MxTUXj5G8zbWDwtEfupyWQgq6YsVO5wGUxaAOHzzb8
         DTSwv2KyHwY7I7HV2dihDcRd1NhFUZVIDn0rQX71oq+MMHWdHoTiNQiVU02/GnWEJ3yk
         ySA4ToHdXTdO5D3cGZ+jRFRJqSFMf6d4vbBoqoVEGMmXvdh38idwkSP3pDg7+xN+uInn
         8hVh4uW7ePDOCuz5/XXpgTzTV3zuqn8U+Jbo7Td5z8r/Oj99jmqEk49R7iUROizCIbWl
         i/nA==
X-Gm-Message-State: AOAM533AHLMDKfDx68oWhShtWrKRqK67ZmrSMJzqqOfB6f17ulaOmUOu
	4PdUaBSJxR3idMBhrdjkE2WYfDO3XxFk/Q==
X-Google-Smtp-Source: ABdhPJxB3SeWeRKtRplWGTD7wKFitJ8bh0OlByWbSHOrxootTU/bNFaZcJRDyyJBizEWoOEYsSl1Og==
X-Received: by 2002:a5d:40c7:: with SMTP id b7mr9083323wrq.300.1599744640207;
        Thu, 10 Sep 2020 06:30:40 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:39 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 05/40] scripts/send-qa-email: Handle older git clients
Date: Thu, 10 Sep 2020 14:30:00 +0100
Message-Id: <20200910133035.2044355-5-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send-qa-email | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index 38c951b..d2f4574 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -70,7 +70,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
                 subprocess.check_call(["git", "rev-parse", "--verify", basebranch], cwd=tempdir)
             except subprocess.CalledProcessError:
                 # Doesn't exist so base it off master
-                subprocess.check_call(["git", "branch", "master", basebranch], cwd=tempdir)
+                # some older hosts don't have git branch old new
+                subprocess.check_call(["git", "checkout", "master"], cwd=tempdir)
+                subprocess.check_call(["git", "branch", basebranch], cwd=tempdir)
+                subprocess.check_call(["git", "checkout", basebranch], cwd=tempdir)
                 extraopts = None
 
         subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
-- 
2.25.1

