Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F5DEE00571; Wed, 21 Sep 2016 22:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9C2DE006EE
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:05 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id 133so12094953wmq.2
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=dRJ0aoiJb1U94KRhvidOgH4etRX3QJaaYt5BlYBaNhw=;
	b=dVjjfnq4rrrRdidmrx9y8nQtHxw215uKf93fYoRmWCltgOvGuMU1ptFdntBNwDLZNm
	xAkoA0GZTxxWUk2hx2nla+dct+WKr4sZCLVxoIGal7zotWYL7Yb6Wjo7EunHNsYuZjcl
	c+9ANfFdTqTcRMgGAZPFu0qpm57WVeq04+jPpN+VMkzwjQHOaWKZlfnYSJpar8Z+6RTL
	f38cRUH6wXjjED86oR6cDnCkSSS8E9c62N4ZC5QKyY3kKAePI6f8Cz3Zy1o6nSaTcqAJ
	H7nPqcwCN8aebDa+hYIfP41A8TzGPKE71y7MPWEMb6sDUnqMCOilsj4l5F19YLd4nOo+
	J6AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=dRJ0aoiJb1U94KRhvidOgH4etRX3QJaaYt5BlYBaNhw=;
	b=XqB9CmEQ6cbwt+4T/0xo4WGz/VUr9VwPwHpBJ4sv5wcSB4SA41BOiHtkyAgvIyaIwd
	h4TxS19MT7wKcB5ZmhLYJW2CkeqxQTadbYLJ5T5QpezQXydWU4f0W11iWSFMs+Lp6ooJ
	lRkZ1G1sz85HCEMKmxfwFBdwGNoHg8zkfoIU+b3PKoaGZkpnwHJfojCwmsSP03r8k8wY
	8V4FZCi8i/aXWCjuNQ1CFC6+ruSuNAtEUpK7HmAUo+qyztCWq5MU4i5zm3kDKRBub8Pu
	8SVO3pgTZ0ubvM99FUFbU0dxhTYnw7JtqcSlXUNy14veoHT+k8CtgeT4wuF5dkGwnRVu
	G1jQ==
X-Gm-Message-State: AE9vXwOnttU5xbkm7YRJc99NtWYCC65Dn6CIN35QJiccnlIZfIrqwKSBRRddWP+6ER1xaw==
X-Received: by 10.194.192.35 with SMTP id hd3mr191499wjc.27.1474523284926;
	Wed, 21 Sep 2016 22:48:04 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0CCA.dip0.t-ipconnect.de.
	[79.223.12.202]) by smtp.googlemail.com with ESMTPSA id
	n131sm35913003wmd.3.2016.09.21.22.48.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 22:48:04 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Sep 2016 07:47:49 +0200
Message-Id: <1474523274-3883-2-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/6] mesa: align for vc4
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
X-List-Received-Date: Thu, 22 Sep 2016 05:48:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 recipes-graphics/mesa/mesa_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index 9c5df99..e789022 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,2 +1,3 @@
 PACKAGECONFIG_append_rpi = " gallium"
 GALLIUMDRIVERS_rpi = "vc4"
+DRIDRIVERS_rpi = ""
-- 
2.5.5


