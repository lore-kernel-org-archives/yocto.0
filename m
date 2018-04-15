Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80421E00B28; Sat, 14 Apr 2018 19:08:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A05BE00571
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 19:08:30 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id x4-v6so8119692pln.7
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 19:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=+LaTDyogB7xssrT2Ir67aXPdGCgej440xyCCHkJwWp4=;
	b=Zx1a9qunPwu0/+IRPSxnckoUa9bC/8Cvq0VS6WBn16x0MJVibHYD9bzhCFo/ufOKZL
	6pUqrngVxDHZ1KSK4LYkoCbCC2oJ4BhzPGKKNXh52fo0tsteVovlx3HHm7XplP1c+ioI
	f5m6LzSHjXNtaQqB7Ir+Jkecqa1N8KnW96lkA0qYNdjeguEViGQfnkUDLW9U1lBX+JEj
	PvB5J0b65Cij1Af8MNUcmp8tsxEj2PSAaO/4HMxnLflHIn84t8K3ywkDGDpH3d32cQ2F
	gLJn78FElZ2xM/RtVka9YbDpfStkkKzCxuGxxKKyceMhHprC0sqnmYdMs83BYBqS6A9I
	O65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+LaTDyogB7xssrT2Ir67aXPdGCgej440xyCCHkJwWp4=;
	b=kyphYGJiosrmyBiUjwHnr3UVYIau6KPW1vRyPbRO6BZ31VpfrF47vvUTruJkBDQHAt
	g6YVb/VfHiXmM2KhbtIzzbmGlheJLR+pmc7TW67TOcEln79ao60Rg7UnX2fR+rwn5UBz
	Co9kfyz88L4N0eiilj7hfZyS8PHBoJueJ2kyErm9bVjmnAAXCCZ236obQls29Rr29yOd
	5LXKzvd5e5Smyk2MDibbnqjqvB4lfxpHhmaoLE+oqXC904OoycrJyIUNQObxWdhHtUDh
	7+AgezxOyiUY8psh7tEVEntYetoBsklKrzzcd3GFLwLBZk342mVZ+312PlCiG50bjw87
	a2jA==
X-Gm-Message-State: ALQs6tCQGfUOzwGpaqlMP9bAZ6sUCw12GRVigkYeSw6P4t8tipvAIT1A
	UA+j4c+99IBSg90+sxHSqPEgqg==
X-Google-Smtp-Source: AIpwx48zuAJCBNrUCFjahQNewBB0/hIADSv6zycGRdXEPnubr+/l+uxaPJV1AowAhV7zrrB1PlBAkQ==
X-Received: by 2002:a17:902:7084:: with SMTP id
	z4-v6mr7432273plk.364.1523758109749; 
	Sat, 14 Apr 2018 19:08:29 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:19e4:d7e5:ee20:78ac])
	by smtp.gmail.com with ESMTPSA id
	r11sm27062398pfg.0.2018.04.14.19.08.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 14 Apr 2018 19:08:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Sat, 14 Apr 2018 19:08:25 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Sat, 14 Apr 2018 19:08:24 -0700
Message-Id: <1523758104-25257-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core
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
X-List-Received-Date: Sun, 15 Apr 2018 02:08:30 -0000

Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 'restorecond', 'libselinux', 'python-importlib']

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/selinux/libselinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index bd5ce8d..51d0875 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -8,7 +8,7 @@ LICENSE = "PD"
 inherit lib_package pythonnative
 
 DEPENDS += "libsepol python libpcre swig-native"
-RDEPENDS_${PN}-python += "python-importlib"
+RDEPENDS_${PN}-python += "python-core"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
-- 
2.7.4


