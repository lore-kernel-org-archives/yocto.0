Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1C1FE00DEF; Wed, 23 Oct 2019 01:01:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3DA9E00DEE
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 01:01:00 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id v9so9661336wrq.5
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 01:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=7tLUoqCDQ0k9HvOWtZJezpik2WhbSpJzwsWe7V7Vq3Y=;
	b=NR8xmW/gIcamxEPEJ9rFkdH0qTNjwvTY59iV0MqWKZoctOYFMdlqXqW0SbEMkHYAej
	TlqfLMvNs1zdSWNWZlfWEpECu7vqPQNZRiFbBR10QgV64nDhU3ZpZWKD2+m6qqvqdGC7
	+SkP6hhNZha9tBdnwkZvHr/D45Lm9EtO6vyH3Ut0CKcjSa9+fCzJRa+UbCnDiQ4Z8Tzm
	T2OG5jCsospFKJBz3PzjXV91J6/BxOBQ3uNzsJ5qVHoOxD1IIE0ycuHusQual1O2gaeY
	XwGPqlScpSY2VWWG89cJd92Eg6OFxZtNdYppku44+uJ97Rqf1tVBCv1ME0RTk3i97F05
	Pc1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=7tLUoqCDQ0k9HvOWtZJezpik2WhbSpJzwsWe7V7Vq3Y=;
	b=l0ZjOr9t5DotEi9XaE3TkHZRizOIha+OrXQJeQQXMRyk8BJvr5xPswasQV8PUvOUa9
	ROHhU5lSt3iCh51E9s4h+FbNx0LeCYVCIAGYUFlAcD+8/Dpexf8XHwJcD9ltY4UB5AkE
	twIvO041uiNRW6lwm75UoM355WlQAB2+EOFQRkqBsJ49QNP6ar0XZYQ7QqRctmN4G+A2
	UXjC7FN9W+J5VMDIEzftlMI6ubF5x7epb65FEqjZ4E48uounCQUKdAEfM+fZ7KfooE9z
	lMSfg9sUDRiX1xyUB+GnXIXJgjdFKdVjOe5FvpMXu/t3jVetaNo7rih08gbEGwljdjOc
	+28Q==
X-Gm-Message-State: APjAAAUCcN5ZXPnZ3QHZ3WgNYmpLmG0Vauv84bnOIIPn9ZuApuTIJ9c/
	nBVOkIzyrS+u1Ed/F+qNqL354jO4G7+TNQ==
X-Google-Smtp-Source: APXvYqwsAyK0WjyF1rFP9qeY7coP/cDAj1zG0QLfHeH+gKnTV5/Vos2KnEaQEgwpKU3piAomL4yoQQ==
X-Received: by 2002:a5d:6a03:: with SMTP id m3mr4860166wru.90.1571817659248;
	Wed, 23 Oct 2019 01:00:59 -0700 (PDT)
Received: from P-ASN-Panpan.nantes.intranet
	(static-css-ccs-204145.business.bouyguestelecom.com.
	[176.157.204.145]) by smtp.gmail.com with ESMTPSA id
	h205sm3695521wmf.35.2019.10.23.01.00.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 23 Oct 2019 01:00:58 -0700 (PDT)
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
To: yocto@yoctoproject.org
Date: Wed, 23 Oct 2019 10:00:50 +0200
Message-Id: <1571817650-6839-2-git-send-email-yann.cardaillac@smile.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571817650-6839-1-git-send-email-yann.cardaillac@smile.fr>
References: <1571817650-6839-1-git-send-email-yann.cardaillac@smile.fr>
Cc: mallum@openedhand.com, romain.naour@smile.fr
Subject: [psplash][PATCH] add SPDX License identifier
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Oct 2019 08:01:05 -0000

Signed-off-by: Yann CARDAILLAC <yann.cardaillac@smile.fr>
---
 make-image-header.sh | 1 +
 psplash-bar-img.h    | 1 +
 psplash-colors.h     | 2 ++
 psplash-config.h     | 2 ++
 psplash-console.c    | 2 ++
 psplash-console.h    | 2 ++
 psplash-fb.c         | 2 ++
 psplash-fb.h         | 2 ++
 psplash-hand-img.h   | 1 +
 psplash-poky-img.h   | 1 +
 psplash-write.c      | 2 ++
 psplash.c            | 2 ++
 psplash.h            | 2 ++
 radeon-font.h        | 1 +
 14 files changed, 23 insertions(+)

diff --git a/make-image-header.sh b/make-image-header.sh
index d7cf67c..85c9219 100755
--- a/make-image-header.sh
+++ b/make-image-header.sh
@@ -1,4 +1,5 @@
 #!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
 
 set -e
 
