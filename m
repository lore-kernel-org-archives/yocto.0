Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A9A3E00CFC; Wed, 21 Sep 2016 22:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D60A9E00CE1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:08 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id w84so12084990wmg.0
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=uWSi/Rsrofi6qLu4MqsioUF39d9Jq+IBZqfSsUfxplk=;
	b=Rb9GVZiMPrB5HuDIqZe1nwaCjlw0xTb/xmz/aXOfyPjI+ynnNaWmurvxH1NDgVPl+s
	eTna+ALICRPTIkrerZpHOq3/1d5/OOs7Xa+OqvRxRNJ3niEBXCC5tYGKJxDs28RA7gbX
	QMN4hz5h6+VqlT/3khckn5Qwj6/ulegh7wTWaoPhRoaCsS730fkVp2q9F2CbThpqufhc
	IRYz+pbxmF6MMfUgCBom0RQjSqXkiFoQlBfZX7EFLMvc/yUt8BS/Zb3fA1YjT5LhU5CI
	+/P4uk7Tbyfb5XJ4Y1rygVDcnHLUhbskM4POtzKGKIYpLqCSGviS/7yABjBNoKqp+BPI
	BM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=uWSi/Rsrofi6qLu4MqsioUF39d9Jq+IBZqfSsUfxplk=;
	b=LVcpB2j9NX/7cHhXjPNPXVnEZ1rDfIFzGRdfInt1p0nHX41p2LotfuuozPvKLqTEJ9
	I9OHTolKwnMC11wUuXSYp/XJ/ATLHwimZyVXyyfH1CgtC2wA4QWtMYKr7QtLZwXwk84h
	oTnTdqRKHsfvEs1Z+DQK1uLcl3q/zkeB0brg7pTThWzeJoROD1XaGo14nCNPDoGLSl6W
	7r8gujkbWBCgVmrN3SmKnQeQVA3bKj5DkR8I7v+5uhJP6gmpuV2Nnp9jyGMOK2pJSx3r
	XX/6WhY/yjXBI01cvqgPErBk/h3kBib3wmIbukkJlqa9SW3mzsfrm7aqA5+rvxyewLV5
	eKcQ==
X-Gm-Message-State: AE9vXwMz6q1Bw/qr+YOAJ3/3yqc2kpJgdubXEQGQ3MUQNeK8lLHmwst6AorAIMNGCFHlyw==
X-Received: by 10.28.203.196 with SMTP id b187mr6003718wmg.120.1474523287819; 
	Wed, 21 Sep 2016 22:48:07 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0CCA.dip0.t-ipconnect.de.
	[79.223.12.202]) by smtp.googlemail.com with ESMTPSA id
	n131sm35913003wmd.3.2016.09.21.22.48.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 22:48:07 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Sep 2016 07:47:53 +0200
Message-Id: <1474523274-3883-6-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 5/6] eglinfo-x11: align to VC4
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
X-List-Received-Date: Thu, 22 Sep 2016 05:48:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
index fd32abc..2d720ba 100644
--- a/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
+++ b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
@@ -1,2 +1,2 @@
-EGLINFO_DEVICE_rpi  = "raspberrypi"
+EGLINFO_DEVICE_rpi  = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'generic', 'raspberrypi', d)}"
 ASNEEDED = ""
-- 
2.5.5


