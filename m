Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB2B9E01425
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 21:08:27 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2141811dad.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 21:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=BKYAkjStIjdGX8YvetaMwhxjZCynQb+v7rywOV/mp6E=;
	b=H+v1v6+z1iWdssg9aOeyPgH1Ooh4chIcz8Uuc4331Vbcka1JmaIQYerEnQmU5d/YBw
	Ef8cgVkP3r14yyhFDaMLWeIx7q9uqgABYkLy2Yldi2agjBSjZTPLBYv+nJMjAQAQ7OAB
	BqAhOG0MBk91sqvj9OUng6jvwPvi1LXS8yKRtqg0EwTOuaT0ikkqK0TalB+Evvhv+rss
	6lmdesy5QteB2uhv5I8yMOAKMPaG9yGzl1cGW0j/Mokrb62HK6Nmr8ZtOwL/xSruOWP7
	BFdbicSevbR2FZa3u//SJm0ib6EDXM+NRh7gppykWoL3h2o/PBCHCliyTOgaVIODkzR6
	/ghg==
Received: by 10.68.194.6 with SMTP id hs6mr5394930pbc.133.1340338107548;
	Thu, 21 Jun 2012 21:08:27 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id io2sm37680715pbc.24.2012.06.21.21.08.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 21:08:26 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 22 Jun 2012 08:08:21 +0400
Message-Id: <B58FC6F3-7803-4BC2-B0E9-06EA850F9998@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: python-numpy SRC_URI warnings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Jun 2012 04:08:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      What should I do to get rid of the following python-numpy SRC_URI =
warnings:

WARNING: Unable to get checksum for python-numpy SRC_URI entry config.h: =
file could not be found
WARNING: Unable to get checksum for python-numpy SRC_URI entry =
numpyconfig.h: file could not be found

if I look in the =
meta-openembedded/meta-oe/recipes-devtools/python/python-numpy folder, =
the config.f and numpyconfig.h files have been moved to an architecture =
specific folder (e.g. arm, mipsel).=20

However the python-numpy_1.4.1.bb recipe has not been updated to take =
the target CPU architecture specific file locations into account:

SRC_URI =3D "${SOURCEFORGE_MIRROR}/numpy/numpy-${PV}.tar.gz \
	   file://config.h \
	   file://numpyconfig.h \
	  "

Is there a variable that I can use for the target CPU architecture? I =
tried the following modifications but it didn't work

SRC_URI =3D "${SOURCEFORGE_MIRROR}/numpy/numpy-${PV}.tar.gz \
	   file://${TARGET_CPU}/config.h \
	   file://${TARGET_CPU}/numpyconfig.h \
	  "

Is the only alternative to do something like this (which works, btw):

SRC_URI =3D "${SOURCEFORGE_MIRROR}/numpy/numpy-${PV}.tar.gz \
	  "
SRC_URI_arm +=3D " \	  =20
           file://arm/config.h \
	   file://arm/numpyconfig.h \
	  "
SRC_URI_mipsel +=3D " \	  =20
           file://mipsel/config.h \
	   file://mipsel/numpyconfig.h \
	  "

Best regards,

Elvis Dowson=

