Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD8A1E011F3
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:42 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 6D8C840026;
	Wed, 10 Oct 2012 11:23:17 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:53:53 +0200
Message-Id: <cover.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 00/35][yocto-docs] Add eclipse help generation to build system
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
X-List-Received-Date: Wed, 10 Oct 2012 09:54:43 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

this is a rework of the patches I've been submitting to include the
generation of eclipse help files into the documentation build system.

From original rfc ([yocto-docs] Add eclipse help generation to
build system):
<snip>
I've added the target 'eclipse' to the documentation's build system to
automate the process of eclipse help generation. This can help to
facilitate the process of keeping the integrated documentation in sync
with the yocto documentation.
<snip>

This patch set incorporates all changes I've been making so far:

1: Remove the use if title in pdf documents
2..6: Add eclipse generation to adt-manual
7..11: Add eclipse generation to dev-manual
12..16: Add eclipse generation to bsp-guide
17..21: Add eclipse generation to kernel-manual
22..26: Add eclipse generation to poky-ref-manual
27..32: Add eclipse generation to yocto-project-qs
33..34: Handle links between documents
35: Makefile documentation update

Best regards,
	 Timo

Timo Mueller (35):
  documentation/template/titlepage.templates.xml: Remove title info
  documentation: Move adt-manual global parameters to customization
    file
  documentation/adt-manual/adt-manual-eclipse-customization.xsl: new
    file
  documentation/Makefile: Support for making Eclipse HTML adt manual
  documentation/adt-manual/adt-manual.xml: Added Title tag
  documentation/Makefile: logic to make all for adt manual and cleanup
  documentation: Move dev-manual global parameters to customization
    file
  documentation/dev-manual/dev-manual-eclipse-customization.xsl: new
    file
  documentation/Makefile: Support for making Eclipse HTML dev manual
  documentation/dev-manual/dev-manual.xml: Added Title tag
  documentation/Makefile: logic to make all for dev manual and cleanup
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
  documentation/yocto-project-qs: Added custom title page
  documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl:
    new file
  documentation/Makefile: Support for making Eclipse HTML yocto project
    qs manual
  documentation/yocto-project-qs/yocto-project-qs.xml: Convert
    fake-title section into articleinfo
  documentation/Makefile: logic to make all for yocto-project-qs and
    cleanup
  documentation/tools/eclipse-help.sed: Processes external links for
    eclipse html files
  documentation/Makefile: Added conversion of links to other
    documentation parts.
  documentation/Makefile: Clean up eclipse target and update help.

 documentation/Makefile                             |  119 +-
 .../adt-manual/adt-manual-customization.xsl        |    7 +-
 .../adt-manual-eclipse-customization.xsl           |   26 +
 documentation/adt-manual/adt-manual.xml            |    4 +-
 .../bsp-guide/bsp-guide-customization.xsl          |    4 +
 .../bsp-guide/bsp-guide-eclipse-customization.xsl  |   26 +
 documentation/bsp-guide/bsp-guide.xml              |    4 +-
 .../dev-manual/dev-manual-customization.xsl        |    6 +-
 .../dev-manual-eclipse-customization.xsl           |   26 +
 documentation/dev-manual/dev-manual.xml            |    4 +-
 .../kernel-manual/kernel-manual-customization.xsl  |    7 +-
 .../kernel-manual-eclipse-customization.xsl        |   26 +
 documentation/kernel-manual/kernel-manual.xml      |    4 +-
 .../poky-ref-manual-customization.xsl              |    5 +
 .../poky-ref-manual-eclipse-customization.xsl      |   26 +
 documentation/poky-ref-manual/poky-ref-manual.xml  |    4 +-
 documentation/template/titlepage.templates.xml     |   13 -
 documentation/tools/eclipse-help.sed               |   18 +
 .../yocto-project-qs-customization.xsl             |    3 +-
 .../yocto-project-qs-eclipse-customization.xsl     |   24 +
 .../yocto-project-qs-titlepage.xsl                 | 3820 ++++++++++++++++++++
 .../yocto-project-qs/yocto-project-qs.xml          |   20 +-
 22 files changed, 4116 insertions(+), 80 deletions(-)
 create mode 100644 documentation/adt-manual/adt-manual-eclipse-customization.xsl
 create mode 100644 documentation/bsp-guide/bsp-guide-eclipse-customization.xsl
 create mode 100644 documentation/dev-manual/dev-manual-eclipse-customization.xsl
 create mode 100644 documentation/kernel-manual/kernel-manual-eclipse-customization.xsl
 create mode 100644 documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl
 create mode 100644 documentation/tools/eclipse-help.sed
 create mode 100644 documentation/yocto-project-qs/yocto-project-qs-eclipse-customization.xsl
 create mode 100644 documentation/yocto-project-qs/yocto-project-qs-titlepage.xsl

-- 
1.7.7.6


