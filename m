Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED85DE009C8; Fri, 22 May 2015 03:04:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 138B0E00961
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 03:04:01 -0700 (PDT)
Received: by wizk4 with SMTP id k4so42136482wiz.1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 03:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=WK0NZs+JvWdSU4/nC1F1YmvFrULLe5hUvHHk87wtE6I=;
	b=Na4e5GQkfanX6cen9WQBvWc0LPmvhf1XTS+46uRztiW8Nmb/8/QdbsOUQmYwU26L46
	eYs8/a0QvcuNqEpDsESJdh3gvDT9MxdgbRYYg1u2WQvA449ZwAo9KcnAUQVWOLCECaaB
	MuqVkPNuknUbXhNtm6sgB/TLzKf4FDs++CN9tB3rPfDbEqs70SgWOLcOQ+sHX51/TzIp
	4XIz9VHWjGY+uIuMrG0JrmJedc2HzGP53gSS+tG5P6zPhYWYTs5qduF7Z4pzWYku0Z/3
	ZnVr7YJsdlolJ31ChjmsUFgAWkICKlSkM7edeG4xUAQUZjmSByognAPQcCOFI3bHjw3l
	0BPg==
X-Received: by 10.180.210.235 with SMTP id mx11mr5699099wic.95.1432289040232; 
	Fri, 22 May 2015 03:04:00 -0700 (PDT)
Received: from X220.tupi.fr ([37.164.121.82])
	by mx.google.com with ESMTPSA id gy8sm6747847wib.13.2015.05.22.03.03.58
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 May 2015 03:03:59 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Fri, 22 May 2015 12:03:55 +0200
Message-Id: <1432289035-762-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-raspberrypi][PATCH] If SERIAL_CONSOLE is already define by another layer, this value may not be good.
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
X-List-Received-Date: Fri, 22 May 2015 10:04:04 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 conf/machine/include/rpi-base.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index a26803a..1dda207 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -7,7 +7,7 @@ include conf/machine/include/soc-family.inc
 
 IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
 
-SERIAL_CONSOLE ?= "115200 ttyAMA0"
+SERIAL_CONSOLE = "115200 ttyAMA0"
 
 XSERVER = " \
     xserver-xorg \
-- 
1.7.10.4


