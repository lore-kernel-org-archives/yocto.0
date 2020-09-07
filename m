Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web12.6482.1599511851109841152
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=huesG0y2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id e16so16962190wrm.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OGe6VlAldnMd0nZYSaRlOjflDVmY1/RmRNZYhXHs+N4=;
        b=huesG0y2H4BFEv37jgkfvDRfcLIvMwnXmI1b4lfOQqkvfiZd7qbi/+AZPTUQiQOhaI
         jN8s/LA4JthJakvl1my5jIae/l9cF2bekCpUy0p+mmfuWqzQvDzYA+e3L/N4ykyQRaKD
         i+Cz8zft69p3m52KyXBtFYCIWM2B+JgRt3QTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OGe6VlAldnMd0nZYSaRlOjflDVmY1/RmRNZYhXHs+N4=;
        b=Ab4Mt2sjpgDI6SpKgpjsAI4KduvPup9JzjFkWremtS656HV25icqPmFvUSKPAYsVbI
         KGxizNjro9En4HypaOk2kSZ9ytB4yyewS1Ln8lYqBLUesCwIQtWhs/K1/h0VMVdlFT8c
         qjSQCtCXyhUaVr1TEqo1JR85jGOXRIfcL5PTVtWdaqUvnRJnJ9nw6oVYUWGWntz/YbID
         K3wRRJXS1B+UKyBbDdbKPJv2mSKOV71ADj1vhmUWeJdYQSpwGwOysT69ieMeFFd4wwvL
         F6w5MjSGDSxpk4+jzPSN58OpfAiAPYyJXodDimFli9gvaG9R9w1j8VxmAsvk+5F0SQjY
         vhPg==
X-Gm-Message-State: AOAM531aa1aDIrR7fU14FW20axEUEezW113UxIAI0Mb16yUmfJg/9Qax
	vGh1rEIwqXuxtA3JDKfuuA0AZvP+AjcMjA==
X-Google-Smtp-Source: ABdhPJwZeDdJTfoqcuE/PYFLYNetHYq0x/imNRONIt4HiFJLfG9gGTVFf/2vEtAnS1laWFlN+Iz1pQ==
X-Received: by 2002:a5d:460c:: with SMTP id t12mr23466952wrq.225.1599511849395;
        Mon, 07 Sep 2020 13:50:49 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:48 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][zeus 15/32] scripts/send-qa-email: fix bug in git push logic for yocto-testresults
Date: Mon,  7 Sep 2020 21:50:17 +0100
Message-Id: <20200907205034.1941516-16-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
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

