Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web10.1390.1616632815170329252
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=oraVdfxU;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.175, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f175.google.com with SMTP id x126so200746pfc.13
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jEGMbVYH2tbdnAN0Qe8KbtapZ6FfSnNNcv8/wkBTizw=;
        b=oraVdfxUtI3Dp3Sknl3y0Wni6slvI+OeztcPS1m4pyN69MaPy/9MDgfoJgze98WrJv
         GneNodwjdLOKk+Z1ohSNXBh8Mb06uX89K97vMSIMdCeZofD2RJKjqzIqlvw6yAtObiQ6
         0jVai6FdXMzilkoJ71iCI4tfdlS2Y74t/8iUEsgm8QR78vHODVmIEFheVDDl848VZ0S7
         Efz11PwXdG5LxydY+O69JKideFJJ5QsbIQV4y1ks7qXfolVklFagFq69VOx9WqZvtaT8
         AR55Ym0PZCcplmu4SxfNAdvgi7XeCqGekCcRTx4Btsk1yihhJdq3eFGhcJvpUGXoLJPe
         p07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jEGMbVYH2tbdnAN0Qe8KbtapZ6FfSnNNcv8/wkBTizw=;
        b=k2a/ES7cZVjkdXF96SjQsRtrhDs/lDoff2sS3LDwCj9zGA5qlGyBXiNOs+28N7jGsA
         u88YHBxxQX85hEQ2vLq6Iv99Qo8UmPk4gI4pRtncBrrhUR/sQfrf15h4cZPOCYmfXfkM
         INvJNho1mkZbf3ZCm8HW5+e2hL5/INx6Cpq8QraZ8utoikuRCnvbzbKsQb7lTkqfFe/x
         AlnyV7hnbdVe4tc9sd3tKuJ6ct/N5FSu+rCJCETchKZmzI73ixCY+TNQ7+vmJOxW+Veq
         d64+0dzgQ9YCUwPq+uiE9BgcN6R7mXbizpsE9RolTJaFjfGTXMRnEBOalOKIWmcgCM2F
         iqXg==
X-Gm-Message-State: AOAM533oCFYuoKCPHbFbvBD6Jj284BZpCrXgmrlv0z8cfniiJtbFpFHx
	6lczoofKdfSvX9tOm4x+P6RcxAXKjuTouAB1
X-Google-Smtp-Source: ABdhPJzj1sL/PY/xYDb25lHvBFuKMUihAaKYO74rANS0tN+gyRomC1ldAFF+R8qH6q73Y4RUr7iF4A==
X-Received: by 2002:a17:902:e5c8:b029:e4:c22d:4da6 with SMTP id u8-20020a170902e5c8b02900e4c22d4da6mr6448480plf.10.1616632814260;
        Wed, 24 Mar 2021 17:40:14 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:13 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 09/23] scripts/run-config: Ensure stepnum has a value when there are no steps
Date: Wed, 24 Mar 2021 14:39:18 -1000
Message-Id: <b32daf98ecbf9ccebf4234a38180ce3511a996fb.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
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

