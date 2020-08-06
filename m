Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.12958.1596738773665388923
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 11:32:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mzeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 076IWWof032563
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 6 Aug 2020 11:32:42 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0; Thu, 6 Aug 2020
 11:32:21 -0700
Received: by yow-lpggp3.wrs.com (Postfix, from userid 21151)	id 37076200EE;
 Thu,  6 Aug 2020 14:32:21 -0400 (EDT)
From: "Matthew" <matthew.zeng@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [matchbox-keyboard][PATCH] Add SPDX-License-Identifier: LGPL-2.1
Date: Thu, 6 Aug 2020 14:32:21 -0400
Message-ID: <20200806183221.21751-1-matthew.zeng@windriver.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Fixes [YOCTO #13319]

Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
---
 applet/applet.c                          |  8 +-------
 examples/matchbox-keyboard-gtk-embed.c   |  2 ++
 gtk-im/im-context.c                      |  9 +--------
 gtk-im/im-context.h                      |  9 +--------
 gtk-im/im-module.c                       |  9 +--------
 gtk-im/im-protocol.c                     |  9 +--------
 gtk-im/im-protocol.h                     |  9 +--------
 src/config-parser.c                      | 10 +---------
 src/libmatchbox-keyboard.c               |  9 +--------
 src/libmatchbox-keyboard.h               |  9 +--------
 src/main.c                               | 10 +---------
 src/matchbox-keyboard-image.c            |  9 +--------
 src/matchbox-keyboard-key.c              | 10 +---------
 src/matchbox-keyboard-layout.c           | 10 +---------
 src/matchbox-keyboard-popup.c            |  9 +--------
 src/matchbox-keyboard-popup.h            |  9 +--------
 src/matchbox-keyboard-remote.c           |  9 +--------
 src/matchbox-keyboard-remote.h           |  9 +--------
 src/matchbox-keyboard-row.c              |  9 +--------
 src/matchbox-keyboard-ui-cairo-backend.c |  9 +--------
 src/matchbox-keyboard-ui-cairo-backend.h |  9 +--------
 src/matchbox-keyboard-ui-xft-backend.c   |  9 +--------
 src/matchbox-keyboard-ui-xft-backend.h   |  9 +--------
 src/matchbox-keyboard-ui.c               |  9 +--------
 src/matchbox-keyboard-xembed.c           |  9 +--------
 src/matchbox-keyboard.c                  |  9 +--------
 src/matchbox-keyboard.h                  |  9 +--------
 src/mb-gtk-keyboard.c                    |  1 +
 src/mb-gtk-keyboard.h                    |  1 +
 src/util-list.c                          |  9 +--------
 src/util.c                               |  9 +--------
 31 files changed, 32 insertions(+), 227 deletions(-)

diff --git a/applet/applet.c b/applet/applet.c
index 69cc600..3fdd049 100644
--- a/applet/applet.c
+++ b/applet/applet.c
@@ -7,14 +7,8 @@
  *  Ross Burton <ross@openedhand.com>
  *  Stefan Schmidt <stefan@openmoko.org>
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
+ * SPDX-License-Identifier: LGPL-2.1
  *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
  */
 
 #include <gtk/gtk.h>
diff --git a/examples/matchbox-keyboard-gtk-embed.c b/examples/matchbox-keyboard-gtk-embed.c
index bbf9b19..66f6a66 100644
--- a/examples/matchbox-keyboard-gtk-embed.c
+++ b/examples/matchbox-keyboard-gtk-embed.c
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: LGPL-2.1 */
+
 #include <gtk/gtk.h>
 
 #include <fcntl.h>
diff --git a/gtk-im/im-context.c b/gtk-im/im-context.c
index 3e1749e..2c4cce1 100644
--- a/gtk-im/im-context.c
+++ b/gtk-im/im-context.c
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2007-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/gtk-im/im-context.h b/gtk-im/im-context.h
index 0ee6710..58ef159 100644
--- a/gtk-im/im-context.h
+++ b/gtk-im/im-context.h
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2007-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/gtk-im/im-module.c b/gtk-im/im-module.c
index d4734e1..049aa17 100644
--- a/gtk-im/im-module.c
+++ b/gtk-im/im-module.c
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2007-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/gtk-im/im-protocol.c b/gtk-im/im-protocol.c
index de98fd6..cbc8bd1 100644
--- a/gtk-im/im-protocol.c
+++ b/gtk-im/im-protocol.c
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2007-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/gtk-im/im-protocol.h b/gtk-im/im-protocol.h
index e189a76..ae2995b 100644
--- a/gtk-im/im-protocol.h
+++ b/gtk-im/im-protocol.h
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2007-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/config-parser.c b/src/config-parser.c
index fc0b903..4a30d2b 100644
--- a/src/config-parser.c
+++ b/src/config-parser.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
@@ -752,4 +745,3 @@ mb_kbd_config_load(MBKeyboard *kbd, char *variant, char *lang)
 
   return retval;
 }
