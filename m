Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11B54E01250; Thu, 11 Aug 2016 18:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEABDE0104C
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:29 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i6so587470pfe.0
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=YHq2SmJZBYL/AjrXkBDTvW/Q3EAQ45Wde4up8c2cVqo=;
	b=GQy1MIhcK9rA68ECPt/X1tZYXPhD6hFYuN0IeR03SLTN1NrkvFlN3JuJqA28Eb/cOT
	dWRAuDzmepXUoXJarLKlYSRo49vDL4imw8SwKbFB50wzWp7mqSsv+dk/0DyDqZV/mDMO
	pzCchX7jRGKY9+/n45/sytlLFJUg2688hnTmnuuyQY/4TWaDjeU+GuJUZPzTeagFmIF/
	PLpwwYDrqz/Z9nuUmj4KyCGaax1Dq0FH5ufdvwq624TaFFJ8iK79KjFm2YCrF4W73J6u
	Ak2MdJkRaqCEVOZtHdvK38s51fit+zXZILv/XTwzq4EuGmoV6ouJ4+SoURnGxXk2cUyF
	V6Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=YHq2SmJZBYL/AjrXkBDTvW/Q3EAQ45Wde4up8c2cVqo=;
	b=X8lyhj9gWVfUaJpam0GeWcOjT9EAVCqdZFUoRZOgrxsqxh5v8lnXoEPZMma4RjjrTn
	Ff0xJfDWpBxEXXzWFmLW28gC05mWZ6gsYNhRiH3sSj9bX7hGbX0zGGFT+dN3IQT+tgnD
	8opWGpOn3egzJqrvh3Bf5+eB3Cek512RFYzsLzTH5OsKeUhPUhp85S2Uqk0wiLXN09ma
	WJEozLrVd9zOz7KFQCHuew0ggXXFctE149sj4vWyW3SHkvSO/FcdN9QZV/4dDZvviblt
	xZrfcZdhPnMYXYcK+2si2uJP5PMeXC5DqQ8TPVHltThoWKntxK22OmNQ6Q6a2iups2+i
	60TQ==
X-Gm-Message-State: AEkoousmttksT25nGr66Qts4YH4YlxgHphfjmcj4vXjHRQJdY9bN76jgtuPW0rah3jL5Rw==
X-Received: by 10.98.75.65 with SMTP id y62mr22030379pfa.99.1470963989552;
	Thu, 11 Aug 2016 18:06:29 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:28 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:58 -0700
Message-Id: <20160812010608.31182-13-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 13/23] weston/weston_%.bbappend: modify configuration options to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:32 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/weston/weston_%.bbappend | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/recipes-graphics/weston/weston_%.bbappend b/recipes-graphics/weston/weston_%.bbappend
index 3ec311d..70f4360 100644
--- a/recipes-graphics/weston/weston_%.bbappend
+++ b/recipes-graphics/weston/weston_%.bbappend
@@ -1,7 +1,8 @@
-EXTRA_OECONF += "--enable-rpi-compositor \
-             --disable-resize-optimization \
-             --disable-setuid-install \
-             --disable-xwayland-test \
-             --disable-simple-egl-clients \
-             WESTON_NATIVE_BACKEND=rpi-backend.so \
+PACKAGECONFIG_rpi_remove = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', ' fbdev', '', d)}"
+EXTRA_OECONF += "--disable-xwayland-test \
+                 --disable-simple-egl-clients \
 "
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--enable-rpi-compositor', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-resize-optimization', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-setuid-install', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
-- 
2.9.2


