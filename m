Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web12.20495.1599740761593759128
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AfHbULUp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id j2so6485299wrx.7
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=3hORpMkrLCvxUEMxvhhqtvsm+lIY23cHeJgzTVjPsKU=;
        b=AfHbULUpspN/ViEea+fqtmJJTQAknu8YPKCojf72nCIUSkdyJInSZLMKQTl5Aru6xb
         3/SzCvrVA3az+hqCetTIycKKPzTAkKCGjyPI4HOEDMBFXIhpjjvF2byBKaQjJ/s0bxKP
         64bZYeZw3oOq7SKXiRNWDwtG/VhtVA2/NPTuw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3hORpMkrLCvxUEMxvhhqtvsm+lIY23cHeJgzTVjPsKU=;
        b=djsE4IPA9AwlvXC2/Gplucg4GHczxI0/B3n0ciSHO5hY8bV3lR+H6ao5NQLIcB0lO1
         Wi4WXh900AwNCqwF+vFGh+GUSUmmu95PxULh2580bjtOwEGNaLwaOaFNGMKIfvrjSks7
         8nckDhKWS/w2tIc3lABLZ/qt9wtXBKVqLeyzeJXfjfyfEWfoXdCkingWvD3+tGLK0bsR
         CtLN2boRUKAqDWvQzkTJTW1SEyfS6IGUU6SSnwzyGJ5XLGEDZ+TYE7e6EnD2aerzidxe
         o4lha4ufnWCuLjeIZfVDIohcS+zZDH7NFqVy+4BA7qyoKjua5HiiIWuFbKOxJTszRQyv
         ABqQ==
X-Gm-Message-State: AOAM530oLBRcxPB3cP9KdUczs2p7fDZOH35F8CwYR7TzvChsr7VpZPbq
	YkFhD5vLvFBnIUFOrtG8H/y8FsdupuKxNQ==
X-Google-Smtp-Source: ABdhPJzD8tyyFygyq23XpJeuCqt3wkYCQdig46AE+jYwCgXy2exJ6XfM9LXW0TeJOkEmuLC15DfAqg==
X-Received: by 2002:adf:f4c6:: with SMTP id h6mr8581502wrp.310.1599740759886;
        Thu, 10 Sep 2020 05:25:59 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:25:59 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 07/41] prepare-shared-repos: UAllow shell globing to fix failure
Date: Thu, 10 Sep 2020 13:25:19 +0100
Message-Id: <20200910122553.2040430-7-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/prepare-shared-repos | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 9ed0772..2a2b343 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,4 +39,4 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/tmp") as temp
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
-    subprocess.check_call(["rsync", "-a", tempdir + "/*", args.sharedsrcdir])
+    subprocess.check_call(["rsync", "-a", tempdir + "/*", args.sharedsrcdir], shell=True)
-- 
2.25.1