-
diff --git a/src/libmatchbox-keyboard.c b/src/libmatchbox-keyboard.c
index 1b3a051..4d73961 100644
--- a/src/libmatchbox-keyboard.c
+++ b/src/libmatchbox-keyboard.c
@@ -7,14 +7,7 @@
  *
  *  Copyright (c) 2012 Vernier Software and Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/libmatchbox-keyboard.h b/src/libmatchbox-keyboard.h
index 7cbd4f8..45ce74b 100644
--- a/src/libmatchbox-keyboard.h
+++ b/src/libmatchbox-keyboard.h
@@ -7,14 +7,7 @@
  *
  *  Copyright (c) 2012 Vernier Software and Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/main.c b/src/main.c
index 75c263f..d4e8b39 100644
--- a/src/main.c
+++ b/src/main.c
@@ -5,15 +5,7 @@
  *
  *  Copyright (c) 2005 OpenedHand Ltd - http://o-hand.com
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
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 #ifdef HAVE_CONFIG_H
diff --git a/src/matchbox-keyboard-image.c b/src/matchbox-keyboard-image.c
index 92485dc..723f510 100644
--- a/src/matchbox-keyboard-image.c
+++ b/src/matchbox-keyboard-image.c
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2005-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-key.c b/src/matchbox-keyboard-key.c
index 18305e4..5cb7907 100644
--- a/src/matchbox-keyboard-key.c
+++ b/src/matchbox-keyboard-key.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
@@ -873,4 +866,3 @@ mb_kbd_key_dump_key(MBKeyboardKey *key)
   fprintf(stderr, "-------------------------------\n");
 
 }
-
diff --git a/src/matchbox-keyboard-layout.c b/src/matchbox-keyboard-layout.c
index e5e6b2a..04e3caa 100644
--- a/src/matchbox-keyboard-layout.c
+++ b/src/matchbox-keyboard-layout.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
@@ -77,4 +70,3 @@ mb_kbd_layout_rows(MBKeyboardLayout *layout)
 {
   return util_list_get_first(layout->rows);
 }
