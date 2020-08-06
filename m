Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.13358.1596739964555387901
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 11:52:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mzeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 076IqNs0000520
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 6 Aug 2020 11:52:33 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0; Thu, 6 Aug 2020
 11:52:12 -0700
Received: by yow-lpggp3.wrs.com (Postfix, from userid 21151)	id 1EBC6200C4;
 Thu,  6 Aug 2020 14:52:12 -0400 (EDT)
From: "Matthew" <matthew.zeng@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [matchbox-panel-2][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
Date: Thu, 6 Aug 2020 14:52:12 -0400
Message-ID: <20200806185212.29967-1-matthew.zeng@windriver.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Fixes [YOCTO #13319]

Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
---
 applets/battery/battery-acpi.c           | 2 ++
 applets/battery/battery-apm.c            | 2 ++
 applets/battery/battery.c                | 2 ++
 applets/battery/battery.h                | 2 ++
 applets/brightness/brightness.c          | 2 ++
 applets/clock/clock.c                    | 2 ++
 applets/common/test_main.c               | 2 ++
 applets/exit/exit.c                      | 2 ++
 applets/launcher/launcher.c              | 2 ++
 applets/notify/applet.c                  | 2 ++
 applets/notify/mb-notification.c         | 2 ++
 applets/notify/mb-notification.h         | 2 ++
 applets/notify/notify-store.c            | 2 ++
 applets/notify/notify-store.h            | 2 ++
 applets/showdesktop/showdesktop.c        | 2 ++
 applets/startup-notify/startup.c         | 2 ++
 applets/startup/startup.c                | 2 ++
 applets/systray/fixedtip.c               | 4 +++-
 applets/systray/fixedtip.h               | 4 +++-
 applets/systray/na-tray-child.c          | 2 ++
 applets/systray/na-tray-child.h          | 2 ++
 applets/systray/na-tray-manager.c        | 2 ++
 applets/systray/na-tray-manager.h        | 2 ++
 applets/systray/na-tray.c                | 2 ++
 applets/systray/na-tray.h                | 2 ++
 applets/systray/systray.c                | 2 ++
 applets/windowselector/windowselector.c  | 2 ++
 matchbox-panel/mb-panel-scaling-image.c  | 2 ++
 matchbox-panel/mb-panel-scaling-image.h  | 2 ++
 matchbox-panel/mb-panel-scaling-image2.c | 2 ++
 matchbox-panel/mb-panel-scaling-image2.h | 2 ++
 matchbox-panel/mb-panel.c                | 2 ++
 matchbox-panel/mb-panel.h                | 2 ++
 33 files changed, 68 insertions(+), 2 deletions(-)

diff --git a/applets/battery/battery-acpi.c b/applets/battery/battery-acpi.c
index 8431127..d1d3de9 100644
--- a/applets/battery/battery-acpi.c
+++ b/applets/battery/battery-acpi.c
@@ -1,6 +1,8 @@
 /*
  * (C) 2008 Intel.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Licensed under the GPL v2 or greater.
  */
 
diff --git a/applets/battery/battery-apm.c b/applets/battery/battery-apm.c
index 2f39cb6..edaba43 100644
--- a/applets/battery/battery-apm.c
+++ b/applets/battery/battery-apm.c
@@ -1,6 +1,8 @@
 /*
  * (C) 2008 Intel.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Licensed under the GPL v2 or greater.
  */
 
diff --git a/applets/battery/battery.c b/applets/battery/battery.c
index c755856..b11517d 100644
--- a/applets/battery/battery.c
+++ b/applets/battery/battery.c
@@ -1,6 +1,8 @@
 /*
  * (C) 2006 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/applets/battery/battery.h b/applets/battery/battery.h
index cf23431..534988f 100644
--- a/applets/battery/battery.h
+++ b/applets/battery/battery.h
@@ -1,6 +1,8 @@
 /*
  * (C) 2008 Intel.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Licensed under the GPL v2 or greater.
  */
 
diff --git a/applets/brightness/brightness.c b/applets/brightness/brightness.c
index f605fbe..a523b29 100644
--- a/applets/brightness/brightness.c
+++ b/applets/brightness/brightness.c
@@ -1,6 +1,8 @@
 /* 
  * Author: Manuel Teira <manuel.teira@telefonica.net>
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Licensed under the GPL v2 or greater.
  */
 
diff --git a/applets/clock/clock.c b/applets/clock/clock.c
index a71f895..b8057a4 100644
--- a/applets/clock/clock.c
+++ b/applets/clock/clock.c
@@ -3,6 +3,8 @@
 /*
  * (C) 2006-2013 Intel Corp
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *         Ross Burton <ross.burton@intel.com>
  *
diff --git a/applets/common/test_main.c b/applets/common/test_main.c
index 4558616..94de9a6 100644
--- a/applets/common/test_main.c
+++ b/applets/common/test_main.c
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
 #include <config.h>
 #include <gtk/gtk.h>
 
diff --git a/applets/exit/exit.c b/applets/exit/exit.c
index f973bb7..480683a 100644
--- a/applets/exit/exit.c
+++ b/applets/exit/exit.c
@@ -1,6 +1,8 @@
 /*
  * (C) 2013 Intel Corp
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Ross Burton <ross.burton@intel.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/applets/launcher/launcher.c b/applets/launcher/launcher.c
index d1ab8e4..046de0c 100644
--- a/applets/launcher/launcher.c
+++ b/applets/launcher/launcher.c
@@ -1,6 +1,8 @@
 /* 
  * (C) 2006 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/applets/notify/applet.c b/applets/notify/applet.c
index 2d896e8..6c378c8 100644
--- a/applets/notify/applet.c
+++ b/applets/notify/applet.c
@@ -1,6 +1,8 @@
 /*
  * (C) 2008 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Ross Burton <ross@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/applets/notify/mb-notification.c b/applets/notify/mb-notification.c
index c73b21f..f4463a0 100644
--- a/applets/notify/mb-notification.c
+++ b/applets/notify/mb-notification.c
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
 #include <gtk/gtk.h>
 #include "mb-notification.h"
 
diff --git a/applets/notify/mb-notification.h b/applets/notify/mb-notification.h
index ecf5ca1..c609ec0 100644
--- a/applets/notify/mb-notification.h
+++ b/applets/notify/mb-notification.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
 #ifndef _MB_NOTIFICATION
 #define _MB_NOTIFICATION
 
diff --git a/applets/notify/notify-store.c b/applets/notify/notify-store.c
index f25c8b9..bfae532 100644
--- a/applets/notify/notify-store.c
+++ b/applets/notify/notify-store.c
@@ -1,6 +1,8 @@
 /* 
  * (C) 2008 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Ross Burton <ross@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/applets/notify/notify-store.h b/applets/notify/notify-store.h
index b1cdd42..0a2b562 100644
--- a/applets/notify/notify-store.h
+++ b/applets/notify/notify-store.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
 #ifndef _MB_NOTIFY_STORE
 #define _MB_NOTIFY_STORE
 
diff --git a/applets/showdesktop/showdesktop.c b/applets/showdesktop/showdesktop.c
index 14f9d96..36c14d8 100644
--- a/applets/showdesktop/showdesktop.c
+++ b/applets/showdesktop/showdesktop.c
@@ -1,6 +1,8 @@
 /*
  * (C) 2006 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/applets/startup-notify/startup.c b/applets/startup-notify/startup.c
index a4686ef..c69bddb 100644
--- a/applets/startup-notify/startup.c
+++ b/applets/startup-notify/startup.c
@@ -7,6 +7,8 @@
  * Portions by Matthew Allum <mallum@o-hand.com>,
  * Stefan Schmidt <stefan@openmoko.org>.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or modify it under
  * the terms of the GNU General Public License as published by the Free Software
  * Foundation; version 2 of the license.
diff --git a/applets/startup/startup.c b/applets/startup/startup.c
index 026dce2..3d3f0d7 100644
--- a/applets/startup/startup.c
+++ b/applets/startup/startup.c
@@ -9,6 +9,8 @@
  * Stefan Schmidt <stefan@openmoko.org>
  * Ross Burton <ross.burton@intel.com>
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Based on mb-applet-startup-monitor
  *
  * This program is free software; you can redistribute it and/or modify
diff --git a/applets/systray/fixedtip.c b/applets/systray/fixedtip.c
index ce19067..bc7d86d 100644
--- a/applets/systray/fixedtip.c
+++ b/applets/systray/fixedtip.c
@@ -3,7 +3,9 @@
 /* 
  * Copyright (C) 2001 Havoc Pennington
  * Copyright (C) 2003-2006 Vincent Untz
- * 
+ *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
  * published by the Free Software Foundation; either version 2 of the
diff --git a/applets/systray/fixedtip.h b/applets/systray/fixedtip.h
index a29e85c..e5b69c0 100644
--- a/applets/systray/fixedtip.h
+++ b/applets/systray/fixedtip.h
@@ -3,7 +3,9 @@
 /* 
  * Copyright (C) 2001 Havoc Pennington, 2002 Red Hat Inc.
  * Copyright (C) 2003-2006 Vincent Untz
- * 
+ *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
  * published by the Free Software Foundation; either version 2 of the
diff --git a/applets/systray/na-tray-child.c b/applets/systray/na-tray-child.c
index 1042940..949d612 100644
--- a/applets/systray/na-tray-child.c
+++ b/applets/systray/na-tray-child.c
@@ -3,6 +3,8 @@
  * Copyright (C) 2003-2006 Vincent Untz
  * Copyright (C) 2008 Red Hat, Inc.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This library is free software; you can redistribute it and/or
  * modify it under the terms of the GNU Lesser General Public
  * License as published by the Free Software Foundation; either
diff --git a/applets/systray/na-tray-child.h b/applets/systray/na-tray-child.h
index 29cab3b..c3f181b 100644
--- a/applets/systray/na-tray-child.h
+++ b/applets/systray/na-tray-child.h
@@ -4,6 +4,8 @@
  * Copyright (C) 2003-2006 Vincent Untz
  * Copyright (C) 2008 Red Hat, Inc.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This library is free software; you can redistribute it and/or
  * modify it under the terms of the GNU Lesser General Public
  * License as published by the Free Software Foundation; either
diff --git a/applets/systray/na-tray-manager.c b/applets/systray/na-tray-manager.c
index 8999350..493ecd1 100644
--- a/applets/systray/na-tray-manager.c
+++ b/applets/systray/na-tray-manager.c
@@ -2,6 +2,8 @@
  * Copyright (C) 2002 Anders Carlsson <andersca@gnu.org>
  * Copyright (C) 2003-2006 Vincent Untz
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This library is free software; you can redistribute it and/or
  * modify it under the terms of the GNU Lesser General Public
  * License as published by the Free Software Foundation; either
diff --git a/applets/systray/na-tray-manager.h b/applets/systray/na-tray-manager.h
index 0408959..b14db4e 100644
--- a/applets/systray/na-tray-manager.h
+++ b/applets/systray/na-tray-manager.h
@@ -3,6 +3,8 @@
  * Copyright (C) 2002 Anders Carlsson <andersca@gnu.org>
  * Copyright (C) 2003-2006 Vincent Untz
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This library is free software; you can redistribute it and/or
  * modify it under the terms of the GNU Lesser General Public
  * License as published by the Free Software Foundation; either
diff --git a/applets/systray/na-tray.c b/applets/systray/na-tray.c
index 714bd90..9d98df3 100644
--- a/applets/systray/na-tray.c
+++ b/applets/systray/na-tray.c
@@ -3,6 +3,8 @@
  * Copyright (C) 2003-2006 Vincent Untz
  * Copyright (C) 2007 Christian Persch
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
  * published by the Free Software Foundation; either version 2 of the
diff --git a/applets/systray/na-tray.h b/applets/systray/na-tray.h
index 8fd7db4..af1a099 100644
--- a/applets/systray/na-tray.h
+++ b/applets/systray/na-tray.h
@@ -3,6 +3,8 @@
  * Copyright (C) 2002 Anders Carlsson <andersca@gnu.org>
  * Copyright (C) 2003-2006 Vincent Untz
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * This library is free software; you can redistribute it and/or
  * modify it under the terms of the GNU Lesser General Public
  * License as published by the Free Software Foundation; either
diff --git a/applets/systray/systray.c b/applets/systray/systray.c
index 39698a8..92d0ae0 100644
--- a/applets/systray/systray.c
+++ b/applets/systray/systray.c
@@ -2,6 +2,8 @@
 /*
  * (C) 2006-2013 Intel Corp
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *         Ross Burton <ross.burton@intel.com>
  *
diff --git a/applets/windowselector/windowselector.c b/applets/windowselector/windowselector.c
index 33f12f5..77eb219 100644
--- a/applets/windowselector/windowselector.c
+++ b/applets/windowselector/windowselector.c
@@ -1,6 +1,8 @@
 /*
  * (C) 2006, 2007 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Authors: Jorn Baayen <jorn@openedhand.com>
  *          Ross Burton <ross@openedhand.com>
  *
diff --git a/matchbox-panel/mb-panel-scaling-image.c b/matchbox-panel/mb-panel-scaling-image.c
index 56d2d78..3e13232 100644
--- a/matchbox-panel/mb-panel-scaling-image.c
+++ b/matchbox-panel/mb-panel-scaling-image.c
@@ -2,6 +2,8 @@
 /*
  * (C) 2006, 2007 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/matchbox-panel/mb-panel-scaling-image.h b/matchbox-panel/mb-panel-scaling-image.h
index cd63754..e5fdad6 100644
--- a/matchbox-panel/mb-panel-scaling-image.h
+++ b/matchbox-panel/mb-panel-scaling-image.h
@@ -1,6 +1,8 @@
 /* 
  * (C) 2006, 2007 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/matchbox-panel/mb-panel-scaling-image2.c b/matchbox-panel/mb-panel-scaling-image2.c
index 258f1e4..f0aaeb5 100644
--- a/matchbox-panel/mb-panel-scaling-image2.c
+++ b/matchbox-panel/mb-panel-scaling-image2.c
@@ -2,6 +2,8 @@
 /*
  * (C) 2013 Intel Corp
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Ross Burton <ross.burton@intel.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/matchbox-panel/mb-panel-scaling-image2.h b/matchbox-panel/mb-panel-scaling-image2.h
index 5c0dd76..12d5d6b 100644
--- a/matchbox-panel/mb-panel-scaling-image2.h
+++ b/matchbox-panel/mb-panel-scaling-image2.h
@@ -1,6 +1,8 @@
 /*
  * (C) 2013 Intel Corp
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Ross Burton <ross.burton@intel.com>
  *
  * Licensed under the GPL v2 or greater.
diff --git a/matchbox-panel/mb-panel.c b/matchbox-panel/mb-panel.c
index 4f5fb74..49aeb46 100644
--- a/matchbox-panel/mb-panel.c
+++ b/matchbox-panel/mb-panel.c
@@ -3,6 +3,8 @@
 /*
  * (C) 2006-2013 Intel Corp
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Authors: Ross Burton <ross.burton@intel.com>
  *          Jorn Baayen <jorn@openedhand.com>
  *
diff --git a/matchbox-panel/mb-panel.h b/matchbox-panel/mb-panel.h
index be367dd..91e5442 100644
--- a/matchbox-panel/mb-panel.h
+++ b/matchbox-panel/mb-panel.h
@@ -1,6 +1,8 @@
 /* 
  * (C) 2006 OpenedHand Ltd.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * Author: Jorn Baayen <jorn@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
-- 
2.27.0

