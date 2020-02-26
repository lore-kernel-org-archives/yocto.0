Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.5814.1582710423343001874
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 01:47:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=XF/JEX29;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 140.211.169.56, mailfrom: mshah@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4B09E0175C; Wed, 26 Feb 2020 01:47:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A43E8E016B5
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 01:46:59 -0800 (PST)
Received: by mail-pf1-f193.google.com with SMTP id 4so1177000pfz.9
        for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 01:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=AxPRn6rwxxImwE2fPgGCPksdXJM1WfPrXJ60am+NjhM=;
        b=XF/JEX297c6BUPpXRBIlBsOqWwsQKBxavQH1xiCtltq0ef/vjRkweAuxjEzTfkQh6k
         wujkWUUJZVG3ycEYRcGlQolquidA53akKeKkH9R5x5XeALyP9G9j52RpHKCKG3nke5+g
         LBmK9uk8JbgsQ6JNGDvT/AiVqvBF2BiEdKxDrz9IXchuBo84TbMwvOcfBq1BaDwPfzmV
         uTSDTEEE5Vn6oQ/VBfysWyugPLKCVNG1oOGxmBB5ndocN/IcDUnt2EevHkwi1mllTv59
         lXkUV8L4QBxTwzDIRSNEihpVoKZNh04nbaCAyTjGPHzPC+tOvrkB0ox/lvZcpcQRWIjQ
         i+4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AxPRn6rwxxImwE2fPgGCPksdXJM1WfPrXJ60am+NjhM=;
        b=uJMRtDVCoIO4A8jrGglQqHYUheKur1qsh+vtNRZjZxBRJNjV7OO6kIPeFyzHs9XkKB
         p3bZo+rHCZCw/Hb0qV5SFnkBWSNzdNaXdfQggITOgH3hImDGzfw5svSjQz52HSmRW86/
         1s1uYsKu4kfz3AS/bHHAK1YROcuAYOtVWRIBKQzBjLvgRgwq8wW45EyCtaXxCCT1jcAk
         yUzqZp2SkXr5M6536k6xVNAasT4dow50mukkTmq5GvHnaVbugC0INm7n3yGU72ggFLeu
         hXcMAGDTOrc5StAFCH4Z4zOBkliVhWqCIi1ipoAKolfuqFO+KOGsIZIMqo97e8B2kBno
         hQFg==
X-Gm-Message-State: APjAAAXcQx5ameDJwMhElLPGM1+cNEMoGQcWXADr4emwewgBCpMConkx
	7SpPpoXeXQ8H0iySDbEpT1SnYCNGKgo=
X-Google-Smtp-Source: APXvYqyOVfMireXv1l7cDbA4rGtNo+sATxncTQ741eqZeCd7lWAOlv9EEgpi4Fb64RH3cDTq14Bclg==
X-Received: by 2002:a63:cf14:: with SMTP id j20mr2938467pgg.67.1582710418768;
        Wed, 26 Feb 2020 01:46:58 -0800 (PST)
Received: from dell-latitude.mvista.com ([182.72.92.62])
        by smtp.gmail.com with ESMTPSA id u41sm2069903pgn.8.2020.02.26.01.46.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 26 Feb 2020 01:46:58 -0800 (PST)
From: "Milan Shah" <mshah@mvista.com>
To: yocto@yoctoproject.org
Cc: Milan Shah <mshah@mvista.com>
Subject: [error-report-web][PATCH] Add SPDX license headers to source files
Date: Wed, 26 Feb 2020 15:16:18 +0530
Message-Id: <1582710378-5688-1-git-send-email-mshah@mvista.com>
X-Mailer: git-send-email 2.7.4

