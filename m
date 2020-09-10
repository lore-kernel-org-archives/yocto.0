Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.22182.1599744666434371682
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=APYI9g/C;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id w5so6699405wrp.8
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OGe6VlAldnMd0nZYSaRlOjflDVmY1/RmRNZYhXHs+N4=;
        b=APYI9g/C3wOUR6T9B+ENIH2DWkPkX3MZKp/T8VHm2q0SyvHLiYxVjciAaFx0kM03K0
         MrJgOmduqZ6MulO2rFDgT5fkjv0eVJl/SZsAAGRYYrh3WNWBK8LTCC/Ye+5TDFNP9jNg
         poMToLr8T0gIqQA3hVVBdDyYAgCDhGRbVAack=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OGe6VlAldnMd0nZYSaRlOjflDVmY1/RmRNZYhXHs+N4=;
        b=Syu5hSmCR7Kp3Be7qtbfQFoztgGVXHbneasqsB0/tKDt8/u86AlcJTs1Vzhm846i7T
         Ux/N5gkdPUAxZC/cbWQcvq9sAQ95pNC+TQOZRVWCn2wlZdr+nD5pwRZTSBJOBlRnsnTU
         JBl9u2a1uGQN8dPwgipFcU4TUeX4YLA8uj+Dlu3cU7aEDtOwIcXJtgUUeXaILFQGrWKx
         pzCW6Aixz4FaOCFj5EQzj9+Qt2OD29eCkIkdKr5Sy8WE5fwVXcE7UWP4v6JGnJ559vDZ
         whFRy6dkTbk7RT8HR/P66aQQCrteMVaEwaqFh1xS7j5JEYcknigFPoTgJOxaSUqBN1jC
         9DwA==
X-Gm-Message-State: AOAM533d9O0M/YV4NfbNxjNxXyWzWW5m2v33hMtH6hyC0xvc6wzNZpnU
	8jj4hIaOjP6hmVYJZP3QySQWUvoGhGBcew==
X-Google-Smtp-Source: ABdhPJyFxQ+g7mgZl6pbhNNsizGIirGhViwF5HInA6H7ukNdo1bMDPasqo3t5w05+24lmm5KLqf4dQ==
X-Received: by 2002:a5d:6a42:: with SMTP id t2mr8581096wrw.425.1599744664623;
        Thu, 10 Sep 2020 06:31:04 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:04 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][thud 27/40] scripts/send-qa-email: fix bug in git push logic for yocto-testresults
Date: Thu, 10 Sep 2020 14:30:22 +0100
Message-Id: <20200910133035.2044355-27-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
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

