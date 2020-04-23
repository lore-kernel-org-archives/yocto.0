Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6769.1587602647546148917
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 17:44:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=JaCsjUl7;
 spf=softfail (domain: sakoman.com, ip: 140.211.169.56, mailfrom: steve@sakoman.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69484E01A0B; Wed, 22 Apr 2020 17:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.173 listed in list.dnswl.org]
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA6CE01A0B
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 17:44:06 -0700 (PDT)
Received: by mail-pf1-f173.google.com with SMTP id 145so2020947pfw.13
        for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 17:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XDpKvCTmy+eFwXpY629OtDPkiQ+NHfMuZQqOnjrrCF0=;
        b=JaCsjUl78a3if4t05WulE/p2oVT5FUQr40gwgMw3QhvB2OHUpOPoTxwjq89j2zET7c
         IbeJe2FMC6f7WoNhjabuwtTqntcpzDo0wou/U3EXfV/CHWuiUlsloQNphe0UbGh5cIWd
         MgeUksKMEYDaehQ6ZOqTPGNjO2e+32x0sscELpnKvtHF1wAbZEsjdLw9HRAg7icaowrd
         5280pJuQDbGfhvE6W38VTsNA5ni7VdemNz0gzKkrAJDVNAhdtMgn+c1rdX+W6ipL99KE
         6BLM/XSOKT7BUKQuTC5+vOUhaIdbNR1xJaxM0EtSZSse1Phsq3KBvRFIvh59xGXhXElE
         uu6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XDpKvCTmy+eFwXpY629OtDPkiQ+NHfMuZQqOnjrrCF0=;
        b=L42JOVFKfdK+IdjHKkRg+H6UGE+FrL72EZZVVQ9ZTbYW7Ng8Xn2DVEKWqweKAUKXXI
         z+yXFHnqBahhqa10YC9cVnFf4XrGUukE87KGUtp5rDpgwkn7LKrOwzZ0C9eNMud4S9Yc
         CWIiRVfMGtoWAq3n3pYhsMJV9mg3f6iM6u/21LH6NHd2Oo7RDMEBZvuENPNFMmNFgoKr
         cAZv+PjVamMvbaJHGfhj2RUOSfe9TeDnYZo7uzaH6oZEllOqDw5aws3jwD7yn/yHGBi7
         us2eePaJJwX7TSXJQlt9TDa+kAs4HvNXbLDLmcj9R3lGrR97dzNJKzVoJXCX+Zq65XPI
         RoNw==
X-Gm-Message-State: AGi0PuY9wnXETWDe84SSADcWXizBa0fVBqeuN9/a3qDDleDzCC4f/jyD
	tXr738l9pmIgTJ0ujbsjOVWQ5OBTXr3twQ==
X-Google-Smtp-Source: APiQypI2lX0yaPO9ZhjtJ8qVVrWh1JSix8WyGSE1/xLnsW0/rpe/fzCEn2p333xu/WOqNaSk2quOOQ==
X-Received: by 2002:a63:ff49:: with SMTP id s9mr1705175pgk.46.1587602645897;
        Wed, 22 Apr 2020 17:44:05 -0700 (PDT)
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id v64sm736901pfb.20.2020.04.22.17.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 17:44:05 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH yocto-autobuilder-helper 2/2] scripts/send-qa-email: fix bug in git push logic for yocto-testresults
Date: Wed, 22 Apr 2020 14:43:44 -1000
Message-Id: <20200423004344.29216-2-steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200423004344.29216-1-steve@sakoman.com>
References: <20200423004344.29216-1-steve@sakoman.com>

We were mistakenly doing a force push if the branch was in either
BUILD_HISTORY_FORKPUSH or BUILD_HISTORY_DIRECTPUSH.

Now we force push for branches in BUILD_HISTORY_FORKPUSH, regular push
for branches in BUILD_HISTORY_DIRECTPUSH, and no push if the branch is
in neither list.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/send-qa-email | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index 205f6d1..b4d4cec 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -80,10 +80,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
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
2.17.1

