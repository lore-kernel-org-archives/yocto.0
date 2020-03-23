Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.55474.1584977763680700542
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 08:36:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: matthew.zeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 02NFa3Rs011622
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Mon, 23 Mar 2020 08:36:03 -0700 (PDT)
Received: from mt-manjaro (128.224.21.30) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 23 Mar
 2020 08:36:02 -0700
User-agent: mu4e 1.2.0; emacs 28.0.50
From: "Matthew" <matthew.zeng@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [matchbox-config-gtk][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
Date: Mon, 23 Mar 2020 11:35:55 -0400
Message-ID: <87imivqe1w.fsf@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.21.30]
Content-Type: text/plain

Fixes [YOCTO #13319]

Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
---
 appearance/mb-appearance.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/appearance/mb-appearance.c b/appearance/mb-appearance.c
index 6af8376..4c9e936 100644
--- a/appearance/mb-appearance.c
+++ b/appearance/mb-appearance.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2005-2007 Opened Hand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Ross Burton <ross@openedhand.com>
  *
  * This program is free software; you can redistribute it and/or modify
--
Mingde (Matthew) Zeng
