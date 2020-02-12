Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.972.1581490268706656116
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 22:51:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R9kPbwd9;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: milanshah.yocto@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91958E01680; Tue, 11 Feb 2020 22:51:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (milanshah.yocto[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 158BDE00782
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 22:51:07 -0800 (PST)
Received: by mail-pj1-f42.google.com with SMTP id dw13so455989pjb.4
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 22:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AxPRn6rwxxImwE2fPgGCPksdXJM1WfPrXJ60am+NjhM=;
        b=R9kPbwd9yBhOzXpFSuQtBl7RhKSnXos/ENOzgr3qO6a7A/MQ/ILs0jR1b3wANLlLZn
         VA4WxA9hMndPBSm0S5yDlXmj2+oxjsTHo5Z/B56kxyPFixinDGJK1lziMB70604GhmKG
         52fNEKs9KIMIUSJ96cEY3mp+r/hA1QIoOMGMad154Rnbnc6SmzMMFtUuK14sbyuMlOKQ
         Htt0bOBuPAnkRDWLPxMgrTxjc/8ea2MzWg+lGCTfGFM5hSfoWR4lu6CP2PnzdBCFS70l
         YCYQBa2gC/u2mLSohD9VD/UDITQMUv0LaV6t9+Q8q9/cXlh/IgmvOWRqHb4uyvdCKRcm
         jtuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AxPRn6rwxxImwE2fPgGCPksdXJM1WfPrXJ60am+NjhM=;
        b=KWoCh1v5mUvMqmk7ZeAhJiUEKzN28JS5Ib6V2bB3jlIW/Q7bPsihQVtUaaLTkNYy0e
         1uUdwgxpqEd5pFsd6Ua7qxCQ6Vkw3YfDPg2sRmDsEmhRmsjOoDbJNlhJ/c9cOl6eWbs/
         J+ta37OOHjsdiGjXhZpDNVBHHZOaCRQlIdkJX6kkpWSolD4JsJeXrbknmVpKUpvmY4/9
         G8xM/IE0eDDiWDTAS6g8IO/h1JGraCA8H6LjVepcqwb/ROy1/mAboPNLZEo1xVZsl5Bk
         X0pyZzOlYIyyF7fz8KG2E19SXtxli8cc5WJMl1wggNQyaxKUkFihz+7X476XwX1EKzDe
         vJxA==
X-Gm-Message-State: APjAAAVun5Cl3pLdiOq3m1EyspZhr7+uqDIrxbLClqO0wdU5ZOdTmaIm
	cDKogpISMhWBvmxLmsCvZe9RbnACBxc=
X-Google-Smtp-Source: APXvYqz1YaG/zmQ2BGr1SseOY9ELroIE+x2m9EiM4tgcdMlzNnJuRI/710/6mPtG9iFbJjV+T8sUqQ==
X-Received: by 2002:a17:902:6184:: with SMTP id u4mr7087330plj.198.1581490267473;
        Tue, 11 Feb 2020 22:51:07 -0800 (PST)
Received: from celsys-mv119.mvista.com ([182.72.92.62])
        by smtp.gmail.com with ESMTPSA id p18sm4841129pjo.3.2020.02.11.22.51.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Feb 2020 22:51:07 -0800 (PST)
From: "Milan Shah" <milanshah.yocto@gmail.com>
X-Google-Original-From: Milan Shah <mshah@mvista.com>
To: yocto@yoctoproject.org
Cc: Milan Shah <mshah@mvista.com>
Subject: [error-report-web][PATCH] Add SPDX license headers to source files
Date: Wed, 12 Feb 2020 12:20:58 +0530
Message-Id: <1581490258-7552-1-git-send-email-mshah@mvista.com>
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

