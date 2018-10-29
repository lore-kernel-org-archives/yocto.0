Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A55B6E00BD0; Mon, 29 Oct 2018 11:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2D53E00C72
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:01 -0700 (PDT)
Received: by mail-it1-f176.google.com with SMTP id f16-v6so3228659ita.3
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=sBnKIYw7iA0MjqqgHZBfGt/eWRz7V2R6OQ148tDxOvA=;
	b=mVSGlNylC7DoEqssnFK057EWpad47Doe1ntDGBduYXNxrEBwRqiu3bC96ipRE7DKwT
	Jz63Rf3xdnLk3IjbbPHJ4nI2DizUpNV0to8vyWvARSwI0NjmBwrToZ9n1vY8aZdtO1ND
	/PQDJ7/YCBoAixbwEqm786q59TSmVOO4+lkUPLKJ9BQFH+ccUIOfjWY4nYav4oMZ/v1M
	24UqNFaujliHXYiARyCaSAkVeII5lFicOoxYae+/220WGJu7W1mGpeuzhLe1/8Wpirla
	wm/wzcCKZewuCrhz6/lg0IQ2MUA06irUEWjzotOD/Sg2lQ5VLafNiJ4v4k7/LgxClDHn
	k3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=sBnKIYw7iA0MjqqgHZBfGt/eWRz7V2R6OQ148tDxOvA=;
	b=E6Jtmmh2tcFHyzsPRTR7U7fcinJesVY0BOTLgQ3HQXLkphqEayqlp0tQ5Pojj25QLz
	O7UqhUiIZYGGi3hnt53YGTOvi6sDicx3cZ+ULld8ngTWZUZdNn27I4bAOlcCJ6EnqD0S
	CVHbLfcQLaBo9R2wwlPf7XVPVLc9T38WkfmuIAUaSbKe7Ga7MUQBwx8qt21mHweFDc2T
	0xVDywj7ja3G572lqR3Edx0r6t1y01GJrKN3okjfzwt9WXW8lr/3Q8NzL5hymx+9S/XT
	Z99Riyjq2ClK/2CWEaCQCh6Jmc02RvIMLPVzSsTNecPgvA6RPorHblj792MYMTvdKD2I
	jyAw==
X-Gm-Message-State: AGRZ1gLbSCmPn0ZaR2fTD3jJiKyZ8hD32vmtMKcmLVAg055rgQ6/RJ7M
	IWhpd5NtZojiPFaEOz6pAbOAuI3jh9M=
X-Google-Smtp-Source: AJdET5cVMa1gHdUZ+A94vVkkZBX0koPap3Y/a+5ojiQ086ATPxMMOk+KhDL1c75IUC122TBGvtMMZg==
X-Received: by 2002:a02:55c1:: with SMTP id
	e184-v6mr10674703jab.35.1540837980896; 
	Mon, 29 Oct 2018 11:33:00 -0700 (PDT)
Received: from burninator2.deserted.net (23-233-29-148.cpe.pppoe.ca.
	[23.233.29.148]) by smtp.gmail.com with ESMTPSA id
	y11-v6sm7152984ioa.24.2018.10.29.11.32.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 11:33:00 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 14:32:52 -0400
Message-Id: <20181029183257.20970-2-joe@deserted.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20181029183257.20970-1-joe@deserted.net>
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
	<20181029183257.20970-1-joe@deserted.net>
Subject: [meta-selinux][sumo][PATCH 2/7] setools: Add missing python runtime deps.
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
X-List-Received-Date: Mon, 29 Oct 2018 18:33:11 -0000

From: Piotr Tworek <tworaz666@gmail.com>

The package needs logging, json and argparse modules to start.
Additionaly, it also needs libselinux-python in order to really work.
Without it it'll just print an error message instructing the user to
install it.

Signed-off-by: Piotr Tworek <tworaz666@gmail.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/setools/setools_4.1.1.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/setools/setools_4.1.1.bb b/recipes-security/setools/setools_4.1.1.bb
index 5b6d47d..c5a2d34 100644
--- a/recipes-security/setools/setools_4.1.1.bb
+++ b/recipes-security/setools/setools_4.1.1.bb
@@ -23,7 +23,8 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
 
 DEPENDS += "bison-native flex-native swig-native python libsepol"
 
-RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator python-setuptools"
+RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator python-setuptools \
+                   python-logging python-json python-argparse libselinux-python"
 
 RPROVIDES_${PN} += "${PN}-console"
 
-- 
2.17.1


