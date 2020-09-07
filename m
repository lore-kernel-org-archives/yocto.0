Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.6478.1599511844299346541
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EbzYuNXz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id a9so15225937wmm.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=3rccpC1EzC8LFXStVRoY+OB+kIhfOrPxACr4Xt4dLBY=;
        b=EbzYuNXzszlQeui/trnhRuCxeO4Hpx2+rgR9LFJpivRjsmY1QG0r0qvlgZ2+3jkVr8
         dKfDeg+MNqaMhGEnDAl/YJ1ZvrBCq5pyPVSq8cXIiAOzhe6bBxcR37x/0Af0as9z+WKV
         MsXy1WUbAbchhIazvjuZq1StbwiPZr+WYWEzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3rccpC1EzC8LFXStVRoY+OB+kIhfOrPxACr4Xt4dLBY=;
        b=Jod7fMxabo2eebOt3B5LQkw+8+OnAqgNQKTHQ7hXSnomwaFQxH13VyMhMSkklECwIW
         i3SHZ3cfcvSZxzQ9kmpjG58XuQb/qKJ67xiL4pepK35vWRsoaABYeyEquca46XVocP7O
         TlDJNjrTZkdfvG1zYXWgQvV72TlnmWv9qc2HyVGhgF9/A6pAmvzrvIhEWMJM4iyaGg/p
         zXHqU2Amj8XVdKDGZ8ht92aXRt2g9WsQQmt7TGKJENsjdppEtLbL1g0/X+wME+eqBJ5O
         sHApuQUhuNID+47LFyhI1+SKOyVbpteJ0kIFi6/XzoT7Vl/iTAI66R5eHu/XpBkzu94a
         QfUg==
X-Gm-Message-State: AOAM532Iomtcm7liaIu9YLzllfW+qA8uZm3bHyRRNBsuwFfzyadyYsvD
	tkpckHXbv/5VATlJ/fQ4phY5eF1DAsJaiA==
X-Google-Smtp-Source: ABdhPJy09MtjwGegql9EywCxcogQIDBayQOMcaof/AsvBs2hRAxWU3DBjvOVSX7VV2GBf71WbLmUXw==
X-Received: by 2002:a7b:cf36:: with SMTP id m22mr1073784wmg.51.1599511842616;
        Mon, 07 Sep 2020 13:50:42 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:42 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 09/32] scripts/run-config: Add support for local filesystem buildtools urls
Date: Mon,  7 Sep 2020 21:50:11 +0100
Message-Id: <20200907205034.1941516-10-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index 29d783e..9d8d48a 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -115,7 +115,10 @@ if bttarball:
             fileno = lf.fileno()
             fcntl.flock(fileno, fcntl.LOCK_EX)
             if not os.path.exists(btdlpath):
-                subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+                if bttarball.startswith("/"):
+                    subprocess.check_call(["cp", bttarball, btdlpath])
+                else:
+                    subprocess.check_call(["wget", "-O", btdlpath, bttarball])
                 os.chmod(btdlpath, 0o775)
         subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
     btenv = glob.glob(btdir + "/environment-setup*")
-- 
2.25.1

