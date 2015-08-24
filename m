Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FB57E00BA1; Mon, 24 Aug 2015 00:51:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76DB6E00ACD
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 00:51:55 -0700 (PDT)
Received: by igbjg10 with SMTP id jg10so54844629igb.0
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 00:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=j5Etciii6DAkCouX3DA5n5uYd7PHgwAZA5AIg9odrRc=;
	b=MxUbq/Vjy6nqM+d77dW4lBm9BTzjI10DBNUADP4NsmP0i/8QOK1PsXxFgq0+BCsIXc
	3Pm8HitLU63qsMTXFsddNlQglraCM91IHqP9lboVYO4299cIkyCTJSJ8Lu4lW1HgExM5
	yqZu5zcZWnMEqSIYy+U9v7w1L/r7xcftuEFLQNCczvDZBNrtoRE96AiBBvb6cZr6aQze
	v2gOyOCm3XKtrWsHF2TNE6OX6U7Fe3IH1OYJHzFOYyRB3k1+YinLd6as/BwmIk6BiYOw
	nBw2gmkbVa84WQFiFHTmo4+00CQ7Jhh2Opo2UoIag/zOvV5JNJm5Yi7O7mtye87euBvc
	umDA==
X-Received: by 10.50.57.52 with SMTP id f20mr15151623igq.54.1440402715414;
	Mon, 24 Aug 2015 00:51:55 -0700 (PDT)
Received: from dvm-ch2e-038.sys.comcast.net (a-96-119-89-79.sys.comcast.net.
	[96.119.89.79]) by smtp.gmail.com with ESMTPSA id
	m101sm12599368ioi.11.2015.08.24.00.51.54
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 24 Aug 2015 00:51:54 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Aug 2015 00:51:40 -0700
Message-Id: <1440402701-6195-4-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
References: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V3 4/5] weston: Enable rpi compositor backend
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
X-List-Received-Date: Mon, 24 Aug 2015 07:51:59 -0000

oe-core default configure options disables it

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/wayland/weston_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 recipes-graphics/wayland/weston_%.bbappend

diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
new file mode 100644
index 0000000..c3a7421
--- /dev/null
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -0,0 +1,4 @@
+EXTRA_OECONF_append_rpi = "\
+        --enable-rpi-compositor \
+        WESTON_NATIVE_BACKEND=rpi-backend.so \
+       "
-- 
2.1.4