-
diff --git a/src/matchbox-keyboard-popup.c b/src/matchbox-keyboard-popup.c
index 8c35300..0e80d0d 100644
--- a/src/matchbox-keyboard-popup.c
+++ b/src/matchbox-keyboard-popup.c
@@ -6,14 +6,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software and Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 #include <math.h>
diff --git a/src/matchbox-keyboard-popup.h b/src/matchbox-keyboard-popup.h
index 13787e1..ccf6483 100644
--- a/src/matchbox-keyboard-popup.h
+++ b/src/matchbox-keyboard-popup.h
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2012 Vernier Software and Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-remote.c b/src/matchbox-keyboard-remote.c
index 1d51cfb..e280348 100644
--- a/src/matchbox-keyboard-remote.c
+++ b/src/matchbox-keyboard-remote.c
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2007-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-remote.h b/src/matchbox-keyboard-remote.h
index 5c911f0..46e0d98 100644
--- a/src/matchbox-keyboard-remote.h
+++ b/src/matchbox-keyboard-remote.h
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2005-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-row.c b/src/matchbox-keyboard-row.c
index d69d20a..f163894 100644
--- a/src/matchbox-keyboard-row.c
+++ b/src/matchbox-keyboard-row.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-ui-cairo-backend.c b/src/matchbox-keyboard-ui-cairo-backend.c
index 438e6e3..0b5ee4f 100644
--- a/src/matchbox-keyboard-ui-cairo-backend.c
+++ b/src/matchbox-keyboard-ui-cairo-backend.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-ui-cairo-backend.h b/src/matchbox-keyboard-ui-cairo-backend.h
index 373f2fd..42d1706 100644
--- a/src/matchbox-keyboard-ui-cairo-backend.h
+++ b/src/matchbox-keyboard-ui-cairo-backend.h
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-ui-xft-backend.c b/src/matchbox-keyboard-ui-xft-backend.c
index f7efc0f..26766a7 100644
--- a/src/matchbox-keyboard-ui-xft-backend.c
+++ b/src/matchbox-keyboard-ui-xft-backend.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-ui-xft-backend.h b/src/matchbox-keyboard-ui-xft-backend.h
index 87c1262..8bbcdef 100644
--- a/src/matchbox-keyboard-ui-xft-backend.h
+++ b/src/matchbox-keyboard-ui-xft-backend.h
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-ui.c b/src/matchbox-keyboard-ui.c
index 988504e..e0e67ba 100644
--- a/src/matchbox-keyboard-ui.c
+++ b/src/matchbox-keyboard-ui.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard-xembed.c b/src/matchbox-keyboard-xembed.c
index 9f2bdc0..3cd8b01 100644
--- a/src/matchbox-keyboard-xembed.c
+++ b/src/matchbox-keyboard-xembed.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/matchbox-keyboard.c b/src/matchbox-keyboard.c
index 5dce4a3..1c6506d 100644
--- a/src/matchbox-keyboard.c
+++ b/src/matchbox-keyboard.c
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 #ifdef HAVE_CONFIG_H
diff --git a/src/matchbox-keyboard.h b/src/matchbox-keyboard.h
index 9654810..4cba305 100644
--- a/src/matchbox-keyboard.h
+++ b/src/matchbox-keyboard.h
@@ -7,14 +7,7 @@
  *  Copyright (c) 2005-2012 Intel Corp
  *  Copyright (c) 2012 Vernier Software & Technology
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/mb-gtk-keyboard.c b/src/mb-gtk-keyboard.c
index e46d762..c35c3c4 100644
--- a/src/mb-gtk-keyboard.c
+++ b/src/mb-gtk-keyboard.c
@@ -1,4 +1,5 @@
 /* -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*- */
+/* SPDX-License-Identifier: LGPL-2.1 */
 
 #include "libmatchbox-keyboard.h"
 #include "matchbox-keyboard.h"
diff --git a/src/mb-gtk-keyboard.h b/src/mb-gtk-keyboard.h
index 06eabcc..a5d31f1 100644
--- a/src/mb-gtk-keyboard.h
+++ b/src/mb-gtk-keyboard.h
@@ -1,4 +1,5 @@
 /* -*- mode: C; c-file-style: "gnu"; indent-tabs-mode: nil; -*- */
+/* SPDX-License-Identifier: LGPL-2.1 */
 
 #ifndef _MB_GTK_KEYBOARD_H
 #define _MB_GTK_KEYBOARD_H
diff --git a/src/util-list.c b/src/util-list.c
index 664af94..37bc48d 100644
--- a/src/util-list.c
+++ b/src/util-list.c
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2005-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
diff --git a/src/util.c b/src/util.c
index ba20c53..560f451 100644
--- a/src/util.c
+++ b/src/util.c
@@ -5,14 +5,7 @@
  *
  *  Copyright (c) 2005-2012 Intel Corp
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms and conditions of the GNU Lesser General Public License,
- *  version 2.1, as published by the Free Software Foundation.
- *
- *  This program is distributed in the hope it will be useful, but WITHOUT ANY
- *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
- *  FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for
- *  more details.
+ *  SPDX-License-Identifier: LGPL-2.1
  *
  */
 
-- 
2.27.0

