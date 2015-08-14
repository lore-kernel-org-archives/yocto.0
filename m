Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 259AFE00A9A; Thu, 13 Aug 2015 17:41:10 -0700 (PDT)
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
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC717E00A54
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:41:07 -0700 (PDT)
Received: by iods203 with SMTP id s203so70048634iod.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=j5Etciii6DAkCouX3DA5n5uYd7PHgwAZA5AIg9odrRc=;
	b=T0cxFetuE78zTycSXnXreFFQ1fhwzTY4wNDGV7nAiEzO4x2W+vT4maJJ50lmDSJYna
	NnCoL1yMzIyB+G/WnPC19LyK9qa4V5OCyWY8IEilEIa5VLe7WLdp7JQr4eeOKR6JPK+w
	mEgsaVqLXKhIDVIus/iisNVdFuPX/mynv0kETM1MU7qg6w4lAPMIV2WJGFIiMwACOLt4
	wTkX34zny753JmtIul9RgRQ7P0wVo3ITJvI1dzoTfGmzxHwe13yDzxcCUPDcNpfE2Von
	A0Hyj7hgbZlybHTCPutWxzmBUy6w2MB/dmxVcuQJSICY0uBt+qQRRtg7Md2Mww+Fq74o
	ICTA==
X-Received: by 10.107.168.214 with SMTP id e83mr7164069ioj.112.1439512867057; 
	Thu, 13 Aug 2015 17:41:07 -0700 (PDT)
Received: from dvm-ch2e-038.sys.comcast.net (a-96-119-89-79.sys.comcast.net.
	[96.119.89.79]) by smtp.gmail.com with ESMTPSA id
	e33sm2847354ioi.12.2015.08.13.17.41.06
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 13 Aug 2015 17:41:06 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 17:40:58 -0700
Message-Id: <1439512858-19957-4-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1439512858-19957-1-git-send-email-raj.khem@gmail.com>
References: <1439512858-19957-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/4] weston: Enable rpi compositor backend
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
X-List-Received-Date: Fri, 14 Aug 2015 00:41:10 -0000

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


