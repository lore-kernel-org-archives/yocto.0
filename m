Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8495BE00C29; Mon,  4 Apr 2016 06:25:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14175E00C18
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 06:25:07 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id c20so35886668pfc.1
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 06:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=kjkoQB9AOeAKuElcZ9x5CPP69fzc0Z9OB+ir8nJI0Cw=;
	b=M+uMcgH7sqop7DD8IY5mVn1YBoDRrAx/sGcm/ygBsQQe6a1ZmW4JkQT3UqPx8NMf8l
	R4rKM0KnqSreER2DTSbpsqMFOJ8fHXpfhiCBKk6Dzs/dUv9ceuVyCVcr7D0jahuWoYbf
	PyNtGExP4WLu1V+4ktVxpAxctKJy1vQ/SCHreGDZCFqKeLWqkfJZyJmd+DI2OhONqJnM
	qUy+J725YI8cLRT2cVFj8xq+WsFoR4WyGF6gdAXoE8LeyC6L2ASfbP7Q6H8A8QXHohDA
	lle8ZFfdl083HRVxURLKqdW9wUPs+mfn/2AP8BBUtx3dsuGJt9rcdjrTN15ZhMdGeLdW
	6esQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=kjkoQB9AOeAKuElcZ9x5CPP69fzc0Z9OB+ir8nJI0Cw=;
	b=MyewVJUGYgnq5hjyXZD6AcXg7IcyxWxaxJrKnE4s427RHnHreNi+dtM6xBMDirs9dg
	khEqtwR7acIAqYOSh04nUCodMqXMou9INOUkBWuWaR2roEyNWuOCFUNCLr8WSVET12cF
	IJy+08H49ZOj2Sp1DmJCY6aFJuPzwkz23l/GhcgCVKAux2Yt59ciLoIukGsQ8MuxfJVD
	FqolI1sg+EqvlJu5pdot/VeCxZPjSWi/zz4XjY4PrfWqYAdXdYCvwzrci2tw9oZZFiu9
	CYXtS1fvbZe3gg6R4o6D5/buLkSQzw/VCY5JfDdIiz+IMqQBoiKjKv5eA9kH+gmuhjFG
	mi7g==
X-Gm-Message-State: AD7BkJLyiG/Vp8ffxBQgOajhFThFL6P+KHGfIeNwAXEnozQYn/OC3KOEj1Hxh5+i2SzzgQ==
X-Received: by 10.98.18.1 with SMTP id a1mr20999789pfj.39.1459776307412;
	Mon, 04 Apr 2016 06:25:07 -0700 (PDT)
Received: from localhost.localdomain ([209.65.105.133])
	by smtp.gmail.com with ESMTPSA id
	i1sm39725261pfj.17.2016.04.04.06.25.06 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 04 Apr 2016 06:25:06 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 06:24:51 -0700
Message-Id: <1459776291-5464-2-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1459776291-5464-1-git-send-email-twoerner@gmail.com>
References: <1459776291-5464-1-git-send-email-twoerner@gmail.com>
Subject: [PATCH][meta-raspberrypi 2/2] raspberrypi3: set core frequency
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
X-List-Received-Date: Mon, 04 Apr 2016 13:25:08 -0000

Pegging the core frequency at 250 avoids any fluctuations of the baud rate on
the console.

See:
	https://www.raspberrypi.org/forums/viewtopic.php?f=107&t=138223

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/raspberrypi3.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 2c3df41..9dbb192 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -9,3 +9,4 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 include conf/machine/raspberrypi2.conf
 
 SERIAL_CONSOLE_raspberrypi3 = "115200 ttyS0"
+CORE_FREQ = "250"
-- 
2.7.0.rc3


