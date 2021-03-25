Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web11.1361.1616632829707144638
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=H4k9aYKS;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.180, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f180.google.com with SMTP id l76so95355pga.6
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=evCyxrMO9CeeU+byyVYu6K06RqUfjL9OqYBXpYK6bD4=;
        b=H4k9aYKSPClh6dr68EuPDhPZkqpJKF2Y6Twe8CsrwTBvdGbSfiMXfzH1lC/Rmjzdcj
         EEY9jaXfCy9UUJntOQUqBHlH8oAUO47brMO31nUcXBB/Z81ch/wPck4zjHrenjXLiz9T
         iwe3jT9zR8HkyHZG5XCSyPy1CqRxZaKL/8A/a9IyHjiZ/186W/JpF3btUdP9LE+ONjHx
         ps1oRzRxZp95Q6/UYXYDL2ciqmB/BwewejO293YgFIWTSfRXwhbWr7QDabIl5Ecx3Dtc
         98Zz2TbELbQQ//ZxSOqEhbe4SFuL11pR6te7WGuYTro73w76QKsrsHl5vWUYMs6oMTKS
         cumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=evCyxrMO9CeeU+byyVYu6K06RqUfjL9OqYBXpYK6bD4=;
        b=OEgkJzjRU8a8xSlU3PR9WKMKblzRDi45+8JPLY7rUwEquqrV6NMvE+TfL9bKvjBo1S
         /17Qq49zSN1p6uE/xfb3lYF1QbAhjXuhqftUYMFw886UhIC/azZOYZaZYHpBiSr3XQ3t
         CJXmX/uNXdg+1iANbIa5CMpR4CC52GWFkCSUvJrPpkcGeMD5NIyZFmp130+dWPJ3YKlf
         aEtbfGeQX+Q/vMnTyD44WVMZaFXZ1//0tcaitDJPnq3h2Ut9oOOFtVhvAlMRj4swsbCf
         JRnVPwQ7shOFWO5qEHxFyhk0MFFvn1oce/r+LqOLBmLo8sxHmfDWN6I/KatcBOLziPsN
         cRUw==
X-Gm-Message-State: AOAM531Bik6wIJ+Cy9RJu3z1nTuizvkTHAwCT5d6Gu0Ze29wolycT880
	blJGKK5ltXtMqn8IfAjQtiw7dTnVheupsfVZ
X-Google-Smtp-Source: ABdhPJxQa3U83zgO6IdR5h+DRMS4qVp4mNh8KjBHniNqPO1DnBvFy6DnsHwuNgh72FCQYaVeK5fHdw==
X-Received: by 2002:a65:4344:: with SMTP id k4mr5257789pgq.48.1616632828804;
        Wed, 24 Mar 2021 17:40:28 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:28 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 16/23] scripts/shared-repo-unpack: Add flush call to update the output more regularly before buildtools
Date: Wed, 24 Mar 2021 14:39:25 -1000
Message-Id: <cca9f32401c8f3891426da9cdf23cd048e980c9b.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 6e2825564c0b7b69f56e6e589ec15a1cebdb26d1)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/shared-repo-unpack | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index 7dc250c..f08efa8 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -60,6 +60,7 @@ for repo in sorted(repos.keys()):
         utils.fetchgitrepo(targetsubdir, repo, repos[repo], stashdir)
         if args.publish_dir:
             utils.publishrepo(targetsubdir, repo, args.publish_dir)
+    utils.flush()
 
 utils.setup_buildtools_tarball(ourconfig, args.workername, args.abworkdir + "/buildtools")
 
-- 
2.25.1

