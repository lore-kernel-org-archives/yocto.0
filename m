Return-Path: <wesley.lindauer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5F97E00C58; Wed, 14 Nov 2018 14:32:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wesley.lindauer[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8583EE00C4E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 14:32:53 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id f84-v6so5258127ita.1
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 14:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=ChXNOpWHSBVfgAqV4XwYi2PzONAIUKzp6KK85Bjptw0=;
	b=ZMhHMw5WLdipSfon/yJhPxHECnOmjp0r+p7l84JSWtAH3hR/uLXiuXIF2aU1CLOiGa
	t6YW9F8Xlhn4TsJZph8/etp0ApdVgVOVW9oACWK/x9iVxb93x0mQZLoTvMmzv8brkvbz
	ssohTqGvjRC6nNhz6pWQ/v9aXIiab05cDNQZPSpFb12qtY+SWXrslBai+lj/FeOtL99M
	SE4a2ZFr3FPNWP6di+ulQPaB/6pG0p9X4546tiwA4AGObaz+pdWgLLO+9wfauK7F1KLI
	aQy9D4mzHLivkT57YFzPJQ+Ze5GsFklxl8bBKenDGTpj+Xp8t331Vs3li2aGWUNQmGhP
	QcmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ChXNOpWHSBVfgAqV4XwYi2PzONAIUKzp6KK85Bjptw0=;
	b=omjcWCZdVZXypFh6p17TBnY36bsVRUTiTVNdMdncTpwILySSrgGAN+zf42PkZNHby5
	h4ZIgyN7GvgkH/CAHyKYhl/XC0p1QZpY9/E3dGcxeWhjcH/vdBMOHwfFCHqJPJ5tI8Y5
	rG2zaMHbXRx2JAO42Xnivhu2gj4IyWpjmjKPcHXR7PK/O5HBqezoaOrng7zHZRbB5URM
	6yk3zgQfOjryNMhH1USzzfRRNdg7eD8pmUtcHrwVZQbIDYm532VHTalO4AG3kJ2KV0Fj
	PYsp2c8b+IR6qXKab1sGlREnxWhBzx+xAhM+g890VjzaPHc7VJEy4nPxNNc2P6PmxZw7
	Za8g==
X-Gm-Message-State: AGRZ1gKlmxt+xBDQssDRsQbuZttRTvDge4TeKDjortJ+xDeWQTTaUc5i
	pqUP7pYFlSne6htbAGHwj3y2/1xH
X-Google-Smtp-Source: AJdET5fSaqkGxS9TpMzWnUyhUDtd4Cf52AuXSvyDk+KjUZyZYdd7V7XBKV0+YSttUj1573fzH62O1A==
X-Received: by 2002:a24:d648:: with SMTP id o69mr3519060itg.31.1542234772823; 
	Wed, 14 Nov 2018 14:32:52 -0800 (PST)
Received: from camaro.lpdev.prtdev.lexmark.com ([192.146.101.90])
	by smtp.gmail.com with ESMTPSA id
	z186-v6sm7255168itd.43.2018.11.14.14.32.52
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 14 Nov 2018 14:32:52 -0800 (PST)
From: Wes Lindauer <wesley.lindauer@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Nov 2018 17:32:33 -0500
Message-Id: <20181114223233.14672-1-wesley.lindauer@gmail.com>
X-Mailer: git-send-email 2.14.5
Subject: [meta-gplv2][PATCH] grep: fix install if bindir == base_bindir
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
X-List-Received-Date: Wed, 14 Nov 2018 22:32:55 -0000

This same fix was made to the grep recipe in poky at hash
5f137933c05646dee685d7846cba875ae74064cd. Not everyone gets the luxury of
using GPLv3 code, so the same fix needs to be applied to the GPLv2
version.

Signed-off-by: Wes Lindauer <wesley.lindauer@gmail.com>
---
 recipes-extended/grep/grep_2.5.1a.bb | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/recipes-extended/grep/grep_2.5.1a.bb b/recipes-extended/grep/grep_2.5.1a.bb
index 97ca768..b331fee 100644
--- a/recipes-extended/grep/grep_2.5.1a.bb
+++ b/recipes-extended/grep/grep_2.5.1a.bb
@@ -38,11 +38,13 @@ do_configure_prepend () {
 
 do_install () {
 	autotools_do_install
-	install -d ${D}${base_bindir}
-	mv ${D}${bindir}/grep ${D}${base_bindir}/grep
-	mv ${D}${bindir}/egrep ${D}${base_bindir}/egrep
-	mv ${D}${bindir}/fgrep ${D}${base_bindir}/fgrep
-	rmdir ${D}${bindir}/
+        if [ "${base_bindir}" != "${bindir}" ]; then
+        	install -d ${D}${base_bindir}
+	        mv ${D}${bindir}/grep ${D}${base_bindir}/grep
+	        mv ${D}${bindir}/egrep ${D}${base_bindir}/egrep
+	        mv ${D}${bindir}/fgrep ${D}${base_bindir}/fgrep
+	        rmdir ${D}${bindir}/
+        fi
 }
 
 inherit update-alternatives
-- 
2.14.5


