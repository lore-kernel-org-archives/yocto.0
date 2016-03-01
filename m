Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3430FE00BAB; Tue,  1 Mar 2016 05:58:21 -0800 (PST)
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
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E264FE00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:58:19 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fy10so112430001pac.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=9RJCDIpSfe+8fAbNKFbN5TcUazyDAYd8f5cCY2s51Ck=;
	b=PUJ6JqCjl8ihsjxtH3BrlaP7OSlCIP9iVKKHW03VSplNj7C7pl41FtgZot8MFhLV/a
	yMdwmJfLvePdq65WExvNWe1USwIDPxKudcvBhqYLSeiho3iSmlS7rIcJoMOPfo3Q86L5
	1/hYc6CyD9je9YIjL9+nIEuivJcq5zjiIB/6OjumtPnzsR1KR5f/mCFDNBcfsRvh9+eH
	4yKKse1WmJXoBsHA6EDezDK3c00aCaS1JljrEjrhERRGELm4lvcBYDwkFqRapAjzHeVg
	JIzksQfwAo5yGenaG0IUpFgTpBvDuuvg4nZxhq/J25DOFDHh9cMdnI2gObVKbsKwcqJn
	d6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9RJCDIpSfe+8fAbNKFbN5TcUazyDAYd8f5cCY2s51Ck=;
	b=CkIKfox2loGZ55wvJJAHhSnaxrV7pW02h52Bwj0RMMNgs5SozQNbXiG3HiK9BdA4pT
	BGK5kPvtsxVulabsBhPvnAx7IWGsOoifbyf0RTmYTWwSkG5j1o2KboITbVqCCWvLVqQP
	j7moXmyT8z7x6TeJL4lZ+Durj+xf2CSLZx2HjhAhjscNplTbzEf35/rVyaLw/Qrd6idO
	ygj/GnJYVmvFtiULGLxJceVztsXgJGT2CYroyhQ8Rapw0MX7aiHMRojSdq8mADtxZCX1
	6tPqXuRQTyAtdwNgKwWt3x+bEg8wdLk3LeyG1Ig1f/ExGP2X+fxnj5XRHMJBMNce9MRm
	CWPA==
X-Gm-Message-State: AD7BkJLtgSE02tSjpOQ/UcA8eDL7jsjH4m/+btkYIaMwrKjUWcG8E8rrO8vz382VEmVJbg==
X-Received: by 10.66.248.198 with SMTP id yo6mr30069889pac.54.1456840699009;
	Tue, 01 Mar 2016 05:58:19 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	ey7sm8429394pab.47.2016.03.01.05.58.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:58:17 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:58:37 +1100
Message-Id: <1456840719-14318-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH v3 1/3] rpi-mkimage: install to bindir instead of libexecdir
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
X-List-Received-Date: Tue, 01 Mar 2016 13:58:21 -0000

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


