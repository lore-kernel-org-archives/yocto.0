Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.13532.1596740351076148502
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 11:59:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mzeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 076IwIMR000690
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 6 Aug 2020 11:59:00 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0; Thu, 6 Aug 2020
 11:58:16 -0700
Received: by yow-lpggp3.wrs.com (Postfix, from userid 21151)	id EF24F200C4;
 Thu,  6 Aug 2020 14:58:15 -0400 (EDT)
From: "Matthew" <matthew.zeng@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [matchbox-panel-manager][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
Date: Thu, 6 Aug 2020 14:58:15 -0400
Message-ID: <20200806185815.32504-1-matthew.zeng@windriver.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Fixes [YOCTO #13319]

Signed-off-by: Mingde (Matthew) Zeng <matthewzmd@gmail.com>
---
 mbpanelmgr.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/mbpanelmgr.c b/mbpanelmgr.c
index 4d45665..c65d229 100644
--- a/mbpanelmgr.c
+++ b/mbpanelmgr.c
@@ -1,17 +1,9 @@
 /*
- *  Gtk2 Based matchbox panel manager.   
+ *  Gtk2 Based matchbox panel manager.
  *
  *  Copyright 2003 Matthew Allum <mallum@handhelds.org>
  *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2, or (at your option)
- *  any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
+ *  SPDX-License-Identifier: GPL-2.0-or-later
  */
 
 #include <sys/types.h>
-- 
2.27.0

