Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.22151.1599744662067045488
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iPYvn6MC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id k15so6694713wrn.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6wW1ccQrEhS8b3VeqGhWjvwMFicgfAYKLb6ReHayLpA=;
        b=iPYvn6MC2fXwmkT23P36Q9YznxJhhicmRah3TzW5n405xv44FC3HiE838NUvQEQHkd
         4M3z7zBZH+XWv6X0eVZHA99niBn82xYKH4q0GZRmKEYxs2CuTkpLw1UYyKSYDkBj9fIP
         zROYV18fuoIqEqhKygTFEeHz8n5CzwvcCZfwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6wW1ccQrEhS8b3VeqGhWjvwMFicgfAYKLb6ReHayLpA=;
        b=ZuHaQuAjfNazjSyDvSxLeleWfNzYLnW2o+elsiV47RF17kLm0pEdOi1youvtHUQDQG
         /4/TdHRcyVWHVGY9u8sT3+CQHMJ9hIdbXwLlfOxaatFlP3ihD9Wj801X8wv5+luGCzjK
         9T0xf4oarbGzfxmIgjUdVB5HhSCUnu2GvbTE/c+SQJiGajODffbM0KRIfNZfHQVLc/ZR
         lK6fqzb9zpoB7h+C1q6amXctfk3bTx9QHGQQnB/FGJQSyccY7cVmh5cYEvdRgw7P00Cf
         0SK9s0CJ9IEFDdahlGQgGiVHEeRNUl1z7arWbNzt6tkWJyhyRF6/qN3ZzKntZaIeSBUS
         INVw==
X-Gm-Message-State: AOAM531EM0AI7GXhs2x737njYKZVxR++K9CAmMGma7hYj6MLmqDeNDUc
	CamhhVBRMfHqVgd3OM9CthQbbAqw/9olIw==
X-Google-Smtp-Source: ABdhPJwXo832qSBahfmLmb3kCEhePEmAAMblpr+97eN0qUHw7YvcirOub7cWqDtnnfSYCtz0y0EAOA==
X-Received: by 2002:a5d:62c2:: with SMTP id o2mr8836704wrv.418.1599744660332;
        Thu, 10 Sep 2020 06:31:00 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:59 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 23/40] scripts/run-config: Add support for local filesystem buildtools urls
Date: Thu, 10 Sep 2020 14:30:18 +0100
Message-Id: <20200910133035.2044355-23-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index b4f1d58..d4ff6b3 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -103,7 +103,10 @@ if bttarball:
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

