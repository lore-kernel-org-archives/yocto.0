Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64A28E00E8C; Sat,  3 Oct 2015 09:37:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD85E00D89
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 09:37:47 -0700 (PDT)
Received: by qgt47 with SMTP id 47so118751462qgt.2
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 09:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=1ELKOuIH0F9u2YAkjIiwJ3qRBuP6WPhAlmg0kcBftdE=;
	b=OWOlqNJCtjKhDulARz57qfPjBe4rJVNNcnA7bWLHV5fhzJ/VYQWkeIwa7lCJh4E2Rq
	+UHmrwG7H4BPO3aENwlqwgVAFOV9wOGUV97LHLavItdoCE+OAG2mDfLlqzSbidMVbcfT
	Rb7SnUhntMPZ3M7Cwd3peARRIctBsMLPn+CrkcLQ1lvXOsl5q9PJzTPlykfbXzj+suWQ
	SF5BVO7fkfUWCRAnBCHZIsDTQzaM4Vzkem/H6CNdanj+kzGc6ITfMO7S6FJCSugRDv+J
	LAmT7X8D3a3Ksro5Txx5m4OklYXclec8DdWnVsIYMPtLMzjsx5ZKseaAsLk7xYCRuZut
	DgTA==
X-Received: by 10.140.91.109 with SMTP id y100mr26930032qgd.48.1443890267485; 
	Sat, 03 Oct 2015 09:37:47 -0700 (PDT)
Received: from khem-dvm-001.sys.comcast.net (a-96-119-177-31.sys.comcast.net.
	[96.119.177.31])
	by smtp.gmail.com with ESMTPSA id 35sm7164184qkv.42.2015.10.03.09.37.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 03 Oct 2015 09:37:46 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  3 Oct 2015 16:37:37 +0000
Message-Id: <1443890258-14442-4-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 4/5] weston: Enable rpi compositor backend
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
X-List-Received-Date: Sat, 03 Oct 2015 16:37:48 -0000

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
2.6.0