diff --git a/psplash-bar-img.h b/psplash-bar-img.h
index c1c7626..b12000e 100644
--- a/psplash-bar-img.h
+++ b/psplash-bar-img.h
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /* GdkPixbuf RGBA C-Source image dump 1-byte-run-length-encoded */
 
 #define BAR_IMG_ROWSTRIDE (920)
diff --git a/psplash-colors.h b/psplash-colors.h
index d701089..73d80a0 100644
--- a/psplash-colors.h
+++ b/psplash-colors.h
@@ -4,6 +4,8 @@
  *  Copyright (c) 2012 sleep(5) ltd
  *  Author: Tomas Frydrych <tomas@sleepfive.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  This program is free software; you can redistribute it and/or modify
  *  it under the terms of the GNU General Public License as published by
  *  the Free Software Foundation; either version 2, or (at your option)
diff --git a/psplash-config.h b/psplash-config.h
index 82bb76d..56d6595 100644
--- a/psplash-config.h
+++ b/psplash-config.h
@@ -4,6 +4,8 @@
  *  Copyright (c) 2014 MenloSystems GmbH
  *  Author: Olaf Mandel <o.mandel@menlosystems.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  This program is free software; you can redistribute it and/or modify
  *  it under the terms of the GNU General Public License as published by
  *  the Free Software Foundation; either version 2, or (at your option)
diff --git a/psplash-console.c b/psplash-console.c
index 055f5b0..b19384b 100644
--- a/psplash-console.c
+++ b/psplash-console.c
@@ -3,6 +3,8 @@
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  This program is free software; you can redistribute it and/or modify
  *  it under the terms of the GNU General Public License as published by
  *  the Free Software Foundation; either version 2, or (at your option)
diff --git a/psplash-console.h b/psplash-console.h
index c444d27..4fcca97 100644
--- a/psplash-console.h
+++ b/psplash-console.h
@@ -3,6 +3,8 @@
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  This program is free software; you can redistribute it and/or modify
  *  it under the terms of the GNU General Public License as published by
  *  the Free Software Foundation; either version 2, or (at your option)
diff --git a/psplash-fb.c b/psplash-fb.c
index c064d18..a3230da 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -3,6 +3,8 @@
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  This program is free software; you can redistribute it and/or modify
  *  it under the terms of the GNU General Public License as published by
  *  the Free Software Foundation; either version 2, or (at your option)
diff --git a/psplash-fb.h b/psplash-fb.h
index d0dce10..42b7fb0 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -3,6 +3,8 @@
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  This program is free software; you can redistribute it and/or modify
  *  it under the terms of the GNU General Public License as published by
  *  the Free Software Foundation; either version 2, or (at your option)
diff --git a/psplash-hand-img.h b/psplash-hand-img.h
index a015e2c..e0a863c 100644
--- a/psplash-hand-img.h
+++ b/psplash-hand-img.h
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /* GdkPixbuf RGBA C-Source image dump 1-byte-run-length-encoded */
 
 #define HAND_IMG_ROWSTRIDE (400)
diff --git a/psplash-poky-img.h b/psplash-poky-img.h
index 76267e6..a617724 100644
--- a/psplash-poky-img.h
+++ b/psplash-poky-img.h
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /* GdkPixbuf RGBA C-Source image dump 1-byte-run-length-encoded */
 
 #define POKY_IMG_ROWSTRIDE (1708)
diff --git a/psplash-write.c b/psplash-write.c
index 3fdba95..f34af0e 100644
--- a/psplash-write.c
+++ b/psplash-write.c
@@ -3,6 +3,8 @@
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  Parts of this file based on 'usplash' copyright Matthew Garret.
  *
  *  This program is free software; you can redistribute it and/or modify
diff --git a/psplash.c b/psplash.c
index 992e199..b0b91aa 100644
--- a/psplash.c
+++ b/psplash.c
@@ -3,6 +3,8 @@
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  Parts of this file ( fifo handling ) based on 'usplash' copyright 
  *  Matthew Garret.
  *
diff --git a/psplash.h b/psplash.h
index 7b1298f..85aaf60 100644
--- a/psplash.h
+++ b/psplash.h
@@ -3,6 +3,8 @@
  *
  *  Copyright (c) 2006 Matthew Allum <mallum@o-hand.com>
  *
+ *  SPDX-License-Identifier: GPL-2.0-or-later
+ *
  *  This program is free software; you can redistribute it and/or modify
  *  it under the terms of the GNU General Public License as published by
  *  the Free Software Foundation; either version 2, or (at your option)
diff --git a/radeon-font.h b/radeon-font.h
index d2c59a4..e4253be 100644
--- a/radeon-font.h
+++ b/radeon-font.h
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include "psplash.h"
 
 /* Font generated from 'radeon' bdf font */
-- 
2.7.4


