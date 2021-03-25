Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web09.5521.1616716634762440204
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 16:57:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IWXvCAJG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.172, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f172.google.com with SMTP id c204so3682237pfc.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 16:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+t0kM/BhAi2rqLjGqsKIMnl7yccFiLGiZLNOzOPZDTg=;
        b=IWXvCAJGCyll/+/evzFqIU3ev/SJxnoerxI83LoDUqhixPLn9njBRJBsiHVG65MKZO
         C/y/2dcQoREmuJ3jutJxEBy9O0NXNZIk1IolInro0B81eAB3QoG4u428cGthCFmcZaXD
         VKK06bclK6yUFDyWpz/yztgznOcZmB0OSstCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+t0kM/BhAi2rqLjGqsKIMnl7yccFiLGiZLNOzOPZDTg=;
        b=smN30YxKSv1h7WrtDloU2vqW3xULl89zIE8B2o9bsY7Tu5isz/nwfBkpQGNgXW+rrC
         iukApxR5Lvm8MzPwhtqYOMc/EFmHPtWgm0nmzp0rBr0BflU7Do2TMihVGkkpINil4vr0
         R6e40baO9E3LaAcP4w+d3Xhbi8mcTiC0zBnZUcUKiu8cmjYpwm06Y7NxWCZsNMHzRmdL
         CA/xH4vL7fK24dnFZxN4DCD9a4bGHZN9eBj/IlZsPGtvDzWw7MnVncN4Nz4lJBUBjFtf
         q7xPYbgZFRp/7+dKJGRQlU2KW6SBH/62xlpBIZT6IkM+hGTip0ozB3kG3+gpbGAcFAsv
         IFJw==
X-Gm-Message-State: AOAM5319U06dQMCpFEybJAsn8lPGD1B9UQzcBjmCV9zIH1uRaXjNfSx4
	0vHp9JD+6VGcS9z4XdCOTngPpztFgDTMQQ==
X-Google-Smtp-Source: ABdhPJybuFIUfxpxqUw41D7g2lFHcHmfss6m9Ow/UB7b0sli8HIXrTA9dB19H3TdAS6Jckyr0z46aw==
X-Received: by 2002:a63:1026:: with SMTP id f38mr9852790pgl.142.1616716634005;
        Thu, 25 Mar 2021 16:57:14 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id a144sm7139111pfd.200.2021.03.25.16.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 16:57:13 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 5/5] Import parser from the new python3 location
Date: Thu, 25 Mar 2021 16:56:37 -0700
Message-Id: <20210325235637.647556-5-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
References: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Halstead <mhalstead@linxufoundation.org>

---
 Post/views.py | 2 +-
 README        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Post/views.py b/Post/views.py
index 7791201..161d46d 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -24,7 +24,7 @@ from django.http import JsonResponse
 from django.db.models import Q
 import json
 import urllib
-from urlparse import urlparse
+from urllib.parse import urlparse
 
 class results_mode(object):
     LATEST = 0
diff --git a/README b/README
index f759d28..d56fdbd 100644
--- a/README
+++ b/README
@@ -48,7 +48,7 @@ The latest version can be checked out by git cloning:
   git://git.yoctoproject.org/error-report-web
 
 Contributions are welcome. Please send patches / pull requests to
-yocto@yoctoproject.org with '[error-report-web]' in the subject.
+yocto@lists.yoctoproject.org with '[error-report-web]' in the subject.
 
 To manage the size of your database there is a convenience command:
 
-- 
2.11.0

