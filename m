Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDE18E00953; Sat,  5 Nov 2016 21:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1850FE00828
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:23:08 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id i88so12359380pfk.2
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CmOIAIWs57/DqTre2Ugm2WuG89NoT77HEo9HLAnDXPw=;
	b=ZOds/8so/iUfBleun/2vUukSs0GvqSkPK6slJOfs5YivzHqQFL9euzUPbYs1HFueCI
	4LmJ5LsL6qYKvsfK12plWmrEJErGniegsh9Fh5qohrZN7t9rEX0g7A0R/OFfEu2ZtSwg
	KySYk03R0UXAfWLplLqcKm+cNnfc5Zp3x2dcFiuosT1gLK3HtJ7iWwXMRkxF1aUTanQX
	f8JGQk2ZgCRLQPZpq7/hUIEKE5uS6UhdkpvlPOMN7ao0kNQ4P6FO8Jr9PNWj3wAuPdab
	okH4EVct10lsrEby5L61ipmveWRkK2GdjSd5jXk7US6SoqBXDuR40ctovalLN/bQUh87
	ubAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CmOIAIWs57/DqTre2Ugm2WuG89NoT77HEo9HLAnDXPw=;
	b=WX0MR6DhaEutjIvuDCk8JKgBzKMZ1tvNhx8Xd1HHpvZXH83jNNXc0yMofh45kLr3BL
	trWwQ/4UUHsfksFYJQc7J99xtDBgNs4FaU18riQ7qvWoKjKXkj2vLaL6J3NQI4oCRiYo
	xA4HjdOVXwPsK9ft7B4fsw6MlkpS/ZAz/aGz0je+Hko2GQUAxMEFnp4tQ059sRy5YGjs
	UN61Jz1ScI4K+AINwk+WZ2p2G00SRvvTX/sqbUXYI9TbliWx2XyWOqFgkJcsI5YCdtRu
	CZq6ebr3BHT+HsCLAmr8imaUO2Fl1OZAje0av3IVx9xY6N1JCwYxOWPxCDOaD3n1XWqA
	uxxQ==
X-Gm-Message-State: ABUngvcwTnGHMUsddyZeL8aNFXZ+PzQYKd7xTRE8mitxCb1aM8kPWOrrmDvn/FIt3dmSpA==
X-Received: by 10.99.5.21 with SMTP id 21mr1268572pgf.32.1478406188119;
	Sat, 05 Nov 2016 21:23:08 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:07 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:23:00 -0700
Message-Id: <20161106042304.3357-4-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 3/7] mono-4.xx: Remove --disable-static from EXTRA_OECONF
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
X-List-Received-Date: Sun, 06 Nov 2016 04:23:10 -0000

This is an inclusion of Fabio Berton's patch from:
http://yocto.yoctoproject.narkive.com/yo6DAY92/meta-mono-patch-mono-4-xx-remove-disable-static-from-extra-oeconf

I am not able to build Mono on Krogoth without it.

See https://bugzilla.xamarin.com/show_bug.cgi?id=33081 for more details.

Signed-off-by: Barry Grussling <barry@grussling.com>
---
 recipes-mono/mono/mono-4.xx.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index 3ce5871..f1dc536 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -31,6 +31,9 @@ inherit autotools-brokensep
 inherit pkgconfig
 inherit gettext
 
+# avoids build breaks when using no-static-libs.inc
+DISABLE_STATIC = ""
+
 EXTRA_OECONF += " mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no "
 
 do_configure_prepend() {
-- 
2.10.2


