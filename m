Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.13585.1596740570554881218
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 12:02:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mzeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 076J2npF017209
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 6 Aug 2020 12:02:49 -0700 (PDT)
Received: from yow-lpggp3.wrs.com (128.224.137.13) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0; Thu, 6 Aug 2020
 12:02:49 -0700
Received: by yow-lpggp3.wrs.com (Postfix, from userid 21151)	id 8F120200C4;
 Thu,  6 Aug 2020 15:02:48 -0400 (EDT)
From: "Matthew" <matthew.zeng@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [matchbox-terminal][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
Date: Thu, 6 Aug 2020 15:02:48 -0400
Message-ID: <20200806190248.34368-1-matthew.zeng@windriver.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Fixes [YOCTO #13319]

Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
---
 main.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/main.c b/main.c
index c0672df..dfa3634 100644
--- a/main.c
+++ b/main.c
@@ -1,19 +1,8 @@
-/* 
+/*
  * Copyright (C) 2007 OpenedHand Ltd
  *
- * This program is free software; you can redistribute it and/or modify it under
- * the terms of the GNU General Public License as published by the Free Software
- * Foundation; either version 2 of the License, or (at your option) any later
- * version.
+ * SPDX-License-Identifier: GPL-2.0-or-later
  *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc., 59 Temple
- * Place - Suite 330, Boston, MA 02111-1307, USA.
  */
 
 #include <gtk/gtk.h>
-- 
2.27.0

