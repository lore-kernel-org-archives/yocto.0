Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A6DE01430
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 01:19:56 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 719C0400A8;
	Thu,  6 Dec 2012 09:44:17 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 10:19:50 +0100
Message-Id: <cover.1354783770.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 0/3][yocto-docs] Collected fixes to the eclipe help generation
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
X-List-Received-Date: Thu, 06 Dec 2012 09:19:57 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

these are some minor fixes for the eclipse help generation currently located
in the timo branch of the yocto-docs repository.

1: Fixes an issue with the figures folder when eclipse target was called
consecutively without cleaning in between
2: Whitespace fix
3: Enable chunk.quietly to provide cleaner console logs

Best regards,
Timo

Timo Mueller (3):
  documentation/Makefile: Fix copying of figures folder
  documentation/tools/eclipse-help.sed: Fix whitespace
  documentation: Add chunk.quietly option to eclipse processing

 documentation/Makefile                             |    2 +-
 .../adt-manual-eclipse-customization.xsl           |    1 +
 .../bsp-guide/bsp-guide-eclipse-customization.xsl  |    1 +
 .../dev-manual-eclipse-customization.xsl           |    1 +
 .../kernel-manual-eclipse-customization.xsl        |    1 +
 .../poky-ref-manual-eclipse-customization.xsl      |    1 +
 documentation/tools/eclipse-help.sed               |    4 ++--
 .../yocto-project-qs-eclipse-customization.xsl     |    1 +
 8 files changed, 9 insertions(+), 3 deletions(-)

-- 
1.7.7.6


