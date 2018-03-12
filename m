Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A41AE00E51; Mon, 12 Mar 2018 09:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A8E9E00A61
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 09:38:13 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id l8so2015552wrg.5
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 09:38:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=jl3mkOQSKi/VFUkeNxS9ugeQEk5DPIsJ4HoJuX3yXxI=;
	b=GDzvdQHzXuoE8SHpJNZlekBk0qrbIhsj0VL0eCgCaiswnMSXZv/FncXWccrSV49Yz7
	D2wii2zRhRtbyQP3XfsgrnauwqfsoHGGSomhv8SUoxBnkkezHWqHlpf06AyGy7E5UXAN
	7S1KABoRLbEeUh3gQalZ15sEmh3du20fiA3yhzP4SXvdHYTqdO3Puwal1C7sVprE5sOe
	8V1oxGoY0m4WvFD2HTWXk1cWgJu8Z4yKMLDkkch/1bJuWWv1rNinyTzitng6YIZLS8VC
	0lv2QRk3ZBtKWkFOPzYUltFzx0CT5eORTdM0KT5JGkL+DEpgAG2OdRQhQ3hJYwdLHXte
	7F6A==
X-Gm-Message-State: AElRT7EKwQdcXsTDjKcCKEsVRyA4NRUhFz8xvy47fFiJVpAM1FHTa0kj
	VjuCB8ZcBr9yOhUFjBW47FEP727H
X-Google-Smtp-Source: AG47ELvVfJ/FvvHBMX4Cpu0FHRiPMO8xFKH/1sxfg2rQRzGFTGug2EwSTauhRgjwU0HoqYEqcmIwsQ==
X-Received: by 10.223.149.70 with SMTP id 64mr6667905wrs.76.1520872691120;
	Mon, 12 Mar 2018 09:38:11 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	m15sm8134623wrb.58.2018.03.12.09.38.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Mar 2018 09:38:08 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2018 16:38:05 +0000
Message-Id: <20180312163806.16943-1-git@andred.net>
X-Mailer: git-send-email 2.16.2
MIME-Version: 1.0
Subject: [meta-java][PATCH 1/2] openjdk-8: fix MAKE detection patch
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
X-List-Received-Date: Mon, 12 Mar 2018 16:38:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

The patch had a few typos, leading to errors during ./configure
   ../jdk8u-4be07cb28b21/common/autoconf/configure: line 8408: test: too many arguments

Change-Id: I867eba7aae3390aa869e69c86f29e77b505043e7
---
 recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch b/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
index 6454237..5192d1a 100644
--- a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
@@ -6,7 +6,7 @@
      # User has supplied a make, test it.
 -    if test ! -f "$MAKE"; then
 -      AC_MSG_ERROR([The specified make (by MAKE=$MAKE) is not found.])
-+    if test -a `dirname "$MAKE"` = "." -a ! -f "$MAKE"; then
++    if test `dirname "$MAKE"` = "." && ! test -f "$MAKE"; then
 +      AC_PATH_PROGS(CHECK_MAKE, $MAKE)
 +    else
 +      CHECK_MAKE="${MAKE}"
-- 
2.16.2


