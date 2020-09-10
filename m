Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.20818.1599740774092021075
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CLwf3gTU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id z1so6495157wrt.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6wW1ccQrEhS8b3VeqGhWjvwMFicgfAYKLb6ReHayLpA=;
        b=CLwf3gTUPkywJxaM2BJS/CWDQKk1ScKR2KpcEQvw48dVgI+4GyQJP7DhhN0ZV+D5pj
         M9imSx8qobZvSWENU3MMrk0fOlp1jfXEApUwRXiBubK599biYMYwegizcG84HoGmoVm/
         AOR8J85I2cUGDfs2VeumRSFpQUmYu4yyWfj44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6wW1ccQrEhS8b3VeqGhWjvwMFicgfAYKLb6ReHayLpA=;
        b=cLWpqqFcoJgv8uNqNu8BNKjt9M9KmDVxM1fEYp8GAIyctcmZQpaMGFa+PR35DdjYby
         9kqQxXH8SWltKwjgk5bQ4Hp2k8pyXQzXF2pdgipq2yGQpg7iF+JyxZUuAQjzcjJAhC72
         T7vN6wGpWGOPNpyDleAnPlPXXaabu3zvgEGU/uWUHPEzpL1kfvoWAs8EbIDxPLSzaAIg
         B/pZi/E8TYr5yGNFz6IbD7mFMj17NEkgEAfNYBkz9GWvUL0CDyrXUaR9br3ghfMCyl1Q
         KYAm5TdImBqqhl3UwCXTJ25OuK27BonhAxRJqCyjoZxIqgx8MLGJM/g9PRRXnLBA0pU3
         0XcA==
X-Gm-Message-State: AOAM532gF8EbkTPkjr6O4XPlq7zlGOX7HO6BoQ8+z7xESfFYcsUb7NDZ
	ltGyoml01cCrumme5RmZWlR1UENWUt0e7w==
X-Google-Smtp-Source: ABdhPJw40Y5gFglCKg6ykL5CrJeYwTW4q2I93bCKkbUI0hHjkzvMVN7mMRI+nqVHX9Ov0fDiXUkoKA==
X-Received: by 2002:a5d:66c1:: with SMTP id k1mr8923426wrw.34.1599740771419;
        Thu, 10 Sep 2020 05:26:11 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:11 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 19/41] scripts/run-config: Add support for local filesystem buildtools urls
Date: Thu, 10 Sep 2020 13:25:31 +0100
Message-Id: <20200910122553.2040430-19-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

