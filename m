Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.20827.1599740786782066026
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ja/tWaKg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id c19so1784659wmd.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e6663a0Lc6N/1A37W8vWhJJVGRegv9h4C8GklLuEBVg=;
        b=Ja/tWaKguwNIR2zYNy3K0xbeaOanqn8uubzula6NE77mAdcrJu1Pp6PLAmmzPulolr
         7Dwavj0FlypuA/ihEm+O7vRn+zx3INo+ptoUj/qgMmTz4bopVmUkSwQE3Mq7+0pjO4TO
         Swn/mLPu4tdwqQF0n+LSb6UqLvSxVP95IwcZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e6663a0Lc6N/1A37W8vWhJJVGRegv9h4C8GklLuEBVg=;
        b=cpfQuFBpwSk02Y9eJ8awsozeKFO2aB4x/FHzgMFlwAe68S+i7y/O1cayTGFy2U8kKe
         WiehRm9fmAKx4MMwPxTY22HEJXg8xAOmZPmzHA/z9KkHoy36bj4Ztr08NUp2QNnlC0av
         SVx3ftYnd0tkyQAliLPlp6m/O5o8t9klR74qL5QD5JV+5WJbi2E8k7xV5c+xshgUC0t2
         GqZ1ngoKx2qjvTpXxnkMN2N0KsBJPK9rk+yphEDz/TUTZiiCPPF7ikD88t6HMA4DdWs6
         xvAQz3So1/H5GMZQHQu/1gYYFIXy9l3E9M6LJCnSU1oRAshKcf4iMRYpummY8mM7GYE/
         9OmQ==
X-Gm-Message-State: AOAM533aGx7G5y5oKy3VyinboTPW91PNxyQsXNFQAPlCFiWaaCRanX5G
	+VWJf3eEuR5iLBgUnIFanSuCsMdkGkbhXw==
X-Google-Smtp-Source: ABdhPJyl1elekbofanvOEdgrAhTivrO2IsBoys2NzX/zv3m/0AIGI/UP5heG0PrQ+wGilztl8Xdgug==
X-Received: by 2002:a1c:4303:: with SMTP id q3mr8219299wma.158.1599740785018;
        Thu, 10 Sep 2020 05:26:25 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:24 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Vineela <vineela.tummalapalli@intel.com>,
	Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][warrior 33/41] scripts/utils.py: Convert md5sum to sha256sum for layer tarballs
Date: Thu, 10 Sep 2020 13:25:45 +0100
Message-Id: <20200910122553.2040430-33-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vineela <vineela.tummalapalli@intel.com>

Signed-off-by: Vineela Tummalapalli <vineela.tummalapalli@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 3aefa5a763125c760813a8f8434c574ecd3ca99b)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index d7b9ae7..ec43832 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -251,7 +251,7 @@ def publishrepo(clonedir, repo, publishdir):
     revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=sharedrepo).decode('utf-8').strip()
     archive_name = repo + "-" + revision + ".tar.bz2"
     subprocess.check_call("git archive --format=tar HEAD --prefix=" + repo + "/ | bzip2 -c > " + archive_name, shell=True, cwd=sharedrepo)
-    subprocess.check_call("md5sum " + archive_name + " >> " + archive_name + ".md5sum", shell=True, cwd=sharedrepo)
+    subprocess.check_call("sha256sum " + archive_name + " >> " + archive_name + ".sha256sum", shell=True, cwd=sharedrepo)
     mkdir(publishdir)
     subprocess.check_call("rsync -av " + archive_name + "* " + publishdir, shell=True, cwd=sharedrepo)
 
-- 
2.25.1

