Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.1888.1616784599312856112
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 11:49:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=M6K498Dp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.214.172, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pl1-f172.google.com with SMTP id e14so1352598plj.2
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 11:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+t0kM/BhAi2rqLjGqsKIMnl7yccFiLGiZLNOzOPZDTg=;
        b=M6K498Dp/PY3dDpZfH2B2PlDcRGI441JGhnOMfTDQeEk+36vw43cWEyPVlJJVXkfrw
         rwYoSIri3X6QpcLU7bOTdTjXDFTRudzVEiVQmyJM+dg6vQ+7ZYF/D0dSsJK4+cP36AUi
         Ei5ufySc/n2gMXqZREEzRiiNq5inee7EKPJxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+t0kM/BhAi2rqLjGqsKIMnl7yccFiLGiZLNOzOPZDTg=;
        b=WMnO/s8KWhp16QJ2vesnZJ9h8Z/VRs7u34oarvjvXdDeW1ylRq25hqIqOVS5yPlw/6
         HxfYf4qbtqQ1ozhcy7nzDHk+SOVpklkXMHXTqSnD06YUVhcFS5YID9tW3D5Makif2OiO
         TUbpLdEiYLW7+6CoOpVQBjKKHw9tBwKTqT+Fq18mAozba4OQ+Ytc/0/E4INrgXcrn8uW
         Zx3uNFks0J3+kpeF58z2pKeN3iUA8wSIOxZ2lcJXe6/2j+VrSnnZRiWjq9AZ+mmsNn/j
         KxJOjwx/B69HoicZDUZ8crDI7oVztWF1dIKYtJAB6vVu6k0JrC7PsyGeSGC4li2YVwes
         c69w==
X-Gm-Message-State: AOAM530Avx+Y/voRFO4xF6Cjl0AYo3Zh278NAEEwAX5V+PMCij6dI7gY
	qUSCJTl339EtqMQZ5+WgNNqvu0J9TFAO8w==
X-Google-Smtp-Source: ABdhPJxrM9zFv6cm3gvJqSQkMtFGkmw0PjlrXJSB3gvVz76FHPsNWiBjb3Eg6sd6jUlSBEHQHnauYA==
X-Received: by 2002:a17:90b:310b:: with SMTP id gc11mr15028861pjb.186.1616784598553;
        Fri, 26 Mar 2021 11:49:58 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id fa21sm9132905pjb.41.2021.03.26.11.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 11:49:58 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 5/5] Import parser from the new python3 location
Date: Fri, 26 Mar 2021 11:49:52 -0700
Message-Id: <20210326184952.712938-5-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
References: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
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

