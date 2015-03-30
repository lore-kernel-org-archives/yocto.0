Return-Path: <texier.pj2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 568A5E0097D; Sun, 29 Mar 2015 23:20:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ouf_du_45[at]hotmail.com)
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16322E00930
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 23:20:15 -0700 (PDT)
Received: by wgbdm7 with SMTP id dm7so54497424wgb.1
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 23:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=MK0AIlxbcReqT92rGW/H7eqWxLoSlUdBKT7F62AA2uI=;
	b=xqfeSpzfu9SeJgW3mBCMq07ZilEu81GZ8b7pSULLzs5T/jCi/ENASCFBSUdeprvZ/F
	WQRckb504DiPWH3lZTNwAJEwqEdElrfLnzRxRr6A2NQl4KHqrr6TQlHRlWdx/5MWdCu9
	obDH/q1ucmuAmpSH+i0C5CeGEmdxB2EGqCn6SWgR6tow5nZhOjE+2Aey1gjAleu7k9gN
	nUs9qcFHkMWDyys9j4lvY7dhBtZTMRIhGiMMMxVQMdIkRUtLT3XaLC/ZrnrueKYPPRBC
	/oFihBSCz/WyMdQYqmi38bZijHyvII76piVZcTOT53HE+Jz3BsvxVK+TUCkM9wh6p7eI
	SHNg==
X-Received: by 10.180.90.34 with SMTP id bt2mr19125995wib.43.1427696414633;
	Sun, 29 Mar 2015 23:20:14 -0700 (PDT)
Received: from amplitude.amplitude.local ([46.20.167.230])
	by mx.google.com with ESMTPSA id
	ea11sm2903486wic.24.2015.03.29.23.20.13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Mar 2015 23:20:13 -0700 (PDT)
Sender: TEXIER Pierre-Jean <texier.pj2@gmail.com>
From: texierp <ouf_du_45@hotmail.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Mar 2015 08:20:00 +0200
Message-Id: <1427696400-3216-1-git-send-email-ouf_du_45@hotmail.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Mon, 30 Mar 2015 08:20:57 -0700
Cc: texierp <ouf_du_45@hotmail.com>
Subject: [meta-raspberrypi][PATCH] spitools : Add new package
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
X-List-Received-Date: Mon, 30 Mar 2015 06:20:18 -0000

Signed-off-by: texierp <ouf_du_45@hotmail.com>
---
 recipes-devtools/spitools/spitools_git.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-devtools/spitools/spitools_git.bb b/recipes-devtools/spitools/spitools_git.bb
index 287e3eb..128ad7f 100644
--- a/recipes-devtools/spitools/spitools_git.bb
+++ b/recipes-devtools/spitools/spitools_git.bb
@@ -1,5 +1,6 @@
 DESCRIPTION = "This package contains some simple command line tools to help using Linux spidev devices"
 HOMEPAGE = "https://github.com/cpb-/spi-tools"
+AUTHOR = "Christophe BLAESS"
 LICENSE="GPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8c16666ae6c159876a0ba63099614381"
 
-- 
1.9.1


