Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web09.1425.1616688186782615861
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=mlxn5RoS;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id c204so2528185pfc.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jEGMbVYH2tbdnAN0Qe8KbtapZ6FfSnNNcv8/wkBTizw=;
        b=mlxn5RoSDhrr1bWu1D4C2nwRCJCv3sPLSBOlk6u6Lb9R3xf1hg0lukDGcNBK3BEayt
         IkJU9+atLdDnjLVT50v1+Znvqf8NAediOb5OmSQKICpb7rV5xRTa38aewE6SphQJ2H6J
         KgdKhGMuEv4i/7pdjNWkER9n34mDBAMMy6LpXTrhvJBo22GnRleyz87xLFgwPnTANP6V
         Mhawiv9Kj/uDwR7Vi6ivjMqtsrZwbfRRW27xUwfpEetpaandtGIvm5i5FqCPuasVvwKO
         iSOsKH3kGcXrzDHFCnGSDwQXloi2clGc60tbzyE3T16qkJdN0/tblGVnZm4xf2uai8ZO
         sw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jEGMbVYH2tbdnAN0Qe8KbtapZ6FfSnNNcv8/wkBTizw=;
        b=Z1+H3G4R9hs8NRI9BnkXkI58+SHlcxiYNtySkDPFojUsqGnoPP3yQ01IWto3cRXG+9
         hldBYTXLDkUJeCZtwx086yy+3vFln5L38XkuFPKHW7vloNdGcWatGsoL37AfzQuskjwM
         w6Y+tbjTXwc2ZOCvXirfyI3dzCoQOSpVP4ZASghqzSlYYHbPNf+jdu02i9nuofkkDah7
         grXDWRdsmKEeZYCK/O8zAxplHsAwaVbsyOYeXUNJ9gW739r+FQczrpD2mHDBIE7jlIIH
         p6VTPAIvKPdZNeyAN7rVAol/kQ8WCexuIseyKdY2+LrQfxl6JE35kMvohDgREG2lLUn9
         iD8A==
X-Gm-Message-State: AOAM530tGaDGA4oKHfmwmH4HqryQB7kXiRKPCanOQtkcpCa8+BwnEy/q
	ORbGmCksNVduVqrDpbC0bisgWyvy2CDBdxNC
X-Google-Smtp-Source: ABdhPJzQpFYP7OexeswR7TlaG9gqkjZirqI9Xm8uuYseuS03StKjucwLYX85kxFQjR+E0AKuCdsBww==
X-Received: by 2002:a17:902:b94b:b029:e6:819f:2d80 with SMTP id h11-20020a170902b94bb02900e6819f2d80mr10559539pls.30.1616688185697;
        Thu, 25 Mar 2021 09:03:05 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:05 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 02/15] scripts/run-config: Ensure stepnum has a value when there are no steps
Date: Thu, 25 Mar 2021 06:02:08 -1000
Message-Id: <b519518f4cd3d2dba2aac647797575d7f26bab90.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit afb6c5a88773d4da4a8dfd88f19654ca585efc95)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/run-config b/scripts/run-config
index ff56fbe..e600bf9 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -82,6 +82,7 @@ elif args.build_type == "full":
 
 # Find out the number of steps this target has
 maxsteps = 0
+stepnum = 0
 if args.target in ourconfig['overrides']:
     for v in ourconfig['overrides'][args.target]:
         if v.startswith("step"):
-- 
2.25.1

