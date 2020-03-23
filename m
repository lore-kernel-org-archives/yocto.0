Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.55960.1584978818200578064
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 08:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: matthew.zeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 02NFrYSe000692
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Mon, 23 Mar 2020 08:53:34 -0700 (PDT)
Received: from mt-manjaro (128.224.21.30) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 23 Mar
 2020 08:53:33 -0700
User-agent: mu4e 1.2.0; emacs 28.0.50
From: "Matthew" <matthew.zeng@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [matchbox-desktop-2][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
Date: Mon, 23 Mar 2020 11:53:26 -0400
Message-ID: <87h7yfqd8p.fsf@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.21.30]
Content-Type: text/plain

Fixes [YOCTO #13319]

Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
---
 libtaku/inotify/inotify-diag.c    | 2 ++
 libtaku/inotify/inotify-diag.h    | 2 ++
 libtaku/inotify/inotify-kernel.c  | 2 ++
 libtaku/inotify/inotify-kernel.h  | 2 ++
 libtaku/inotify/inotify-missing.c | 2 ++
 libtaku/inotify/inotify-missing.h | 2 ++
 libtaku/inotify/inotify-path.c    | 2 ++
 libtaku/inotify/inotify-path.h    | 2 ++
 libtaku/inotify/inotify-sub.c     | 2 ++
 libtaku/inotify/inotify-sub.h     | 2 ++
 libtaku/launcher-util.c           | 2 ++
 libtaku/launcher-util.h           | 2 ++
 libtaku/taku-icon-tile.c          | 2 ++
 libtaku/taku-icon-tile.h          | 2 ++
 libtaku/taku-launcher-tile.c      | 2 ++
 libtaku/taku-launcher-tile.h      | 2 ++
 libtaku/taku-menu-desktop.c       | 2 ++
 libtaku/taku-menu.h               | 2 ++
 libtaku/taku-queue-source.c       | 2 ++
 libtaku/taku-queue-source.h       | 2 ++
 libtaku/taku-tile.c               | 2 ++
 libtaku/taku-tile.h               | 2 ++
 libtaku/xutil.c                   | 2 ++
 libtaku/xutil.h                   | 2 ++
 src/desktop.c                     | 2 ++
 src/desktop.h                     | 2 ++
 src/main.c                        | 2 ++
 src/taku-category-bar.c           | 2 ++
 src/taku-category-bar.h           | 2 ++
 29 files changed, 58 insertions(+)

diff --git a/libtaku/inotify/inotify-diag.c b/libtaku/inotify/inotify-diag.c
index 937ebd7..95aa725 100644
--- a/libtaku/inotify/inotify-diag.c
+++ b/libtaku/inotify/inotify-diag.c
@@ -4,6 +4,8 @@

    Copyright (C) 2005 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-diag.h b/libtaku/inotify/inotify-diag.h
index f818f16..f74fca6 100644
--- a/libtaku/inotify/inotify-diag.h
+++ b/libtaku/inotify/inotify-diag.h
@@ -2,6 +2,8 @@

    Copyright (C) 2006 John McCutchan <john@johnmccutchan.com>

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-kernel.c b/libtaku/inotify/inotify-kernel.c
index 9cce03d..4969f53 100644
--- a/libtaku/inotify/inotify-kernel.c
+++ b/libtaku/inotify/inotify-kernel.c
@@ -1,6 +1,8 @@
 /*
    Copyright (C) 2005 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-kernel.h b/libtaku/inotify/inotify-kernel.h
index b406d71..490fca3 100644
--- a/libtaku/inotify/inotify-kernel.h
+++ b/libtaku/inotify/inotify-kernel.h
@@ -1,6 +1,8 @@
 /*
    Copyright (C) 2005 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-missing.c b/libtaku/inotify/inotify-missing.c
index 96126b3..40d81b0 100644
--- a/libtaku/inotify/inotify-missing.c
+++ b/libtaku/inotify/inotify-missing.c
@@ -4,6 +4,8 @@

    Copyright (C) 2005 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-missing.h b/libtaku/inotify/inotify-missing.h
index b67b595..af4a4bb 100644
--- a/libtaku/inotify/inotify-missing.h
+++ b/libtaku/inotify/inotify-missing.h
@@ -2,6 +2,8 @@

    Copyright (C) 2006 John McCutchan <john@johnmccutchan.com>

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-path.c b/libtaku/inotify/inotify-path.c
index c5cfbb8..4a57609 100644
--- a/libtaku/inotify/inotify-path.c
+++ b/libtaku/inotify/inotify-path.c
@@ -4,6 +4,8 @@

    Copyright (C) 2006 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-path.h b/libtaku/inotify/inotify-path.h
index c613b9f..9645935 100644
--- a/libtaku/inotify/inotify-path.h
+++ b/libtaku/inotify/inotify-path.h
@@ -1,6 +1,8 @@
 /*
    Copyright (C) 2005 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-sub.c b/libtaku/inotify/inotify-sub.c
index 404dc20..04be968 100644
--- a/libtaku/inotify/inotify-sub.c
+++ b/libtaku/inotify/inotify-sub.c
@@ -4,6 +4,8 @@

    Copyright (C) 2006 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/inotify/inotify-sub.h b/libtaku/inotify/inotify-sub.h
index 36561e7..697c633 100644
--- a/libtaku/inotify/inotify-sub.h
+++ b/libtaku/inotify/inotify-sub.h
@@ -2,6 +2,8 @@

    Copyright (C) 2006 John McCutchan

+   SPDX-License-Identifier: GPL-2.0-or-later
+
    The Gnome Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
diff --git a/libtaku/launcher-util.c b/libtaku/launcher-util.c
index 89333f9..8a36838 100644
--- a/libtaku/launcher-util.c
+++ b/libtaku/launcher-util.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/launcher-util.h b/libtaku/launcher-util.h
index d059d84..d6cb256 100644
--- a/libtaku/launcher-util.h
+++ b/libtaku/launcher-util.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-icon-tile.c b/libtaku/taku-icon-tile.c
index 110db6b..d62636d 100644
--- a/libtaku/taku-icon-tile.c
+++ b/libtaku/taku-icon-tile.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-icon-tile.h b/libtaku/taku-icon-tile.h
index 4475ca4..ad98e20 100644
--- a/libtaku/taku-icon-tile.h
+++ b/libtaku/taku-icon-tile.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-launcher-tile.c b/libtaku/taku-launcher-tile.c
index e7f58f3..0025983 100644
--- a/libtaku/taku-launcher-tile.c
+++ b/libtaku/taku-launcher-tile.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-launcher-tile.h b/libtaku/taku-launcher-tile.h
index c1b8cf9..9b13107 100644
--- a/libtaku/taku-launcher-tile.h
+++ b/libtaku/taku-launcher-tile.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-menu-desktop.c b/libtaku/taku-menu-desktop.c
index 93c8a56..8ca8d00 100644
--- a/libtaku/taku-menu-desktop.c
+++ b/libtaku/taku-menu-desktop.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-menu.h b/libtaku/taku-menu.h
index 9f78064..6d4d5c4 100644
--- a/libtaku/taku-menu.h
+++ b/libtaku/taku-menu.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-queue-source.c b/libtaku/taku-queue-source.c
index d17be14..1d743ab 100644
--- a/libtaku/taku-queue-source.c
+++ b/libtaku/taku-queue-source.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-queue-source.h b/libtaku/taku-queue-source.h
index 00ad959..26b14c4 100644
--- a/libtaku/taku-queue-source.h
+++ b/libtaku/taku-queue-source.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-tile.c b/libtaku/taku-tile.c
index 64dd3d7..3d43bda 100644
--- a/libtaku/taku-tile.c
+++ b/libtaku/taku-tile.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/taku-tile.h b/libtaku/taku-tile.h
index 5c03089..1299e61 100644
--- a/libtaku/taku-tile.h
+++ b/libtaku/taku-tile.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/xutil.c b/libtaku/xutil.c
index 3cd36bb..184d06d 100644
--- a/libtaku/xutil.c
+++ b/libtaku/xutil.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/libtaku/xutil.h b/libtaku/xutil.h
index 9ecb805..0b0685d 100644
--- a/libtaku/xutil.h
+++ b/libtaku/xutil.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/src/desktop.c b/src/desktop.c
index a1943eb..e37c8c1 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -2,6 +2,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/src/desktop.h b/src/desktop.h
index 5c6900b..d938870 100644
--- a/src/desktop.h
+++ b/src/desktop.h
@@ -2,6 +2,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/src/main.c b/src/main.c
index b2794c4..53a3b0d 100644
--- a/src/main.c
+++ b/src/main.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/src/taku-category-bar.c b/src/taku-category-bar.c
index 5900d54..9b77f8b 100644
--- a/src/taku-category-bar.c
+++ b/src/taku-category-bar.c
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
diff --git a/src/taku-category-bar.h b/src/taku-category-bar.h
index ff93e86..1885abe 100644
--- a/src/taku-category-bar.h
+++ b/src/taku-category-bar.h
@@ -1,6 +1,8 @@
 /*
  * Copyright (C) 2007 OpenedHand Ltd
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; either version 2 of the License, or (at your option) any later
--
Mingde (Matthew) Zeng
