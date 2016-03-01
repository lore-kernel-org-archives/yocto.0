Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD26CE00BEF; Tue,  1 Mar 2016 05:35:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 286D6E00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:35:52 -0800 (PST)
Received: by mail-pf0-f177.google.com with SMTP id 4so34677007pfd.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=9RJCDIpSfe+8fAbNKFbN5TcUazyDAYd8f5cCY2s51Ck=;
	b=qZZr8N+oWQNDa4J6qIrqCrzuHrkofmzFJfGBcdkJlRlcjyd2/bcsBaM+i0vtbR8cp9
	Fn8+aaZCbLFT0uWa+I+Il8CSddNlQciLakZJYApXDPuxWSQDRWRfkQ1O1dISMY7npsNs
	WaxK4WQi+DWZ5O2RcOKGgd+p9Hheff+TRW9SlmQCSndJlsJUzIMWrjKZid4svYlOvP8e
	Mg/WgoEO1mwDNYTp4G4t0Q5DPfSZCIDqDiDFYMocE1sJfuT/JFqbLgtEtFCTJVqxB8M1
	BKTf/Sx5QiPdG+NTJ8DIMd93gm5I/5yI/CycxBT9cSMFTxM17H81IFVpwqvQ/J4mWhZ6
	o97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9RJCDIpSfe+8fAbNKFbN5TcUazyDAYd8f5cCY2s51Ck=;
	b=bjKQ3QF0yAlCKtBQP6pIMbB/PgDg5OaIN0WZ9/MqGPOZGUN2C0rEW/1xq9DzYobLrg
	jmHOMPKa5NqQf60vQhDfF3uN2XWAVseeY45AhXut421dnkmbBbEUMZHe5JLZxyU0d323
	0xM8HCQYrOZcoghtdecPpNkSe6YrStQs7v2GwTriYBjgYKDwBrbOADeqkE60r7Zdrj8p
	7i5/9kK2zTnJwdaRltzurcRpCUVIzLe5fUu2qMMCJnRrBPVHK3ODIKleGrFGmI8PFjKr
	97crShwFhPFZFPHztF8rmjezS/XxBPHbjtKbRVnmNK/BSb0IH0PYfBZIqiyG9CytPvZu
	TZtw==
X-Gm-Message-State: AD7BkJJTXwIFt26mEK8KXCzSBkHNcxuYsgvkDDL5Mw6FWSCnbAiILh1UEejm65OhktomTw==
X-Received: by 10.98.66.133 with SMTP id h5mr4307203pfd.89.1456839352222;
	Tue, 01 Mar 2016 05:35:52 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	r68sm45766445pfb.51.2016.03.01.05.35.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:35:51 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:35:57 +1100
Message-Id: <1456839359-12501-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH 1/3] rpi-mkimage: install to bindir instead of libexecdir
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
X-List-Received-Date: Tue, 01 Mar 2016 13:35:56 -0000

On fido and earlier branches, ${libexecdir} depends on ${BPN} so it
is not a good choice as ${libexecdir} is different depending on the
recipe name.

For example, rpi-mkimage would install mkknlimg to:
  [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage
but linux-raspberrypi would look for mkknlimg in the path:
  [...]/sysroots/x86_64-linux/usr/lib/linux-raspberrypi

To resolve this, we use ${bindir} instead as it doesn't depend on
${BPN} in fido and earlier branches as well as in the master branch.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
index 7dea43d..cce91d7 100644
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
@@ -15,8 +15,8 @@ SRC_URI = " \
 S = "${WORKDIR}/git"
 
 do_install () {
-    install -d ${D}${libexecdir}
-    install -t ${D}${libexecdir} mkimage/*
+    install -d ${D}${bindir}
+    install -t ${D}${bindir} mkimage/*
 }
 
 BBCLASSEXTEND = "native"
-- 
2.7.1


