Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.4045.1578266317764837006
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tPR633Cm;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id n96so6797702pjc.3
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=3qKxLpBhdIyojXmyFPwkSK3/GcfAw9D6LgZxg+X3IhU=;
        b=tPR633CmRSXLveTaY0g0oKT1sHcSp7/PmEI3M3BgDlJ/rcE7ov44605hIMjmMbX7Hz
         4+wE0zyD8jCgeeLHwMOF/pHzW455f38xs9vRHAlVy5yNftS5iIHfyA8Gy2n3kCXjrblk
         3a7K0NnvzXcWM0yBvjERDNrg/i7S02LYglCF4OXuzgd8HQGBol+XiifTwLZVFQUFL4zQ
         vESAf015hb262NDB4CrFVodmeg+GNcS17tlJRP8FmATjPJh+7rHm3aIekHCDqLjuzOsW
         9a24jVzHjf3tjbF2OPChuniooWSepugnvmsFUiD+wor2/hChhXOBDyAAr0hIeVN+zcLY
         LgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=3qKxLpBhdIyojXmyFPwkSK3/GcfAw9D6LgZxg+X3IhU=;
        b=aBLTwSaGDU3+f15yJEnsIUeRydw6R22E4aMRY2+Gzc3rxZhcB2tpzK3WLXZ2mMY2tH
         2jXQqfXXEUEHIKmpawaRYxs64xkk1KTuB8HvjGvvms2vGpAEKPq76FED1ikb6tpfMUUG
         YUwBHXa+gJmenkLcLu3C/f+73EDCwCIrFA0gFT+qz2hYyDF1flwCuPpYttfXHFLMbXJX
         3EyDBZNd8mgg7pM8KQc4XRgplvJ/xU/L/vVGsGnxw3tFdUu3Jb1/SU/xq5BGm23S9kI8
         sVUDeT2xW3XYjud4n1TZLoa3ISdotr38YZ/C3qzrlINSa1dUenNRWz9ysztlGXGN3t1R
         64wg==
X-Gm-Message-State: APjAAAWKbDREsZw45BUEgtkDpzwg5mKJkxOogQkC3kSGUub3ZJidT8BI
	XlQb37FNTocOSxlgoIKtONX3tqQk
X-Google-Smtp-Source: APXvYqzoK77ttuY5GHylL0J36Of+/toDRNsqgfPpWSxPvoBHLkMbxKO5mzqpsUzToTBSLGqsB/re0A==
X-Received: by 2002:a17:902:9a95:: with SMTP id w21mr80806923plp.91.1578266317117;
        Sun, 05 Jan 2020 15:18:37 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:36 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][zeus][PATCH 6/9] README: update mailing list to new groups.io
Date: Sun,  5 Jan 2020 15:18:27 -0800
Message-Id: <20200105231830.5281-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

Also add Zeus keyword

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/README b/README
index 5abb0e2..634d412 100644
--- a/README
+++ b/README
@@ -52,15 +52,15 @@ other layers needed. e.g.:
 Maintenance
 -----------
 
-Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security][zeus][PATCH'
 
 These values can be set as defaults for this repository:
 
-$ git config sendemail.to yocto@yoctoproject.org
-$ git config format.subjectPrefix meta-security][PATCH
+$ git config sendemail.to yocto@lists.yoctoproject.org
+$ git config format.subjectPrefix meta-security][zeus][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
 
-- 
2.17.1