Post/* all ( except Post/migrations/* , __init__.py and templatetags/* )
have some sort of MIT headers; adding SPDX header to make it obvious.

project/* & test-data/* all ( except __init__.py ) have some sort of MIT headers;
adding SPDX header to make it obvious.

This address bug #13530
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13530

Signed-off-by: Milan Shah <mshah@mvista.com>
---
 Post/admin.py                      | 2 ++
 Post/createStatistics.py           | 1 +
 Post/feed.py                       | 2 ++
 Post/management/commands/culldb.py | 2 ++
 Post/models.py                     | 2 ++
 Post/parser.py                     | 1 +
 Post/views.py                      | 2 ++
 manage.py                          | 2 ++
 project/settings.py                | 2 ++
 project/urls.py                    | 2 ++
 project/wsgi.py                    | 4 ++++
 test-data/test-send-error.py       | 3 ++-
 12 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/Post/admin.py b/Post/admin.py
index f11ff65..43aa9a6 100644
--- a/Post/admin.py
+++ b/Post/admin.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: MIT
+#
 # error reporting tool - admin interface definitions
 #
 # Copyright (C) 2013 Intel Corporation
diff --git a/Post/createStatistics.py b/Post/createStatistics.py
index 213927a..09d098e 100644
--- a/Post/createStatistics.py
+++ b/Post/createStatistics.py
@@ -1,4 +1,5 @@
 #!/usr/bin/env python
+# SPDX-License-Identifier: MIT
 
 # Create statistics. Update database.
 #
diff --git a/Post/feed.py b/Post/feed.py
index 745ee23..7e5bfdb 100644
--- a/Post/feed.py
+++ b/Post/feed.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: MIT
+#
 # error-reporting-tool - URL definitions
 #
 # Copyright (C) 2013 Intel Corporation
diff --git a/Post/management/commands/culldb.py b/Post/management/commands/culldb.py
index 698537c..bd70ffc 100644
--- a/Post/management/commands/culldb.py
+++ b/Post/management/commands/culldb.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: MIT
+#
 # error-reporting-tool -  culldb
 #
 # Copyright (C) 2015 Intel Corporation
diff --git a/Post/models.py b/Post/models.py
index ddf2fc7..cf8c1c2 100644
--- a/Post/models.py
+++ b/Post/models.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: MIT
+#
 # error-reporting-tool - model definitions
 #
 # Copyright (C) 2013 Intel Corporation
diff --git a/Post/parser.py b/Post/parser.py
index 9639308..ed65d4f 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -1,4 +1,5 @@
 #!/usr/bin/env python
+# SPDX-License-Identifier: MIT
 
 # Add errors to database from client
 #
diff --git a/Post/views.py b/Post/views.py
index 7f2cffb..cc6aed9 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: MIT
+#
 # error-reporting-tool - view definitions
 #
 # Copyright (C) 2013 Intel Corporation
diff --git a/manage.py b/manage.py
index 82cfa83..8edb2e4 100755
--- a/manage.py
+++ b/manage.py
@@ -1,4 +1,6 @@
 #!/usr/bin/env python
+# SPDX-License-Identifier: MIT
+
 import os
 import sys
 
diff --git a/project/settings.py b/project/settings.py
index 3c6c87e..2d1ab92 100644
--- a/project/settings.py
+++ b/project/settings.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: MIT
+#
 # Django settings for error-reporting-tool project.
 # Based on settings.py from the Django project template
 # Copyright (c) Django Software Foundation and individual contributors.
diff --git a/project/urls.py b/project/urls.py
index 0e8f39c..1f51c7c 100644
--- a/project/urls.py
+++ b/project/urls.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: MIT
+#
 # error-reporting-tool - URL definitions
 #
 # Copyright (C) 2013 Intel Corporation
diff --git a/project/wsgi.py b/project/wsgi.py
index 7d4fc73..8d3ba66 100644
--- a/project/wsgi.py
+++ b/project/wsgi.py
@@ -1,3 +1,7 @@
+#
+# SPDX-License-Identifier: MIT
+#
+
 """
 WSGI config for errorsreport project.
 
diff --git a/test-data/test-send-error.py b/test-data/test-send-error.py
index 7070c18..1252855 100755
--- a/test-data/test-send-error.py
+++ b/test-data/test-send-error.py
@@ -1,5 +1,6 @@
 #!/usr/bin/env python
-#
+# SPDX-License-Identifier: MIT
+
 # test/example script for sending data to error-report-web
 
 import urllib2
-- 
2.7.4

