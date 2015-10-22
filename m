Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99612E00AAB; Thu, 22 Oct 2015 04:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 955FDE00A92
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 04:50:36 -0700 (PDT)
Received: by wijp11 with SMTP id p11so27953856wij.0
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 04:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=zvZfQLA0RE2gYhXK+CqIa2Xk/YCBUEeFGr/n6hmqKik=;
	b=B0S19bTfuAooq0c6l7eZ/ByrDflyPjNFWW/pjoFHWpY2VZKIPtZtVK46Mhfm/QXocg
	5WxU6uD3cD+fZVFLiM4/Vg/mhcoLS77qtmVt4d5pdNJxms0Ml6mOZDZOUGp4bkbH8Hp9
	/x91l5YT9YOfyOVkWC3uOEUSYELLjnjCN69jCdT7BxrdH0FTeIb7b2LZE73/s9D+o8/W
	tnuz32LZFxaNFHU6m3FWBh0FIriRf7F2ubqpCKLuncpLbo+Lp5yuFc2UCQnJd3c/pwEp
	ohc9dRBvEm6GysbYqCUMpovAjF+pp1UMZghQU/KGf+/3/O04iQXdktcTi5WPwvf1Muk0
	1fpA==
X-Received: by 10.180.208.100 with SMTP id md4mr16574070wic.41.1445514635396; 
	Thu, 22 Oct 2015 04:50:35 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	fx19sm9069722wic.2.2015.10.22.04.50.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 22 Oct 2015 04:50:34 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 22 Oct 2015 12:50:10 +0100
Message-Id: <1445514612-10204-1-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
Subject: [meta-raspberrypi][PATCH 0/2] Fix core-image-sato build failure
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
X-List-Received-Date: Thu, 22 Oct 2015 11:50:39 -0000

Builds of core-image-sato (userland) against poky master fail as
libepoxy fails to build. This patch-set adds needed userland .pc files 
for libepoxy and adds needed paths for include files to the libepoxy recipe

Alex J Lennon (2):
  userland: add .pc files for the OpenGLESv2 and EGL libraries
  libepoxy: add needed include paths for RPi

 recipes-graphics/libepoxy/libepoxy_git.bbappend    |  2 +
 .../0004-rpi-userland-add-pkgconfig-files.patch    | 53 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  6 ++-
 3 files changed, 59 insertions(+), 2 deletions(-)
 create mode 100644 recipes-graphics/libepoxy/libepoxy_git.bbappend
 create mode 100644 recipes-graphics/userland/userland/0004-rpi-userland-add-pkgconfig-files.patch

-- 
1.9.1


