Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13EB3E0124D; Thu, 11 Aug 2016 18:06:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2C8EE0124B
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:28 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id h186so581526pfg.2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4EFiTTbMJJurmGm5IP3RzC0Gf/6qi+mmY4sqo5dKky4=;
	b=U1wLtGhTb3WcFildc32Aul023r7ntQDirrYfwGVMeKLfXojx/lyliwEhQ5GClpv289
	VnE+eJxh0ZUXqhPQ57g64/RrU/Rc2E6vQXQqtS+nL1BaklJMxqEyVSUHIi4YZKoT9wrj
	B+Z2Ifnn7ANAM74GgWA/h9g3UqMucLE537jYfZ+Q0N/YjYOO+yBliWvoXVdOu1qScdP2
	D+WwnGj8oTuUav+iyuI98iKoJ8XgSGLOJbY36O3LgN5tS01PAmAr86IB3toTfA1SyUNj
	n4y3aoKo8NTeWpPdnR64dL/bF/20u2jQlSm5L6Cbhhi4+XE2nBF1oKHsRRwuy9zQY2bE
	1znw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4EFiTTbMJJurmGm5IP3RzC0Gf/6qi+mmY4sqo5dKky4=;
	b=lVZS/AyWLSV3dTcdIC3f/7bWJwU4v9WgDoKbmaPbiF30lqp73ensz66QBp6GnQblOQ
	FpWZ/uBZ6ZKIXjrk0QCYDNREelHJcd7Irv1V8eg6bDOKAjFuQfN1f5nHx4S17VWfs0Y+
	NGfqAI4AMAPwOWvdHz/eNIqFPlMl5Z2Cu482h8BI3MgIxQOJzodV2zTMc9IZ6eCunSK3
	5tUzy7Mxz7T7kjI8yMuXikA98q8yxxZGPZGsnZqAwXnqUjEMnrXNAew195OSOGHRvgVi
	iIJrkQuGUY++5BT1I/RnE5gf+0dZvxHKp7U33CnFvj2L/rQayXDHIe511sgmEAP1YA8h
	LagQ==
X-Gm-Message-State: AEkoous1Lx37osKOpWU02Kz3U4sesMwNLkff+8GGIf4sISF4iD6Ev3q5nZ14sK+yetUsRQ==
X-Received: by 10.98.204.74 with SMTP id a71mr22342847pfg.149.1470963988606;
	Thu, 11 Aug 2016 18:06:28 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:28 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:57 -0700
Message-Id: <20160812010608.31182-12-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 12/23] wayland/weston_%.bbappend: modify configuration options to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:29 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/wayland/weston_%.bbappend | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
index c3a7421..57b8079 100644
--- a/recipes-graphics/wayland/weston_%.bbappend
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -1,4 +1,2 @@
-EXTRA_OECONF_append_rpi = "\
-        --enable-rpi-compositor \
-        WESTON_NATIVE_BACKEND=rpi-backend.so \
-       "
+EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
+
-- 
2.9.2


