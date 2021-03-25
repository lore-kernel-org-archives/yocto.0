Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.1567.1616688223471215116
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=llyDlEzk;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.42, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f42.google.com with SMTP id cl21-20020a17090af695b02900c61ac0f0e9so4295296pjb.1
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=evCyxrMO9CeeU+byyVYu6K06RqUfjL9OqYBXpYK6bD4=;
        b=llyDlEzkEs2mYtEJaNdqhjwhRa1JzqjPdW5jMiq07sNqCLlluhud2qZWlx/MGX+/ho
         hPozGo+ijWGvYAYz6wEG4NwaxuBmSbSwU22CcIczs0yYUHZfHP46PZBkd0ODXXju1En8
         5ipV5H+vCvAVqoofRDBZayr1gGbN6RhlkLHxqJNcAlQUi+oJstsmz8jLxEqCSme/GG7b
         1HAoXVoec0qf9rp37QivqU8A9yFFwH7hm/tnCwbazz/IDXOqtuNYgvnFYTfrTaGBuxkJ
         hnBbsz7MrBSmj0keA5CyDUvsZ2wrVf+4fUoO+HkLOyds1zBQ+aybYSYU0Oh3++Ga0tY9
         H+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=evCyxrMO9CeeU+byyVYu6K06RqUfjL9OqYBXpYK6bD4=;
        b=CWLvu6PCSPDgb9RSAFWtP8nGdmD3rdFah4VHvufH59MdSFD9ZDoRfKsG4/H+qSxBTc
         OVu84+9b46/ZbnXDuKkm311XwCrEo+Z5YvQ2vrr2HvvkEVufSzoIN9cQBA8VWZsHsB/7
         tvp/PHRMtqLybxrDgISnNFVCtwUZNlA58Ig2pBsSGcR4RlosXBm1fk5ypXtgWAzroAZm
         1c7i+WONhl0zfK0rCg0kl14mmCW5S8PRvY8/O48/c5bm3+7psOGWKqvpg8HFpzVLz6WB
         O0PW7AMkhFXLxndVFp7kk1aaxLRrkpo2gfnbz0T6rIDPp7L5khUg/TROf/qC8ZQ64DQM
         lV1Q==
X-Gm-Message-State: AOAM530hze8xkF+F8AanLV9vaAvBLvCco+liR+jvJeNFt1gTLVkm1pWY
	WzRED5Xw7VKoC6z+cTtTjsCYICosd/Bb+Edo
X-Google-Smtp-Source: ABdhPJzLBt8BoxfS03tn/VYiYnDIqZYTzhbMl31SXC2FyWVVjA2V4CFcp1JZAd2qVQaBt4Uy1HeOIA==
X-Received: by 2002:a17:90a:7061:: with SMTP id f88mr9604755pjk.56.1616688222578;
        Thu, 25 Mar 2021 09:03:42 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:42 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 09/15] scripts/shared-repo-unpack: Add flush call to update the output more regularly before buildtools
Date: Thu, 25 Mar 2021 06:02:15 -1000
Message-Id: <42db0efd1bcd63edf9ba130504d1638f77a3254d.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
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

