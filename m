Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E1BFE0142C
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:38:35 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 5493540010;
	Thu, 20 Sep 2012 15:08:38 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 15:38:04 +0200
Message-Id: <cover.1348147047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 00/25][yocto-docs] Add eclipse help generation for remaining documents
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
X-List-Received-Date: Thu, 20 Sep 2012 13:38:36 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

I've recently submitted a proof of concept showing how eclipse help files
can be generated from the adt-manual using the docbook eclipse3.xsl
stylesheet. These patches are currently in the temporary branch 'timo'
in the yocto-docs git.

This patch series fixes a small bug and adds eclipse help generation support
for the other documentation parts.

1: Small bug fix stopping eclipse target when generation fails
2..6: Add eclipse generation to dev-manual
7..11: Add eclipse generation to bsp-guide
12..16: Add eclipse generation to kernel-manual
17..21: Add eclipse generation to poky-ref-manual
22..25: Add eclipse generation to yocto-project-qs

Best regards,
	Timo

Timo Mueller (25):
  documentation/Makefile: Stop eclipse target workflow if generation
    fails.
  documentation: Move dev-manual global parameters to customization
    file
  documentation/dev-manual/dev-manual-eclipse-customization.xsl: new
    file
  documentation/Makefile: Support for making Eclipse HTML dev manual
  documentation/dev-manual/dev-manual.xml: Added Title tag
  documentation/Makefile: logic to make all for adt manual and cleanup
  documentation: Move bsp-guide global parameters to customization file
  documentation/bsp-guide/bsp-guide-eclipse-customization.xsl: new file
  documentation/Makefile: Support for making Eclipse HTML bsp guide
  documentation/bsp-guide/bsp-guide.xml: Added Title tag
  documentation/Makefile: logic to make all for bsp guide and cleanup
  documentation: Move kernel-manual global parameters to customization
    file
  documentation/kernel-manual/kernel-manual-eclipse-customization.xsl:
    new file
  documentation/Makefile: Support for making Eclipse HTML kernel manual
  documentation/kernel-manual/kernel-manual.xml: Added Title tag
  documentation/Makefile: logic to make all for kernel-manual and
    cleanup
  documentation: Move poky-ref-manual global parameters to
    customization file
  documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl:
    new file
  documentation/Makefile: Support for making Eclipse HTML poky ref
    manual
  documentation/poky-ref-manual/poky-ref-manual.xml: Added Title tag
  documentation/Makefile: logic to make all for poky-ref-manual and
    cleanup
  documentation: Move yocto-project-qs global parameters to
    customization file
  documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl:
    new file
  documentation/Makefile: Support for making Eclipse HTML yocto project
    qs manual
  documentation/Makefile: logic to make all for yocto-project-qs and
    cleanup

 documentation/Makefile                             |   96 ++++++++++----------
 .../bsp-guide/bsp-guide-customization.xsl          |    4 +
 .../bsp-guide/bsp-guide-eclipse-customization.xsl  |   21 +++++
 documentation/bsp-guide/bsp-guide.xml              |    4 +-
 .../dev-manual/dev-manual-customization.xsl        |    6 +-
 .../dev-manual-eclipse-customization.xsl           |   21 +++++
 documentation/dev-manual/dev-manual.xml            |    4 +-
 .../kernel-manual/kernel-manual-customization.xsl  |    7 +-
 .../kernel-manual-eclipse-customization.xsl        |   21 +++++
 documentation/kernel-manual/kernel-manual.xml      |    4 +-
 .../poky-ref-manual-customization.xsl              |    5 +
 .../poky-ref-manual-eclipse-customization.xsl      |   21 +++++
 documentation/poky-ref-manual/poky-ref-manual.xml  |    4 +-
 .../yocto-project-qs-customization.xsl             |    2 +-
 .../yocto-project-qs-eclipse-customization.xsl     |   20 ++++
 15 files changed, 182 insertions(+), 58 deletions(-)
 create mode 100644 documentation/bsp-guide/bsp-guide-eclipse-customization.xsl
 create mode 100644 documentation/dev-manual/dev-manual-eclipse-customization.xsl
 create mode 100644 documentation/kernel-manual/kernel-manual-eclipse-customization.xsl
 create mode 100644 documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl
 create mode 100644 documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl

-- 
1.7.7.6


