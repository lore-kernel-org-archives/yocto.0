Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web12.20509.1599740779180467091
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MuE8T2NG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id x23so5447057wmi.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OGe6VlAldnMd0nZYSaRlOjflDVmY1/RmRNZYhXHs+N4=;
        b=MuE8T2NGxvG7OFpIPcy9f3JnY3S0U9BMCxj6SZrQDOtEFG23HlCa/6aj3qq0J1AJXl
         LHXanmwAwvhzsF96L+axUm41YCR8AIEZuqLGx7ksA+D3b3ax3RxE+R+LoI4AiKZvVpHQ
         AcnLFJkOVBkmo66X5Zf8/OsN/w1Re1+sZnUEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OGe6VlAldnMd0nZYSaRlOjflDVmY1/RmRNZYhXHs+N4=;
        b=Ov2F0HU/H1FFyubttzuJTZHkutaD8sPeQuYAu2KTTuj9/MjzhlbXAgVLTFrSc9vh6q
         rQO84QZU3rLj9AEW7envxF01I7NmW0+gpo7g/GT79IIXMBmn1CuerU1TtJorLkEDw8rE
         X3skgZqNswHIkevpQdWHyzJp4q84plBgXyyMhmX0DVLNOGjf6wkFUMnodHMz6OPTzbX3
         CtUHOdSr4O6CxmWFn+t8J6G4kuEukjUVwXCb6Q4CXDkPNWrJh/AZ7+8mq6ZXpJB2PqM4
         S+b72ptxGpQmRWLT2W+xAdCHByyMXdIk3mzNrL5zMSKNPZXA5fvXAD6qhY+x/DcMKBKY
         F6XQ==
X-Gm-Message-State: AOAM530NukXwSi3orR30tMxnB+Ul9frVNU0JGEBtIIysLfRnz4rXE1XL
	ypa6QUt/Zisod05najZ8FCpoYT6/chEoPQ==
X-Google-Smtp-Source: ABdhPJyouCUPFjjdNX/ClG4D3LzbbHDtmHITXaYqTn4J3KE+4gLgwQIMkNyI3yk9C1MWB4isyf85NA==
X-Received: by 2002:a1c:9a8c:: with SMTP id c134mr7906864wme.136.1599740777320;
        Thu, 10 Sep 2020 05:26:17 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:16 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][warrior 25/41] scripts/send-qa-email: fix bug in git push logic for yocto-testresults
Date: Thu, 10 Sep 2020 13:25:37 +0100
Message-Id: <20200910122553.2040430-25-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Steve Sakoman <steve@sakoman.com>

We were mistakenly doing a force push if the branch was in either
BUILD_HISTORY_FORKPUSH or BUILD_HISTORY_DIRECTPUSH.

Now we force push for branches in BUILD_HISTORY_FORKPUSH, regular push
for branches in BUILD_HISTORY_DIRECTPUSH, and no push if the branch is
in neither list.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send-qa-email | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index 7dbc290..a265a7c 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -77,10 +77,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
                 extraopts = None
 
         subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
-        if basebranch:
+        if comparebranch:
             subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
             subprocess.check_call(["git", "push", "--tags", "--force"], cwd=tempdir)
-        else:
+        elif basebranch:
             subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
             subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
 
-- 
2.25.1

